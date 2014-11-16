# Shuttle Command Line Client

[Shuttle](http://fitztrev.github.io/shuttle/) is an incredibly awesome SSH Manager for OS X. It sits in your menu bar. For people who work in the terminal day in/out this port can be of help. It reads your default `shuttle.json` file and offers you A CLI interface. In fact it works without the Shuttle client as well. All you need is a valid `.shuttle.json` file in your homefolder.

```
$ shuttle
+--------+---------------------------------------------------------------------+
| number | name                 | command                                       |
+--------+----------------------+-----------------------------------------------+
| 1      | Zeit.io              | ssh foo@zeit.io                               |
| 2      | Client X             | ssh bar@bar.com                               |
| 3      | Trapserver           | ssh trap@trap.com                             |
+--------+----------------------+-----------------------------------------------+

Enter a bookmark number to connect:
$ 3

connecting....
```


## Installation

You will need `Ruby 2` installed on your mac. If you don't have it, have a look at [rbenv](https://github.com/sstephenson/rbenv) and [ruby-build](https://github.com/sstephenson/ruby-build)

Install it yourself as:

    $ gem install shuttle
    
Make sure to rehash your environment:

    $ rbenv rehash
    
If you have shuttle make sure your `~/.shuttle.json` is properly configured. Alternatively you can also just create a blank one without even having the OS X App shuttle. [Get an example here](https://github.com/fitztrev/shuttle/blob/master/tests/.shuttle.json)

## Usage

Start shuttle by typing:

    $ shuttle

## Contributing

1. Fork it ( https://github.com/hendricius/shuttle/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
