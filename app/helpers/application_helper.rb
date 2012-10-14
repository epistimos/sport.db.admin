module ApplicationHelper

  def powered_by
    ## todo/fix: use version from wettpool module
    content_tag :div do
      link_to( 'sport.db.admin/1', 'https://github.com/geraldb/sport.db.admin' )  + ', ' +
      link_to( "sport.db/#{SportDB::VERSION}", 'https://github.com/geraldb/sport.db' ) + ' - ' +
      content_tag( :span, "Ruby/#{RUBY_VERSION} (#{RUBY_RELEASE_DATE}/#{RUBY_PLATFORM}) on") + ' ' +
      content_tag( :span, "Rails/#{Rails.version} (#{Rails.env})" )
      ## content_tag( :span, "#{request.headers['SERVER_SOFTWARE'] || request.headers['SERVER']}" )
    end
  end

end # module ApplicationHelper