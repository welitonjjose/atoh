# frozen_string_literal: true

require_relative "atoh/version"

module Atoh
  class Error < StandardError; end

  class << self
    
    def serialize(args)
      @response = []
      args.each do |key, arr|
        generate_position(key,arr)
      end
      @response
    end

    private    

    def find_or_create(i)
      @response[i] = {} unless !@response[i].nil?
    end

    def generate_position(key, arr)
      arr.each_with_index do |item, index|
        find_or_create(index)
        @response[index][key] = item
      end
    end
  end
end

