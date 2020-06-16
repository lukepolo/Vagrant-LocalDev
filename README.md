## Local Dev Virtual Box + Vagrant Setup
1. [Install Virtual Box](https://www.virtualbox.org/wiki/Downloads)
2. [Install Vagrant](https://www.vagrantup.com/downloads.html)
3. Configure Environment
    1. Clone this repo: https://github.com/lukepolo/Vagrant-LocalDev
        * It is recommended cloning this repo into a sibling folder of the intended project repo
    2. In terminal change to the directory where you cloned this repo
    3. Run `cp LocalDev.example.yaml LocalDev.yaml` to make a copy of the example file
    4. Modify `LocalDev.yaml`
4. Run `vagrant up`
5. SSH into the virutal machine `ssh -t vagrant@127.0.0.1 -p 2222`

## Optional Function / Alias
If you want to save time when interacting with this environment it is recommended you add / and modify the following aliases to your shells startup script:


    ```
    # Call `vb {command}` to run vagrant commands
    function vb() {
        ( cd ~/location/to/project && vagrant $* )
    }
    
    # Access the Virtual Box running your project
    alias vm="ssh -t vagrant@127.0.0.1 -p 2222"
    ```

* In your terminal run `vb up`
* Once it is finished setting up run `vm` to enter the Virtual Box environment
