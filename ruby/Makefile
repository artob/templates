all: build

build: Rakefile
	bundle exec rake build

check: Rakefile
	bundle exec rake spec

install: build
	bundle exec rake install

clean:
	rm -f *~ *.gem

.PHONY: build check install clean
