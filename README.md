# How to use

You need to have [VirtualBox](https://www.virtualbox.org/wiki/Downloads) and [Vagrant](https://www.vagrantup.com/downloads.html) installed.
Open a command shell in the directory of the cloned repository and run

    vagrant up
	
This will create two VMs, one being the linux ansible control server (acs), the other a simple Windows Server Core (node).

Log on the acs with

    vagrant ssh acs
	
To test if ansible can reach the Windows machine, run

./test-win.sh
	
You should get this response:

    192.168.33.50 | SUCCESS => {
        "changed": false,
        "ping": "pong"
    }
	
The Windows Server machine will run on IP-address 192.168.33.50. 
If you open a browser at http://192.168.33.50 you will get an error since IIS is not installed.

To install IIS and place a simple HTML page run

    ./install_iis.sh
	
If you now visit http://192.168.33.50, you will see a test page.

To remove IIS again run

    ./uninstall_iis.sh

# More information

- [Ansible documentation](https://docs.ansible.com/)
- [Ansible Galaxy](https://galaxy.ansible.com/list#/roles?page=1&page_size=10), third party ansible roles
