CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['AWS_S3_ACCESS_ID'],
    aws_secret_access_key: ENV['AWS_S3_SECRET_KEY'],
    region: ENV['AWS_S3_REGION']
  }

  config.fog_directory  = ENV['AWS_S3_BUCKET_NAME']
end
