# fjord-books_app

フィヨルドブートキャンプのRailsプラクティスの提出物（「Rails の i18n を理解する」以降の提出物）をまとめるリポジトリです。

このサンプルアプリケーションは五十嵐邦明氏による「 [Railsの教科書](http://igarashikuniaki.net/rails_textbook/) 」で説明されている書籍管理アプリをベースとしています。

## プラクティスを進めるにあたって

このリポジトリのブランチを切り替えると、正解が見えてしまいます。また、他の受講生が作成した提出物も見ようと思えば見ることができます。

正解を見てしまわないように注意しながら進めていってください。 実力をつけていくためにも、自分自身の力でソースコードを完成させていきましょう。

## How to use

### 初回のみ行う操作

1. 右上の `Fork` ボタンを押してください。
2. `#{自分のアカウント名}/fjord-books_app` が作成されます。
3. 作業PCの任意の作業ディレクトリにて `git clone` してください。

```
$ git clone https://github.com/自分のアカウント名/fjord-books_app.git
```

4. `cd fjord-books_app` でカレントディレクトリを変更してください。
5. `.ruby-version` に書かれたバージョンのRubyがインストールされていなければインストールしてください。

### プラクティスごとに行う操作

ここでは「Rails の i18n を理解する」を提出する際の手順を説明します。なお、最初のプラクティスである「Rails の基本を理解する」はこの手順に関係なく、「Railsの教科書」に書かれている説明にしたがって開発を進めてください。

1. スタート地点となるブランチをチェックアウトしてください。（ `git checkout -b 02-i18n origin/02-i18n` ）
2. そこからさらに提出用ブランチを作成してください。（ `git checkout -b my-i18n` ）
3. 以下の手順に従って環境セットアップを実行してください。
    1. `bundle install` を実行
    2. `yarn install` を実行
    3. `rails db:reset` を実行（既存の開発用DBがある場合もいったんdropして再作成します。また、サンプルデータも自動的に作成されます）
    4. `bundle exec rubocop` を実行して警告が出ないことを確認
4. `rails s` して動作確認し、スタート地点のアプリケーション仕様を把握してください。
5. プラクティスで指示されたコードを書いてください。
6. ソースコードが完成したら提出前にrubocopを実行し、警告の箇所を修正してください。
7. 自分が書いたコードをGitHubにpushしてください。
8. 以下の注意点に気を付けながら自分のリポジトリへのPull Requestを作成し、URLを提出してください。
    - OK `自分のアカウント名/02-i18n` ← `自分のアカウント名/my-i18n`
    - NG `自分のアカウント名/main` ← `自分のアカウント名/my-i18n`
    - NG `fjordllc/02-i18n` ← `自分のアカウント名/my-i18n`
9. 合格したら上記Pull Requestをマージしてください（ `02-i18n` へのマージのみ。 `main` へのマージは不要です）

「kaminari を使ってページング処理を実装する」以降のプラクティスでは、ブランチ名（ `02-i18n` ）の部分だけを置き換えて、同じ手順で作業してください。

### my-github_loginでの環境変数の設定
1. GitHubでの設定
Client IDとClient secretはGitHubの[［Settings］->［Developer settings］](https://github.com/settings/developers)->［OAuth Apps］で、以下の内容を設定します。
- Application name: 任意の文字列
- Homepage URL: http://localhost:3000/books
- Authorization callback URL: http://localhost:3000/users/auth/github

2. GitHubで取得したClient IDとClient secretsを以下の環境変数に設定します。

|環境変数|内容|
| --- | --- |
|GITHUB_KEY|Client ID|
|GITHUB_SECRET|Client secret|
