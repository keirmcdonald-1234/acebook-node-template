# #!/bin/bash
# cd /home/ec2-user/acebook
# sudo chown -R ec2-user:ec2-user /home/ec2-user/acebook
# rm -rf node_modules
# sudo npm install -g pm2
# npm c .

#!/bin/bash

# Stop any existing application to prepare for the new deployment
echo "Stopping existing application..."
sudo systemctl stop my-app.service || true

# CRITICAL: Install PM2 globally so it can be used to manage the application.
echo "Installing PM2 globally..."
sudo npm install -g pm2

# IMPORTANT: Reload the systemd daemon to recognize new or updated service files.
sudo systemctl daemon-reload
