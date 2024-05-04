# ------------------------------------------------ #
#
#  -- Linux SysOps -- String Substitute -- 
#
# ------------------------------------------------ #

: '
There is some data on Nautilus App Server 3 in Stratos DC. 
Data needs to be altered in several of the files. On Nautilus 
App Server 3, alter the /home/BSD.txt file as per details given 
below:

a. Delete all lines containing word copyright and save results in 
/home/BSD_DELETE.txt file. (Please be aware of case sensitivity)

b. Replace all occurrence of word from to for and save results in 
/home/BSD_REPLACE.txt file.

Note: Lets say you are asked to replace word to with from. In that case, make sure not to alter any words containing the string itself; for example upto, contributor etc.

'

cat  /etc/os-release

# --------------------- #
# -- Ansible Solution --
# --------------------- #

: '
- hosts: nautilus_app3
  gather_facts: false
  become: true

  vars:
    src_file: /home/BSD.txt
    del_file: /home/BSD_DELETE.txt
    del_word: software
    rep_file: /home/BSD_REPLACE.txt
    rep_src_word: the
    rep_dest_word: for


'