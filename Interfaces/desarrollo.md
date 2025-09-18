**TABLA I: INTERFAZ DE USUARIO – INICIO DE SESIÓN**

| Campo | Descripción |
|-------|-------------|
| **ID:** | GUI.1 |
| **Nombre:** | InicioSesión |
| **Descripción:** | Esta interfaz permite al usuario ingresar a la aplicación mediante la validación de sus credenciales (correo electrónico y contraseña). En caso de no tener cuenta registrada, el usuario puede acceder a la opción de creación de cuenta **(GUI.A.3 – Registrar Cuenta)**. Asimismo, dispone de la opción de recuperación de contraseña en caso de olvido. |
| **Restricciones / Reglas / Validaciones:** | 1. El correo electrónico es obligatorio y debe tener formato válido.<br>2. La contraseña es obligatoria.<br>3. Credenciales deben coincidir con cuenta registrada.<br>4. En caso de error, se muestra mensaje de "Datos incorrectos".<br>5. El acceso solo se concede tras validación exitosa.<br>6. *Crear Cuenta* dirige a GUI.A.3.<br>7. *Recuperar Contraseña* dirige a la interfaz GUI.7 |


<br>
<br>


**TABLA II: INTERFAZ DE USUARIO – INICIO DE SESIÓN PERFIL**

| Campo | Descripción |
|-------|-------------|
| **ID:** | GUI.2 |
| **Nombre:** | InicioSesiónPerfil |
| **Descripción:** | Esta interfaz muestra la lista de usuarios creados en la aplicación. <br>El usuario debe seleccionar un perfil para ingresar. Si el perfil tiene contraseña configurada, se solicitará ingresarla. |
| **Restricciones / Reglas / Validaciones:** | 1. Se deben mostrar todos los usuarios registrados en la aplicación.<br>2. El acceso se realiza seleccionando un perfil existente.<br>3. Si el perfil tiene contraseña, es obligatorio ingresarla.<br>4. La contraseña ingresada debe coincidir con la registrada para el perfil.<br>5. En caso de error en la contraseña, se muestra un mensaje de "Datos incorrectos".<br> 6. Tras la validación correcta, el sistema redirige automáticamente a la interfaz de Balance correspondiente según el rol del usuario. |

<br>
<br>


**TABLA III: INTERFAZ DE USUARIO – BALANCE**

| Campo | Descripción |
|-------|-------------|
| **ID:** | GUI.3.1 |
| **Nombre:** | Balance |
| **Descripción:** | Esta interfaz muestra un resumen consolidado de los ingresos, gastos y balances tanto individuales como familiares. <br>Se organiza en tres columnas principales: <br> - **Ingresos:** Detalla los ingresos con fecha, concepto, descripción y un color respectivo de acuerdo al usuario que hizo dicho ingreso, mostrando además subtotales por usuario.<br>- **Gastos:** Lista los gastos con fecha, concepto y categoría, y un color respectivo de acuerdo al usuario que hizo dicho gasto, además con subtotales por usuario.<br>- **Balance:** Presenta un resumen por usuario y familiar, con totales del período seleccionado y acumulado anual.<br><br>En la parte superior, el usuario puede seleccionar el período de consulta ( *Este mes, este año, esta semana o personalizado*) y alternar entre las vistas *Balance* y *Gráficos (Barras o Circular)*. <br><br>El menú lateral de navegación (Entrada diaria, Conceptos, Balance, Cerrar sesión, Perfiles) está presente en todas las GUIs principales y permite desplazarse entre secciones del sistema. <br><br>El encabezado de usuario muestra el mensaje “Bienvenido de vuelta” seguido del nombre del usuario. En este mismo espacio se mostrará un ícono de notificación cuando se haya alcanzado algún límite de gasto. Esta sección estará presente de forma estándar en todas las GUIs principales.|
| **Restricciones / Reglas / Validaciones:** |  1. En caso el usuario sea administrador, la interfaz mostrará los ingresos y gastos de todos los usuarios, caso contrario solo mostrará los datos personales. <br> 2. El periodo seleccionado determina los datos visibles en ingresos, gastos y balance.<br>3. Los montos deben calcularse automáticamente a partir de los movimientos registrados en la base de datos.<br>4. El resumen de balance debe actualizarse en tiempo real al agregar, editar o eliminar movimientos.<br>5. Si el usuario hace clic en una transacción, se habilita la opción de edición.<br>6. En caso sea administrador: Al cambiar de perfil (iconos superiores), la vista se actualiza con la información correspondiente al usuario seleccionado.|


**TABLA IV: INTERFAZ DE USUARIO – ENTRADA DIARIA**

