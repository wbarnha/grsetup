# grsetup
A Bash script to simplify GNU Radio builds from source. Note that this uitilizes my fork of GNU Radio 3.8 for now since I really like the Filter Design Tool.

To utilize this, run the following commands in your terminal:
```
git clone https://github.com/wbarnha/grsetup/
cd grsetup
./setup.sh
```
This will ask you for permission to install the dependencies from your package manager. This installation will take thirty or so minutes.

Once the process is done, `reboot` your computer and GNU Radio 3.8 is set for you.

NOTE: For systems that are sensitive to security issues, this contains:
```
echo 'export PYTHONPATH=/usr/local/lib/python3/dist-packages:usr/local/lib/python2.7/site-packages:$PYTHONPATH' >> ~/.bashrc 
echo 'export LD_LIBRARY_PATH=/user/local/lib:$LD_LIBRARY_PATH' >> ~/.bashrc
echo 'export PYTHONPATH=/usr/local/lib/python3/dist-packages:usr/local/lib/python2.7/site-packages:$PYTHONPATH' >> ~/.profile
echo 'export LD_LIBRARY_PATH=/user/local/lib:$LD_LIBRARY_PATH' >> ~/.profile
```
This is not a recommended practice and should not be replicated.
