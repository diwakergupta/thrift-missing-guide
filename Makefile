default:
	asciidoc \
		-a toc \
		-a data-uri \
		-a icons \
		-a iconsdir=/usr/local/etc/asciidoc/images/icons \
		thrift.asciidoc

publish: default
	echo "Push to the pages branch on github"
