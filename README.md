# Vault Hunters 3rd Edition 日本語化リソースパック

Minecraft の Vault Hunters 3rd Edition (1.18.2) に含まれる `the_vault` MOD を日本語化するリソースパックです。ゲーム内ガイドブック（Patchouli）の翻訳も含まれています。

## 導入方法

### リソースパック（アイテム名・UI等）

1. このリポジトリをダウンロード（ZIP または `git clone`）
2. zip を Modpack インスタンスの `resourcepacks/` にコピー
3. ゲーム内の設定 > リソースパック から有効化
4. 設定 > 言語 から「日本語」を選択

### ガイドブック（Patchouli）

1. `patchouli_books/` フォルダを Modpack インスタンスのルートディレクトリにコピー
   - 例: `<インスタンス>/patchouli_books/the_vault_main_guide/`
2. `book.json` と `ja_jp/` フォルダが配置されていることを確認
3. ゲーム内で言語を日本語に設定すると、ガイドブックが自動的に日本語で表示されます

> **マルチプレイの場合:** ガイドブックの翻訳はサーバー側で読み込まれるため、**サーバーの** `patchouli_books/` に配置してください。クライアント側への配置は不要です。

## 対象バージョン

- Minecraft: 1.18.2 (Forge)
- Modpack: Vault Hunters 3rd Edition
- pack_format: 8

## 翻訳進捗

| カテゴリ | キー数 | 状態 |
|---------|--------|------|
| item (アイテム) | 700 | 完了 |
| block (ブロック) | 563 | 完了 |
| entity (エンティティ) | 184 | 完了 |
| the_vault (スキル・アビリティ等) | 76 | 完了 |
| screen (画面テキスト) | 72 | 完了 |
| key (キーバインド) | 67 | 完了 |
| effect (エフェクト) | 55 | 完了 |
| gamerule (ゲームルール) | 51 | 完了 |
| jei (JEI連携) | 25 | 完了 |
| その他 | 110 | 完了 |
| **合計** | **1903** | **完了** |

### Patchouli ガイドブック

| カテゴリ | ファイル数 | 状態 |
|---------|-----------|------|
| categories (カテゴリ定義) | 9 | 完了 |
| getting_started (はじめに) | 7 | 完了 |
| skills (スキル) | 6 | 完了 |
| the_vault (ヴォールト) | 9 | 完了 |
| vault_gear (ヴォールトギア) | 5 | 完了 |
| vault_potions (ヴォールトポーション) | 3 | 完了 |
| vault_tools (ヴォールトツール) | 7 | 完了 |
| vault_modifiers (モディファイア) | 3 | 完了 |
| game_mechanics (ゲームメカニクス) | 8 | 完了 |
| useful_commands (コマンド) | 4 | 完了 |
| **合計** | **61** | **完了** |

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
