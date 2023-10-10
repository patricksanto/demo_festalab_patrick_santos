source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

# Core
gem "rails", "~> 7.0.8"  # The core framework for building web applications.
gem "sqlite3", "~> 1.4"  # Lightweight database used mainly for development.
gem "puma", "~> 5.0"     # Web server for Rails.

# Assets
gem "sprockets-rails"    # The original Rails asset pipeline.
gem "sass-rails"         # Enables using Sass for styling.
gem "webpacker", '~> 5.x'# Manages JavaScript, CSS, and assets.

# Frontend Enhancements
gem "importmap-rails"    # Use JavaScript with ESM import maps.
gem "turbo-rails"        # Hotwire's SPA-like page accelerator.
gem "stimulus-rails"     # Hotwire's modest JavaScript framework.

# APIs and JSON
gem "jbuilder"           # Build JSON views.

# Caching & Background Jobs
gem "redis", "~> 4.0"    # In-memory data structure store, used for caching and background jobs.

# TimeZone and Optimization
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ] # TimeZone data for Windows.
gem "bootsnap", require: false  # Reduces app boot time.

# Forms
gem "simple_form"        # Provides a simple way to create forms.
gem "valid_email2"       # Validates emails.
gem "cpf_cnpj"           # Validates Brazilian CPF and CNPJ numbers.

# Development & Testing
group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ] # Ruby debugging gem.
end

group :development do
  gem "web-console"      # Rails console in your browser.
end

group :test do
  gem "capybara"         # Helps test web applications by simulating user actions.
  gem "selenium-webdriver" # Browser automation tool, mainly for testing.
end

# Others
gem "faker"              # Generates fake data for seeding, testing, etc.
gem "pg"                 # PostgreSQL adapter for Active Record.

# Uncomment gems based on your application's requirements.
# gem "kredis"           # Use Kredis to get higher-level data types in Redis.
# gem "bcrypt", "~> 3.1.7" # Use Active Model has_secure_password.
# gem "image_processing", "~> 1.2" # Use Active Storage variants.
# gem "rack-mini-profiler" # Add speed badges.
# gem "spring"           # Speed up commands on slow machines / big apps.
