
####
# e.g. use like
#   rake db:seed WORLD=f   or
#   rake db:seed WORLDDB=skip


skip_worlddb_str =  ENV['WORLD'] || ENV['WORLDDB']

if skip_worlddb_str.present? && ['f', 'false', 'skip'].include?( skip_worlddb_str )
  skip_worlddb = true
  puts 'skipping setup for world.db'
else
  skip_worlddb = false
end



LogDb.delete!
WorldDb.delete!  unless skip_worlddb    # danger zone! deletes all records
SportDb.delete!  # danger zone! deletes all records

# check for plugins/addons
if defined?( SportDb::Market )
  SportDb::Market.delete!
end


WorldDb.read_setup( 'setups/sport.db.admin', find_data_path_from_gemfile_gitref('world.db'), { skip_tags: true } )  unless skip_worlddb


SportDb.read_builtin

sportdb_setups = []

######################
# national teams

sportdb_setups +=[
  ['euro-cup',    '2012'],
  ['africa-cup',  'teams'],
  ['north-america-gold-cup', 'teams'],
  ['copa-america', 'teams'],
  ['world-cup',   '2014' ]
]

################
# clubs

sportdb_setups +=[
  ['world',          'teams'],
  ['europe',         'teams'],
  ['at-austria',     '2013_14'],
  ['de-deutschland', '2013_14'],
  ['en-england',     '2013_14'],
  ['es-espana',      '2013_14'],
  ['it-italy',       '2013_14'],
  ['europe-champions-league', '2013_14'],
  ['america','teams'],
  ['mx-mexico','2013_14'],
  ['north-america-champions-league','2013_14'],
  ['br-brazil','2013'],
  ['copa-libertadores','2013'],
  ['world',          '2013'],    # circular reference; requires other teams
]

sportdb_setups.each do |setup|
  SportDb.read_setup( "setups/#{setup[1]}", find_data_path_from_gemfile_gitref( setup[0]) )
end


# check for plugins/addons
if defined?( SportDb::Market )
  # SportDb::Market.load_all( find_data_path_from_gemfile_gitref('football.db-market') )
  # SportDb::Market.read_all( find_data_path_from_gemfile_gitref('football.db-market') )
end


puts 'Done. Bye.'
