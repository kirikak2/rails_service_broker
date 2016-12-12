# Rails Service Broker

Very simple solution for create service broker on Ruby on Rails.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rails_service_broker'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rails_service_broker

## Usage

When you would like to create AwesomeService ServiceBroker, you can write this.

```
# rails g rails_service_broker:api awesome_service
      create  app/apis/awesome_service/base.rb
      create  app/apis/awesome_service/v2/base.rb
      create  app/apis/awesome_service/v2/catalog.rb
      create  app/apis/awesome_service/v2/service_binding.rb
      create  app/apis/awesome_service/v2/service_instance.rb
      create  config/awesome_service.yml
      create  app/views/api/awesome_service/v2/catalog.json.jbuilder
       route  mount AwesomeService::Base => '/awesome_service'
```

Service Broker Endpoint is create at `http://localhost:3000/awesome_service/` enjoy!

You have to edit `config/awesome_service.yml` for define service.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/kirikak2/rails_service_broker.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
