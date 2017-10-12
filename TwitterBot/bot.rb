#!/usr/bin/env ruby
require 'rubygems'
require 'bundler/setup'

require 'twitter'
require 'json'

client = Twitter::REST::Client.new do |config|
  config.consumer_key = ENV[‘TWITTER_CONSUMER_KEY’]
  config.consumer_secret = ENV[‘TWITTER_CONSUMER_SECRET’]
  config.access_token = 34252656-RdeiKu6z2pl33LFWEk1QnghTIpl1amq3tYZMRSlAG
  config.access_token_secret = EpLQ6w20DRektJk33uncDAFPwIqdZDpd81CGkUt9s0wbi
end


client.update('My first tweet from the command line!')
