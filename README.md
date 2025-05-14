
# 🚀 Kubernetes NGINX Demo by Areeba Hassan

Welcome to my personal Kubernetes project — a clean and professional deployment of **NGINX on a local Kubernetes cluster using KIND**. This project demonstrates my DevOps skills by following Kubernetes best practices, making it an excellent addition to my portfolio and a practical example for others to learn from.

> **Tech Stack:** Kubernetes • Docker • KIND • Bash • kubectl

---

## 🔍 What This Project Does

This demo:

* Creates a local Kubernetes cluster using KIND
* Deploys an NGINX web server with optional autoscaling
* Uses namespaces, resource limits, ConfigMaps, and automation scripts
* Follows a modular, reproducible, and production-inspired structure

It's ideal for:

* Developers new to Kubernetes
* DevOps learners
* Freelancers showcasing infrastructure skills

---

## 📦 Prerequisites

To run this project, you’ll need:

* [Docker](https://www.docker.com/)
* [KIND (Kubernetes IN Docker)](https://kind.sigs.k8s.io/)
* [kubectl](https://kubernetes.io/docs/tasks/tools/)
* Bash shell (Linux/macOS or WSL on Windows)

---

## 📁 Project Structure

```
k8s-nginx-demo/
├── manifests/                  # YAML configurations
│   ├── namespace.yaml          # Kubernetes namespace
│   ├── deployment.yaml         # NGINX Deployment
│   ├── service.yaml            # ClusterIP Service
│   ├── hpa.yaml                # HPA (optional)
│   └── configmap.yaml          # NGINX config (optional)
│
├── scripts/                    # Shell scripts for automation
│   ├── create-cluster.sh       # Create KIND cluster
│   └── delete-cluster.sh       # Delete KIND cluster
│
└── README.md                   # This file
```

---

## 🚀 Getting Started

Clone the repo:

```bash
git clone https://github.com/reehassan/k8s-nginx-demo.git
cd k8s-nginx-demo
```

Make scripts executable:

```bash
chmod +x scripts/*.sh
```

Create the cluster:

```bash
./scripts/create-cluster.sh
```

Deploy the app:

```bash
kubectl apply -f manifests/namespace.yaml
kubectl apply -f manifests/configmap.yaml     # Optional
kubectl apply -f manifests/deployment.yaml
kubectl apply -f manifests/service.yaml
kubectl apply -f manifests/hpa.yaml           # Optional
```

Access the app:

```bash
kubectl port-forward -n web-app service/nginx-service 8080:80
```

Visit:
👉 [http://localhost:8080](http://localhost:8080)

---

## 🧼 Clean Up

To delete the cluster and free up system resources:

```bash
./scripts/delete-cluster.sh
```

---

## 🌟 Why This Project Matters

✅ Demonstrates namespace isolation
✅ Uses resource limits/requests for production readiness
✅ Shows HPA and ConfigMap usage
✅ Follows declarative IaC principles
✅ Automated with simple shell scripts
✅ Great for resume, portfolios, and practice

---

## 💡 What I Learned

Through this project, I gained hands-on experience in:

* Building Kubernetes clusters with KIND
* Structuring Kubernetes projects
* Deploying real applications with resource constraints
* Autoscaling with HPA
* Managing configurations using ConfigMaps

---


📬 Let’s connect: **[iamneeba@gmail.com](mailto:iamneeba@gmail.com)**
🌐 Portfolio coming soon!

---

## 🏷️ Tags

`kubernetes` `nginx` `kind` `docker` `devops` `bash` `portfolio` `autoscaling` `configmap` `cloud-native`

---

## 🤝 Contributing

Feel free to fork, clone, or contribute to this project. If you have ideas for improvements or questions, open an issue or submit a PR!
