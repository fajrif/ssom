CarrierWave.configure do |config|
  #config.fog_credentials = {
    #:provider                         => 'Google',
    #:google_storage_access_key_id     => configatron.google_storage_access_key_id,
    #:google_storage_secret_access_key => configatron.google_storage_secret_access_key
  #}
  #config.fog_directory = 'subud'

  ## use this configuration when using local gridfs storage
  # config.storage = :grid_fs
  # config.grid_fs_connection = Mongoid.database
  # config.grid_fs_access_url = "/gridfs"
  # config.cache_dir = "uploads"
  # config.root = Rails.root.join('tmp')

  ## use this configuration when using mongohq
  # uri = URI.parse(ENV['MONGOHQ_URL'])
  # config.grid_fs_database = File.basename(uri.path)
  # config.grid_fs_host = uri.host unless uri.host.blank?
  # config.grid_fs_port = uri.port unless uri.port.blank?
  # config.grid_fs_username = uri.user unless uri.user.blank?
  # config.grid_fs_password = uri.password unless uri.password.blank?
end
