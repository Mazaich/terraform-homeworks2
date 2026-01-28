# Переменные для ВМ platform-web

variable "vm_web_name" {
  type        = string
  default     = "netology-develop-platform-web"
  description = "Имя виртуальной машины web"
}

variable "vm_web_platform_id" {
  type        = string
  default     = "standard-v2"
  description = "Идентификатор платформы ВМ web"
}

variable "vm_web_cores" {
  type        = number
  default     = 2
  description = "Количество ядер процессора для ВМ web"
}

variable "vm_web_memory" {
  type        = number
  default     = 1
  description = "Объем оперативной памяти (ГБ) для ВМ web"
}

variable "vm_web_core_fraction" {
  type        = number
  default     = 5
  description = "Гарантированная доля vCPU (5-100%) для ВМ web"
}

variable "vm_web_preemptible" {
  type        = bool
  default     = true
  description = "Флаг прерываемой ВМ для web"
}

variable "vm_web_nat" {
  type        = bool
  default     = true
  description = "Включить NAT для внешнего IP для ВМ web"
}

variable "vm_web_serial_port_enable" {
  type        = number
  default     = 1
  description = "Включить доступ к последовательной консоли для ВМ web"
}

variable "vm_web_image_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "Семейство образа для ВМ web"
}

## Переменные для ВМ platform-db

variable "vm_db_name" {
  type        = string
  default     = "netology-develop-platform-db"
  description = "Имя виртуальной машины db"
}

variable "vm_db_platform_id" {
  type        = string
  default     = "standard-v2"
  description = "Идентификатор платформы ВМ db"
}

variable "vm_db_cores" {
  type        = number
  default     = 2
  description = "Количество ядер процессора для ВМ db"
}

variable "vm_db_memory" {
  type        = number
  default     = 2
  description = "Объем оперативной памяти (ГБ) для ВМ db"
}

variable "vm_db_core_fraction" {
  type        = number
  default     = 20
  description = "Гарантированная доля vCPU (5-100%) для ВМ db"
}

variable "vm_db_preemptible" {
  type        = bool
  default     = true
  description = "Флаг прерываемой ВМ для db"
}

variable "vm_db_nat" {
  type        = bool
  default     = true
  description = "Включить NAT для внешнего IP для ВМ db"
}

variable "vm_db_serial_port_enable" {
  type        = number
  default     = 1
  description = "Включить доступ к последовательной консоли для ВМ db"
}

variable "vm_db_image_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "Семейство образа для ВМ db"
}

variable "vm_db_zone" {
  type        = string
  default     = "ru-central1-b"
  description = "Зона доступности для ВМ db"
}
