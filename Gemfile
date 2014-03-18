source 'https://rubygems.org'

gem 'rails', '4.0.1'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'
gem 'devise'
gem 'simple_form'
gem 'thin'
gem "paperclip", "~> 3.0"
gem 'aws-sdk'
gem 'rails-i18n', '~> 4.0.0'

# Use sqlite3 as the database for Active Record
group :development, :test do
	gem 'sqlite3'
end

group :production do
	gem 'pg'
	gem 'rails_12factor'
end

group :assets do
	gem 'sass-rails', '~> 4.0.0'
	gem 'uglifier', '>= 1.3.0'
	gem 'coffee-rails', '~> 4.0.0'
	
end

gem 'bootstrap-sass', '~> 3.1.0'
group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

