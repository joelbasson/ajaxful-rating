class AjaxfulRatingGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)
  
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
