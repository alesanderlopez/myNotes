# SSL/TLS

## Pedir Wildcar
```bash
// Generar clave privada
openssl genrsa -out $DOMAIN.key 2048
// Generar CSR
openssl req -new -sha256 -key $DOMAIN.key -out $DOMAIN.csr
```

## Generar CA y firmar certificados.
```bash
// CA
openssl genrsa -out ca.key 4096
openssl req -new -x509 -days 1826 -key ca.key -out ca.crt

// Subordinate CA (IA)
openssl genrsa -out ia.key 4096
openssl req -new -key ia.key -out ia.csr

// Generar certificados con CA para IA
openssl x509 -req -days 3650 -sha256 -in ia.csr -CA ca.crt -CAkey ca.key -set_serial 01 -out ia.crt

// Generar p12
openssl pkcs12 -export -out ia.p12 -inkey ia.key -in ia.crt -chain -CAfile ca.crt
```