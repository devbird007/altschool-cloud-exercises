#!/bin/bash

# This script is scheduled to be stored in the templates folder
# and then called for and executed in the main playbook.yml
#!/bin/bash

# This script is scheduled to be stored in the templates folder
# and then called for and executed in the main playbook.yml

# Install postgresql

# Create the file repository configuration:
echo "Creating the file repo config"
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'

# Import the repository signing key:
echo "Importing the repo signing key"
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

# Update the package lists:
echo "Updating apt"
sudo apt update

# Install the latest version of PostgreSQL.
# If you want a specific version, use 'postgresql-12' or similar instead of 'postgresql':


echo "install postgresql15"
sudo apt install postgresql-15 -y

#Change the postgres password to postgres
echo "Changing password"
sudo chpasswd <<<"postgres:postgres"
