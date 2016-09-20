# docker-compose-with-link-sample

docker-composeを使ってPHPコンテナとMySQLコンテナを連携させるサンプルです。

## 実行方法

```
# コンテナを起動
⇒  docker-compose up -d
Creating network "dockercomposewithlinksample_default" with the default driver
Creating dockercomposewithlinksample_mysql_1
Creating dockercomposewithlinksample_web_1

# PHPコンテナにログイン
⇒  ./login.h

# MySQLに繋いで情報を出力
root@6237502e4401:/app# php connect.php
Array
(
    [version()] => 5.5.51
)
Array
(
    [Tables_in_app_test] => user
)

# ログアウト
root@6237502e4401:/app# exit
exit

# コンテナを削除
⇒  docker-compose down
Stopping dockercomposewithlinksample_mysql_1 ... done
Removing dockercomposewithlinksample_web_1 ... done
Removing dockercomposewithlinksample_mysql_1 ... done
Removing network dockercomposewithlinksample_default
```

### MySQLの初期データの作成

MySQLの公式のコンテナは `docker-entrypoint-initdb.d/` ディレクトリに `.sql`や`.sh`ファイルを置くと
コンテナ起動時に実行します。
その仕組みを使い、初期データを `docker-entrypoint-initdb.d/setup.sql` に定義し、volumesで設定しています。

