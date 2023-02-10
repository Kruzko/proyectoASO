#!/bin/bash
#Actualizar los paquetes a la ultima version y quitar paquetes que ya no son necesarios
    # sudo apt update
    # sudo apt upgrade -y
    # sudo apt autoremove -y
#Crear usuario con home
    # read -p "que usuario quieres crear: " usuario
    # sudo useradd -m $usuario
#Crear usuarios desde una lista
    # for i in $(cat "usuarios.txt")
    # do
    #     sudo useradd -m $i
    # done
#Eliminar usuario
    # read -p "que usuario quiere eliminar: " Delusuario
    # sudo userdel -r $Delusuario
#Eliminar usuarios desde una lista
    # for i in $(cat "DELUSER.txt")
    # do
    #     sudo userdel -r $i
    # done
#Cambiar o poner contraseña a un usuario
    # read -p "diga la contraseña con el siguiente formato usuario:contraseña " pass
    # echo $pass | sudo chpasswd
#Poner contraseña a los usuarios de la lista
    # for i in $(cat "contraseñas.txt")
    # do
    #     echo $i | sudo chpasswd
    # done
     