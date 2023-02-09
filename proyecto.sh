#!/bin/bash
#actualizar los paquetes a la ultima version y quitar paquetes que ya no son necesarios
sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y
