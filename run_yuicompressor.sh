#!/bin/sh
VERSION=1.0.3

cat src/_begin.js src/MathContext.js src/BigDecimal.js src/_end.js > build/BigDecimal-all-$VERSION.js
java -jar bin/yuicompressor-2.4.8.jar build/BigDecimal-all-$VERSION.js --charset UTF-8 -o build/BigDecimal-all-$VERSION.min.js
