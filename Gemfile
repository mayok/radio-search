source 'https://rubygems.org'

gem 'rails', '4.2.3'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc

group :development, :test do
  gem 'sqlite3'
  gem 'byebug'
  gem 'web-console', '~> 2.0'
  gem 'spring'
end

group :test do
  gem "capybara"
  gem "connection_pool"
  gem "launchy"
  #gem "minitest-reporters" # minitest-doc_reporter を使う
  gem "mocha"
  gem "poltergeist"
  gem "shoulda"
  gem "test_after_commit"

  gem "minitest-rails"
  gem "minitest-rails-capybara" # capybaraで結合テストできるようにする
  gem "minitest-doc_reporter" # テスト結果の表示を整形
  # 機能追加系
  gem "minitest-stub_any_instance" # メソッドmockを追加できる様にする
  gem "minitest-bang" # let文で遅延読み込みを使えるようにする
  gem "minitest-line" # 行番号指定でテスト実行出来る様にする
  gem "factory_girl" # DBのデータのモックを作成
end

group :production do
  gem 'pg',             '0.17.1'
  gem 'rails_12factor', '0.0.2'
end
