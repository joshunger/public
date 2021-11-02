#!/bin/bash
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py --user

python3 -m pip install --user ansible

ansible-playbook --ask-become-pass --become-user "$USER" playbook.yml