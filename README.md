# Caffeinate WebUI

Provides a simple UI to view and manage some aspects of Caffeinate.

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

## User authorization

```ruby
authenticate :user, ->(user) { user.admin? } do
  mount Caffeinate::Webui => '/admin/caffeinate'
end
```
