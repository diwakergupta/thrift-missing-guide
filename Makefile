default:
	asciidoc \
		-b html5 \
		-a theme=flask \
		-a toc2 \
		-a data-uri \
		-a docinfo \
		-a icons \
		-a iconsdir=/home/diwaker/local/asciidoc/images/icons \
		-o index.html \
		thrift.asciidoc

pdf:
	a2x --fop \
		-a toc \
		-a data-uri \
		-a docinfo \
		-a icons \
		-a iconsdir=/home/diwaker/local/asciidoc/images/icons \
		-a pygments \
		thrift.asciidoc

all: default pdf

clean:
	rm -f index.html *.png

publish: default pdf
	./publish.sh
