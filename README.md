# <renovation　style>

## サイト概要
### サイトテーマ
リォームを検討しているユーザーがどんなお部屋にしたいか、
どの会社でリフォームするか等のアイデアや情報を共有できるサイト。

### テーマを選んだ理由
不動産サイトで入居者向けのサイトは多数あるものの、所有者や賃貸人などのオーナー向けのサイトを見かけたことがありませんでした。
オーナー向けの情報サイトの中でもリフォーム情報が共有できるサイトにフォーカスを当てました。
リフォーム会社ごとに施工事例を載せている会社はありましたが1社ずつサイトを訪問し閲覧するには時間がかかりますし、
情報量が少なくリフォームイメージが沸きづらいと感じました。
間取り・リフォーム箇所・before、after写真などをお部屋ごとに掲載することによってイメージが沸きやすく、
多くのリフォーム会社がひとつのサイトに掲載することによって情報収集の効率に繋がります。
また、リフォーム会社としては多くの人の目にとまることによって小さい会社でも顧客獲得に繋がります。

### ターゲットユーザ
リフォームを検討している方・リフォーム会社・リフォームを提案する不動産会社

### 主な利用シーン
どんな部屋にリフォームしたいか情報収集をするとき
リフォーム会社を選ぶとき
施工したお部屋をアピールし新規顧客獲得したいとき
空室に困っているオーナーにリフォーム提案をするとき

## 設計書のURL
https://docs.google.com/spreadsheets/d/1nzNMsWnrC88zPGE4Oubkcl6Yv9imD-X-fLubw4v1paI/edit?usp=sharing

##実装機能リストのURL
https://docs.google.com/spreadsheets/d/1nzNMsWnrC88zPGE4Oubkcl6Yv9imD-X-fLubw4v1paI/edit?usp=sharing

## 開発環境
- OS：Linux(AmazonLinux2)
- 言語：HTML,CSS,JavaScript,Ruby,SQL
- フレームワーク：Ruby on Rails
- JSライブラリ：jQuery
- IDE：Cloud9

## 環境構築手順書
1. バンドルインストール
```
bundle install
```
2. yarnを使用して、bootstrapとpopperをインストール

```
yarn add jquery bootstrap@4.5 popper.js
```