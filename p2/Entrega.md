



## Checkpoint 1.1:


### Telefonica
```sh
> host -a www.telefonica.com
Trying "www.telefonica.com"
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 4335
;; flags: qr rd ra; QUERY: 1, ANSWER: 2, AUTHORITY: 2, ADDITIONAL: 1

;; QUESTION SECTION:
;www.telefonica.com.            IN      ANY

;; ANSWER SECTION:
www.telefonica.com.     300     IN      AAAA    2a02:9009:0:aa:aa01::
www.telefonica.com.     300     IN      A       194.224.110.41

;; AUTHORITY SECTION:
telefonica.com.         277     IN      NS      nsjc8hos01.telefonica-data.com.
telefonica.com.         277     IN      NS      nsalchos01.telefonica-data.com.

;; ADDITIONAL SECTION:
nsalchos01.telefonica-data.com. 42 IN   A       213.4.194.35

Received 162 bytes from 130.206.158.253#53 in 36 ms
```

```sh
> host -t mx telefonica.com
telefonica.com mail is handled by 10 telefonicacorp.mail.protection.outlook.com.
```

**INFO OBTENIDA**
De este comando obtenemos la siguiente info del dominio de telefonica: 
- Dirección ipv4: 194.224.110.41
- Dirección ipv6: 2a02:9009:0:aa:aa01::
- Servidores de nombres asociados: nsjc8hos01.telefonica-data.com.
  - nsjc8hos01.telefonica-data.com.
  - nsalchos01.telefonica-data.com.
- El proveedor del servicio de email es Microsoft office Outlook.
  - Su servidor es: telefonicacorp.mail.protection.outlook.com.

### Navalur.com

```sh
> host -a www.navalur.com   
Trying "www.navalur.com"
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 37419
;; flags: qr rd ra; QUERY: 1, ANSWER: 2, AUTHORITY: 2, ADDITIONAL: 2

;; QUESTION SECTION:
;www.navalur.com.               IN      ANY

;; ANSWER SECTION:
www.navalur.com.        2310    IN      MX      10 exmx1.directnic.com.
www.navalur.com.        2310    IN      MX      20 exmx2.directnic.com.

;; AUTHORITY SECTION:
navalur.com.            172330  IN      NS      expired-domain-ns51.directnic.com.
navalur.com.            172330  IN      NS      expired-domain-ns50.directnic.com.

;; ADDITIONAL SECTION:
expired-domain-ns50.directnic.com. 508 IN A     74.117.217.22
expired-domain-ns51.directnic.com. 508 IN A     74.117.222.22

Received 187 bytes from 130.206.158.253#53 in 12 ms
```


```sh
> host -t mx navalur.com    
navalur.com mail is handled by 20 exmx2.directnic.com.
navalur.com mail is handled by 10 exmx1.directnic.com.
```

**Info obtenida**
La información obtenida de navalur.com es la siguiente:
- Los servidores de correo son dos:
  - exmx1.directnic.com.
  - exmx2.directnic.com.
- Los nombres asociados al servidor son:
  - expired-domain-ns51.directnic.com.
  - expired-domain-ns50.directnic.com.


## Checkpoint 1.2 


Tras ejecutar el comando `whois 130.206.1.1` vemos que se trata de una IP perteneciente al rango RedIris. Una red nacional. En la respuesta que se nos dá un email para incidentes con la seguridad `seguridad@rediris.es`. Así que este será el correo al que enviariamos un mensaje denunciándolo.

En el caso de que se hubiese recibido un correo de spam, correo basura, también existe un email especificado. Resulta que es el mismo `seguridad@rediris.es`


## Checkpoint 1.3



## Checkpoint 1.4



## Chekpoint opcional