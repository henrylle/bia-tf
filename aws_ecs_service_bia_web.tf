resource "aws_ecs_service" "bia" {
  name = "service-bia"
  cluster =  aws_ecs_cluster.cluster-bia-tf.id
  task_definition = aws_ecs_task_definition.bia-web.arn
  desired_count = 2

  capacity_provider_strategy {
    capacity_provider = aws_ecs_capacity_provider.bia-tf.name
    base = 1
    weight = 100
  }

  ordered_placement_strategy {
    type = "spread"
    field = "attribute:ecs.availability-zone"
  }

# Com mais de uma instancia rodando altera o deploy_min de 0/50
  deployment_minimum_healthy_percent = 50
  deployment_maximum_percent = 100

# Desativa essa opcao para lancar mais service na linha 5[+2]
#   lifecycle {
#     ignore_changes = [ desired_count ]
#   }

  depends_on = [aws_lb_target_group.tg-bia]
  load_balancer {
    target_group_arn = aws_lb_target_group.tg-bia.arn
    container_name   = "bia_tf"
    container_port   = 8080
  }

    wait_for_steady_state = false  # Adicione isso para evitar a espera por estado estável
  timeouts {
    delete = "30m"  # Aumente o tempo de espera para a exclusão
  }
}
