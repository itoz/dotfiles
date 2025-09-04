# Dotfiles

chezmoi を使用した dotfiles 管理システムです。

## 概要

このリポジトリは、chezmoi を使用して dotfiles を管理しています。chezmoi は、セキュアで柔軟な dotfiles 管理ツールです。

## 含まれる設定ファイル

- `.gitconfig` - Git 設定
- `.gitignore_global` - グローバル Git 除外設定
- `.zshrc` - Zsh 設定
- `.zprofile` - Zsh プロファイル設定
- `.p10k.zsh` - Powerlevel10k テーマ設定

## セットアップ

### 前提条件

- [chezmoi](https://www.chezmoi.io/)がインストールされていること

### 新しいマシンでの初回セットアップ

新しいマシンで初めてこの dotfiles を設定する場合：

```bash
# 1. chezmoiをインストール
# macOSの場合
brew install chezmoi

# 2. このリポジトリを初期化
chezmoi init https://github.com/itoz/dotfiles.git

# 3. プレビューで変更内容を確認（推奨）
chezmoi diff

# 4. dotfilesを適用
chezmoi apply

# 5. シェルを再起動または設定を再読み込み
exec zsh
```

### 既存マシンでの更新

既に設定済みのマシンで最新の変更を適用する場合：

```bash
# chezmoiをインストール（macOSの場合）
brew install chezmoi

# このリポジトリを初期化
chezmoi init https://github.com/itoz/dotfiles.git

# dotfilesを適用
chezmoi apply
```

### 更新

```bash
# リモートリポジトリから最新の変更を取得
chezmoi update

# 変更を適用
chezmoi apply
```

## 管理

### 新しいファイルを追加

```bash
# 新しいdotfileを追加
chezmoi add ~/.newfile

# 編集
chezmoi edit ~/.newfile
```

### 変更をコミット

```bash
# 変更をコミット
chezmoi cd
git add .
git commit -m "Update dotfiles"
git push
```

## ディレクトリ構造

```
~/.local/share/chezmoi/
├── dot_claude/          # Claude AI関連の設定
│   ├── agents/         # AIエージェント設定
│   └── commands/       # コマンド設定
├── dot_gitconfig       # Git設定
├── dot_gitignore_global # グローバルGit除外設定
├── dot_p10k.zsh        # Powerlevel10kテーマ
├── dot_zprofile        # Zshプロファイル
├── dot_zshrc           # Zsh設定
└── README.md           # このファイル
```

## トラブルシューティング

### よくある問題と解決方法

#### 1. 既存の設定ファイルとの競合

```bash
# 既存の設定ファイルをバックアップしてから適用
chezmoi apply --dry-run  # プレビュー
chezmoi apply --force    # 強制適用
```

#### 2. 設定ファイルの状態確認

```bash
# 現在の状態を確認
chezmoi status

# 変更内容を確認
chezmoi diff

# 管理されているファイル一覧
chezmoi managed
```

#### 3. 特定のファイルのみ適用

```bash
# 特定のファイルのみ適用
chezmoi apply ~/.zshrc

# 特定のファイルを除外
chezmoi apply --exclude ~/.gitconfig
```

#### 4. 設定のリセット

```bash
# すべての設定を削除
chezmoi remove --force

# 再適用
chezmoi apply
```

## 注意事項

- このリポジトリは chezmoi の形式に従って管理されています
- ファイル名の先頭に`dot_`プレフィックスが付いているのは、chezmoi の命名規則です
- 実際のホームディレクトリには、プレフィックスなしでシンボリックリンクが作成されます
- 初回セットアップ時は`chezmoi diff`で変更内容を確認することを強く推奨します
- 既存の設定ファイルがある場合は、事前にバックアップを取ることをお勧めします
