# eks-gbactions-terraform

This is a sample repository that consists of terraform files which can be used to create eks cluster in Nirmata. Before creating the cluster, make sure the cluster type is already created. The following variables need to be configured as secrets for these TF files to work

```
AWS_ACCESS_KEY
AWS_SECRET_ACCESS_KEY
NIRMATA_TOKEN
TF_API_TOKEN
```

The TF_API_TOKEN is generated from Terraform Cloud and NIRMATA_TOKEN can generated from your nirmata profile. The additional resources required to create cluster like Cloud credentials, Cluster type can be created using Nirmata terraform provider as well. 

https://registry.terraform.io/providers/nirmata/nirmata/latest/docs
