Rails.application.config.autoload_paths += Dir[Rails.root.join('app', 'apis', '*')]
Rails.application.config.middleware.use(Rack::Config) do |env|
  env['api.tilt.root'] = Rails.root.join('app', 'views', 'api')
end
