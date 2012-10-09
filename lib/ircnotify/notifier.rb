module Ircnotify
  class Notifier
    def initialize options
      puts options.inspect
    end

    def notify
      STDERR << "yo"
    end
  end
end
