#!/usr/bin/env bash
if [ ! -d "${HOME}/projects" ]; then
  echo "creating projects folder"
  cd $HOME
  mkdir "${HOME}/projects"
fi

if [ ! -d "${HOME}/projects/javascript" ]; then
  mkdir "${HOME}/projects/javascript"
fi

if [ ! -d "${HOME}/projects/iOS" ]; then
  mkdir "${HOME}/projects/iOS"
fi

if [ ! -d "${HOME}/projects/ruby" ]; then
  mkdir "${HOME}/projects/ruby"
fi

if [ ! -d "${HOME}/projects/elixir" ]; then
  mkdir "${HOME}/projects/elixir"
fi
