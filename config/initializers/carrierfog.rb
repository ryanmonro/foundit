if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
      :provider               => 'AWS',         
      :aws_access_key_id      => ENV['AWS_ACCESS_KEY_ID'],
      :aws_secret_access_key  => ENV['AWS_SECRET_ACCESS_KEY'],
      :region => 'ap-southeast-2'
    }
    config.storage = :fog
    config.fog_directory  = ENV['AWS_BUCKET_NAME']
    config.fog_public     = false
    # config.root = Rails.root.join('tmp')
    # config.cache_dir = 'files'
    # config.permissions = 0777
    config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
  end
else
  CarrierWave.configure do |config|
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
      :provider               => 'AWS',         
      :aws_access_key_id      => ENV['AWS_ACCESS_KEY_ID'],
      :aws_secret_access_key  => ENV['AWS_SECRET_ACCESS_KEY'],
      :region => 'ap-southeast-2'
    }
    config.storage = :fog
    config.fog_directory  = ENV['AWS_BUCKET_NAME_DEV']
    config.fog_public     = false
    # config.root = Rails.root.join('tmp')
    # config.cache_dir = 'files'
    # config.permissions = 0777
    config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
  end
end