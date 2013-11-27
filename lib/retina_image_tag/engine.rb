require 'rails'

module RetinaImageTag
  class Engine < ::Rails::Engine

    initializer 'retina_image_tag.load_helpers' do |app|
      puts "Started Helper"
      Dir[File.expand_path('../../../app/helpers/*.rb', __FILE__)].each do |helper|
        require helper
        ActionView::Base.send :include, File.basename(helper, ".rb").camelize.constantize
      end
    end
  end
end
