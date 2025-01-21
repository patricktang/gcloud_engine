#!/bin/bash
apt autoremove -y --purge 
journalctl  --vacuum-time=90d
