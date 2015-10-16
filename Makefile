revision = 64219


src:
	svn checkout https://svn.java.net/svn/glassfish~svn/trunk/main@$(revision) src

.PHONY: diff build test prepare-env

diff: src
	cd src && svn diff > ../glassfish.patch

build: src
	cd src && mvn build

test: src
	cd src && mvn test

prepare-env:
	for S in /vagrant/provision/*.main; do bash $S; done

.DEFAULT_GOAL = build
