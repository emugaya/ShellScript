#!/bin/sh
# Shell Script to create a basic application folder structure
echo "####################################################################"
echo "#                                                                  #"
echo "# Shell Script to create a basic application folder structure      #"
echo "#                                                                  #"
echo "####################################################################"
echo "\n"

echo "Provide a unique name for your folder. No spaces allowed in between."

read MAIN_FOLDER

echo "Hello you provided $MAIN_FOLDER as the root folder name."

mkdir "${MAIN_FOLDER}"
cd "${MAIN_FOLDER}"
touch ".coverage"
touch ".coveragerc"
touch ".gitignore"
touch "config.py"
touch "coverage.xml"
touch "manage.xml"
touch ".travis.yml"
touch "Procfile"
touch "README.md"
touch "requirements.txt"
touch "run.py"
mkdir "app"
mkdir "design"
mkdir "migrations"
mkdir "tests"
cd "app"
touch "__init__.py"
touch "apiv1.py"
touch "apiv2.py"
touch "models.py"
mkdir "apis"
cd "apis"
touch "__init__.py"
touch "auth.py"
touch "bucketlist.py"
touch "items.py"
while read line; do
echo This file: $line;
done <<EOF
$(ls)
EOF
cd ".."
cd ".."
cd "tests"
touch "__init__.py"
touch "test_auth.py"
cp test_auth.py test_bucketlists.py
cp test_auth.py test_items.py
cd ".."
echo "Listing folders"
ls -l
echo "Saving folder structure to ${MAIN_FOLDER}_structure.txt \n"
echo "${MAIN_FOLDER} folder structure\n"
tree >> "${MAIN_FOLDER}_structure.txt"
cat "${MAIN_FOLDER}_structure.txt"
echo "Showing Disk Usage for all files in the folder created"
du | sort -nr | head
cd ".."
echo "Deleting Folder"
rm -rf ${MAIN_FOLDER}
echo "Showing Terminal Process"
ps aux | grep terminal
echo "**********************Good Bye!**********************"