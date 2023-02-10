#!/bin/bash
#Juan José Marín Molina 2º ASIR
#Menu
    opcion=$(dialog --stdout --checklist "¿que quieres hacer?" 40 40 0 1 actualizar on\
 2 crear_usuario on 3 crear_varios_usuarios on 4 eliminar_usuario on 5 eliminar_varios_usuarios on 6 cambiar_contraseña on 7 \
 cambiar_varias_contraseñas on 8 salir off)
 #if para el menu
    if [ "$opcion" = "1" ]
    then
#Actualizar los paquetes a la ultima version y quitar paquetes que ya no son necesarios
        sudo apt update
        sudo apt upgrade -y
        sudo apt autoremove -y
    elif [ "$opcion" = "2" ]
    then
#Crear usuario con home
        read -p "que usuario quieres crear: " usuario
        sudo useradd -m $usuario
    elif [ "$opcion" = "3" ]
    then
#Crear usuarios desde una lista
        for i in $(cat "usuarios.txt")
        do
            sudo useradd -m $i
        done
    elif [ "$opcion" = "4" ]
    then
#Eliminar usuario
        read -p "que usuario quiere eliminar: " Delusuario
        sudo userdel -r $Delusuario
    elif [ "$opcion" = "5" ]
    then
#Eliminar usuarios desde una lista
        for i in $(cat "DELUSER.txt")
        do
            sudo userdel -r $i
        done
    elif [ "$opcion" = "6" ]
    then
#Cambiar o poner contraseña a un usuario
        read -p "diga la contraseña con el siguiente formato usuario:contraseña " pass
        echo $pass | sudo chpasswd
    elif [ "$opcion" = "7" ]
    then
#Poner contraseña a los usuarios de la lista
        for i in $(cat "contraseñas.txt")
        do
            echo $i | sudo chpasswd
        done
    elif [ "$opcion" = "8" ]
    then
     exit
    fi