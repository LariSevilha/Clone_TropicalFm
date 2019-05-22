source "https://rubygems.org"

ruby "2.3.3"

# Gem in test
gem "alert_message"
gem "autoprefixer-rails"
gem "bootstrap-wysihtml5-rails"
gem "bootstrap-wysihtml5-rails-font-awesome", "~> 0.3.1.25"
gem "bourbon", "~> 4.2.7"
gem "cancancan"
gem "carrierwave"
gem "carrierwave-ftp", require: "carrierwave/storage/sftp"
gem "coffee-rails", "~> 4.2"
gem "devise"
gem "devise-i18n"
gem "email_validator"
gem "figaro"
gem "friendly_id"
gem "htmlcompressor"
gem "inline_svg"
gem "jbuilder", "~> 2.5"
gem "jquery-rails"
gem "kaminari"
gem "meta-tags"
gem "mini_magick"
gem "modernizr-rails"
gem "neat", "1.8.0"
gem "owlcarousel2-rails"
gem "pg"
gem "rails", "~> 5.2.3"
gem "rails-env"
gem "rails_admin_rollincode", git: "https://github.com/giovaneperlin/rails_admin_theme.git"
gem "rails_admin"
gem "rails_admin-i18n"
gem "randumb"
gem "recaptcha"
gem "sass-rails", "~> 5.0"
gem "sitemap_generator"
gem "turbolinks", "~> 5"
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'uglifier', '~> 4.1', '>= 4.1.20'
gem "whenever", require: false

group :development, :test do
  gem "byebug", platform: :mri
end

group :development do
  gem "better_errors"
  gem "binding_of_caller"
  gem "listen", "~> 3.0.5"
  gem "mina", "0.3.8"
  gem "puma", "~> 3.0"
  gem "rename"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console"
end

group :staging, :production do
  gem "passenger"
  gem "mini_racer"
end

group :production do
  gem "turnout"
end
