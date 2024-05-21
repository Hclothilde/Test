cd /home/ifremerdev/Documents
mkdir software_vlatest
cd software_vlatest
git init
git remote add -f origin https://github.com/Hclothilde/Test.git
git sparse-checkout init
git sparse-checkout set "software"
git sparse-checkout list
git pull origin main
