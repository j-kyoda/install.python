install.python
==============

python install script for CentOS7.

This script install Python3.7.2.


How to install
--------------

	# bash install_python.sh


How to use installed python with virtualenv
-------------------------------------------

### make virtualenv

	$ mkdir ProjectName
	$ cd ProjectName
	$ /opt/python3.7/bin/python3.7 -m venv venv

### activate virtualenv

	$ cd Projectname
	$ source venv/bin/activate
	(venv) $

- Then you can use pip command.

### deactivate virtualenv

	(venv) $ deactivate
	$
