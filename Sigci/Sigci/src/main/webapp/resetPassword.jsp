<%--
  Created by IntelliJ IDEA.
  User: jerss
  Date: 12/08/2024
  Time: 10:05 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Restablecer contraseña</title>
    <link rel="icon" sizes="32x32" href="<%= request.getContextPath() %>/img/sigci.png" type="image/png">
    <link href="<%= request.getContextPath() %>/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/resetPassword.css">
</head>
<body>
<div class="medioCirculo"></div>
<div class="login-box">
    <h1>Ingresa los datos</h1>
    <br>
<form action="reset-password" method="post">
    <label>Correo</label>
    <input  class="form-control"  type="email" name="email" placeholder="Ingresa tu correo">
    <br>
<<<<<<< HEAD

    <input class="form-control"  type="password" name="password" id="password" placeholder="Ingresa nueva contraseña">
    <div id="passwordError" style="color: red;"></div>
    <br>

    <input class="form-control"  type="password" name="newPassword" id="newPassword" placeholder="Confirmar contraseña">
    <div id="newPasswordError" style="color: red;"></div>
=======
    <label>Contraseña</label>
    <input class="form-control"  type="password" name="password" placeholder="Ingresa nueva contraseña">
>>>>>>> 0d4f9a2430c4d9d5e90045636f9465ed67cdfe04
    <br>
    <label>Código</label>
    <input class="form-control"  type="text" name="cody" placeholder="Ingresa el codigo">
    <br>
    <input class="boton" type="submit" value="enviar">
</form>
</div>
<footer class="logo">
    <svg version="1.0" xmlns="http://www.w3.org/2000/svg"
         width="80.000000pt" height="88.000000pt" viewBox="0 0 173.000000 181.000000"
         preserveAspectRatio="xMidYMid meet">

        <g transform="translate(0.000000,181.000000) scale(0.100000,-0.100000)"
           fill="#FFFFFF" stroke="none">
            <path d="M643 1690 c-17 -10 -36 -28 -42 -38 -6 -11 -25 -22 -46 -25 -64 -10
-125 -72 -125 -125 0 -16 -9 -20 -51 -24 -89 -9 -142 -69 -140 -162 0 -42 -4
-58 -20 -72 -30 -27 -58 -87 -65 -137 -8 -57 10 -117 51 -171 28 -38 34 -53
33 -95 0 -32 7 -63 19 -83 22 -39 93 -78 140 -78 27 0 33 -4 33 -21 0 -54 82
-128 142 -129 9 0 24 -10 32 -21 37 -54 116 -74 183 -48 15 6 63 10 106 9 94
-2 117 12 117 70 0 32 4 39 26 44 19 5 33 0 55 -19 17 -14 34 -25 38 -25 16 0
98 61 138 102 42 44 93 114 93 129 0 4 -12 21 -26 38 -19 23 -24 38 -20 56 5
21 12 25 46 25 63 0 75 27 75 175 0 148 -12 175 -75 175 -34 0 -41 4 -46 26
-5 18 -1 32 13 47 33 36 35 45 17 78 -32 64 -179 199 -215 199 -7 0 -25 -11
-40 -26 -20 -19 -32 -24 -53 -18 -22 5 -26 11 -26 44 0 54 -23 70 -99 70 -50
0 -69 5 -99 25 -47 32 -122 34 -169 5z m148 -59 l29 -29 0 -221 0 -221 -30 0
c-31 0 -70 30 -70 53 0 19 -20 36 -36 30 -19 -7 -18 -53 2 -81 20 -29 66 -52
104 -52 l30 0 0 -96 0 -96 -32 6 c-35 7 -48 20 -48 51 0 36 -39 86 -83 105
-51 24 -80 25 -97 5 -19 -22 5 -45 47 -45 44 0 78 -36 87 -90 5 -31 14 -45 39
-60 17 -11 44 -20 60 -20 l27 0 0 -156 0 -156 -29 -29 c-36 -36 -86 -39 -125
-8 l-27 21 30 19 c61 37 92 149 41 149 -19 0 -30 -19 -30 -49 0 -46 -84 -90
-134 -71 -46 17 -66 49 -66 107 0 59 -7 63 -68 42 -24 -8 -38 -7 -65 6 -50 24
-70 83 -48 140 7 16 -1 31 -39 71 -80 85 -78 178 6 259 39 37 44 46 35 63 -43
80 32 169 118 143 59 -17 61 -16 61 40 0 61 11 84 52 105 58 30 148 -13 148
-70 0 -38 41 -63 53 -32 11 28 -15 91 -51 125 l-36 34 23 18 c36 29 87 25 122
-10z m129 -85 c0 -33 21 -66 41 -66 6 0 29 -9 51 -20 54 -26 66 -25 99 6 l28
27 62 -62 62 -62 -27 -28 c-32 -33 -32 -41 -2 -115 27 -66 37 -76 84 -76 l32
0 0 -85 0 -85 -32 0 c-47 0 -57 -10 -84 -76 -30 -74 -30 -82 2 -115 l26 -27
-62 -62 -61 -63 -27 27 c-34 32 -42 32 -116 2 -66 -27 -76 -37 -76 -83 0 -26
-4 -33 -20 -33 -19 0 -20 7 -20 149 l0 149 45 22 c166 81 165 318 -2 392 l-43
19 0 149 c0 143 1 150 20 150 16 0 20 -7 20 -34z m-9 -376 c26 -15 49 -62 49
-105 0 -55 -39 -115 -74 -115 -3 0 -6 52 -6 115 0 63 3 115 6 115 3 0 14 -5
25 -10z"/>
            <path d="M620 1365 c-5 -14 -21 -30 -36 -35 -16 -7 -24 -16 -22 -28 9 -50 108
