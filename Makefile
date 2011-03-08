default:
	asciidoc \
		-a toc \
		-a data-uri \
		-a icons \
		-a iconsdir=/usr/local/etc/asciidoc/images/icons \
		-o index.html \
		thrift.asciidoc

clean:
	rm -f *.html *.png

publish: default
	echo "Push to the pages branch on github"
