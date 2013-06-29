source 'https://rubygems.org'

gem 'rails', '3.2.12'

gem 'sinatra'

############
# lets use open sport.db schema & fixtures

gem 'logutils', '0.6.0'

gem 'worlddb-data', '9.9.9', :git => 'https://github.com/geraldb/world.db.git'

gem 'footballdb-data-world',  '9.9.9', :git => 'https://github.com/openfootball/world.git'
gem 'footballdb-data-europe', '9.9.9', :git => 'https://github.com/openfootball/europe.git'
gem 'footballdb-data-at',     '9.9.9', :git => 'https://github.com/openfootball/at-austria.git'
gem 'footballdb-data-de',     '9.9.9', :git => 'https://github.com/openfootball/de-deutschland.git'
gem 'footballdb-data-en',     '9.9.9', :git => 'https://github.com/openfootball/en-england.git'
gem 'footballdb-data-es',     '9.9.9', :git => 'https://github.com/openfootball/es-espana.git'


# gem 'logutils', '0.1.0',  :git => 'git://github.com/geraldb/logutils'
# gem 'textutils', '0.3.0', :git => 'git://github.com/geraldb/textutils'

# gem 'worlddb', '0.10.0', :git => 'git://github.com/geraldb/world.db.ruby.git'
# gem 'sportdb', '0.10.0', :git => 'git://github.com/geraldb/sport.db.ruby.git'

gem 'worlddb', '1.7.2'
gem 'sportdb', '1.6.18'

gem 'worlddb-flags', '0.1.0'  # use bundled country flags

gem 'sportdb-service', '0.1.5'  # mountable JSON api service w/ Sinatra packaged into a gem for easy reuse
# gem "sportdb-service", "999", :path => "../sport.db.api", :require => 'sportdb/service'

# gem "worlddb-data", "999", :path => "../world.db"
# gem "sportdb-data", "999", :path => "../football.db"

# gem "logutils", "0.1.0",  :path => "../logutils"
# gem "textutils", "0.3.0",  :path => "../textutils"

# gem "worlddb", "0.10.0", :path => "../world.db.ruby"
# gem "sportdb", "0.10.0", :path => "../sport.db.ruby"



group :production do
  gem 'pg'
  gem 'thin'    # use faster multiplexed (w/ eventmachine) web server
end

group :development do
  gem 'sqlite3'
  gem 'annotate', '~> 2.4.1.beta'
end



# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer'

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
