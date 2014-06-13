run: build
	./bin/PF

build:
	rm -rf bin/PF
	cabal install
	mkdir -p ./bin && cp dist/build/PF/PF ./bin
