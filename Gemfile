source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.2', '>= 6.0.2.2'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 4.1'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 4.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Previous versions 'gems'
gem 'jquery-rails', '~> 4.3', '>= 4.3.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# gems for continious integration
gem 'rubocop', '~> 0.60.0', require: false
gem 'scss_lint', require: false
# Use HAML as templating engine
gem 'haml'
gem 'haml-rails'
# Use Pagy for pagination engine
gem 'pagy'
# Authorization gem
gem 'pundit'
# Webpack and React
gem 'react-rails', '~> 2.4'
# PDF generator using wicked_pdf
gem 'wicked_pdf'
gem 'wkhtmltopdf-binary', '~> 0.12.5'
# AWS S3
gem 'aws-sdk-s3', '~> 1.8.2'
# Import to XLSX using axlsx_rails and its dependencies.
gem 'axlsx', git: 'https://github.com/randym/axlsx.git', ref: 'c8ac844'
gem 'axlsx_rails', '>= 0.5.1'
gem 'rubyzip', '>= 1.2.1'
# Wicked pdf heroku binary
gem 'wkhtmltopdf-heroku'
# Devise
gem 'devise', '~> 4.5'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  gem 'rspec-rails', '~> 4.0'
  gem 'dotenv-rails'
  gem 'factory_bot_rails'
  gem 'fixture_builder'
  gem 'pry'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :test do
  gem 'apparition'
  gem 'capybara', '~> 3.18.0'
  gem 'capybara-screenshot'
  gem 'chromedriver-helper', '~> 2.1', '>= 2.1.1' unless ENV.key?('CIRCLECI')
  gem 'rspec_junit_formatter'
  gem 'selenium-webdriver', '~> 3.142', '>= 3.142.3'
  gem 'shoulda-matchers', '~> 3.1'
  gem 'execjs', '~> 2.7.0'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'letter_opener'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