| Campo | Descripción |
|-------|-------------|
| **ID:** | GUI.4.1 |
| **Nombre:** | Entrada Diaria |
| **Descripción:** | La interfaz de Entrada Diaria permite visualizar y registrar los movimientos financieros del día. El usuario puede alternar entre las vistas Ingresos, Gastos y Resumen. <br> - En las vistas de **Ingresos/Gastos**, la interfaz se organiza en dos columnas: la primera muestra un formulario para registrar o editar un movimiento (monto, concepto y detalles), mientras que la segunda presenta un listado de los movimientos ingresados durante la fecha seleccionada.<br> - En la vista de **Resumen**, se muestran en columnas los ingresos y gastos del día junto con el total acumulado. <br>En la parte superior se encuentra el selector de fecha, configurado por defecto en el día actual. |
| **Restricciones / Reglas / Validaciones:** |  1. El menú lateral y encabezado de usuario se mantienen.<br> 2. El periodo seleccionado determina los datos visibles en ingresos, gastos y resumen.<br>3.  Se actualizan balances familiar y personal. <br> 4. El campo *Detalles* es el único campo opcional en el registro o edición de un ingreso/gasto. <br> 5. El monto ingresado debe ser mayor a 0.

**TABLA V: INTERFAZ DE USUARIO – CONCEPTOS**

| Campo | Descripción |
|-------|-------------|
| **ID:** | GUI.5.1 |
| **Nombre:** | Conceptos |
| **Descripción:** | La interfaz de Conceptos permite visualizar, crear y editar los conceptos utilizados en los movimientos financieros. El usuario puede alternar entre las vistas de Ingresos y Gastos, las cuales se organizan en dos columnas: en el lado izquierdo se listan los conceptos ya creados y en el lado derecho se muestra un formulario para registrar un nuevo concepto o modificar uno existente. |
| **Restricciones / Reglas / Validaciones:** |  1. El menú lateral y encabezado de usuario se mantienen.<br> 2. Cada usuario puede configurar de manera opcional un desembolso planificado y/o un límite de gasto. Estas configuraciones son individuales y visibles únicamente para el usuario que las definió, mientras que los demás datos del concepto son compartidos con todos los usuarios.<br>3. Al crear o editar un concepto, la lista de conceptos debe actualizar en tiempo real. <br> 4. El botón *Desactivar* solo está disponible para administradores y permite ocultar un concepto de la lista de conceptos creados.

**TABLA VI: INTERFAZ DE USUARIO – ADMINISTRACIÓN DE PERFILES ADMINISTRADOR**

| Campo | Descripción |
|-------|-------------|
| **ID:** | GUI.A.6.1 |
| **Nombre:** | Perfiles Administrador |
| **Descripción:** | La interfaz de Perfiles Administrador muestra al administrador todos los miembros vinculados a la cuenta, junto con la opción de añadir nuevos usuarios. Al seleccionar un miembro, se despliega su información detallada, incluyendo nombre, fecha de nacimiento, rol, contraseña y límites de gasto. En este apartado, el administrador puede asignar límites de gasto por concepto a los distintos usuarios de la cuenta. |
| **Restricciones / Reglas / Validaciones:** |  1. El menú lateral y encabezado de usuario se mantienen. <br> 2. El administrador puede editar todos los datos de los usuarios, excepto la contraseña y los límites de gasto que cada usuario haya configurado de manera personal. <br> 3. Las ediciones realizadas en los datos se guardan automáticamente, sin necesidad de confirmar mediante un botón adicional.


**TABLA VII: INTERFAZ DE USUARIO – PERFIL**

| Campo | Descripción |
|-------|-------------|
| **ID:** | GUI.6.1 |
| **Nombre:** | Perfil |
| **Descripción:** | La interfaz de Perfil muestra al usuario su información personal registrada en el sistema. Desde esta vista puede administrar aspectos básicos de su cuenta, con la posibilidad de actualizar su contraseña y gestionar los límites de gasto que haya configurado previamente.|
| **Restricciones / Reglas / Validaciones:** |  1. El menú lateral y encabezado de usuario se mantien<br> 2. El usuario únicamente puede editar su contraseña y los límites de gasto personales que haya establecido. <3.> Las modificaciones realizadas en los datos se guardan automáticamente, sin necesidad de confirmación mediante un botón adicional.

**TABLA VIII: INTERFAZ DE USUARIO – RECUPERAR CUENTA**

| Campo | Descripción |
|-------|-------------|
| **ID:** | GUI.8 |
| **Nombre:** | Recuperar Cuenta |
| **Descripción:** | Esta interfaz permite al usuario recuperar el acceso a su perfil en caso de haber olvidado la contraseña. Se solicita ingresar el correo electrónico asociado a la cuenta (GUI.8.1). Una vez validada la información, el sistema enviará un código de verificación (GUI.8.2) para permitir la creación de una nueva contraseña (GUI.8.3). Al finalizar se mostrará un pop-up confirmando la creación de la nueva contraseña.|
| **Restricciones / Reglas / Validaciones:** |  1. El usuario debe ingresar obligatoriamente un correo electrónico válido o un dato alternativo de recuperación previamente registrado. <br> 2. Si la validación es incorrecta, se muestra un mensaje de error: “Los datos ingresados no coinciden con ningún usuario registrado”. 