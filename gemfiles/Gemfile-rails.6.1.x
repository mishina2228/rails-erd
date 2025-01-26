source "http://rubygems.org"

gemspec :path => ".."

gem "activerecord", "~> 6.1.1"

group :development do
  gem "logger" # https://github.com/rails/rails/issues/54260
  gem 'mocha'
  gem "rake"
  gem "yard"

  platforms :ruby do
    gem "sqlite3", '~> 1.4'
    gem "redcarpet"
  end

  platforms :jruby do
    gem "activerecord-jdbcsqlite3-adapter"
    gem "jruby-openssl", :require => false # Silence openssl warnings.
  end
end
