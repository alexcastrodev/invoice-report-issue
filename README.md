# Invoice API Example

This repository demonstrates how to reproduce a bug that appears when using HTTParty in Ruby but not in Postman.

## Prerequisites

- Ruby 3.x
- Bundler
- cURL

## Setup

1. Copy `.env.example` to `.env` and insert your API key.
2. Run `bundle install` to install dependencies (may require internet access).

## Usage

### cURL Script

Execute the `run_curl.sh` script to send the request using `curl`:

```bash
sh run_curl.sh
```

### Ruby Script

Run the Ruby version from the `app` folder:

```bash
ruby app/send_invoice.rb
```

## Dev Container

A `.devcontainer` configuration is included. Open this repository in VS Code and choose **Reopen in Container** to run the Ruby script inside a containerized environment.
