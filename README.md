# rasbian-ansibler

installs ansible to raspbian

## local debian as raspbian

### init

    brew tap matti/tap
    brew cask install virtualbox_and_extensionpack_4328100309
    brew install sshpass
    brew install ssh-copy-id

    vagrant up

### ansible it

    sshpass -p raspbian ssh-copy-id -i ~/.ssh/id_rsa.pub -p 2222 root@127.0.0.1
    ./ansible_deps.sh 127.0.0.1 2222

    echo "[raspbian-local]" > hosts_local
    echo "127.0.0.1         ansible_ssh_port=2222        ansible_ssh_user=root" >> hosts_local

    ansible -i hosts_local -m ping all

## remote raspbian

### init

    sudo diskutil unmountDisk disk2; pv -petra raspbian_8gb_pi2.img | sudo dd bs=4m of=/dev/rdisk2

### ansible it

    sshpass -p raspbian ssh-copy-id -i ~/.ssh/id_rsa.pub -p 22 root@pi
    ./ansible_deps.sh pi 22

    echo "[raspbian]" > hosts
    echo "pi         ansible_ssh_port=22        ansible_ssh_user=root" >> hosts

    ansible -i hosts -m ping all

## all

    ansible-galaxy install -r requirements.yml

## play

    ansible-playbook site.yml -i hosts_local
    ansible-playbook site.yml -i hosts
