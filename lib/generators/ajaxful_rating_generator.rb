class AjaxfulRatingGenerator < Rails::Generators::NamedBase
  include Rails::Generators::Migration
  source_root File.expand_path('../templates', __FILE__)
    
  def self.next_migration_number(dirname)
     if ActiveRecord::Base.timestamped_migrations
       Time.now.utc.strftime("%Y%m%d%H%M%S")
     else
       "%.3d" % (current_migration_number(dirname) + 1)
     end
   end
     
  def install_files
    template 'model.rb', 'app/models/rate.rb'
    migration_template 'migration.rb', 'db/migrate/create_rates.rb'
    copy_file 'images/star.png', 'public/images/ajaxful_rating/star.png'
    copy_file 'images/star_small.png', 'public/images/ajaxful_rating/star_small.png'
    copy_file 'style.css', 'public/stylesheets/ajaxful_rating.css'
  end
  
  protected
  
  def banner
    "Usage: #{$0} ajaxful_rating UserModelName"
  end
end
