#!/bin/bash
# Vault Hunters MOD JAR から en_us.json を抽出するスクリプト
#
# 使い方:
#   ./scripts/extract_lang.sh /path/to/mods/directory
#
# 抽出先: reference/assets/<mod_id>/lang/en_us.json

set -euo pipefail

MODS_DIR="${1:?使い方: $0 /path/to/mods/directory}"
OUT_DIR="$(cd "$(dirname "$0")/.." && pwd)/reference"

mkdir -p "$OUT_DIR"

echo "MOD ディレクトリ: $MODS_DIR"
echo "出力先: $OUT_DIR"
echo ""

python3 -c "
import zipfile, os, sys, glob

mods_dir = sys.argv[1]
out_dir = sys.argv[2]

jars = glob.glob(os.path.join(mods_dir, '*.jar'))
print(f'{len(jars)} 個の JAR ファイルを検出')
print()

extracted = 0
for jar_path in sorted(jars):
    jar_name = os.path.basename(jar_path)
    try:
        with zipfile.ZipFile(jar_path) as z:
            lang_files = [n for n in z.namelist() if n.endswith('lang/en_us.json')]
            for lang_file in lang_files:
                z.extract(lang_file, out_dir)
                print(f'  {jar_name} -> {lang_file}')
                extracted += 1
    except Exception as e:
        print(f'  {jar_name}: エラー - {e}', file=sys.stderr)

print()
print(f'合計 {extracted} 個の lang ファイルを抽出しました')
" "$MODS_DIR" "$OUT_DIR"
