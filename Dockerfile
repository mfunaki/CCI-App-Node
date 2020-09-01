### デプロイ用コンテナの構築
FROM mfunaki/cci-img-node

# ワーキングディレクトリの設定
WORKDIR /node-app

# コンテナへのファイルコピー(destはWORKDIRからの相対パス)
COPY ./node-app .

# 外部への公開ポート
EXPOSE 8080
# 起動
CMD [ "node", "app.js" ]