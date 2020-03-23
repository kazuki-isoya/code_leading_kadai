require "slack-notify"
require "clockwork"
require 'active_support/time'
require "dotenv"
Dotenv.load('.env')


module Clockwork
  handler do |job|
    client = SlackNotify::Client.new(
      webhook_url: ENV['WEBHOOK_URL'],
      channel: "#dive-into-code課題",
      username: "yuugi_bot",
      icon_url: "/Users/morumore/Desktop/image/fake_yuugi.jpg",
      icon_emoji: ":shipit:",
      link_names: 1
    )
    client.notify("Draw! Monster card!")
  end
  every(3.minutes, 'less.frequent.job')

  # client = SlackNotify::Client.new(
  #   webhook_url: ENV['WEBHOOK_URL'],
  #   channel: "#dive-into-code課題",
  #   username: "yuugi_bot",
  #   icon_url: "/Users/morumore/Desktop/image/fake_yuugi.jpg",
  #   icon_emoji: ":shipit:",
  #   link_names: 1
  # )
  # client.notify("Draw! Monster card!")
end
