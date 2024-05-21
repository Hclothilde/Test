cd /home/ifremerdev/Documents #go to the local folder Document
mkdir software_vlatest #create a new local folder
cd software_vlatest #go into this new folder
git init #initialiase it as a git
git remote add -f origin https://github.com/Hclothilde/Test.git #link it to the following git
git sparse-checkout init #initialise the partial cloning
git sparse-checkout set "software" #set the path of the document we want to clone, clone only this document
git sparse-checkout list #check the list of the cloned folder
git pull origin main #pull the version of the folder which is on the main branch
