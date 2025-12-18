# HomeLab

This is an enterprise-grade two-node homelab designed to support Kubernetes operations, multi-cloud automation, GitOps workflows, and continuous learning in modern DevOps practices.  
The environment is built to mirror real infrastructure patterns as closely as possible while still remaining flexible for experimentation.

---

## Hardware and Cluster Layout

The homelab currently consists of:

- **Node 1:** Workstation running Rancher Desktop for a flexible local Kubernetes environment.
- **Node 2:** Bare-metal Talos Linux machine operating as an immutable Kubernetes node.

This hybrid model provides the convenience of a self-contained development cluster on the workstation alongside the reliability and predictability of a Talos-managed node that behaves like production infrastructure.

---

## Kubernetes Platform

### Rancher Desktop (Workstation)
Used primarily for:
- Rapid prototyping  
- Lightweight cluster testing  
- Workload development  
- Scenarios where a disposable Kubernetes environment is ideal

### Talos Linux (Bare-Metal Node)
Talos provides a fully API-driven, immutable operating system purpose-built for Kubernetes.  
It serves as the foundation for production-style cluster behavior, offering:

- Declarative OS configuration  
- Atomic upgrades  
- Strong separation between OS and workloads  
- Security-first management (no SSH)

---

## Core Capabilities in the Homelab

The cluster currently includes:

- **Monitoring and Observability:** Prometheus + Grafana + Loki
- **GitOps Automation:** FluxCD fully deployed  
- **Persistent Storage:** Configured for cluster workloads  
- **Load Balancing:** Multiple load balancers in place for service routing  
- **Cloud-Integrated Workflow:** Terraform for Azure and AWS provisioning  
- **Declarative Infrastructure:** Talos machine configs + GitOps-managed workloads  

This setup allows end-to-end practice with the same patterns used in modern cloud-native environments.

---

## Use Cases and Focus Areas

This homelab supports several ongoing initiatives:

- Kubernetes administration and operational practice  
- GitOps lifecycle management using FluxCD  
- Multi-cloud IaC development (Azure + AWS)  
- Testing workload deployments against real hardware  
- Practicing upgrade strategies, reconciliation loops, and declarative workflows  
- Observability and metrics-driven debugging  
- Refining infrastructure patterns used in production environments  

---

## Future Enhancements

While the cluster is already fully capable, future plans include:

- Adding a **Synology NAS** to expand persistent storage options  
- Expanding Talos-based nodes into a multi-node configuration  
- Introducing cross-cluster federation experiments  
- More advanced security and identity integration with Azure and AWS  

The long-term goal is to maintain a stable, enterprise-aligned environment for continuous study and real-world scenario testing.
