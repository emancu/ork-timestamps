ork-timestamps
==============

[![Gem Version](https://badge.fury.io/rb/ork-timestamps.png)](http://badge.fury.io/rb/ork-timestamps)
[![Build Status](https://secure.travis-ci.org/emancu/ork-timestamps.png)](http://travis-ci.org/emancu/ork-timestamps)
[![Code Climate](https://codeclimate.com/github/emancu/ork-timestamps.png)](https://codeclimate.com/github/emancu/ork-timestamps)
[![Coverage Status](https://coveralls.io/repos/emancu/ork/badge.png)](https://coveralls.io/r/emancu/ork-timestamps)
[![Dependency Status](https://gemnasium.com/emancu/ork-timestamps.png)](https://gemnasium.com/emancu/ork-timestamps)


Timestamps for your Ork Models

## Dependencies

`ork-timestamps` requires:

* Ruby 1.9 or later.
* `riak-client` to connect to **Riak**.
* `ork` 0.1.3 or later.

Install Dependencies using `dep` is easy as run:

    $ dep insatll

## Installation

Install [Riak](http://basho.com/riak/) with your package manager:

    $ brew install riak

Or download it from [Riak's download page](http://docs.basho.com/riak/latest/downloads/)

Once you have it installed, you can execute `riak start` and it will run on `localhost:8098` by default.

If you don't have `Ork-Timestamps`, try this:

    $ gem install ork-timestamps


## Overview

`Ork::Timestamps` creates two attributes that automatically set create and update timestamp fields.

## Getting started

Include `Ork::Timestamps` module in your `Ork::Document` class.

```ruby
class SomeDocument
  include Ork::Document
  include Ork::Timestamps

  attribute :message
end
```

Enjoy your models with timestamps!

## Running the Tests

Adjust the variable to point to a test riak database. Default is `http://localhost:8098`

```bash
$ ORK_RIAK_URL='http://localhost:8198' rake
```
