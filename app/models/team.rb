
class Team < ActiveRecord::Base

  has_many :home_games, :class_name => 'Game', :foreign_key => 'team1_id'
  has_many :away_games, :class_name => 'Game', :foreign_key => 'team2_id'


  ### fix - how to do it with has_many macro? possible??
  def games
    Game.where( 'team1_id = ? or team2_id = ?', id, id ).order( 'play_at' ).all
  end


  def self.create_from_ary!( teams )
    teams.each do |values|
      
      ## key & title required
      attr = {
        :key   => values[0],
        :title => values[1]
      }
      
      ## check for optional values
      values[2..-1].each do |value|
        if value.length == 3   ## assume its a tag (three latters)
          attr[ :tag ] = value
        else
          attr[ :title2 ] = value
        end
      end

      Team.create!( attr )
    end # each team
  end

  def key
     #todo/fix:   generate_key w/ on save callback
     
     # generate key if necessary (for debugging only - should be not null field!)
     value = read_attribute(:key)
     value = "?#{title.downcase.gsub( /\s/, '_').gsub( /[^a-z0-9_]/, '*' )}?"  if value.blank?
     value
  end  
  
end  # class Team
