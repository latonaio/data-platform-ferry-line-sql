# data-platform-ferry-line-sql 

data-platform-ferry-line-sql は、データ連携基盤において、フェリー路線データを維持管理するSQLテーブルを作成するためのレポジトリです。  

## 前提条件  
data-platform-ferry-line-sql は、データ連携にあたり、API を利用し、本レポジトリ の sql 設定ファイルの内容は、下記 URL の API 仕様を前提としています。  
https://api.XXXXXXXX.com/api/OP_API_XXXXXXX_XXX/overview   

## sqlの設定ファイル

data-platform-ferry-line-sql には、sqlの設定ファイルとして、以下のファイルが含まれています。    

* data-platform-ferry-line-sql-header-data.sql（データ連携基盤 フェリー路線 - ヘッダデータ）
* data-platform-ferry-line-sql-stop-port-data.sql（データ連携基盤 フェリー路線 - 停留港データ）
* data-platform-ferry-line-sql-express-type-data.sql（データ連携基盤 フェリー路線 - エクスプレスタイプデータ）
* data-platform-ferry-line-sql-express-stop-port-data.sql（データ連携基盤 フェリー路線 - エクスプレス停留港データ）
* data-platform-ferry-line-sql-departure-port-data.sql（データ連携基盤 フェリー路線 - 始点港データ）
* data-platform-ferry-line-sql-destination-port-data.sql（データ連携基盤 フェリー路線 - 終着港データ）
* data-platform-ferry-line-sql-dpt-dst-port-data.sql（データ連携基盤 フェリー路線 - 始点終着港データ）
* data-platform-ferry-line-sql-header-doc-data.sql（データ連携基盤 フェリー路線 - ヘッダ文書データ）
* data-platform-ferry-line-sql-partner-data.sql（データ連携基盤 フェリー路線 - パートナデータ）

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法
MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。  
