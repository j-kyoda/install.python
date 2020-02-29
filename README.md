install.python
==============

python install script for CentOS7.

This script install Python3.8.2.


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
	$ /opt/python3.8/bin/python3.8 -m venv venv

 32-bit version

	$ mkdir ProjectName
	$ cd ProjectName
	$ /opt/python3.8_i686/bin/python3.8 -m venv venv

### activate virtualenv

	$ cd Projectname
	$ source venv/bin/activate
	(venv) $

- Then you can use pip command.

### deactivate virtualenv

	(venv) $ deactivate
	$
