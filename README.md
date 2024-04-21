# Terraform Lab - Crear un repositorio de GitHub y varias ramas

Este repositorio contiene los archivos de configuración de Terraform para crear un repositorio de GitHub y varias ramas.

## Estructura del repositorio

- `main.tf`: Este es el archivo principal de Terraform que contiene la configuración para crear el repositorio y las ramas.

## Cómo usar

1. Asegúrate de tener instalado Terraform en tu máquina local.
2. Clona este repositorio en tu máquina local.
3. Navega hasta el directorio del repositorio en tu terminal.
4. Crea un archivo `terraform.tfvars` y define las siguientes variables:
`github_token`: Tu token de autenticación de GitHub. 
5. Ejecuta `terraform init` para inicializar tu entorno de Terraform.
6. Ejecuta `terraform apply` para crear el repositorio y las ramas.
