require 'bundler'
require 'net/http'
require 'uri'
require 'json'
require 'colorize'
require 'pry'
Bundler.require

require_relative "./pokemon_cli/version"
require_relative "./pokemon_cli/cli"
require_relative "./pokemon_cli/pokemon"
require_relative "./pokemon_cli/api"
