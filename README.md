#Docker Test

Build the image using the following command

  vagrant@ubuntu-bionic:~/devops-test$ docker build -t sivakumarvunnam/devops-test:latest .

Run the Docker container using the command shown below.

  vagrant@ubuntu-bionic:~/devops-test$ docker run -d -p 5000:5000 sivakumarvunnam/devops-test:latest
