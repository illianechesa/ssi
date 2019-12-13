



- Crear las dos máquinas virtuales
- NAT para conectarse con internet (descargar paquetes)
- Host-only es para conectarlos entre ellos.
  - Poner los dos en host only.
  - Para connectar con ssh.
  - ssh usuario@ip
    - poner contraseña

Siguiente paso
- Pasar a las ips.

### Añadir usuarios
Aprenda hacer usuarios en esa distribución de unix.
```
sudo useradd ssi29
sudo passwd ssi29
> ssi29
```

### Connection
Conectarse entre las dos maquinas
- Obtener ip.
```
ifconfig -> 192.168.56.102
ssh ssi29@192.168.56.102
> ssi29
Connection
```

### Permisos de usuarios para el acceso ssh
Configurar los permisos para unos usuarios y para otros no.
- Modificar /etc/ssh/sshd_config
```
Port 1234
PermitRootLogin no
AllowUsers ssi29
```

```sh
sudo service ssh reload
```

Comprobación
```
ssh ssi29@192.168.56.102
> ssi29
Connection
exit

ssh tlm@192.168.56.102
> tlm
Permission denied, please try again Connection
exit
```

### Opciones interesantes de ssh





### Public key user authentication

Client
```sh 
ssh-keygen # Generate the key-pair.
ssh-copy-id ssi29@192.168.56.102
> ssi29 # Use the password
```


Ahora se conecta directamente sin pedir la contraseña
```
ssh ssi29@192.168.56.102
```


### Ataques de login


> Necesario realizar cambio de ip para la máquina de hydra
> sudo ifconfig eth0 192.168.56.103, los otros tienen la 101 y 102.

Instalar hydra
- NAT network configuration
- sudo apt-get update
- sudo apt-get install hydra


```
hydra -l root -p admin 192.168.1.105 -t 4 ssh
hydra -l user_name -p single_password ip -t n_threads server_type_it_will_attack
```
# El usuario que vamos a atacar
- -l 
# Listado de usuarios
- -L 
# Contraseña con la que vamos a probar
- -p 
# Lista de posibles contraseñas word list en vez de una sola contraseña
- -P 
# Numero de hilos 
- -t 

```sh
hydra -l ssi29 -p dict.txt 192.168.56.102 -t 4 ssh # Diccionario con todas las palabras para probar
crunch 3 3 > dict.txt # Fuerza bruta de todas conbinaciones de 3 caracteres
```


### Defensas

- [x] Configure que solo algunos usuarios puedan entrar
- [x] Pruebe a cambiar el puerto del servidor de ssh
  - Search for port in nano -w /etc/ssh/ssh_config
  - Port 889, different
- [x] Deshabilitar root login
- [x] Passwordless login - with ssh-keygen
  - Disable empty password
- [x] Pruebe a cambiar los parñametros de ssh que afectan a la velocidad con que un atacante puede intentar contraseñas


- Pruebe a cambiar los parametros de seg que afectan a la velocidad con que un atacante puede intentar contraseñas.
```
> sudo nano -w /etc/ssh/sshd_config
...
LoginGraceTime 120 # Bajado a 10 y dá error
...
```

> 120 indica el número de segundos en que la pantalla de login estará disponible.
> Bajamos el número de segundos para que no pueda estar una pantalla abierta.

- Pruebe a buscar instalar y configurar monitores de login que corten el acceso a quien haga varios intentos de acceso fallidos.
```
> sudo nano -w /etc/ssh/sshd_config
...
MaxAuthTries 2
...
```

- Port-Knocking

> https://www.linuxbabe.com/security/secure-ssh-service-ort-knocking-debian-ubuntu.









