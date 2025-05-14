🌟 Kubernetes NGINX Demo
Welcome to the Kubernetes NGINX Demo! This project deploys a simple NGINX web app on a local KIND (Kubernetes IN Docker) cluster, showcasing Kubernetes best practices like namespaces, resource limits, and optional autoscaling. Perfect for learning Kubernetes or adding to your DevOps portfolio!
🛠️ Tools Needed

Docker: For KIND and container runtime
KIND: To create a local Kubernetes cluster
kubectl: Kubernetes CLI
Bash: For scripts (Linux/macOS or WSL on Windows)

📂 Project Structure
k8s-nginx-demo/
├── manifests/                 # Kubernetes YAML files
│   ├── namespace.yaml        # Dedicated namespace
│   ├── deployment.yaml       # NGINX deployment
│   ├── service.yaml          # ClusterIP service
│   ├── hpa.yaml              # Autoscaling (optional)
│   └── configmap.yaml        # Custom NGINX config (optional)
├── scripts/                  # Automation scripts
│   ├── create-cluster.sh     # Creates KIND cluster
│   └── delete-cluster.sh     # Deletes cluster
├── README.md                 # This file

🚀 Getting Started

Clone the repo:
git clone https://github.com/reehassan/k8s-nginx-demo.git
cd k8s-nginx-demo


Make scripts executable:
chmod +x scripts/*.sh


Create the KIND cluster:
./scripts/create-cluster.sh


Deploy the app:
kubectl apply -f manifests/namespace.yaml
kubectl apply -f manifests/configmap.yaml  # Optional
kubectl apply -f manifests/deployment.yaml
kubectl apply -f manifests/service.yaml
kubectl apply -f manifests/hpa.yaml       # Optional


Access the app:
kubectl port-forward -n web-app service/nginx-service 8080:80

Visit http://localhost:8080 in your browser to see NGINX!


🧼 Clean Up
Tear down the cluster:
./scripts/delete-cluster.sh

🌟 Best Practices

✅ Namespaces for resource isolation
✅ Resource limits/requests for efficient usage
✅ Declarative YAML for reproducibility
✅ HPA for autoscaling (optional)
✅ ConfigMap for flexible configuration (optional)
✅ Scripts for automated cluster management
✅ Clear structure for maintainability

🎓 What You’ll Learn

Organizing Kubernetes manifests
Running a local cluster with KIND
Core Kubernetes objects: Pods, Deployments, Services, HPAs
Production-like DevOps workflows

🏷️ Tags
kubernetes kind docker nginx devops k8s autoscaling portfolio
👋 About Me
Hi, I’m Areeba Hassan —a DevOps and automation enthusiast!📫 Connect: iamneeba@gmail.com
📢 Contribute
Fork, open issues, or submit PRs to improve this project!
