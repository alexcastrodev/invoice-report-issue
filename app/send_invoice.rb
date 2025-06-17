require 'httparty'
require 'dotenv/load'
require 'json' 

API_URL = 'https://api.holded.com/api/invoicing/v1/documents/invoice'

payload = {
  date: '2025-06-17',
  contactId: '6851d4e6cc802b4ef101fb7b',
  items: [
    {
      name: 'Test Item',
      desc: 'Test Item Description',
      units: 1,
      sku: nil,
      serviceId: nil,
      subtotal: '1.0',
      discount: 0,
      tax: 23
    }
  ]
}

headers = {
  'accept' => 'application/json',
  'content-type' => 'application/json',
  'key' => ENV['KEY']
}

puts "Headers: #{headers.inspect}"

response = HTTParty.post(API_URL, headers: headers, body: payload.to_json)
puts "Status: #{response.code}"
puts response.body
