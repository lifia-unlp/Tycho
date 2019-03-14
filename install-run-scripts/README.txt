Install /run instructions 
-------------------------

# create a folder
mkdir tycho
cd tycho

# get Pharo 
curl https://get.pharo.org/61 | bash 

# (if not first time) clean files  from previous install
rm -Rf pharo-local
rm tycho.*

#copy a clean image
./pharo pharo.image save tycho  
	
#install from the repository
./pharo tycho.image -st install.st --save

#start the server
./pharo tycho.image -st run.st --no-quit


#update

First stop the running server (crtl + C) then: 

./pharo tycho.image -st install.st --save

Then start it again.
