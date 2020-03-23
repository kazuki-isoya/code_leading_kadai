require "slack-notify"

#URLをそのまま書いているのでgithubにpushしないようにする
client = SlackNotify::Client.new(
  webhook_url: "https://hooks.slack.com/services/T010KQ9B9HV/B010KQEUPQF/gbS30ETjXmAGv8DqpL7WsuO",
  channel: "#dive-into-coke課題",
  username: "mybot",
  icon_url: "/Users/morumore/Desktop/image/fake_yuugi.jpg",
  icon_emoji: ":shipit:",
  link_names: 1
)

client.notify("kadai test!")
