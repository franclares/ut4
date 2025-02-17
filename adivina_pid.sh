#!/bin/bash

pid_script=$$

intentos=0

echo "Has entrado al script: $pid_script" #el $$ nos dice el pid 

read -n1 -p "Bienvendio.Pulsa una tecla para continuar..."

# -eq es igual
# -lt es menor que
# -gt mayor que

while [[ true ]]; do
   
   echo ""
   
  read -p "Indica el PID" user_pid
  

  
  if [[ $user_pid  -eq $pid_script ]]; then
  
     echo -e "Has acertado el pid del script. ERES UNA MÁQUINA"
  
  break
  
    elif [[  $user_pid -lt $pid_script	 ]]; then
    
      echo -e "El número introducido es menor que el pid"
      
      (( intentos++))
      
  
      else
    
         echo -e "El número introducido es mayor que el pid"
    
        (( intentos++))
       
  fi  	

done






