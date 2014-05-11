# gh-who

Commandline tool for listing Github users by organization

## Installation

Add this line to your application's Gemfile:

    gem 'gh-who'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install gh-who

## Usage

To get a list of public members of an organization:

    $ gh-who pvdtechevents

Consider piping this list into other programs.
For instance, if you have both [Selecta](https://github.com/garybernhardt/selecta) and [gitfinger](https://github.com/danchoi/gitfinger) installed, you could run:

    $ gh-who pvdtechevents | selecta | xargs gitfinger

This will let you select one of the public members of the pvdtechevents organization and inspect their Github activity.

If you wish to list users from a private organization that you have permission to access with your GitHub account, first run:

    $ gh-who --login

This will obtain an OAuth2 access token and store it in ~/.gh-who for future use.

## Contributing

1. Fork it ( https://github.com/mattgillooly/gh-who/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
