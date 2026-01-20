# HomeLab

This repository documents an enterprise-style homelab designed to support Kubernetes operations, GitOps workflows, infrastructure automation, and continuous learning in modern DevOps and platform engineering practices.

The environment intentionally mirrors real-world infrastructure patterns while remaining flexible enough for experimentation across operating systems, architectures, and tooling.

---

## Hardware and Cluster Layout

The homelab currently consists of a **three-node hybrid Kubernetes cluster**, complemented by dedicated network and storage infrastructure:

- **Node 1 (Control Plane):**  
  K3s control plane node  
  - Lightweight, production-proven Kubernetes distribution  
  - Optimized for low overhead and operational simplicity  

- **Node 2 (Worker):**  
  Fedora Server with SELinux enforcing  
  - Enterprise-aligned Linux distribution  
  - Used to validate security controls, policy enforcement, and real-world OS behavior  

- **Node 3 (Worker):**  
  Armbian (ARM-based)  
  - Single-board computer architecture  
  - Used to test ARM compatibility and heterogeneous cluster behavior  

- **Storage:**  
  Synology NAS  
  - Centralized persistent storage for Kubernetes workloads  
  - Designed to support stateful services and future storage experimentation  

This mixed-architecture, mixed-OS design intentionally reflects the complexity found in real production environments rather than idealized lab conditions.

---

## Kubernetes Platform

### K3s (Primary Cluster)

K3s is used as the current Kubernetes platform for this homelab, providing:

- Full CNCF-compliant Kubernetes  
- Reduced operational overhead  
- Suitability for both x86_64 and ARM nodes  
- A realistic control plane without excessive abstraction  

The cluster is configured to support GitOps workflows, observability, networking experimentation, and stateful workloads.

---

## Networking and CNI

- **Cilium**  
  - Primary CNI for the cluster  
  - eBPF-based networking and security  
  - Enables advanced networking visibility and policy experimentation  

- **UniFi Network Integration**  
  - Dedicated network hardware  
  - Enables realistic VLAN, routing, and traffic management scenarios  
  - Used to explore infrastructure-level networking alongside Kubernetes networking  

---

## Platform Services and Tooling

The cluster currently includes or integrates:

- **GitOps Automation:**  
  FluxCD for declarative workload and infrastructure reconciliation  

- **Observability and Monitoring:**  
  - Prometheus  
  - Grafana  
  - Loki  

- **Persistent Storage:**  
  Backed by Synology NAS for stateful workloads  

- **Custom Dashboard:**  
  A Python-based dashboard sourced from a separate repository  
  - Used to visualize cluster state and platform metrics  
  - Acts as an integration point between infrastructure and custom tooling  

---

## Core Capabilities

This homelab supports end-to-end practice with modern cloud-native patterns, including:

- Kubernetes administration and lifecycle management  
- GitOps-driven deployments and reconciliation  
- Hybrid architecture operations (x86 + ARM)  
- SELinux-enforced Linux nodes in Kubernetes  
- Observability-driven debugging and performance analysis  
- Network policy and service routing experimentation  
- Infrastructure automation workflows aligned with real production environments  

---

## Use Cases and Focus Areas

Primary goals of this environment include:

- Practicing real-world Kubernetes operations on bare metal  
- Validating GitOps workflows under non-ideal conditions  
- Testing workload behavior across heterogeneous nodes  
- Developing and refining infrastructure automation patterns  
- Exploring security, networking, and observability as first-class concerns  
- Building intuition for failure modes and recovery scenarios  

---

## Future Enhancements

Planned expansions include:

- **Full Talos Linux Cluster**  
  - Dedicated, API-driven, immutable Kubernetes environment  
  - Separate from the current K3s cluster  
  - Used to study declarative OS management, atomic upgrades, and hardened control planes  

- **Expanded Talos Multi-Node Topology**  
- **Cross-Cluster Experiments** (K3s ↔ Talos)  
- **Advanced Identity and Security Integrations**  
- **Deeper Storage and Backup Strategies**  

Talos is intentionally deferred to ensure it is explored as a **first-class, production-style platform**, not a replacement for the current K3s-based learning environment.
