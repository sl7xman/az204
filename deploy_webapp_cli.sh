#!/usr/bin/bash
random=`date +%s`
webappname="az204webapp${random}"
rgname="az204webapprg"

az group create --location westeurope --name "${rgname}"

az appservice plan create --name ${webappname} --resource-group ${rgname} --sku FREE

az webapp create --name ${webappname} --resource-group ${rgname} --plan ${webappname}
