# frozen_string_literal: true

# require_relative "pokemon_api/version"
require "pry"
require 'colorize'
require 'colorized_string'
require "bundler"
require "awesome_print"

Bundler.require

require_all './lib/pokemon_cli'
