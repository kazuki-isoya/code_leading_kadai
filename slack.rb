require "slack-notify"
require "dotenv"
Dotenv.load('.env')

#URLをそのまま書いているのでgithubにpushしないようにする
client = SlackNotify::Client.new(
  webhook_url: ENV['WEBHOOK_URL'],
  channel: "#dive-into-code課題",
  username: "yuugi_bot",
  icon_url: "/Users/morumore/Desktop/image/fake_yuugi.jpg",
  icon_emoji: ":shipit:",
  link_names: 1
)


client.notify("my turn end")
