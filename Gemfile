source 'https://rubygems.org'


gem 'rails', '4.2.5'
gem 'pg', '~> 0.15'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'devise'
gem "paperclip", "~> 4.2"
gem 'aws-sdk', '< 2.0'

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw]

gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :production do
	#gem 'unicorn'
    #gem 'rails_12factor'
	#gem 'rails_log_stdout',           github: 'heroku/rails_log_stdout'
	gem 'rails_serve_static_assets'

end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  #Para servidor VPS
  gem 'capistrano', '~> 3.4'
  gem 'capistrano-rails', '~> 1.1', '>= 1.1.6'
  gem 'capistrano-rbenv', '~> 2.0', '>= 2.0.4'
  gem 'capistrano-passenger'
end

