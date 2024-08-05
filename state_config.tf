# Usando o Backend [state] "terraform.tfstate" local.
# Voltando para o estado local: [terraform init -migrate-state]
# ----
# terraform {
#   backend "local" {
#   }
# }
# ----
# Usando o Backend [state] "terraform.tfstate" na nuvem no bucket s3.
# Guardno seu estado no backet s3: [terraform init -migrate-state]
# ----
terraform {
  backend "s3" {
    bucket  = "terraform-bia-state2"
    key     = "terraform.tfstate"
    region  = "us-east-1"
    profile = "bia-tf"
  }
}
# ----