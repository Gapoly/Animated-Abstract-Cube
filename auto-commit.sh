#!/bin/bash

while true; do

    echo "Voulez-vous utilisez le message par défaut? [y/n]"
    read git_choice


    if [ "$git_choice" == "y" ] || [ "$git_choice" == "Y" ]; then
        git add .
        git commit -m "Update"
        git push
        break
    elif [ "$git_choice" == "n" ] || [ "$git_choice" == "N" ]; then
        echo "Quel message voulez vous utilisez?"
        read git_msg
        git add .
        git commit -m "$git_msg"
        git push
        break
    else
        echo "Choix incorrect"
        continue
    fi
done
