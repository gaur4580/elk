node1=""
node2=""
node3=""
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt update -y
sudo apt install ansible -y 
sudo apt-get install python-jmespath zip unzip git -y
echo '[defaults]
private_key_file = /root/pem
remote_user = ubuntu
host_key_checking=False' | sudo tee  /etc/ansible/ansible.cfg

cd /tmp/
#git clone git@github.com:gaur4580/elk.git
cd elk


echo "
$node1  kibana.uat.net node1.elastic.test.net node1 
$node2 node2.elastic.test.net node2 
$node3 node3.elastic.test.net node3 "| sudo tee -a /etc/hosts

unzip uat.zip
#ansible-playbook -i host elk.yml
#ansible-playbook -i host kibana.yml


