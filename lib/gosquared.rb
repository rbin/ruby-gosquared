require_relative 'gosquared/version'
require_relative 'gosquared/exceptions'

require 'rest-client'

module GoSquared
	class Client
		attr_accessor :api_user, :api_key, :host, :endpoint

		def initialize(params = {})
			@api_user   = params.fetch(:api_user, nil)
			@api_key    = params.fetch(:api_key, nil)
			@host       = params.fetch(:host, 'https://api.gosquared.com')
			@endpoint   = params.fetch(:endpoint, '/endpoint/')
			@conn       = params.fetch(:conn, create_conn)
			yield self if block_given?
			raise SendGrid::Exception.new('api_user and api_key are required') unless @api_user && @api_key
		end


		private

		def create_conn
			@conn = RestClient::Resource.new(@host)
		end
	end
end
