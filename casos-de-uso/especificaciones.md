# Especificaciones de casos de

## CU-001 Iniciar sesión

\begin{longtable}{|p{16cm}|}
\hline
\textbf{Caso de uso: Iniciar sesión} \\
CU-001 \\
\hline
\textbf{Breve Descripción} \\
Permite que un usuario acceda al sistema ingresando sus credenciales \\
\hline
\textbf{Actores principales} \\
Miembro Familiar \\
\hline
\textbf{Actores secundarios} \\
Ninguno \\
\hline
\textbf{Precondiciones} \\
\begin{enumerate}[leftmargin=*]
\item El usuario debe estar previamente registrado en el sistema.
\item El usuario debe estar habilitado.
\end{enumerate} \\
\hline
\textbf{Flujo Principal} \\
\begin{enumerate}[leftmargin=*]
\item El usuario ingresa a la página de inicio de sesión.
\item El usuario ingresa su nombre de usuario y contraseña en el formulario de inicio de sesión.
\item La interfaz verifica que todos los campos estén completos y tengan un formato válido.
\item La base de datos verifica que el usuario existe en los registros y que la contraseña es correcta.
\item El usuario es redirigido a la página principal.
\end{enumerate} \\
\hline
\textbf{Postcondiciones} \\
\begin{enumerate}[leftmargin=*]
\item El usuario es autenticado por el sistema.
\end{enumerate} \\
\hline
\textbf{Flujos Alternativos} \\
\begin{itemize}[leftmargin=*]
\item \textbf{Restablecer contraseña:}
\begin{itemize}
\item Si en el paso 4, el usuario olvida su contraseña, puede restablecerla.
\end{itemize}
\item \textbf{Credenciales inválidas:}
\begin{itemize}
\item Si en el paso 4, el usuario o la contraseña son inválidos, se deniega el acceso.
\end{itemize}
\item \textbf{Crear cuenta:}
\begin{itemize}
\item Si en el paso 1, el usuario no tiene credenciales, puede registrarse en el sistema (CU-003).
\end{itemize}
\end{itemize} \\
\hline
\end{longtable}
\newpage

## CU-002 Cerrar sesión

\begin{longtable}{|p{16cm}|}
\hline
\textbf{Caso de uso: Cerrar sesión} \\
CU-002 \\
\hline
\textbf{Breve Descripción} \\
Permite que un usuario salga del sistema \\
\hline
\textbf{Actores principales} \\
Miembro Familiar \\
\hline
\textbf{Actores secundarios} \\
Ninguno \\
\hline
\textbf{Precondiciones} \\
\begin{enumerate}[leftmargin=*]
\item El usuario debe haber iniciado sesión previamente.
\end{enumerate} \\
\hline
\textbf{Flujo Principal} \\
\begin{enumerate}[leftmargin=*]
\item El usuario selecciona la opción de cerrar sesión en la interfaz.
\item El sistema procesa la solicitud de cierre de sesión.
\item El usuario es redirigido a la página de inicio de sesión.
\end{enumerate} \\
\hline
\textbf{Postcondiciones} \\
\begin{enumerate}[leftmargin=*]
\item El usuario sale del sistema.
\end{enumerate} \\
\hline
\textbf{Flujos Alternativos} \\
Ninguno \\
\hline
\end{longtable}

\newpage

## CU-003 Crear cuenta

