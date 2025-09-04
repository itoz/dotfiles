---
description: Reactコンポーネント(.tsx)とCSSモジュールファイルを同時作成する
allowed-tools: [Bash, Read, Edit, TodoWrite]
---

# React TSX コンポーネント作成

指定されたパスに React コンポーネント(.tsx)と CSS モジュールファイル(.module.css)を同時作成し、適切に import を設定します。

## 使用方法

```bash
claude new-tsx /src/components/Button.tsx
```

## 実行手順

1. **引数検証**

   - 引数が提供されているかチェック
   - ファイルパスが.tsx で終わっていなければ.tsx を付与
   - 既存ファイルが存在しないかチェックし、存在する場合は停止

2. **ディレクトリ構造準備**

   - 必要なディレクトリが存在しない場合は作成
   - パーミッションチェック

3. **ファイル名とパス解析**

   - ファイルパスからコンポーネント名を抽出
   - CSS モジュールファイルのパスを生成
   - Pascal Case でのコンポーネント名を確保

4. **TSX ファイル作成**

   - 基本的な React コンポーネントテンプレートを作成
   - TypeScript 型定義を含める
   - CSS モジュールの import 文を追加
   - プロパティの型定義を追加

5. **CSS モジュールファイル作成**

   - 基本的なスタイルテンプレートを作成
   - BEM 記法またはモジュール記法でクラス名を定義
   - 一般的なスタイルプロパティを初期設定

6. **確認とメッセージ表示**
   - 作成されたファイルのパスを表示
   - 次のステップの提案（テスト作成、Storybook セットアップなど）

## テンプレート内容

### TSX ファイルテンプレート

- 下記テンプレートファイルです。がこの通りにする必要はありません。引数で渡されたファイル名と周りのファイルとの関連で、適切な形に書き換えてください。

```typescript
import React from "react";
import styles from "./ComponentName.module.css";

interface ComponentNameProps {
  children?: React.ReactNode;
  className?: string;
  onClick?: () => void;
}

const ComponentName: React.FC<ComponentNameProps> = ({
  children,
  className = "",
  onClick,
}) => {
  return (
    <div className={`${styles.root} ${className}`} onClick={onClick}>
      {children}
    </div>
  );
};

export default ComponentName;
```

### CSS モジュールテンプレート

```css
.root {
  /* 基本スタイル */
}
```

## エラーハンドリング

- ファイルパスが不正な場合のエラーメッセージ
- ディレクトリ作成権限がない場合の対処
- 既存ファイルが存在する場合の確認プロンプト
- 不正なコンポーネント名の場合の修正提案

## 注意事項

- コンポーネント名は PascalCase で生成されます
- CSS モジュールのクラス名は camelCase で生成されます
- TypeScript の型チ
