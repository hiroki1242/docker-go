## 実行手順
1. `docker build -t <image_name> .`<br>
    イメージをビルドする

2. `docker run -p 8080:8080 <image_name>`<br>
    Dockerコンテナを8080番ポートでパブリッシュして動かす
