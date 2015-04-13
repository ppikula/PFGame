run: build
	./bin/PF

shell: build
	cabal repl

build:
	rm -rf bin/PF
	cabal install
	mkdir -p ./bin && cp dist/build/PF/PF ./bin
