require 'bundler'
require 'net/http'
require 'uri'
require 'json'
Bundler.require

require_relative "./pokemon_cli/version"
require_relative "./pokemon_cli/cli"
require_relative "./pokemon_cli/pokemon"
require_relative "./pokemon_cli/api"
