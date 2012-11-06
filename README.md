# Ircnotify

Simple tool for sending messages to IRC.

`ircnotify` can be used for:

- notifying when Chef has finished creating a new VM
- new code has been pushed to production and your apps are running
- you're compiling something and want to get notified when it's finished
- possibly more


Simply:

- create a config (take a look at `example_conf.yml`)

- install `ircnotify`

- send your message: `$ ircnotify -m "task finished!"`

- done


## 1000 words and oneliner


```
$ ircnotify -m "yooooooo"

```
![screen](http://i.imgur.com/3YNT0.png)


## Example configuration


```yaml
nick: notifier
server: your.irc.com
port: 6667
password: 's4kr1t'
ssl:
  use: true
  verify: false

channels:
  - '#test'
  - '#test2'
```

`ircnotify` is based on [Cinch](https://github.com/cinchrb/cinch) and makes use of
some of config options, but not all. They are trivial to add though.


By default `ircnofity` reads the config from `~/.ircnotify`

## Usage


```
      Usage:
        ircnotifier <opts> --message "your message"

      Options:
   --config, -c <s>:   Config file (default: /Users/lukasz/.ircnotify)
  --message, -m <s>:   Your message (default: test)
      --verbose, -v:   Be very verbose (default off)
         --help, -h:   Show this message
```

## Installation

```
    $ gem install ircnotify
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
