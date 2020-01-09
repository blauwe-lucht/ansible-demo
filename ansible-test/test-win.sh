#!/bin/sh
ansible win -i inventory.yml -m win_ping
