CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:                'AWS',                        # required
    aws_access_key_id:       ENV["AWS_ACCESS_KEY_ID"],      # required
    aws_secret_access_key:   ENV["AWS_SECRET_ACCESS_KEY"],  # required
  }
  config.fog_directory  = 'job-board-logos/logos'        # required
  config.fog_public     = false                          # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=5184000'}  # optional, set to 60 days
end