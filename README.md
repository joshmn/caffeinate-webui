# Caffeinate WebUI

Provides a simple UI to view and manage some aspects of Caffeinate.

<div align="center">
  <img width="450" src="https://github.com/joshmn/caffeinate/raw/master/logo.png" alt="Caffeinate logo" />
</div>

<div align="center">
  <img width="100%" src="https://github.com/joshmn/caffeinate-webui/raw/master/dashboard.png" alt="Caffeinate WebUI Example" />
</div>

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'caffeinate_webui'
```

And then execute:

    $ bundle install

Drop it into your routes:

```ruby
mount Caffeinate::Webui::Engine => '/admin/caffeinate' 
```

## Protect it

If you're using Devise, you can simply:

```ruby
authenticate :user, ->(user) { user.admin? } do
  mount Caffeinate::Webui::Engine => '/admin/caffeinate'
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
