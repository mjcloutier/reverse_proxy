# ReverseProxy

## What is this?

A proof of concept Plug that intercepts requests to missing routes, and forwards them along to somewhere else of your choosing. The main use-case for this is to incrementally replace an API with Phoenix.

This is currently being implemented as a Hex package called [Terraform](https://github.com/poteto/terraform). With `Terraform`, you'll be able to incrementally transform your API into one powered by Phoenix.

## Demo

Install dependencies, Start the app, then try to do a `GET` to `/v1/{foo,bar,baz}` – they should work as normal. Then, try a `GET` to `/v1/gifs/search?q=funny+cat&api_key=dc6zaTOxFJmzC` – this should forward the request to Giphy's public API and respond accordingly with funny cats.

## Setup

To start your Phoenix app:

  * Install dependencies with `mix deps.get`
  * Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
