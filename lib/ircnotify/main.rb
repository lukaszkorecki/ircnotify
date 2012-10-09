module Ircnotify
  def self.main
    options = ::Trollop::options do
      banner <<-EOS
      ircnotifier #{::Ircnotify::VERSION}
      Usage:
        ircnotifier <opts> --message "your message"

      Options:
          #{educate}
      EOS
      opt :config, "Config file", :type => :string, :default => File.expand_path("~/.ircnotifier")
      opt :notice, "Use /notice <channel>", :default => false
      opt :channels, "Comma-delimited list or irc channels", :type => :string
      opt :message, "Your message", :type => :string

    end
    Notifier.new(options).notify
  end
end

