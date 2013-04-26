default:
	asciidoc \
		-b html5 \
		-a theme=flask \
		-a toc2 \
		-a data-uri \
		-a docinfo \
		-a icons \
		-a pygments \
		-a iconsdir=/usr/local/Cellar/asciidoc/8.6.8/etc/asciidoc/images/icons \
		-o index.html \
		thrift.asciidoc

pdf:
	a2x --fop \
		-a toc \
		-a data-uri \
		-a docinfo \
		-a icons \
		-a pygments \
		-a iconsdir=/usr/local/Cellar/asciidoc/8.6.8/etc/asciidoc/images/icons \
		-a pygments \
		--no-xmllint \
		thrift.asciidoc

all: default pdf

clean:
	rm -f index.html *.png

publish: default pdf
	./publish.sh
