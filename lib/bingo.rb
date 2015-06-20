require "bingo/version"
require "logger"
require "http"
require "json"

module Bingo
  def self.search(account_key, query, size: 20, from: 0)
    BingoClient.new(account_key).search(query, from: from, size: size)
  end

  class BingoClient
    API_ENDPOINT = "https://api.datamarket.azure.com/Bing/SearchWeb/v1/Web".freeze

    attr_reader :user, :account_key, :logger

    def initialize(account_key, logger = ::Logger.new('/dev/null'))
      @user = ''
      @account_key = account_key
      @logger = logger
    end

    def search(query, options = {})
      response = perform_search(query, options)
      JSON.parse(response.body)
    end

    private

    def perform_search(query, options = {})
      HTTP.
        basic_auth(user: user, pass: account_key).
        get(API_ENDPOINT, params: {
          "Query"   => "'#{query}'",
          "$format" => "json",
          "$top"    => options[:size] || 10,
          "$skip"   => options[:from] || 0
        })
    end
  end
end
