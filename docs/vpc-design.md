# AWS VPC Design

## Overview

This document outlines the planned AWS infrastructure for Terraform Lab.

## Network Layout

Internet
│
Internet Gateway
│
VPC (10.0.0.0/16)
│
Public Subnet (10.0.1.0/24)
│
EC2 Instance

## Components

### VPC

CIDR:
10.0.0.0/16

Purpose:
Private AWS network boundary.

### Public Subnet

CIDR:
10.0.1.0/24

Purpose:
Hosts publicly accessible resources.

### Internet Gateway

Purpose:
Allows internet access to the VPC.

### Route Table

Routes:

0.0.0.0/0 → Internet Gateway

### Security Group

Inbound:

- SSH (22)
- HTTP (80)
- HTTPS (443)

Outbound:

- All traffic

### EC2

Instance Type:
t3.micro

Purpose:
Application server for future deployments.

## Future Enhancements

- Private subnet
- NAT Gateway
- Load Balancer
- Auto Scaling
- RDS Database
