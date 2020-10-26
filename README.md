# DevOps Test

Build the image using the following command

  ```vagrant@ubuntu-bionic:~/devops-test$ docker build -t sivakumarvunnam/devops-test:latest .```

Run the Docker container using the command shown below.

  ```vagrant@ubuntu-bionic:~/devops-test$ docker run -d -p 5000:5000 sivakumarvunnam/devops-test:latest```

Kubernetes Setup using KIND:

  Installed install KinD using the script ```install_kind.sh```


Bring up kubernetes cluster using KinD

  ```kind create cluster --config cluster.yaml --name cluster```


# Deploying the Flask App on Kubernetes

Creating the Namespace 

  ```vagrant@ubuntu-bionic:~/devops-test$ kubectl apply -f sivakumarvunnam_devops-test-namespace.yaml```


Pod in a scalable fashion using the Deployment resource.

Creating the App Deployment
 
  ```vagrant@ubuntu-bionic:~/devops-test$ kubectl apply -f sivakumarvunnam_devops-test-deployment.yaml```


Service : A Kubernetes Deployment allows the operator to flexibly scale a Pod template up or down, as well as manage rollouts and template updates. To create a stable network endpoint for this set of running Pod replicas, you can create a Kubernetes Service, which well do here.

Creating the App Service

  ```vagrant@ubuntu-bionic:~/devops-test$ kubectl apply -f sivakumarvunnam_devops-test-service.yaml```

Note: Use small base images, build patterns to reduce security, venerability issues, and have better performance for the micro service application.
