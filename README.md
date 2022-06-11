install.python
==============

python install script for debian11.

This script install Python3.10.5.


How to install
--------------

 64-bit version

	# bash install_python.sh

 32-bit version

	# bash install_python.i686.sh


How to use installed python with virtualenv
-------------------------------------------

### make virtualenv

 64-bit version

	$ mkdir ProjectName
	$ cd ProjectName
	$ /opt/python3.10/bin/python3.10 -m venv venv

### activate virtualenv

	$ cd Projectname
	$ source venv/bin/activate
	(venv) $

- Then you can use pip command.

### deactivate virtualenv

	(venv) $ deactivate
	$
