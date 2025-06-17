#!/bin/sh

# Load environment variables from .env if it exists
if [ -f .env ]; then
  set -a
  . ./.env
  set +a
fi

curl --location 'https://api.holded.com/api/invoicing/v1/documents/invoice' \
--header 'accept: application/json' \
--header 'content-type: application/json' \
--header "key: $KEY" \
--data '{
    "date": "2025-06-17",
    "contactId": "6851d4e6cc802b4ef101fb7b",
    "items": [
        {
            "name": "Test Item",
            "desc": "Test Item Description",
            "units": 1,
            "sku": null,
            "serviceId": null,
            "subtotal": "1.0",
            "discount": 0,
            "tax": 23
        }
    ]
}'