\begin{longtable}{|p{16cm}|}
\hline
\textbf{Caso de uso: Crear cuenta} \\
CU-003 \\
\hline
\textbf{Breve Descripción} \\
Permite que un usuario cree una cuenta para acceder a las funcionalidades del sistema \\
\hline
\textbf{Actores principales} \\
Administrador \\
\hline
\textbf{Actores secundarios} \\
Ninguno \\
\hline
\textbf{Precondiciones} \\
Ninguna \\
\hline
\textbf{Flujo Principal} \\
\begin{enumerate}[leftmargin=*]
\item El usuario ingresa su nombre, correo electrónico y contraseña en la interfaz de registro:
\begin{itemize}
\item Nombre: Solo caracteres alfabéticos [A-Za-z].
\item Correo electrónico: Debe ser una dirección válida.
\item Contraseña: Mínimo 5 caracteres, con al menos 1 mayúscula, 1 número y 1 carácter especial (.,:[]{}\*+./\#\$\%\&/()=?¿¡!~).
\end{itemize}
\item El sistema valida que el nombre y correo no estén registrados.
\item El sistema verifica que la contraseña cumpla con los requisitos de seguridad.
\item El sistema crea la cuenta con el rol de Administrador.
\end{enumerate} \\
\hline
\textbf{Postcondiciones} \\
\begin{enumerate}[leftmargin=*]
\item La cuenta del usuario es creada en el sistema.
\item El usuario inicia sesión automáticamente.
\end{enumerate} \\
\hline
\textbf{Flujos Alternativos} \\
\begin{itemize}[leftmargin=*]
\item \textbf{Iniciar sesión:}
\begin{itemize}
\item Si en el paso 2, el correo ya está registrado, el sistema notifica al usuario y lo redirige a iniciar sesión (CU-001).
\end{itemize}
\item \textbf{Fortificar contraseña:}
\begin{itemize}
\item Si en el paso 3, la contraseña no cumple los requisitos, el sistema solicita al usuario ingresar una contraseña más segura.
\end{itemize}
\end{itemize} \\
\hline
\end{longtable}

\newpage

## CU-004 Consultar Balance

\begin{longtable}{|p{16cm}|}
\hline
\textbf{Caso de uso: Consultar Balance} \\
CU-004 \\
\hline
\endfirsthead

% Encabezado para páginas siguientes
\hline
\textbf{Caso de uso: Consultar Balance (continuación)} \\
CU-004 \\
\hline
\endhead

% Pie para páginas que continúan
\hline
\multicolumn{1}{|r|}{\textit{Continúa en la siguiente página...}} \\
\hline
\endfoot

% Pie final
\hline
\endlastfoot

\textbf{Breve Descripción} \\
Permite al usuario consultar el resumen económico de ingresos, egresos y balances, visualizado por fecha o por concepto \\
\hline

\textbf{Actores principales} \\
Miembro Familiar \\
\hline

\textbf{Actores secundarios} \\
Ninguno \\
\hline

\textbf{Precondiciones} \\
\begin{enumerate}[leftmargin=*]
\item El usuario debe haber iniciado sesión.
\end{enumerate} \\
\hline

% Control de salto de página antes del flujo principal
\needspace{15\baselineskip}
\textbf{Flujo Principal} \\
\begin{enumerate}[leftmargin=*]
\item \textbf{Acceso a la pantalla Balance}
\begin{enumerate}
\item El usuario selecciona la opción "Balance" desde el menú (GUI-04).
\item El sistema carga la pantalla Balance, mostrando la pestaña de tablas por defecto.
\end{enumerate}

\item \textbf{Carga inicial de datos}
\begin{enumerate}
\item El sistema consulta los ingresos y egresos de la base de datos para el intervalo predeterminado (esta semana).
\item El sistema muestra filtros de intervalo: Esta semana (predeterminado), Este mes, Este año, Personalizado.
\end{enumerate}

\item \textbf{Selección de modalidad de visualización}
\begin{itemize}
\item El usuario selecciona la visualización:
\begin{itemize}
\item Opción A: Por Fecha
\item Opción B: Por Concepto
\end{itemize}
\end{itemize}

\item \textbf{Procesamiento de datos según rol}
\begin{itemize}
\item Si el usuario es Administrador:
\begin{itemize}
\item El sistema obtiene ingresos y egresos de todos los miembros familiares.
\item Cada miembro se representa con un color único y un ícono con su inicial.
\end{itemize}
\item Si no es Administrador:
\begin{itemize}
\item El sistema obtiene solo los ingresos y egresos del usuario.
\end{itemize}
\end{itemize}

\item \textbf{Visualización de datos - Opción A: Por Fecha}
\begin{enumerate}
\item El sistema ordena los registros cronológicamente.
\item El sistema muestra:
\begin{itemize}
\item Ingresos: Monto, categoría, detalles, fecha. Subtotales por miembro y total global.
\item Egresos: Monto, categoría, detalles, fecha. Subtotales por miembro y total global.
\item Balance: Resultado (ingresos menos egresos) mensual y anual. Total por miembro y global.
\end{itemize}
\end{enumerate}

\item \textbf{Visualización de datos - Opción B: Por Concepto}
\begin{enumerate}
\item El sistema agrupa los registros por concepto.
\item El sistema muestra:
\begin{itemize}
\item Ingresos por Concepto: Lista de movimientos agrupados. Subtotales por concepto, miembro y global.
\item Egresos por Concepto: Lista de movimientos agrupados. Subtotales por concepto, miembro y global.
\item Balance: Resultado (ingresos menos egresos) mensual y anual. Total por miembro y global.
\end{itemize}
\end{enumerate}

\end{enumerate} \\
\hline

\textbf{Postcondiciones} \\
\begin{enumerate}[leftmargin=*]
\item El usuario accede al balance en la modalidad seleccionada.
\end{enumerate} \\
\hline

\textbf{Flujos Alternativos} \\
\begin{itemize}[leftmargin=*]
\item \textbf{A1. Sin datos disponibles:}
\begin{itemize}
\item El sistema muestra un mensaje indicando que no hay registros en el intervalo seleccionado.
\end{itemize}
\item \textbf{A2. Error de conexión:}
\begin{itemize}
\item El sistema muestra un mensaje de error y sugiere reintentar.
\end{itemize}
\end{itemize} \\
\hline
\end{longtable}

## CU-005 Visualizar Gráficos

\begin{longtable}{|p{16cm}|}
\hline
\textbf{Caso de uso: Visualizar Gráficos} \\
CU-005 \\
\hline
\endfirsthead

% Encabezado para páginas siguientes
\hline
\textbf{Caso de uso: Visualizar Gráficos (continuación)} \\
CU-005 \\
\hline
\endhead

% Pie para páginas que continúan
\hline
\multicolumn{1}{|r|}{\textit{Continúa en la siguiente página...}} \\
\hline
\endfoot

% Pie final
\hline
\endlastfoot

\textbf{Breve Descripción} \\
Permite al usuario visualizar de manera gráfica (diagramas y gráficos interactivos) los ingresos, egresos y balances previamente consultados en el caso de uso Consultar Balance (por fecha o por concepto) \\
\hline

\textbf{Actores principales} \\
Miembro Familiar \\
\hline

\textbf{Actores secundarios} \\
Ninguno \\
\hline

\textbf{Precondiciones} \\
\begin{enumerate}[leftmargin=*]
\item El usuario debe haber iniciado sesión.
\item El usuario debe haber accedido previamente a Consultar Balance (CU-004).
\end{enumerate} \\
\hline

% Control de salto de página antes del flujo principal
\needspace{15\baselineskip}
\textbf{Flujo Principal} \\
\begin{enumerate}[leftmargin=*]
\item El usuario selecciona la pestaña o botón "Gráficos" en la pantalla de Balance.
\item El sistema carga los datos previamente obtenidos en la consulta (ingresos, egresos, balances).
\item El sistema genera visualizaciones gráficas, entre ellas:
\begin{itemize}
\item Gráfico de barras o columnas: muestra los ingresos y egresos por cada miembro o concepto (con colores asignados).
\item Gráfico circular: muestra la distribución de los ingresos/egresos por concepto o por miembro (con colores asignados).
\end{itemize}
\item Si el usuario tiene rol Administrador:
\begin{enumerate}
\item El sistema muestra gráficos consolidados de todos los miembros.
\item Cada miembro es identificado con un color único.
\item El sistema permite alternar entre vista individual (un miembro) y vista global (toda la familia).
\end{enumerate}
\item Si el usuario no es Administrador:
\begin{enumerate}
\item El sistema muestra únicamente gráficos basados en sus propios datos.
\end{enumerate}
\item El usuario puede cambiar entre diferentes tipos de gráficos mediante pestañas o botones de control.
\end{enumerate} \\
\hline

\textbf{Postcondiciones} \\
Ninguna \\
\hline

\textbf{Flujos Alternativos} \\
Ninguno \\
\hline
\end{longtable}

## CU-006 Gestionar Conceptos (Abstracto)

\begin{longtable}{|p{16cm}|}
\hline
\textbf{Caso de uso: Gestionar Conceptos (Abstracto)} \\
CU-006 \\
\hline
\endfirsthead

% Encabezado para páginas siguientes
\hline
\textbf{Caso de uso: Gestionar Conceptos (Abstracto) (continuación)} \\
CU-006 \\
\hline
\endhead

% Pie para páginas que continúan
\hline
\multicolumn{1}{|r|}{\textit{Continúa en la siguiente página...}} \\
\hline
\endfoot

% Pie final
\hline
\endlastfoot

\textbf{Breve Descripción} \\
Permite al integrante realizar operaciones sobre los conceptos de ingresos o egresos \\
\hline

\textbf{Actores principales} \\
Miembro Familiar \\
\hline

\textbf{Actores secundarios} \\
Ninguno \\
\hline

\textbf{Precondiciones} \\
\begin{enumerate}[leftmargin=*]
\item El usuario debe haber iniciado sesión.
\end{enumerate} \\
\hline

\needspace{15\baselineskip}
\textbf{Flujo Principal} \\
\begin{enumerate}[leftmargin=*]
\item Este caso es abstracto y se especializa en subcasos específicos.
\item El miembro al acceder a Conceptos (GUI3) tiene la opción de crear un Nuevo concepto (CU-007) o Editar un concepto existente (CU-008).
\end{enumerate} \\
\hline

\textbf{Postcondiciones} \\
Ninguna (caso abstracto) \\
\hline

\textbf{Flujos Alternativos} \\
Ninguno \\
\hline
\end{longtable}

## CU-007 Crear Concepto

\begin{longtable}{|p{16cm}|}
\hline
\textbf{Caso de uso: Crear Concepto} \\
CU-007 \\
\hline
\endfirsthead

% Encabezado para páginas siguientes
\hline
\textbf{Caso de uso: Crear Concepto (continuación)} \\
CU-007 \\
\hline
\endhead

% Pie para páginas que continúan
\hline
\multicolumn{1}{|r|}{\textit{Continúa en la siguiente página...}} \\
\hline
\endfoot

% Pie final
\hline
\endlastfoot

\textbf{Breve Descripción} \\
Permite al miembro agregar un nuevo concepto \\
\hline

\textbf{Actores principales} \\
Miembro Familiar \\
\hline

\textbf{Actores secundarios} \\
Ninguno \\
\hline

\textbf{Precondiciones} \\
\begin{enumerate}[leftmargin=*]
\item El usuario debe haber iniciado sesión.
\end{enumerate} \\
\hline

\needspace{15\baselineskip}
\textbf{Flujo Principal} \\
\begin{enumerate}[leftmargin=*]
\item El miembro selecciona "Nuevo" en la sección Conceptos (GUI3).
\item El miembro ingresa el nombre, tipo (ingreso/egreso), periodo ('Diario', 'Semanal', 'Mensual' u 'Ocasional') y presupuesto (si aplica).
\item El miembro puede limitar el monto de gasto para el concepto si es de tipo 'Egreso' y periodo diferente a 'Diario' (CU-015).
\item El sistema guarda el concepto.
\end{enumerate} \\
\hline

\textbf{Postcondiciones} \\
\begin{enumerate}[leftmargin=*]
\item El nuevo concepto está registrado en el sistema.
\end{enumerate} \\
\hline

\textbf{Flujos Alternativos} \\
Ninguno \\
\hline

\textbf{Incluye} \\
Gestionar conceptos \\
\hline
\end{longtable}

## CU-008 Editar Concepto

\begin{longtable}{|p{16cm}|}
\hline
\textbf{Caso de uso: Editar Concepto} \\
CU-008 \\
\hline
\endfirsthead

% Encabezado para páginas siguientes
\hline
\textbf{Caso de uso: Editar Concepto (continuación)} \\
CU-008 \\
\hline
\endhead

% Pie para páginas que continúan
\hline
\multicolumn{1}{|r|}{\textit{Continúa en la siguiente página...}} \\
\hline
\endfoot

% Pie final
\hline
\endlastfoot

\textbf{Breve Descripción} \\
Permite al miembro modificar un concepto existente \\
\hline

\textbf{Actores principales} \\
Miembro Familiar \\
\hline

\textbf{Actores secundarios} \\
Ninguno \\
\hline

\textbf{Precondiciones} \\
\begin{enumerate}[leftmargin=*]
\item El usuario debe haber iniciado sesión.
\item Debe existir al menos un concepto previamente creado.
\end{enumerate} \\
\hline

\needspace{15\baselineskip}
\textbf{Flujo Principal} \\
\begin{enumerate}[leftmargin=*]
\item El miembro selecciona "Editar" en un concepto existente (GUI3).
\item El miembro modifica los detalles (nombre, tipo, periodo, presupuesto).
\item El miembro puede limitar el monto de gasto para el concepto si es de tipo 'Egreso' y periodo diferente a 'Diario' (CU-015).
\item El sistema actualiza el concepto.
\end{enumerate} \\
\hline

\textbf{Postcondiciones} \\
\begin{enumerate}[leftmargin=*]
\item El concepto modificado está actualizado en el sistema.
\end{enumerate} \\
\hline

\textbf{Flujos Alternativos} \\
Ninguno \\
\hline
\end{longtable}

## CU-009 Gestionar Movimientos Diarios (Abstracto)

\begin{longtable}{|p{16cm}|}
\hline
\textbf{Caso de uso: Gestionar Movimientos Diarios (Abstracto)} \\
CU-009 \\
\hline
\endfirsthead

% Encabezado para páginas siguientes
\hline
\textbf{Caso de uso: Gestionar Movimientos Diarios (Abstracto) (continuación)} \\
CU-009 \\
\hline
\endhead

% Pie para páginas que continúan
\hline
\multicolumn{1}{|r|}{\textit{Continúa en la siguiente página...}} \\
\hline
\endfoot

% Pie final
\hline
\endlastfoot

\textbf{Breve Descripción} \\
Permite al miembro familiar acceder a la funcionalidad de registrar o modificar los movimientos diarios, ya sea añadiendo un nuevo registro o editando uno existente \\
\hline

\textbf{Actores principales} \\
Miembro Familiar \\
\hline

\textbf{Actores secundarios} \\
Ninguno \\
\hline

\textbf{Precondiciones} \\
\begin{enumerate}[leftmargin=*]
\item El usuario debe haber iniciado sesión.
\end{enumerate} \\
\hline

\needspace{15\baselineskip}
\textbf{Flujo Principal} \\
\begin{enumerate}[leftmargin=*]
\item El usuario ingresa a la pestaña Entrada Diaria (GUI4).
\item El sistema muestra las tres opciones para seleccionar: Ingresos, Gastos y Hoy.
\item Si el usuario seleccionó Ingresos o Gastos:
\begin{itemize}
\item El sistema muestra dos paneles, en el izquierdo un formulario para nuevo movimiento y en el derecho la lista de movimientos registrados del día seleccionado.
\end{itemize}
\item Si el usuario seleccionó Hoy:
\begin{itemize}
\item El sistema muestra dos columnas con ingresos y gastos del día.
\end{itemize}
\item Según la acción del usuario, se deriva a:
\begin{itemize}
\item Añadir Movimiento (CU-010)
\item Editar Movimiento (CU-011)
\item Eliminar Movimiento (CU-012)
\end{itemize}
\end{enumerate} \\
\hline

\textbf{Postcondiciones} \\
\begin{enumerate}[leftmargin=*]
\item El usuario accede a las funciones de añadir, editar o eliminar movimientos según corresponda.
\end{enumerate} \\
\hline

\textbf{Flujos Alternativos} \\
\begin{itemize}[leftmargin=*]
\item \textbf{A1. Seleccionar una fecha distinta:} El sistema permite seleccionar una fecha distinta a la actual para ver o gestionar movimientos pasados.
\end{itemize} \\
\hline
\end{longtable}

## CU-010 Añadir Movimiento

\begin{longtable}{|p{16cm}|}
\hline
\textbf{Caso de uso: Añadir Movimiento} \\
CU-010 \\
\hline
\endfirsthead

% Encabezado para páginas siguientes
\hline
\textbf{Caso de uso: Añadir Movimiento (continuación)} \\
CU-010 \\
\hline
\endhead

% Pie para páginas que continúan
\hline
\multicolumn{1}{|r|}{\textit{Continúa en la siguiente página...}} \\
\hline
\endfoot

% Pie final
\hline
\endlastfoot

\textbf{Breve Descripción} \\
Permite al miembro familiar registrar un nuevo ingreso o gasto, que se añade a la lista de movimientos del día en el área seleccionada (Ingresos o Gastos) \\
\hline

\textbf{Actores principales} \\
Miembro Familiar \\
\hline

\textbf{Actores secundarios} \\
Ninguno \\
\hline

\textbf{Precondiciones} \\
\begin{enumerate}[leftmargin=*]
\item El usuario debe haber iniciado sesión.
\item El usuario debe haber ingresado a la GUI-4.
\item El área seleccionada es Ingresos o Gastos.
\end{enumerate} \\
\hline

\needspace{15\baselineskip}
\textbf{Flujo Principal} \\
\begin{enumerate}[leftmargin=*]
\item El usuario se ubica en el panel izquierdo del área seleccionada (Ingresos/Gastos).
\item El sistema muestra el formulario: Monto, Conceptos (lista), Detalles (opcional) y el botón añadir.
\item El usuario ingresa el Monto.
\item El usuario selecciona un Concepto de la lista.
\item Si el usuario selecciona el símbolo (+), se deriva al caso de uso Crear Concepto (CU-007).
\item (Opcional) El usuario ingresa Detalles textuales.
\item El usuario presiona el botón añadir.
\item El sistema valida la información (monto > 0).
\item El movimiento se registra en la base de datos.
\begin{itemize}
\item Uso de Comandos SQL para crear un nuevo registro.
\end{itemize}
\item El sistema actualiza los balances, tanto familiar como personal.
\item El sistema muestra el movimiento en el panel derecho (Lista de movimientos del día).
\end{enumerate} \\
\hline

\textbf{Postcondiciones} \\
\begin{enumerate}[leftmargin=*]
\item El nuevo movimiento queda registrado y aparece en la lista de movimientos del día.
\item El balance y gráficos se actualizan automáticamente.
\end{enumerate} \\
\hline

\textbf{Flujos Alternativos} \\
\begin{itemize}[leftmargin=*]
\item \textbf{A1. Crear un nuevo concepto:} Invoca a CU-007 Crear Concepto y retorna al paso 4.
\item \textbf{A2. Monto o concepto inválido:} Si el monto no es válido o falta concepto, el sistema muestra un mensaje de error y retorna al paso 3.
\end{itemize} \\
\hline
\end{longtable}

## CU-011 Editar Movimiento

\begin{longtable}{|p{16cm}|}
\hline
\textbf{Caso de uso: Editar Movimiento} \\
CU-011 \\
\hline
\endfirsthead

% Encabezado para páginas siguientes
\hline
\textbf{Caso de uso: Editar Movimiento (continuación)} \\
CU-011 \\
\hline
\endhead

% Pie para páginas que continúan
\hline
\multicolumn{1}{|r|}{\textit{Continúa en la siguiente página...}} \\
\hline
\endfoot

% Pie final
\hline
\endlastfoot

\textbf{Breve Descripción} \\
Permite al miembro familiar modificar un ingreso o gasto previamente registrado desde la lista del día (Ingresos, Gastos u Hoy) \\
\hline

\textbf{Actores principales} \\
Miembro Familiar \\
\hline

\textbf{Actores secundarios} \\
Ninguno \\
\hline

\textbf{Precondiciones} \\
\begin{enumerate}[leftmargin=*]
\item El usuario debe haber iniciado sesión.
\item El usuario debe haber ingresado a la GUI-4.
\item El área seleccionada es Ingresos, Gastos u Hoy.
\item Se debe tener movimientos previamente registrados.
\end{enumerate} \\
\hline

\needspace{15\baselineskip}
\textbf{Flujo Principal} \\
\begin{enumerate}[leftmargin=*]
\item El usuario selecciona un movimiento en el panel derecho (Ingreso/Gastos) o en la pestaña Hoy.
\item El usuario hace clic en el ícono de editar.
\item Si el movimiento a editar se encuentra en la pestaña Hoy:
\begin{enumerate}
\item Si el clic se dio en un movimiento de ingreso, se redirige a la pestaña Ingreso.
\item Si el clic se dio en un movimiento de gasto, se redirige a la pestaña Gasto.
\end{enumerate}
\item El sistema carga la información del movimiento en el panel izquierdo.
\item El usuario modifica los campos necesarios: Monto, Concepto, Detalles.
\begin{itemize}
\item Si el usuario selecciona el símbolo (+) en la lista de conceptos, se invoca el caso de uso CU-007.
\end{itemize}
\item El botón guardar se activa.
\item El usuario presiona guardar.
\item El sistema valida la nueva información.
\item El sistema actualiza el registro en la base de datos.
\begin{itemize}
\item Uso de Comandos SQL para actualizar dicho registro.
\end{itemize}
\item El sistema actualiza los balances, tanto familiar como personal.
\item El movimiento editado se muestra en el panel derecho.
\end{enumerate} \\
\hline

\textbf{Postcondiciones} \\
\begin{enumerate}[leftmargin=*]
\item El movimiento queda actualizado.
\item El balance y los gráficos se ajustan a la nueva información.
\end{enumerate} \\
\hline

\textbf{Flujos Alternativos} \\
\begin{itemize}[leftmargin=*]
\item \textbf{A1. Crear un nuevo concepto:} Invoca a CU-007 Crear Concepto y retorna al paso 4.
\item \textbf{A2. Monto inválido:} Si el monto no es válido, el sistema muestra un mensaje de error y retorna al paso 4.
\end{itemize} \\
\hline
\end{longtable}

## CU-012 Eliminar Movimiento

\begin{longtable}{|p{16cm}|}
\hline
\textbf{Caso de uso: Eliminar Movimiento} \\
CU-012 \\
\hline
\endfirsthead

% Encabezado para páginas siguientes
\hline
\textbf{Caso de uso: Eliminar Movimiento (continuación)} \\
CU-012 \\
\hline
\endhead

% Pie para páginas que continúan
\hline
\multicolumn{1}{|r|}{\textit{Continúa en la siguiente página...}} \\
\hline
\endfoot

% Pie final
\hline
\endlastfoot

\textbf{Breve Descripción} \\
Permite al miembro familiar eliminar un ingreso o gasto previamente registrado, quitándolo de la lista de ingresos o gastos del día seleccionado \\
\hline

\textbf{Actores principales} \\
Miembro Familiar \\
\hline

\textbf{Actores secundarios} \\
Ninguno \\
\hline

\textbf{Precondiciones} \\
\begin{enumerate}[leftmargin=*]
\item El usuario debe haber iniciado sesión.
\item El usuario debe haber ingresado a la GUI-4.
\item El área seleccionada es Ingresos, Gastos u Hoy.
\item Se debe tener movimientos previamente registrados.
\end{enumerate} \\
\hline

\needspace{15\baselineskip}
\textbf{Flujo Principal} \\
\begin{enumerate}[leftmargin=*]
\item El usuario selecciona un movimiento en el panel derecho (Ingreso/Gastos) o en la pestaña Hoy.
\item El usuario hace clic en el ícono de eliminar.
\item El sistema solicita una confirmación ("¿Estás seguro de eliminar el movimiento?").
\item El usuario confirma la acción.
\item El sistema elimina el movimiento de la base de datos.
\begin{itemize}
\item Uso de Comandos SQL para la eliminación de dicho registro.
\end{itemize}
\item El sistema actualiza la lista de movimientos en pantalla, quitando el registro eliminado.
\item El sistema recalcula y actualiza el balance y los gráficos.
\end{enumerate} \\
\hline

\textbf{Postcondiciones} \\
\begin{enumerate}[leftmargin=*]
\item El movimiento seleccionado queda eliminado de la base de datos.
\item Los balances y gráficos reflejan la eliminación.
\end{enumerate} \\
\hline

\textbf{Flujos Alternativos} \\
\begin{itemize}[leftmargin=*]
\item \textbf{A1. Cancelar eliminación:} Si el usuario selecciona "Cancelar" en la confirmación, el sistema no elimina nada y regresa al paso 1.
\item \textbf{A2. Error en la operación:} Si hay problemas de conexión o de permisos, el sistema muestra un mensaje de error, no elimina el movimiento y regresa al paso 1.
\end{itemize} \\
\hline
\end{longtable}

## CU-013 Deshabilitar Concepto

\begin{longtable}{|p{16cm}|}
\hline
\textbf{Caso de uso: Deshabilitar Concepto} \\
CU-013 \\
\hline
\endfirsthead

% Encabezado para páginas siguientes
\hline
\textbf{Caso de uso: Deshabilitar Concepto (continuación)} \\
CU-013 \\
\hline
\endhead

% Pie para páginas que continúan
\hline
\multicolumn{1}{|r|}{\textit{Continúa en la siguiente página...}} \\
\hline
\endfoot

% Pie final
\hline
\endlastfoot

\textbf{Breve Descripción} \\
Permite al miembro deshabilitar un concepto \\
\hline

\textbf{Actores principales} \\
Miembro Familiar \\
\hline

\textbf{Actores secundarios} \\
Ninguno \\
\hline

\textbf{Precondiciones} \\
\begin{enumerate}[leftmargin=*]
\item El usuario debe haber iniciado sesión.
\item Debe existir al menos un concepto previamente creado.
\end{enumerate} \\
\hline

\needspace{15\baselineskip}
\textbf{Flujo Principal} \\
\begin{enumerate}[leftmargin=*]
\item El miembro selecciona "Editar" en un concepto existente.
\item El miembro selecciona "Deshabilitar" en un concepto.
\item El miembro confirma la Deshabilitación.
\item El sistema deshabilita el concepto y actualiza los registros asociados.
\end{enumerate} \\
\hline

\textbf{Postcondiciones} \\
\begin{enumerate}[leftmargin=*]
\item El concepto seleccionado ha sido deshabilitado, es decir que no será visible para el usuario.
\end{enumerate} \\
\hline

\textbf{Flujos Alternativos} \\
Ninguno \\
\hline

\textbf{Incluye} \\
Gestionar Conceptos \\
\hline
\end{longtable}

## CU-014 Añadir Notificación

\begin{longtable}{|p{16cm}|}
\hline
\textbf{Caso de uso: Añadir Notificación} \\
CU-014 \\
\hline
\endfirsthead

% Encabezado para páginas siguientes
\hline
\textbf{Caso de uso: Añadir Notificación (continuación)} \\
CU-014 \\
\hline
\endhead

% Pie para páginas que continúan
\hline
\multicolumn{1}{|r|}{\textit{Continúa en la siguiente página...}} \\
\hline
\endfoot

% Pie final
\hline
\endlastfoot

\textbf{Breve Descripción} \\
Permite configurar notificaciones automáticas por correo electrónico que serán enviadas al usuario cuando se supere el límite establecido por el usuario \\
\hline

\textbf{Actores principales} \\
Miembro Familiar \\
\hline

\textbf{Actores secundarios} \\
Ninguno \\
\hline

\textbf{Precondiciones} \\
\begin{enumerate}[leftmargin=*]
\item El usuario debe haber iniciado sesión.
\item Debe existir al menos un límite de sobrepresupuesto previamente configurado.
\item El usuario debe haber registrado un correo electrónico válido en su perfil.
\end{enumerate} \\
\hline

\needspace{15\baselineskip}
\textbf{Flujo Principal} \\
\begin{enumerate}[leftmargin=*]
\item El usuario selecciona la opción "Añadir notificación" desde la pestaña donde estableció el límite de sobrepresupuesto.
\item El sistema muestra las opciones de eventos disponibles para asociar la notificación (Umbral de días antes o de monto máximo).
\item El usuario selecciona el evento deseado (ej.: "cuando se supere el límite de S/300").
\item El usuario confirma que desea recibir alertas por email.
\item El sistema valida la dirección de correo asociada al usuario.
\item El sistema guarda la configuración de la notificación.
\item El sistema muestra un mensaje de confirmación indicando que la notificación ha sido añadida exitosamente.
\end{enumerate} \\
\hline

\textbf{Postcondiciones} \\
\begin{enumerate}[leftmargin=*]
\item La notificación queda registrada en el sistema y vinculada al evento seleccionado.
\item El sistema queda listo para enviar un correo electrónico automáticamente cuando la condición se cumpla.
\end{enumerate} \\
\hline

\textbf{Flujos Alternativos} \\
\begin{itemize}[leftmargin=*]
\item \textbf{A1. Correo inválido:}
\begin{enumerate}
\item Si la dirección de email no es válida, el sistema muestra un error.
\item El usuario debe actualizar su información de contacto antes de continuar.
\end{enumerate}
\item \textbf{A2. Cancelación del usuario:}
\begin{enumerate}
\item El usuario puede cancelar la configuración en cualquier momento antes del paso 6.
\item El sistema no guarda cambios.
\end{enumerate}
\item \textbf{A3. Error de servicio de email:}
\begin{enumerate}
\item Si al intentar guardar la notificación no hay conexión con el servidor de correo, el sistema muestra un mensaje de error y registra el fallo.
\item El usuario puede reintentar más tarde.
\end{enumerate}
\end{itemize} \\
\hline
\end{longtable}

## CU-015 Asignar Límites de Sobrepresupuesto

\begin{longtable}{|p{16cm}|}
\hline
\textbf{Caso de uso: Asignar Límites de Sobrepresupuesto} \\
CU-015 \\
\hline
\textbf{Breve Descripción} \\
Permite que el usuario defina un límite de gasto máximo (sobrepresupuesto) para un miembro o para un concepto específico de la economía familiar. El sistema registra el límite y, opcionalmente, activa una notificación cuando dicho límite se alcanza o supera \\
\hline
\textbf{Actores principales} \\
Miembro Familiar \\
\hline
\textbf{Actores secundarios} \\
Ninguno \\
\hline
\textbf{Precondiciones} \\
\begin{enumerate}[leftmargin=*]
\item El usuario debe haber iniciado sesión.
\item Debe existir al menos un miembro y un concepto previamente creado.
\item El usuario debe tener permisos para editar o asignar límites.
\end{enumerate} \\
\hline
\textbf{Flujo Principal} \\
\begin{enumerate}[leftmargin=*]
\item El usuario selecciona la opción de Asignar Límite en la aplicación para un miembro o concepto en específico.
\item El sistema muestra la lista de miembros y/o conceptos disponibles.
\item El usuario selecciona el miembro o concepto al que desea asignar el límite.
\item El usuario ingresa el valor del límite (ejemplo: S/300).
\item El sistema valida que el valor ingresado sea numérico y mayor que cero.
\item El usuario confirma la acción.
\item Si el usuario marca la opción para activar notificaciones al alcanzar el límite, se deriva al caso de uso CU-014.
\item El sistema guarda el límite en la base de datos.
\item El sistema confirma que el límite ha sido asignado correctamente.
\end{enumerate} \\
\hline
\textbf{Postcondiciones} \\
\begin{enumerate}[leftmargin=*]
\item El límite queda registrado en el sistema y asociado al miembro/concepto.
\item Si se activó la notificación, queda configurado el evento para ser disparado cuando se alcance el umbral.
\end{enumerate} \\
\hline
\end{longtable}
