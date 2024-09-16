#!/bin/sh

# Agent configuration with SSH_AUTH_SOCK
# https://developer.1password.com/docs/ssh/agent/compatibility/#ssh-auth-sock
launchctl load -w ~/Library/LaunchAgents/com.1password.SSH_AUTH_SOCK.plist
