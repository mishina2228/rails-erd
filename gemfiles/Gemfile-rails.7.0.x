source "http://rubygems.org"

gemspec :path => ".."

gem "logger" # https://github.com/rails/rails/issues/54260

gem "activerecord", "~> 7.0.0"

group :development do
  gem 'mocha'
  gem "rake"
  gem "yard"

  platforms :ruby do
    gem "sqlite3"
    gem "redcarpet"
  end

  platforms :jruby do
    gem "activerecord-jdbcsqlite3-adapter"
    gem "jruby-openssl", :require => false # Silence openssl warnings.
  end
end
