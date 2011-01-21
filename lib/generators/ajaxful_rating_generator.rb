class AjaxfulRatingGenerator < Rails::Generators::NamedBase
  
  def manifest
    record do |m|
      m.class_collisions 'Rate'
      m.template 'model.rb', File.join('app/models', 'rate.rb')
      m.migration_template 'migration.rb', 'db/migrate',
        :migration_file_name => 'create_rates'
      
      # style
      m.directory 'public/images/ajaxful_rating'
      m.file 'images/star.png', 'public/images/ajaxful_rating/star.png'
      m.file 'images/star_small.png', 'public/images/ajaxful_rating/star_small.png'
      m.file 'style.css', 'public/stylesheets/ajaxful_rating.css'
    end
  end
  
  protected
  
  def banner
    "Usage: #{$0} ajaxful_rating UserModelName"
  end
end
