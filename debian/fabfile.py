# debian
# sudo apt-get install fabric

# usage
# run with "fab -H <host> <func>"
# for debian testing and sid

from fabric.api import sudo, run, cd


def _wget(url):
    sudo("wget -N %s" % url)

def install_common_packages():
    sudo("aptitude install software-properties-common git curl zsh tmux vim firmware-linux xfonts-thai -y")

def install_packages_for_using_debian_as_guest_on_virtualbox():
    sudo("aptitude install linux-headers-$(uname -r) make")

def install_better_font_render():
# http://www.webupd8.org/2013/06/better-font-rendering-in-linux-with.html
    sudo("echo 'deb http://ppa.launchpad.net/no1wantdthisname/ppa/ubuntu trusty main' | sudo tee /etc/apt/sources.list.d/infinality.list")
    sudo("echo 'deb-src http://ppa.launchpad.net/no1wantdthisname/ppa/ubuntu trusty main' | sudo tee -a /etc/apt/sources.list.d/infinality.list")
    sudo("apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E985B27B")
    sudo("aptitude update && aptitude install fontconfig-infinality")

def mildronize_default():
    sudo("aptitude update")
    install_common_packages()
    install_packages_for_using_debian_as_guest_on_virtualbox()
    install_better_font_render()
