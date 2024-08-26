# Estos son los pasos para correr la calculadora en BISON en Ubuntu 22
## 1. Instalacion de BISON

```
sudo apt-get update                    
sudo apt-get install bison
```

## 2. Clonacion del repositorio 

Usa este comando en la terminal
```
git clone https://github.com/valebmss/BISON.git
```
Ingresa a la carpeta
```
cd BISON
```

## 3. Ejecucion
```
gcc -o fb1-5 fb1-5.tab.c lex.yy.c -lfl
```
```
./fb1-5
```

## 4. Pruebas
