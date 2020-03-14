# k8s-covid19

Let's donate our idle Kubernetes resources to combat COVID-19!

We are in a stage where the Coronavirus affects us all. I am an engineer, so it is my nature to look for solutions to problems. But since I am no doctor, I have no idea how to combat a pandemic. When I read that the amazing people at folding@home have started using their resources to do research on the COVID-19 (Corona) virus, I thought I could help here and donate my spare Kubernetes resources to speed up the research, even if it is only a small bit.

I though I would share my efforts in order to let other engineers use it. The deployment manifest contains the Incentro folding@home team, but you can easily override it if you want your use your own team statistics.

Also, when I was building this, I was thinking I will fork this later and make a permanent open source project. The goal of this open source project would be an operator that donates idle Kubernetes resources to projects like folding@home. More info on that to follow soon. The current project is more like a quick hack to get the cpu cycles going.

## How to use
Deploy:
```
kubectl apply -f https://raw.githubusercontent.com/dionborsboom/k8s-covid19/master/deployment.yaml
```

The default replicas is 1. Each replica consumes 1CPU and 512m Memory.

To increase to the amount of resources you want to donate you can scale up the number of replicas to the desired amount:
```
kubectl scale --replicas=3 -f https://raw.githubusercontent.com/dionborsboom/k8s-covid19/master/deployment.yaml
```
