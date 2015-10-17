version = 4.1.1
revision = 64219

src:
	svn checkout https://svn.java.net/svn/glassfish~svn/tags/$(version)@$(revision) src

.PHONY: diff build test prepare-env

diff: src
	cd src && svn diff > ../glassfish.patch

build: src
	mvn -f src/pom.xml install -D maven.test.failure.ignore=true

test: src
	mvn -f src/pom.xml test

clean: src
	mvn -f src/pom.xml clean

eclipse: src
	mvn -f src/pom.xml eclipse:eclipse

prepare-env:
	for S in /vagrant/provision/*.main; do bash $S; done

.DEFAULT_GOAL = build
