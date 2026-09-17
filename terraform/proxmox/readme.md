terraform version
terraform fmt -recursive
terraform init
terraform validate
terraform plan
terraform plan -out=tfplan
terraform show tfplan
terraform apply tfplan
terraform apply



troubleshot

$token = 'terraform@pve!terraform=NEW_SECRET'

curl.exe -k -i `
  -H "Authorization: PVEAPIToken=$token" `
  "https://192.168.100.10:8006/api2/json/access/permissions"