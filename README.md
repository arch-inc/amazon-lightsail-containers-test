amazon-lightsail-containers-test
---

「[研究プロジェクトのWebアプリを気軽にデプロイする方法](https://zenn.dev/junkato/books/how-to-deploy-research-web-apps)」 Chapter 02 Amazon Lightsail Containers のサンプルコードを含むリポジトリです。

## Directory structure

- `src/` TypeScript で書かれたWebサーバ
- `dist/` npm run build でトランスパイルされたWebサーバのコード置き場
- `.github/workflows/` Amazon Lightsail Containers へ自動デプロイを行う GitHub Actions の設定

see also: [Azure Web App for Containersの場合](https://github.com/arch-inc/azure-web-app-for-containers-test)

## How to use

このリポジトリを fork して動作させる場合、以下の設定が必要です。

- `.github/workflows/deploy.yml > env.AWS_REGION, env.AWS_LIGHTSAIL_SERVICE_NAME` を自分の環境に合わせて書き換える（cf. [コンテナサービスの作り方](https://zenn.dev/junkato/books/how-to-deploy-research-web-apps/viewer/amazon-lightsail-containers#%E3%82%B3%E3%83%B3%E3%83%86%E3%83%8A%E3%82%B5%E3%83%BC%E3%83%93%E3%82%B9%E3%81%AE%E4%BD%9C%E6%88%90)）
- GitHub secret `AWS_ACCESS_KEY_ID` `AWS_SECRET_ACCESS_KEY` をセットする（cf. [GitHub secret の設定](https://zenn.dev/junkato/books/how-to-deploy-research-web-apps/viewer/amazon-lightsail-containers#github-secret-%E3%81%AE%E8%A8%AD%E5%AE%9A)）
- デプロイ用テンプレート `container.template.json` の内容確認（cf. [デプロイ用テンプレートの作成](%E3%83%87%E3%83%97%E3%83%AD%E3%82%A4%E7%94%A8%E3%83%86%E3%83%B3%E3%83%97%E3%83%AC%E3%83%BC%E3%83%88%E3%81%AE%E4%BD%9C%E6%88%90)）

## Demo site

Amazon Lightsail Containers の micro プラン（最初の 3 か月: 無料; 以降 $10/月）で動いています。2021年4月までにシャットダウン予定です。

- https://amazon-lightsail-containers-test.3vi9f716815e6.ap-northeast-1.cs.amazonlightsail.com/
- https://amazon-lightsail-containers-test.3vi9f716815e6.ap-northeast-1.cs.amazonlightsail.com/hoge

---
https://github.com/arch-inc/amazon-lightsail-containers-test