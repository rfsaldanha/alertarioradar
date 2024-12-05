#!/bin/bash

base_url="http://alertario.rio.rj.gov.br/upload/Mapa/comfundo/radar0"

for i in $(seq -f '%02g' 01 20); 
do curl -O --output-dir alertarioradar/temp --url "${base_url}$i.png"; 
done

convert -delay 20 -loop 0 alertarioradar/temp/*.png alertario.gif

cp alertario.gif /dados/htdocs/shiny.icict.fiocruz.br/
