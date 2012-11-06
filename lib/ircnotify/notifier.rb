module Ircnotify
  class Notifier
    def initialize message, verbose=false
      @bot = ::Cinch::Bot.new do
        self.loggers = NullLogger.new if not verbose
        configure do |c|
          # TODO FIXME
          # this doesn't handle all nested config options!
          # see https://github.com/cinchrb/cinch/blob/master/docs/bot_options.md
          IRC_CONF.each do |key,val|
            if key != "ssl"
              c.send :"#{key}=", val
            else
              val.each do |k,v|
                c.ssl.send :"#{k}=",v
              end
            end

          end
        end

        on :join do |m, channel|
          m.reply message
          @bot.quit "Message delivered"
        end
      end
    end

    def notify
      @bot.start
    end
  end
end
