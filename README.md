# wow_i18n

Provides i18n compatible translations related to World of Warcraft.

# Usage

## Rails application

Use the [wow_i18n_rails](https://www.github.com/promisedlandt/wow_i18n_rails) gem.

## Non-Rails application

In a non-Rails application, install the gem and add

```ruby
require "wow_i18n"
WowI18n.import
```

By default, all locale data will be loaded.  
If you would like to only load translations for certain locales, you can pass those locales to import.

```ruby
require "wow_i18n"

# Only load German and French translations
WowI18n.import(:de, :fr)
# this also works
WowI18n.import([:de, :fr])
```

# Contributing

If you add a key to any locale, make sure to add it to every locale.

Only pull requests that pass the spec (run `rake`) will be accepted.
