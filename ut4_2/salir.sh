#!/bin/bash

   pkill -f menuPIDS #lo del exect

# Mostrar un cuadro de diálogo de aceptar/cancelar
yad --title="Confirmar acción" --text="¿Estás seguro de que quieres salir?" --button="Aceptar:0" --button="Cancelar:1"

# Comprobar el código de salida para determinar qué botón se presionó
if [[ $? == 0 ]]; then
    echo "El usuario ha aceptado." #el usuario quiere matar al proceso
    
    #pkill -f menuPIDS #lo del exect 
    
else
    echo "El usuario ha cancelado."
    
    bash menu.sh
    
fi
