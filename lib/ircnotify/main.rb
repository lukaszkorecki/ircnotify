module Ircnotify
  IRC_CONF = {}
  def self.main
    options = ::Trollop::options do
      banner <<-EOS
      ircnotifier #{::Ircnotify::VERSION}
      Usage:
        ircnotifier <opts> --message "your message"

      Options:
      EOS
      opt :config, "Config file", :type => :string, :default => File.expand_path("~/.ircnotify")
      opt :message, "Your message", :type => :string, :default => 'test'
      opt :verbose, "Be very verbose", :type => :bool, :default => false
      # TODO
      # opt :notice, "Use /notice <channel>", :default => false
      # opt :channels, "Comma-delimited list or irc channels", :type => :string, :default => 'test'

    end

    IRC_CONF.merge! ::YAML::load_file File.expand_path options.delete(:config)
    notifier = Ircnotify::Notifier.new  options.delete(:message), options.delete(:verbose)
    notifier.notify

  end
end

