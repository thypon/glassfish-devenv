prepare:
	svn checkout https://svn.java.net/svn/glassfish~svn/trunk/main src

prepare-env:
	for S in /vagrant/provision/*.main; do bash $S; done
