# TALLER 7 JAVA WEB

###### Autor: Daniel Mateo Suarez Alvarez
###### Ficha 2687365 DEL PROGRAMA ADSO SENA

##MVC

#### DESCRIPCIÓN

En este proyecto trabajaramos con la clase servlet, se usa para peticiones como registrar o logear a un usuario, trabajamos con el metodo post para mayor seguridad al nos ser un texto plano y que nosotros empleamos para el desarrollo web.

![image](https://github.com/arquitectura-ufps/conversor-imagenes-core/assets/126428837/266a06b1-94f8-435d-8bc2-9881100301fd)

Tambien se crea los impl como modelo que llama a la conección de base de datos.

![image](https://github.com/arquitectura-ufps/conversor-imagenes-core/assets/126428837/12cb1fb7-09fe-428e-95fa-2ea0ecd148a0)
![image](https://github.com/arquitectura-ufps/conversor-imagenes-core/assets/126428837/527cebeb-f046-4596-9193-bb67680038e6)
Y la vista donde nosotros realizamos el registro.
![image](https://github.com/arquitectura-ufps/conversor-imagenes-core/assets/126428837/70bc0c9f-6bfd-4459-af86-4184486024dc)
Tabla con los datos registrados
![image](https://github.com/arquitectura-ufps/conversor-imagenes-core/assets/126428837/29e4042a-faa6-456a-92f5-6d69329162fc)


#### FUNCIONAMIENTO

doPOST=Son los que se usan para trabajar los metodos requets y reponse, trabaja con metodos declarados.
se define el metodo que transmite datos de una pagina a otra.


######Enlace de video demostracion:https://youtu.be/mNQD3Ezv2dc

Usaremos la conection pool para que nos llama bien la tabla SQL y que no tenga problemas en la ejecucion.

####Repository, Test y User

#####Repository
![Repositorio](https://github.com/1Daniel-Mateo/Taller-4-y-5-Java-Web/assets/126428837/d1e0b56c-6a08-4d7b-a57c-1c934b93f44f)
Aqui crearemos campos vacios de codigo donde realizaran una accion especifica de la CRUD(Create,Read,Update,Delete) y agregando una lista para que nos invoque una lista de datos y el tipo de clase de java sera un implement.

#####UserRepositoryImpl
![list](https://github.com/1Daniel-Mateo/Taller-4-y-5-Java-Web/assets/126428837/43531073-180f-4f28-b9f5-268afd332347)
![leer](https://github.com/1Daniel-Mateo/Taller-4-y-5-Java-Web/assets/126428837/140ab606-df07-4600-bea4-5a7aedb84c78)
![guardar](https://github.com/1Daniel-Mateo/Taller-4-y-5-Java-Web/assets/126428837/04da1d9e-d652-41b9-b72d-db10b517a0de)
![eleminar y crear](https://github.com/1Daniel-Mateo/Taller-4-y-5-Java-Web/assets/126428837/8cb7352c-fbfd-412b-ae36-7e7ddc457de0)
Aqui en los campos de codigo donde realizaran una accion especifica de la CRUD(Create,Read,Update,Delete) en donde invocaran las variables de la conección pool que seran implementados en repository.
try(Connection conn= ConnectionPool.getConnection();
PreparedStatement ps= conn.prepareStatement(sql));

#####TestRepositoryImpl
Crearemos el  TestRepositoryImpl en este invocaremos y ejecutaremos los metodos almacenados en el UserRepositoryImpl.
![Insertar](https://github.com/1Daniel-Mateo/Taller-4-y-5-Java-Web/assets/126428837/f3313d56-f0f1-4ff1-92e2-c5f58c80ee8a)
![save](https://github.com/1Daniel-Mateo/Taller-4-y-5-Java-Web/assets/126428837/887a322d-0b2f-4fd7-99fe-55d6ccc4fbb7)
![byObj](https://github.com/1Daniel-Mateo/Taller-4-y-5-Java-Web/assets/126428837/3e601efd-498c-47bc-8d23-bee7e940be26)
![delete](https://github.com/1Daniel-Mateo/Taller-4-y-5-Java-Web/assets/126428837/21621239-1808-4830-9930-1189e12981f0)
![lista](https://github.com/1Daniel-Mateo/Taller-4-y-5-Java-Web/assets/126428837/201df692-6084-469d-81a8-1bfc049096d7)

####CATEGORIA Y PRODUCTOS

Son las tablas en las cuales nosotros trabajamos almacenamos los datos.
![image](https://github.com/1Daniel-Mateo/Taller-6-Java-Web/assets/126428837/f03899e7-fc50-4f0d-81d5-5d02bc88f79e)
![image](https://github.com/1Daniel-Mateo/Taller-6-Java-Web/assets/126428837/a6abec67-3e84-4e07-8b9a-11d3727449ec)

####INSTALACIÓN

1. Descargarlo como archivo comprimido.
2. Descomprime y guarda la carpeta
3. Abre Intellig Idea y abre la carpeta.
4. Activa el xampp, puedes abrir los archivos de heidi(Recomendacion descargar e instarlar el programa y crear usuario en base datos :https://www.youtube.com/watch?v=wOC5Vq8y19U)o en su defecto el script en para que lo copies e instancies el usuario como "Mateo" y contraseña"arbol325"(son los datos que estan guardados en la conección pool).
5. Llama a la base de datos y instanciala con los dos datos del paso 4.

CREATE DATABASE my_app;

USE my_app;

CREATE TABLE `users_tbl` (
`user_id` INT(11) NOT NULL AUTO_INCREMENT,
`user_firstname` VARCHAR(40) NULL,
`user_lastname` VARCHAR(40) NULL,
`user_email` VARCHAR(60) NULL,
`user_password` VARBINARY(255) NULL
);

INSERT INTO my_app.users_tbl (user_firstname, user_lastname, user_email, user_password)  VALUES (UPPER('willy'), UPPER('luca'), LOWER('drogo@gmail.com'),
AES_ENCRYPT('vendedores', '$205125wio3gy WoSDXCKL4f59VUVV7F0pc1twpon1422fYes/CH1122'));

SELECT *, CAST(AES_DECRYPT(user_password, '$205125wio3gy WoSDXCKL4f59VUVV7F0pc1twpon1422fYes/CH1122')
AS CHAR(50)) end_data FROM users_tbl WHERE user_id = 1;

SELECT * FROM users_tbl;

######Nota

Cuando llames a la base de datos de acuerdo al gestor de bases de datos puede ser MariaDB para heidi o MySQL si trabajas con MySQL Worprech.

####EJECUCION

Ya una vez hecha la instalacion y configurado y comprobado el funcionamiento este debera ser el resultado final.


#### ERRORES COMUNES

Estos son los errores que se presentaron durante el proceso de desarrollo.

1. Revisa que las instrucciones esten bien ingresadas, es decir que esten bien digitados que no falte ni una coma ni punto.
2. No olvides que tienes que encriptar la clave para mayor seguridad.
3. Asegurate que las instrucciones de la tabla esten bien digitadas.
4. En caso de que la no sirva el editor de base de datos te sugiero que busques alternativas como lo pueden ser heidiSQL, Worprech, DBaver o Oracle.
5. Cuando crees un nuevo impl recuerda tener cabiados los (u) por la letra que usen deacuerdo a categoria y producto.

Gracias por su atencion, que tengan buen día.



