echo "Terraform"
wget -q https://releases.hashicorp.com/terraform/1.2.8/terraform_1.2.8_linux_amd64.zip
unzip -qq terraform_1.2.8_linux_amd64.zip
sudo mv -f terraform /usr/local/bin/
sudo mv -f terraform /usr/bin/
rm -f terraform_1.2.8_linux_amd64.zip