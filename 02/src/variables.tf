###cloud vars

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

###ssh vars

variable "vms_ssh_root_key" {
  type        = string
  default     = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOeALJmB/af8yJzbgqWVqA27F0vqFqN+a7e80MpVtN1u roman@attacker"
  description = "SSH публичный ключ для доступа к ВМ"
}

variable "service_account_key_file" {
  type        = string
  description = "Путь к файлу ключа сервисного аккаунта"
  default     = "authorized_key.json"
}

### VM variables

variable "vm_web_name" {
  type        = string
  default     = "netology-develop-platform-web"
  description = "Имя виртуальной машины"
}

variable "vm_web_platform_id" {
  type        = string
  default     = "standard-v2"
  description = "Идентификатор платформы ВМ"
}

variable "vm_web_cores" {
  type        = number
  default     = 2
  description = "Количество ядер процессора"
}

variable "vm_web_memory" {
  type        = number
  default     = 1
  description = "Объем оперативной памяти (ГБ)"
}

variable "vm_web_core_fraction" {
  type        = number
  default     = 5
  description = "Гарантированная доля vCPU (5-100%)"
}

variable "vm_web_preemptible" {
  type        = bool
  default     = true
  description = "Флаг прерываемой ВМ"
}

variable "vm_web_nat" {
  type        = bool
  default     = true
  description = "Включить NAT для внешнего IP"
}

variable "vm_web_serial_port_enable" {
  type        = number
  default     = 1
  description = "Включить доступ к последовательной консоли"
}

variable "vm_web_image_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "Семейство образа для ВМ"
}
