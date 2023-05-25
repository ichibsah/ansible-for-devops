#id=$(az account list | grep id)
#id=$(az account list | grep id | cut -d":" -f2 | tr -d '[:space:]')
id=$(az account list | grep id | cut -d'"' -f4)

echo $id
export AZURE_SUBSCRIPTION_ID=$id

ansible-playbook create_rg.yml --extra-vars "name=ansbl_RG location=North Europe"


# sudo pip install azureml-core
# sudo pip install azure-core
# sudo pip install azure-mgmt-web
# sudo pip install --upgrade azure-mgmt-web
# sudo pip install --upgrade azure-core

#azure-cli-core
#azure
#azure-core