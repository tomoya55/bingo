# Bingo

Simple Bing Search API Client for Ruby.

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
{
  "d": {
    "results": [
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
      }
      ...
    ]
  }
}
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/bingo/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
