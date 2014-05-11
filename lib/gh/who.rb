require "gh/who/version"

require 'gist'
require 'github_api'

# Hide warning: "Faraday::Builder is now Faraday::RackBuilder."
# TODO: remove this after next github_api gem release (>0.11.3)
module Faraday
  Builder = RackBuilder
end

module Gh
  module Who
    extend self

    def auth_token_file
      File.expand_path "~/.gh-who"
    end

    # get Gist's login! method for performing OAuth 2.0 jibber jabber
    # and writing to #auth_token_file
    include Gist

    def github
      oauth_token = File.read(auth_token_file) rescue nil
      Github.new(:oauth_token => oauth_token)
    end

    def members(organization)
      github.organizations.members.all(organization).map(&:login)
    end

  end
end
