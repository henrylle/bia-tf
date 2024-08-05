# Usando ipv4 [desativa ipv6_address_count na instance]
locals {
  vpc_id = "vpc-029793f5cea0c777d"
  subnet_zona_a = "subnet-02c6451a5d303d9e6"
  subnet_zona_b = "subnet-0e97a802ba43586ff"
}
# Usando ipv6
# locals {
#   vpc_id = "vpc-0c000a99369de7dec"
#   subnet_zona_a = "subnet-0e0fa8443b7769a7d"
# }
# -----------dual stack-----------------------
# Usando ipv6-a e ipv4-b usando vpc-ipv6
# locals {
#   vpc_id = "vpc-0c000a99369de7dec"
#   subnet_zona_a = "subnet-0e0fa8443b7769a7d"
#   subnet_zona_b = "subnet-0e97a802ba43586ff"
# }
# Usando ipv4-a e ipv6-b usando vpc-ipv4
# locals {
#   vpc_id = "vpc-029793f5cea0c777d"
#   subnet_zona_a = "subnet-02c6451a5d303d9e6"
#   subnet_zona_b = "subnet-0a2bf87e5ecf2531b"
# }
