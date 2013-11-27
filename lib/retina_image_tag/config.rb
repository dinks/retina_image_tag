module RetinaImageTag
  class Config
    def self.asset_paths
      Dir[File.expand_path('../../../app/assets/javascripts/', __FILE__)]
    end
  end
end
