# さいとう小児歯科 - 求人サイト

小児歯科医院の求人情報を掲載するWebサイトです。

## 開発環境

```bash
# 依存関係のインストール
npm install

# 開発サーバーの起動
npm run dev

# ビルド
npm run build

# 静的サイトの生成
npm run generate
```

## S3へのデプロイ

### 前提条件

1. AWS CLIがインストールされている
2. AWS認証情報が設定されている
3. S3バケットが作成されている

### デプロイ手順

#### 1. 基本的なデプロイ

```bash
# デフォルトバケット名でデプロイ
./deploy-s3.sh

# カスタムバケット名でデプロイ
./deploy-s3.sh your-bucket-name
```

#### 2. 手動でのデプロイ

```bash
# 静的サイトをビルド
npm run build:static

# S3にアップロード
aws s3 sync .output/public s3://your-bucket-name --delete

# 静的ウェブサイトホスティングを設定
aws s3 website s3://your-bucket-name --index-document index.html --error-document index.html
```

## CloudFront + SSL設定

### 1. CloudFrontディストリビューションの作成

```bash
# 基本的なCloudFront設定
./create-cloudfront.sh

# カスタムバケット名とドメイン名で設定
./create-cloudfront.sh your-bucket-name your-domain.com
```

### 2. コンテンツ更新時のキャッシュクリア

```bash
# CloudFrontキャッシュをクリア
./update-cloudfront.sh [distribution-id]
```

### 3. カスタムドメインの設定（オプション）

#### SSL証明書の作成（ACM）

```bash
# SSL証明書をリクエスト
aws acm request-certificate \
    --domain-name your-domain.com \
    --subject-alternative-names "*.your-domain.com" \
    --validation-method DNS \
    --region us-east-1
```

#### CloudFrontディストリビューションの更新

```bash
# ディストリビューション設定を取得
aws cloudfront get-distribution-config --id [distribution-id] > dist-config.json

# 設定を編集（カスタムドメインとSSL証明書を追加）

# ディストリビューションを更新
aws cloudfront update-distribution --id [distribution-id] --distribution-config file://dist-config.json
```

### 4. DNS設定

Route 53または外部DNSプロバイダーで以下のレコードを設定：

```
Type: A
Name: your-domain.com
Value: [CloudFront Distribution Domain]
```

### カスタムドメインの設定

1. **Route 53でドメインを設定**
   - ホストゾーンを作成
   - AレコードをCloudFrontディストリビューションに設定

2. **CloudFrontでCDNを設定**
   - オリジンをS3バケットに設定
   - カスタムドメインのSSL証明書を設定

### 環境変数

必要に応じて以下の環境変数を設定：

```bash
export AWS_PROFILE=your-profile
export AWS_REGION=ap-northeast-1
```

## 技術スタック

- **フレームワーク**: Nuxt 3
- **スタイリング**: SCSS
- **フォント**: Google Fonts (Noto Sans JP, Fredoka One)
- **デプロイ**: AWS S3 + CloudFront

## ディレクトリ構造

```
├── components/          # Vueコンポーネント
├── pages/              # ページコンポーネント
│   └── recruit/        # 求人ページ
├── assets/             # 静的アセット
│   └── scss/          # スタイルシート
├── public/             # 公開ファイル
├── deploy-s3.sh        # S3デプロイスクリプト
├── create-cloudfront.sh # CloudFront設定スクリプト
└── update-cloudfront.sh # CloudFront更新スクリプト
```

## ライセンス

© 2025 さいとう小児歯科. All rights reserved.
