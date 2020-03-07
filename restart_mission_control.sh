#!/bin/bash

defaults write com.apple.dock mcx-expose-disabled -bool FALSE && \
killall Dock