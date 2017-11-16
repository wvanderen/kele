require 'rubygems'
require 'httparty'
require 'rest-client'

class Kele
    include HTTParty
    self.base_uri 'https://bloc.io/api/v1'
    debug_output

    def initialize (email, password)

        response = self.class.post(
        '/sessions',
        values:  {
            'email': email,
            'password': password
        },
        headers: {
            :content_type => 'application/json'
        })
        
        puts self
        puts self.class
        puts response
    end

end
    