CarrierWave.configure do |config|
  config.storage = :fog         # ここだけでデフォルトを切り替える
  config.fog_credentials = {
    :provider              => "AWS",
    :aws_access_key_id     => ENV["AWS_ACCESS_KEY_ID"],
    :aws_secret_access_key => ENV["AWS_SECRET_ACCESS_KEY"],
    :region                => "ap-northeast-1", # AWSの管理画面では Tokyo となっていても Tokyo を設定してはいけないという罠
  }
  config.fog_directory = "carrierwave-app" # バケット名のこと。手動で作っておかなければならない。
end
