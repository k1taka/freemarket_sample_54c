# config valid for current version and patch releases of Capistrano
lock "~> 3.11.0"

# 本番環境のマスターキーの指定
set :linked_files, fetch(:linked_files, []).push("config/master.key")

set :application, "freemarket_sample_54c"

# どのリポジトリからアプリをpullするかを指定する
set :repo_url, 'git@github.com:k1taka/freemarket_sample_54c.git'

# バージョンが変わっても共通で参照するディレクトリを指定
set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system', 'public/uploads')

set :rbenv_type, :user
set :rbenv_ruby, '2.5.1' 

# どの公開鍵を利用してデプロイするか
set :ssh_options, auth_methods: ['publickey'],
                  keys: ['~/.ssh/kt51kt51.pem']

# プロセス番号を記載したファイルの場所
set :unicorn_pid, -> { "#{shared_path}/tmp/pids/unicorn.pid" }

# Unicornの設定ファイルの場所
set :unicorn_config_path, -> { "#{current_path}/config/unicorn.rb" }
set :keep_releases, 5

set :default_env, {
  rbenv_root: "/usr/local/rbenv",
  path: "/usr/local/rbenv/shims:/usr/local/rbenv/bin:$PATH",
  # AWS_ACCESS_KEY_ID: ENV["AWS_ACCESS_KEY_ID"],
  # AWS_SECRET_ACCESS_KEY: ENV["AWS_SECRET_ACCESS_KEY"]
  AWS_ACCESS_KEY_ID: Rails.application.credentials.aws[:access_key_id],
  AWS_SECRET_ACCESS_KEY: Rails.application.credentials.aws[secret_access_key]
}

# デプロイ処理が終わった後、Unicornを再起動するための記述
after 'deploy:publishing', 'deploy:restart'
namespace :deploy do
  task :restart do
    invoke 'unicorn:restart'
  end
end