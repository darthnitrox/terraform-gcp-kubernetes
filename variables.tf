variable "cluster_name" {
    type = "string"
    description = "Название кластера"
}

variable "cluster_zone" {
    type = "string"
    description = "в какой територриальной зоне запускается кластер"
}

variable "count_cluster_node" {
    type = number
    description = "количество серверов в кластере"
}

variable "node_cluster_prefix" {
    type = "string"
    description = "Префикс у серверов в кластере для определения принадлежности (Имя ноды - Имя клатера)"
}

variable "node_machine_type" {
    type = "string"
    description = "Тип виртуальной машины для запуска кластера"
}

variable "project_name" {
    type = "string"
    description = "Идентификатор проекта"
}

variable "region" {
    type = "string"
    description = "Регион запуска кластера"
}