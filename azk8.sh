az aks create --resource-group Day3TestResourceGroup --name Day3TestAKS --enable-addons monitoring,http_application_routing --generate-ssh-keys --node-count 2 --vm-set-type VirtualMachineScaleSets --load-balancer-sku standard --enable-cluster-autoscaler --min-count 1 --max-count 1

az aks get-credentials --resource-group --name

# create a registry for your containers?
az acr create --resource-group --name -sku Basic --admin-enabled true

az aks get-credentials --resource-group --name
