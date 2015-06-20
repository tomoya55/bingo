# Bingo

[![Circle CI](https://circleci.com/gh/tomoya55/bingo/tree/master.svg?style=svg)](https://circleci.com/gh/tomoya55/bingo/tree/master)

Simple Bing Search API Client for Ruby.

![Bingo](https://farm3.staticflickr.com/2324/2067637939_f0d146cddb.jpg)

[Was his name](https://www.flickr.com/photos/jaycoxfilm/2067637939/) by [Jay Cox](https://www.flickr.com/photos/jaycoxfilm/)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'bingo'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bingo

## Usage

```
$ Bingo.search('your_account_key', 'ruby')
#=>
[
  {
    "__metadata": {
      "uri": "https://api.datamarket.azure.com/Data.ashx/Bing/SearchWeb/v1/Web?Query='ruby'&$skip=0&$top=1",
      "type": "WebResult"
    },
    "ID": "4e17655c-00e0-4ef1-8337-609f11530507",
    "Title": "Ruby - Wikipedia, la enciclopedia libre",
    "Description": "Ruby es un lenguaje de programación interpretado , reflexivo y orientado a objetos , creado por el programador japonés Yukihiro \"Matz\" Matsumoto , quien comenzó a ...",
    "DisplayUrl": "es.wikipedia.org/wiki/Ruby",
    "Url": "http://es.wikipedia.org/wiki/Ruby"
  },
  ...
]
```

## Current Development status

### API

Currently [Bing Search API – Web Results Only](https://datamarket.azure.com/dataset/bing/searchweb#schema) is supported, but is planned to support [Bing Search API](https://datamarket.azure.com/dataset/5BA839F1-12CE-4CCE-BF57-A49D98D29A44) as well.

### Response format

Only JSON is available. ATOM(XML) is planned to be supported before v1.0.0.

## Getting Account Key on Microsoft Windows Azure Marketplace

(TBD)

## Development

### Setup

```
git clone https://github.com/tomoya55/bingo.git
cd bingo
bundle
```

### Run test

```
bundle exec rake test
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/bingo/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
