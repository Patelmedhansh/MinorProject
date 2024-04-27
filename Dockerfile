FROM ubuntu:latest

# Intentionally introduce build error
RUN this_command_does_not_exist
