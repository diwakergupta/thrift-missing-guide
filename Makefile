default:
	asciidoc \
		-a toc \
		-a data-uri \
		-a docinfo \
		-a icons \
		-a iconsdir=/usr/local/etc/asciidoc/images/icons \
		-o index.html \
		thrift.asciidoc

clean:
	rm -f *.html *.png

publish: default
	./publish.sh
