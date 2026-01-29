variable "cloud_id" {
  type        = string
  description = "ID облака в Yandex Cloud"
}

variable "folder_id" {
  type        = string
  description = "ID каталога в Yandex Cloud"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "Зона доступности по умолчанию"
}

variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "Диапазон IP-адресов для подсети"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "Имя VPC сети и подсети"
}

#variable "vms_ssh_root_key" {
#  type        = string
#  default     = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOeALJmB/af8yJzbgqWVqA27F0vqFqN+a7e80MpVtN1u roman@attacker"
#  description = "SSH публичный ключ для доступа к ВМ"
#}

variable "service_account_key_file" {
  type        = string
  description = "Путь к файлу ключа сервисного аккаунта"
  default     = "authorized_key.json"
}
