# 2
> openssl base64 -d -in enunciado2.base64 -out enunciado2.txt

# 3
> openssl des-ecb -d -K 0123456789012345 -in enunciado3.oculto -out enunciado3.txt


# 4
> openssl aes-256-cbc -d -a -in enunciado4.oculto -out enunciado4.txt

WEb
Contraseña - 6e7bc035c10d6d628e9067ae9b034d41

> md5sum 
Contraseña6e7bc035c10d6d628e9067ae9b034d41  -

> openssl dgst -md5
Contraseña(stdin)= 6e7bc035c10d6d628e9067ae9b034d41

# 5
> cat claveparael5.txt | base64 -d > claveparael5rawfile.txt

> openssl rsautl -decrypt -inkey unclaveprivada.pem  -in claveparael5rawfile.txt -out claveparael5des.txt

> openssl bf-cbc -d -a -in enunciado5.oculto -out enunciado5.txt  
enter bf-cbc decryption password: estoeslaclave

