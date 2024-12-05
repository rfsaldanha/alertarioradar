#!/bin/bash

base_url="http://alertario.rio.rj.gov.br/upload/Mapa/comfundo/radar0"

for i in $(seq -f '%02g' 01 20); 
do curl -O --output-dir /dados/home/rfsaldanha/alertarioradar/temp --url "${base_url}$i.png"; 
done

convert -delay 20 -loop 0 /dados/home/rfsaldanha/alertarioradar/temp/*.png /dados/home/rfsaldanha/alertario.gif

cp /dados/home/rfsaldanha/alertario.gif /dados/htdocs/shiny.icict.fiocruz.br/
