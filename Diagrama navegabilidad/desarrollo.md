**TABLA I: INTERFAZ INICIO DE SESIÓN**

| ID        | Nombre              | Descripción                                                | Restricciones / Reglas / Validaciones                               |
| ----------| --------------------|------------------------------------------------------------|---------------------------------------------------------------------|
| GUI.1     | Inicio Sesión       |Esta interfaz permite al usuario ingresar a la aplicación   | 1. El correo electrónico es obligatorio y debe tener formato válido.|
|           |                     |mediante la validación de sus credenciales (correo          | 2. La contraseña es obligatoria.                                    |
|           |                     |electrónico y contraseña). En caso de no tener cuenta,      | 3. Credenciales deben coincidir con un usuario registrado.          |
|           |                     |el usuario puede acceder a la opción de creación de cuenta  | 4. En caso de error, se muestra mensaje de notificación.            |
|           |                     |(GUI.A.3 – Registrar Cuenta). Asimismo, dispone de la opción| 5. El acceso solo se concede tras validación exitosa.               |
|           |                     |de recuperación de contraseña en caso de olvido.            | 6. Crear Cuenta dirige a GUI.A.3.                                   |
|           |                     |                                                            | 7. Recuperar Contraseña dirige a la interfaz correspondiente.       |
| ----------| --------------------|------------------------------------------------------------|---------------------------------------------------------------------|

