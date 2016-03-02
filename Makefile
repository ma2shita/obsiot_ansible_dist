.PHONY: all
all:
	ip -4 addr show
	ruby -run -e httpd . -p 3002
