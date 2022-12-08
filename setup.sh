#!/bin/bash
sh "sudo usermod -aG sudo jenkins"
sh ./sudo-stuff.sh
sh ./docker-install.sh
sh ./docker-compose.sh