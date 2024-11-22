# HomeLab

Welcome to the **HomeLab** repository! This project is a collection of **Ansible configurations** and **Kubernetes deployments**, gathered from multiple experiments and attempts to find the best way to **self-host open-source services**.

The goal of this repository is to provide a secure and efficient setup for hosting services at home, with an emphasis on **security** and **reliability**.

## Overview

This repository contains configurations for:

- **Ansible**: Automating the setup and management of infrastructure.
- **Kubernetes**: Deploying and managing services in a containerized environment.

The services deployed via Kubernetes come with the **strictest security policies** possible, as outlined below.

## Key Features

### 1. **Security-First Approach**

Each service deployed within Kubernetes is configured with the following strict security measures:

- **Read-Only Filesystem**: Services are configured to use a **read-only filesystem** wherever possible, ensuring that even if a container is compromised, the filesystem cannot be modified by the attacker.
- **Unprivileged Users**: Services run under **unprivileged users**, further reducing the risk of privilege escalation and limiting the potential impact of a security breach.
- **Calico Networking Policy**: Kubernetes networking policies are enforced using **Calico**, with **strict firewalling** to limit network access to only necessary components. This minimizes the attack surface and helps contain potential breaches.

### 2. **Self-Hosting Open-Source Services**

The project is built around the idea of hosting open-source services on your own infrastructure. Each service is chosen for its utility and open-source nature, making it easy to customize, extend, and contribute to. Services deployed include, but are not limited to:

- Web applications
- Monitoring tools
- Databases
- Messaging and collaboration platforms

### 3. **Multiple Experiments**

This repository is a culmination of various experiments aimed at finding the best ways to deploy and manage these services securely. It serves as both a **proof of concept** and a **useful resource** for anyone looking to self-host services in a secure environment.

## Security Best Practices

The HomeLab project follows **best security practices** to ensure that services are deployed in the most secure manner possible. The key aspects of the security policies include:

- **Immutable infrastructure**: Containers and services are immutable, preventing unauthorized modifications.
- **Minimal access**: Calico networking policies ensure that services can only communicate with the necessary resources.
- **User privilege isolation**: By running services with unprivileged users, the impact of any breach is minimized.

## Notes

- **Ansible Configuration Changes**:
  - The file with the **hosts configuration** has been removed. Users expecting to use the playbooks will need to manually set up and configure any necessary variables.
  - The **Ansible Vault** containing secrets has been removed. If you intend to use these playbooks, you must configure your own Vault or ensure any sensitive variables are properly set up and secured in your environment.
  - **Playbooks** are located in the `ansible-books/` directory. This directory contains all the Ansible playbooks needed for automating the infrastructure setup and service deployments.
  - The other directories contain configuration files and resources that are needed by the playbooks.

  
## Contributions

This project is a work in progress, and contributions are welcome! If you have suggestions for improving security, adding new services, or enhancing the overall setup, feel free to submit an issue or a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgements

- [Ansible](https://www.ansible.com/) for automation.
- [Kubernetes](https://kubernetes.io/) for container orchestration.
- [Calico](https://www.projectcalico.org/) for networking policies.
- The open-source community for providing invaluable tools to help build and maintain this project.
 
