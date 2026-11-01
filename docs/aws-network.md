# AWS Network Design

## VPC

CIDR:
10.0.0.0/16

## Public Subnet

CIDR:
10.0.1.0/24

## Components

Internet
    │
Internet Gateway
    │
VPC (10.0.0.0/16)
    │
Public Subnet (10.0.1.0/24)
    │
EC2 Instance

## Security Group

Allow:
- SSH (22)
- HTTP (80)
- HTTPS (443)

## Future

- Private Subnet
- NAT Gateway
- RDS Database
