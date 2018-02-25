extdir := chrome-extension
extzip := chrome-extension.zip

icondir := $(extdir)/icons
iconsrc := src/icon.png
iconsizes := {16,48,128}
iconfiles := $(shell echo $(icondir)/icon-$(iconsizes).png)

$(icondir)/icon-%.png: $(iconsrc)
	convert $(iconsrc) -resize $* $@

chrome-extension.zip: $(extdir)
	cp LICENSE $(extdir)
	zip -r $(extzip) $(extdir) -x \*\/.DS_Store
	rm -f $(extdir)/LICENSE

icons: $(iconfiles)

extsrc: $(extdir)

zip: $(extzip)

.PHONY: icons extsrc zip
