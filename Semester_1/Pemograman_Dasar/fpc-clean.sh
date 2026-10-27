#!/usr/bin/env bash
# clean-pascal.sh - hapus hasil compile Free Pascal (fpc)
# Pemakaian:
#   ./clean-pascal.sh            # bersihkan folder saat ini (tanpa subfolder)
#   ./clean-pascal.sh -r         # termasuk subfolder
#   ./clean-pascal.sh -n         # dry-run: hanya tampilkan, tidak menghapus
#   ./clean-pascal.sh -r -n /path/ke/folder

set -euo pipefail

RECURSIVE=0
DRY=0

while getopts "rn" opt; do
  case "$opt" in
    r) RECURSIVE=1 ;;
    n) DRY=1 ;;
    *) echo "Pemakaian: $0 [-r] [-n] [folder]" >&2; exit 1 ;;
  esac
done
shift $((OPTIND - 1))

DIR="${1:-.}"

if [[ ! -d "$DIR" ]]; then
  echo "Folder tidak ditemukan: $DIR" >&2
  exit 1
fi

DEPTH=(-maxdepth 1)
[[ $RECURSIVE -eq 1 ]] && DEPTH=()

hapus() {
  local f="$1"
  if [[ $DRY -eq 1 ]]; then
    echo "[dry-run] $f"
  else
    rm -f -- "$f" && echo "dihapus: $f"
  fi
}

is_elf() {
  [[ -f "$1" && -x "$1" && "$(head -c4 "$1" 2>/dev/null)" == $'\x7f'ELF ]]
}

count=0

# Cari semua source Pascal, lalu hapus artefak dengan nama dasar yang sama
while IFS= read -r -d '' src; do
  base="${src%.*}"

  # File hasil kompilasi/linking FPC
  for ext in o ppu compiled res a; do
    if [[ -f "$base.$ext" ]]; then
      hapus "$base.$ext"; ((count++)) || true
    fi
  done

  # Executable Linux (tanpa ekstensi), hanya jika benar-benar ELF
  if is_elf "$base"; then
    hapus "$base"; ((count++)) || true
  fi

  # Executable Windows (kalau cross-compile / pakai Windows)
  if [[ -f "$base.exe" ]]; then
    hapus "$base.exe"; ((count++)) || true
  fi
done < <(find "$DIR" "${DEPTH[@]}" -type f \( -iname '*.pas' -o -iname '*.pp' -o -iname '*.lpr' \) -print0)

# File sementara linker FPC
while IFS= read -r -d '' f; do
  hapus "$f"; ((count++)) || true
done < <(find "$DIR" "${DEPTH[@]}" -type f \( -name 'link.res' -o -name 'ppas.sh' -o -name 'fpcdebug.log' \) -print0)

echo "Selesai. Total file: $count"