4 108 59 0 38 -36 41 -50 4z"/>
            <path d="M373 1299 c-17 -17 -4 -39 22 -39 53 0 73 -80 22 -96 -54 -16 -57
-54 -5 -54 21 0 39 10 59 31 31 34 37 71 17 114 -20 44 -89 70 -115 44z"/>
            <path d="M485 1013 c-32 -9 -65 -34 -81 -64 -16 -33 -19 -85 -4 -94 16 -10 40
14 40 39 1 32 24 56 64 67 38 11 50 41 20 53 -9 3 -16 5 -17 5 -1 -1 -11 -4
-22 -6z"/>
            <path d="M560 855 c0 -52 53 -105 105 -105 31 0 36 3 33 21 -2 14 -15 25 -38
33 -27 8 -38 19 -46 46 -8 23 -19 36 -33 38 -18 3 -21 -2 -21 -33z"/>
            <path d="M473 316 c-57 -26 -57 -95 0 -116 68 -25 77 -30 77 -40 0 -16 -60
-12 -66 5 -4 9 -19 15 -35 15 -36 0 -38 -22 -4 -55 49 -50 165 -25 165 36 0
37 -20 59 -65 70 -50 13 -65 27 -44 40 19 12 25 11 43 -6 16 -16 66 -21 66 -6
0 21 -46 61 -75 66 -16 3 -44 -1 -62 -9z"/>
            <path d="M805 323 c-33 -8 -73 -53 -79 -88 -8 -38 14 -100 42 -121 9 -7 39
-14 65 -14 61 0 97 31 97 85 0 35 0 35 -45 35 -38 0 -45 -3 -45 -20 0 -14 7
-20 21 -20 18 0 19 -2 9 -15 -15 -18 -51 -20 -68 -3 -16 16 -16 80 0 96 15 15
54 16 63 2 6 -10 65 -14 65 -4 0 19 -26 48 -55 60 -36 15 -37 15 -70 7z"/>
            <path d="M1020 312 c-64 -32 -78 -135 -25 -188 35 -35 116 -34 150 1 14 13 25
31 25 40 0 21 -56 20 -64 -1 -10 -26 -59 -14 -74 19 -11 22 -11 32 0 55 15 32
64 44 74 18 7 -18 64 -22 64 -5 0 24 -24 52 -55 65 -44 18 -53 18 -95 -4z"/>
            <path d="M630 210 l0 -110 30 0 30 0 0 110 0 110 -30 0 -30 0 0 -110z"/>
            <path d="M1200 210 l0 -110 30 0 30 0 0 110 0 110 -30 0 -30 0 0 -110z"/>
        </g>
    </svg>
</footer>
<script>
    const form = document.querySelector('form');
    const password = document.getElementById('password');
    const newPassword = document.getElementById('newPassword');
    const passwordError = document.getElementById('passwordError');
    const newPasswordError = document.getElementById('newPasswordError');

    form.addEventListener('submit', function(event) {
        let valid = true;
        passwordError.textContent = '';
        newPasswordError.textContent = '';

        // Validación 1: Longitud mínima y al menos un número
        const regex = /^(?=.*\d)[A-Za-z\d\W_]{8,}$/;
        if (!regex.test(password.value)) {
            passwordError.textContent = 'La contraseña debe tener al menos 8 caracteres y contener al menos un número.';
            valid = false;
        }

        // Validación 2: Prevenir espacios al inicio o al final
        if (password.value.trim() !== password.value) {
            passwordError.textContent = 'La contraseña no debe contener espacios al inicio o al final.';
            valid = false;
        }

        // Validación 3: Comparar que ambas contraseñas coincidan
        if (password.value !== newPassword.value) {
            newPasswordError.textContent = 'Las contraseñas no coinciden.';
            valid = false;
        }

        if (!valid) {
            event.preventDefault(); // Prevenir el envío del formulario si hay errores
        }
    });
</script>
</body>
</html>
