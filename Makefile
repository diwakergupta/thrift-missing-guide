default:
	asciidoc \
		-a toc \
		-a data-uri \
		-a docinfo \
		-a icons \
		-a iconsdir=/usr/local/etc/asciidoc/images/icons \
		-o index.html \
		thrift.asciidoc

pdf:
	a2x --fop \
		-a toc \
		-a data-uri \
		-a docinfo \
		-a icons \
		-a iconsdir=/usr/local/etc/asciidoc/images/icons \
		-a pygments \
		thrift.asciidoc

all: default pdf

clean:
	rm -f index.html *.png

publish: default pdf
	./publish.sh
