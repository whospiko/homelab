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



// cp-01: 4cores, 8ram, 40GB (with rancher) (main control pla)

// worker-01: 2cores, 8ram, 30GB (application)

// worker-02: 2cores, 8ram, 40GB (application, monitoring) (Not Now)

// worker-99: 2cores, 4ram, 30GB (database)
