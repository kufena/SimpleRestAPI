A little project to play with k8s on Azure.

So far, I'm doing all this through Visual Studio 2019 - I've set up a resource group and k8s cluster using the Azure portal.  I turn on the Dev Spaces switch inside the portal, which allows me to start the application in VS2019 and it pops up a page in chrome and displays a message.  In this instance, the API is just sending random numbers to simulate weather data.

I am using the following cli commands with this:

    az login ## logs in to the portal
    az aks get-credentials --resource-group <...> --name <...> ## gets the credentials of the k8s cluster
    kubectl get services ## displays the services running in the cluster.

I have had limited success running a k8s dashboard locally, using this:

    kubectl create clusterrolebinding kubernetes-dashboard -n kube-system --custerrole=cluster-admin --service-account=kube-system:kubernetes-dashboard

which opens a chrome window with info about the cluster/pod/whatever.

    az aks browse --resource-group <...> --name <...>

I can't recall what this does at the moment.

I've also used

    kubectl apply -f <filename>

to run yaml files on the cluster/pod.

One of the yaml files I've used is to create a load balancer for my service, which gives it an external IP address you can use.  I've included a file in the repository to do just that.
