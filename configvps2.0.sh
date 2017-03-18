# teste
meu primeiro teste 
#!/bin/bash
#meu aquivodsandjmx
clear
echo " "
echo "              --------------------"
echo "              SE VIRA ?"
echo -e '\033[05;31m---------------------------------------------------------\033[00;37m'
echo "         Digite 1 para configurar servidor"
echo -e '\033[05;31m---------------------------------------------------------\033[00;37m'
echo " "
echo " "
read -p "Responda: " -e -i 6 resposta
if [[ "$resposta" = '1' ]]; then
        rm configvps.sh
        wget https://raw.githubusercontent.com/haborynn/scripts/script/configvps.sh
        chmod +x configvps.sh
        clear
        ./configvps.sh
elif [[ "$resposta" = '2' ]]; then
        clear
        echo -e '\033[05;31m--------------------------------------------------------\033[00;37m'
        echo "Esta opção irá ligar o monitoramento 24hs de logins"
        echo "Caso queira iniciar o monitoramento agora digite s (para sim)"
        echo "Ou Caso já tenha ligado este monitoramento digite n (para não)"
        echo -e '\033[05;31m--------------------------------------------------------\033[00;37m'
        echo " "
        read -p "Responda [s/n]: " -e -i n monitoramento
        if [[ "$monitoramento" = 's' ]]; then
                clear
                rm multlogins.sh
                rm nohup.out
                wget https://raw.githubusercontent.com/haborynn/scripts/script/multlogins.sh
                chmod +x multlogins.sh
                nohup ./multlogins.sh &
                echo "Pronto, seu servidor esta monitorando seus logins SSH"
        else
                exit
        fi
elif [[ "$resposta" = '3' ]]; then
        rm torrent.sh
        wget https://raw.githubusercontent.com/haborynn/scripts/script/torrent.sh
        chmod +x torrent.sh
        clear
        ./torrent.sh
elif [[ "$resposta" = '4' ]]; then
        rm firewall.sh
        wget https://raw.githubusercontent.com/haborynn/scripts/script/firewall.sh
        chmod +x firewall.sh
        clear
        ./firewall.sh
elif [[ "$resposta" = '5' ]]; then
        rm conexoes.sh
        wget https://raw.githubusercontent.com/haborynn/scripts/script/conexoes.sh
        chmod +x conexoes.sh
        ./conexoes.sh
elif [[ "$resposta" = '6' ]]; then
        rm loginnew2.0.sh
        wget https://raw.githubusercontent.com/haborynn/scripts/script/loginnew2.0.sh
        chmod +x loginnew2.0.sh
        ./loginnew2.0.sh
else
        echo "Opção Invalida!"
        exit
fi
