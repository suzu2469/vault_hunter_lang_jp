# Vault Hunters 3rd Edition 日本語化パック

Minecraft Vault Hunters 3rd Edition (1.18.2) の `the_vault` MOD を日本語化するプロジェクトです。

アイテム名・UI テキスト・ガイドブック・クエスト・アビリティ説明文など、ゲーム内のほぼ全てのテキストを日本語で表示できます。

## 対象バージョン

- Minecraft: 1.18.2 (Forge)
- Modpack: Vault Hunters 3rd Edition
- pack_format: 8

## 導入方法

以下の `<インスタンス>` は Modpack のインストールフォルダを指します。
CurseForge の場合は `Instances/Vault Hunters Official Modpack (3rd Ed)` です。

### 1. リソースパック（アイテム名・ブロック名・UI テキスト等）

`pack.mcmeta` と `assets/` フォルダを ZIP 化するか、フォルダごと配置します。

```
<インスタンス>/resourcepacks/vault_hunter_lang_jp.zip
```

または

```
<インスタンス>/resourcepacks/vault_hunter_lang_jp/
  pack.mcmeta
  assets/
    the_vault/lang/ja_jp.json    ... 1903キー
    minecraft/lang/ja_jp.json    ... 9キー（ポーション名）
```

ゲーム内の **設定 > リソースパック** から有効化し、**設定 > 言語** で「日本語」を選択してください。

### 2. ガイドブック（Patchouli）

`patchouli_books/` フォルダをインスタンスのルートにコピーします。

```
<インスタンス>/patchouli_books/the_vault_main_guide/
  book.json
  ja_jp/
    categories/   ... 9ファイル
    entries/       ... 52ファイル
```

言語を日本語に設定するとガイドブックが自動的に日本語で表示されます。

> **マルチプレイの場合:** ガイドブックはサーバー側で読み込まれるため、**サーバーの** `patchouli_books/` に配置してください。

### 3. コンフィグファイル（クエスト・アビリティ説明文）

`config/` フォルダの内容をインスタンスの `config/` に上書きコピーします。

```
<インスタンス>/config/the_vault/
  quest/quests.json              ... 78クエスト
  quest/sky_quests.json          ... 80クエスト
  abilities_descriptions.json    ... 82アビリティの説明文
  archetype_descriptions.json    ... 7アーキタイプの説明文
```

> **注意:** コンフィグファイルは Modpack のアップデート時に上書きされる可能性があります。アップデート後は再配置してください。

## 翻訳状況

### リソースパック (1912キー)

| カテゴリ | キー数 | 状態 |
|---------|--------|------|
| item (アイテム) | 700 | 完了 |
| block (ブロック) | 563 | 完了 |
| entity (エンティティ) | 184 | 完了 |
| the_vault (スキル・設定等) | 76 | 完了 |
| screen (画面テキスト) | 72 | 完了 |
| key (キーバインド) | 67 | 完了 |
| effect (エフェクト) | 55 | 完了 |
| gamerule (ゲームルール) | 51 | 完了 |
| jei / stat / tooltip 他 | 135 | 完了 |
| minecraft (ポーション名) | 9 | 完了 |

### ガイドブック (61ファイル)

| セクション | ファイル数 |
|-----------|-----------|
| はじめに (getting_started) | 7 |
| ヴォールト (the_vault) | 9 |
| スキル (skills) | 6 |
| ヴォールトギア (vault_gear) | 5 |
| ヴォールトポーション (vault_potions) | 3 |
| ヴォールトツール (vault_tools) | 7 |
| モディファイア (vault_modifiers) | 3 |
| ゲームメカニクス (game_mechanics) | 8 |
| コマンド (useful_commands) | 4 |
| カテゴリ定義 (categories) | 9 |

### コンフィグ

| ファイル | 内容 |
|---------|------|
| quests.json | クエストブック (78クエスト) |
| sky_quests.json | スカイクエストブック (80クエスト) |
| abilities_descriptions.json | アビリティ説明文 (82種) |
| archetype_descriptions.json | アーキタイプ説明文 (7種) |

## 用語集

| 英語 | 日本語 |
|------|--------|
| Vault | ヴォールト |
| Vault Crystal | ヴォールトクリスタル |
| Vault Gear | ヴォールトギア |
| Vault Altar | ヴォールト祭壇 |
| Skill Point | スキルポイント |
| Knowledge Point | 知識ポイント |
| Ability | アビリティ |
| Talent | タレント |
| Research | リサーチ |
| Modifier | モディファイア |
| Soul Shard | ソウルシャード |
| Black Market | ブラックマーケット |
| Vault God (Idona / Tenos / Velara / Wendarr) | ヴォールトゴッド（イドナ / テノス / ヴェラーラ / ウェンダー） |

## コントリビューション

1. このリポジトリをフォーク
2. 対象ファイルを編集
3. プルリクエストを作成

### 翻訳ルール

- キー名・JSON 構造は変更しない（値のみ翻訳）
- `%s` / `%d` 等のプレースホルダー、`$(l)` `$(br)` 等の書式コードはそのまま維持
- ゲーム固有の固有名詞はカタカナで統一（上記用語集を参照）

### 翻訳キーの抽出

MOD JAR から `en_us.json` を抽出するスクリプトを用意しています:

```bash
./scripts/extract_lang.sh /path/to/vault-hunters/mods/
```

抽出されたファイルは `reference/` に保存されます（`.gitignore` で管理外）。

## ライセンス

MIT License
