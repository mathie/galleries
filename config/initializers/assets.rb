# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )

assets_paths = Rails.application.config.assets.paths

bower_components = Rails.root.join('vendor', 'assets', 'bower_components')
assets_paths << bower_components

bootstrap_asset_dirs = File.join(bower_components, 'bootstrap-sass-official', 'assets', '*')
Dir[bootstrap_asset_dirs].each do |asset_dir|
  config.assets.paths << asset_dir
end
