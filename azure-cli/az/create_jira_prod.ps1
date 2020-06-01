az vm create --resource-group core \
             --name weekend_jira_prod003 \
             --admin-username entadmin \
             --admin-password 50.14Z_DsdlS \
             --location westeurope \
             --image UbuntuLTS \
             --size Standard_D2s_v3 \
             --private-ip-address 10.28.2.51 \
             --public-ip-address "" \
             --vnet-name vnet-btc-ams \
             --subnet default \
             --custom-data cloud-init-jira.txt

# In diesem Beispiel wird default eine öffentliche IP-Adresse vergeben. Dies wird mit zwei Anführungszeichen verhindert
# Möchte man das Skript via Powershell starten, werden drei Anführungsstriche benötigt
# https://blogs.objectsharp.com/post/2019/01/23/Create-Azure-VM-without-a-Public-IP-using-Azure-CLI.aspx
# AddDisk ist noch ein Problem, es wird empfohlen, mit UUID zu arbeiten: https://docs.microsoft.com/de-de/azure/virtual-machines/linux/add-disk