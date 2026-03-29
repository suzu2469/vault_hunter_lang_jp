# Vault Hunters 3rd Edition 日本語化リソースパック

Minecraft の Vault Hunters 3rd Edition (1.18.2) に含まれる `the_vault` MOD を日本語化するリソースパックです。

## 導入方法

1. このリポジトリをダウンロード（ZIP または `git clone`）
2. フォルダごと `.minecraft/resourcepacks/` に配置
3. ゲーム内の設定 > リソースパック から有効化
4. 設定 > 言語 から「日本語」を選択

## 対象バージョン

- Minecraft: 1.18.2 (Forge)
- Modpack: Vault Hunters 3rd Edition
- pack_format: 8

## 翻訳進捗

| カテゴリ | キー数 | 状態 |
|---------|--------|------|
| item (アイテム) | 700 | 未着手 |
| block (ブロック) | 563 | 未着手 |
| entity (エンティティ) | 184 | 未着手 |
| the_vault (スキル・アビリティ等) | 76 | 未着手 |
| screen (画面テキスト) | 72 | 未着手 |
| key (キーバインド) | 67 | 未着手 |
| effect (エフェクト) | 55 | 未着手 |
| gamerule (ゲームルール) | 51 | 未着手 |
| jei (JEI連携) | 25 | 未着手 |
| その他 | 110 | 未着手 |
| **合計** | **1903** | |

## 翻訳キーの抽出方法

MOD JAR から翻訳元の `en_us.json` を抽出するスクリプトを用意しています:

```bash
./scripts/extract_lang.sh /path/to/vault-hunters/mods/
```

抽出されたファイルは `reference/` ディレクトリに保存されます（`.gitignore` で管理外）。

## 用語集

| 英語 | 日本語 | 備考 |
|------|--------|------|
| Vault | ヴォールト | |
| Vault Crystal | ヴォールトクリスタル | |
| Skill Point | スキルポイント | |
| Knowledge Point | 知識ポイント | |
| Ability | アビリティ | |
| Talent | タレント | |
| Research | リサーチ | |
| Modifier | モディファイア | |
| Vault Gear | ヴォールトギア | |
| Soul Shard | ソウルシャード | |
| Vault Altar | ヴォールト祭壇 | |
| Black Market | ブラックマーケット | |

## コントリビューション

1. このリポジトリをフォーク
2. `assets/the_vault/lang/ja_jp.json` を編集
3. プルリクエストを作成

### 翻訳ルール

- キー名は変更しない（値のみ翻訳）
- `§` (セクション記号) や `%s`/`%d` 等のプレースホルダーはそのまま維持
- UTF-8 エンコーディング（BOM なし）
- ゲーム固有の固有名詞はカタカナで統一（上記用語集を参照）

## ライセンス

MIT License
