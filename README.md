# Terraform & Ansible Practical Implementation

## 📌 Project Overview

This project demonstrates the basic implementation of **Terraform** and **Ansible** for Infrastructure as Code (IaC) and server configuration management.

Terraform is used to create and manage infrastructure, while Ansible is used to configure the provisioned server.

---

## 🛠️ Technologies Used

* Terraform
* Ansible
* Ubuntu/Linux
* Nginx
* Git & GitHub

---

## 📂 Project Structure

```text
terraform-ansible-practical/
│
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── terraform.tfstate
│
├── ansible/
│   ├── inventory
│   └── playbook.yml
│
└── README.md
```

---

## 🚀 Terraform Implementation

Terraform is used to provision and manage resources.

### Terraform Provider

The project uses the **Local provider** for demonstration.

### Terraform Commands

Initialize the project:

```bash
terraform init
```

Create an execution plan:

```bash
terraform plan
```

Apply the configuration:

```bash
terraform apply
```

View Terraform outputs:

```bash
terraform output
```

View managed resources:

```bash
terraform state list
```

Destroy the resources:

```bash
terraform destroy
```

---

## 📦 Terraform Variables

Variables are defined in `variables.tf`.

Example:

```hcl
variable "project_name" {
  type    = string
  default = "DevOps-Practical"
}
```

Variables make the Terraform configuration reusable and configurable.

---

## 📤 Terraform Outputs

Outputs are defined in `outputs.tf` and display useful information after Terraform execution.

Example:

```hcl
output "project_name" {
  value = var.project_name
}
```

---

## 🔐 Terraform State

Terraform maintains the infrastructure state in:

```text
terraform.tfstate
```

The state file keeps track of resources managed by Terraform.

---

## ⚙️ Ansible Implementation

Ansible is used to configure the server after infrastructure provisioning.

### Ansible Inventory

The inventory contains the managed host:

```ini
[webservers]
localhost ansible_connection=local
```

Test the inventory:

```bash
ansible -i inventory all -m ping
```

---

## 📜 Ansible Playbook

The Ansible playbook performs the following tasks:

1. Installs Nginx
2. Creates a `devopsuser` user
3. Starts and enables the Nginx service

Run the playbook:

```bash
sudo ansible-playbook -i inventory playbook.yml
```

---

## ✅ Verification

Check Nginx:

```bash
sudo systemctl status nginx
```

Check the created user:

```bash
id devopsuser
```

Test the web server:

```bash
curl http://localhost
```

---

## 🔄 Terraform and Ansible Workflow

```text
Terraform
    ↓
Provision Infrastructure
    ↓
Server / Resource
    ↓
Ansible
    ↓
Install Packages
    ↓
Create User
    ↓
Configure & Start Services
    ↓
Application Ready
```

---

## ⚖️ Terraform vs Ansible

| Terraform                   | Ansible                            |
| --------------------------- | ---------------------------------- |
| Infrastructure provisioning | Configuration management           |
| Uses `.tf` files            | Uses YAML playbooks                |
| Maintains state             | Does not use Terraform-style state |
| Creates infrastructure      | Configures servers                 |
| Example: VPC, EC2           | Example: Nginx, users, services    |

---

## 🎯 Learning Outcomes

* Learned Infrastructure as Code concepts
* Installed and configured Terraform
* Used Terraform providers, variables, outputs and state
* Practiced Terraform lifecycle commands
* Created an Ansible inventory
* Created and executed an Ansible playbook
* Installed packages using Ansible
* Created users using Ansible
* Managed services using Ansible
* Understood the difference between Terraform and Ansible

---


