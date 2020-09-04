#!/usr/bin/bash
random=`date +%s`
webappname="az204webappname${random}"
rgname="az204rg"
#gitrepos="https://github.com/Azure-Samples/php-docs-hello-world"
gitrepos="https://github.com/sl7xman/php-docs-hello-world"

az group delete --name ${rgname}

az group create --location westeurope --name ${rgname}

az appservice plan create --name ${webappname} --resource-group ${rgname} --sku FREE

az webapp create --name ${webappname} --resource-group ${rgname} --plan ${webappname}

az webapp deployment source config --name ${webappname} --resource-group ${rgname} --repo-url ${gitrepos} --branch master --manual-integration

echo http://${webappname}.azurewebsites.net
