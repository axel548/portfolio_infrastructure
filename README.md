# 🚀 Proyecto Terraform en Azure

Este proyecto utiliza **Terraform** para aprovisionar recursos en **Microsoft Azure** de manera automatizada y reproducible.

---

## 📋 Requisitos previos

Antes de comenzar, asegúrate de tener lo siguiente instalado y configurado en tu máquina:

- [Terraform](https://developer.hashicorp.com/terraform/downloads) v1.0 o superior  
- [Azure CLI](https://learn.microsoft.com/es-es/cli/azure/install-azure-cli)  
- Una suscripción activa en Azure  
- Permisos para crear recursos en dicha suscripción  

---

## ⚙️ Configuración inicial

1. **Clona este repositorio:**

   ```bash
   git clone https://github.com/tu-usuario/tu-repo.git
   cd tu-repo
   ```

2. **Inicia sesión en Azure:**

    ```bash
    az login
    ```

    Esto abrirá una ventana del navegador para autenticarte con tu cuenta de Azure.
    Una vez autenticado, obtén el ID de tu suscripción con el siguiente comando:

    ```bash
    az account show --query id -o tsv
    ```

    Copia ese valor —lo usarás en el siguiente paso --.

---

## 🧱 Despliegue de la infraestructura

⚠️ Antes de ejecutar los comandos, asegúrate de haber revisado el archivo main.tf y de haber comentado o descomentado correctamente la sección del backend si es necesario.

1.  **Inicializa Terraform:**

    ```bash
    terraform init
    ```

    Este comando descarga los proveedores necesarios y prepara el entorno de trabajo.

2. **Aplica la configuración:**

    Ejecuta el siguiente comando, reemplazando YOUR_SUBSCRIPTION_ID por el ID de tu suscripción:

    ```bash
    terraform apply -var="subscription_id=YOUR_SUBSCRIPTION_ID"
    ```


    Cuando Terraform te pida confirmación, escribe:

    ```bash
    yes
    ```
    y presiona Enter.


3. **Espera a que finalice la creación de los recursos.**
    Terraform mostrará un resumen de los recursos creados y sus salidas (outputs), si las hay.


---

## 🧹 Limpieza (opcional)

Si deseas eliminar todos los recursos creados por Terraform:

```bash
terraform destroy -var="subscription_id=YOUR_SUBSCRIPTION_ID"
```
Confirma la acción escribiendo:

```bash
yes
```