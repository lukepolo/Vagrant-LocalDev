## Local Dev Virtual Box + Vagrant Setup

1. [Install Virtual Box](https://www.virtualbox.org/wiki/Downloads)
2. [Install Vagrant](https://www.vagrantup.com/downloads.html)
3. Configure Environment

   1. `git clone git@github.com:lukepolo/localdev.git ~/localdev`
   2. Run `~/localdev/setup.sh`
   3. Modifying `LocalDev.yaml`
      a. Update the Memory and CPU to something your hardware can handle
      b. Update SSH Key Information
      _ authorize : ssh key that grants access to this VM
      _ keys : keys that allow you to access SSH connections outside of this VM
      c. Update Folders
      _ map: Local Code Directory
      _ to : VM Directory
      d. Ports
      _ send: Ports that you can access locally
      _ to: Maps "send" to the VMs port
   4. Run `localDev up`

## Working With LocalDev

`localDev` is q quick way to access `vagrant` commands.

`vm` is a quick way to shell into the localdev VM.
