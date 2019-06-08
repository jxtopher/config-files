#!/usr/bin/env python
#-*- coding: utf-8 -*-
# Python 3.7

#
# @Author: *
# @License: *
# @Date: *
# @Version: *
#

import os

directories = ["Development", "Office", "Adminsys", "Science", "Multimedia", "Cryptography", "Browsers", "Computer-aided design"]


for repertoire in directories:
    try: 
        os.makedirs(repertoire)
    except OSError:
        if not os.path.isdir(repertoire):
            print("[-] Error")
