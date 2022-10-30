# Caffeinate WebUI

Provides a simple UI to view and manage some aspects of Caffeinate.

[]
## Installation

Add this line to your application's Gemfile:

```ruby
gem 'caffeinate_webui'
```

And then execute:

    $ bundle install

Drop it into your routes:

```ruby
mount Caffeinate::Webui => '/admin/caffeinate' 
```

## Protect it

If you're using Devise, you can simply:

```ruby
authenticate :user, ->(user) { user.admin? } do
  mount Caffeinate::Webui => '/admin/caffeinate'
end
```

Otherwise, protect it with your preferred rack-based strategy.

## Features

* Some lightweight dashboard stuff
* View campaigns and their steps
* View subscriptions
* Unsubscribe a subscription
* View mailings

## Dependencies

Doesn't need Sprockets, so I guess that's nice. 
