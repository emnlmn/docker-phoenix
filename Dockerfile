# Phoenix server
# @version 1.0
# @author Emanuele Menon <emnlmn@gmail.com>
FROM elixir:latest

MAINTAINER Emanuele Menon, emnlmn@gmail.com

RUN mix local.hex --force

RUN mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez

RUN mix local.rebar --force

WORKDIR /app