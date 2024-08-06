<%
    // Estas lineas lo que hacen es borrar la caché, si el usuario cierra la sesión, y quiere regresar a la página de atras no lo dejaría
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
    response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
    response.setDateHeader("Expires", 0); // Proxies.
%>
<%@ page import="utez.edu.mx.sicci.model.User" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menu administrador</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/bootstrap.css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/menuAdminppal.css">
</head>
<body>
<%
    User u = (User) session.getAttribute("user");
    if(u != null){
        String nombre = u.getNombre() + " " + u.getApellidos();
        request.setAttribute("nombre", nombre);
%>
<header>
    <div class="user">

        <svg version="1.0" xmlns="http://www.w3.org/2000/svg"
             width="40.000000pt" height="30.000000pt" viewBox="0 0 512.000000 512.000000"
             preserveAspectRatio="xMidYMid meet">

            <g transform="translate(0.000000,512.000000) scale(0.100000,-0.100000)"
               fill="#FFF" stroke="none">
                <path d="M2370 5114 c-19 -2 -78 -9 -130 -15 -791 -90 -1522 -586 -1924 -1305
       -146 -262 -252 -588 -297 -914 -18 -125 -18 -515 0 -640 105 -762 511 -1409
       1146 -1826 609 -400 1377 -517 2090 -317 929 260 1646 1043 1819 1987 156 845
       -103 1682 -705 2285 -399 398 -879 639 -1449 726 -100 15 -472 28 -550 19z
       m395 -304 c785 -72 1480 -554 1825 -1264 38 -78 83 -181 100 -231 251 -720
       129 -1508 -326 -2110 -46 -60 -105 -134 -132 -164 l-48 -54 -38 78 c-328 693
       -1082 1095 -1841 984 -574 -84 -1083 -460 -1331 -984 l-38 -78 -48 54 c-327
       364 -534 834 -578 1314 -67 727 233 1459 790 1928 464 390 1069 582 1665 527z
       m50 -3066 c315 -55 627 -230 838 -470 84 -97 189 -259 235 -367 61 -141 62
       -128 -15 -184 -278 -202 -627 -344 -983 -399 -144 -22 -491 -25 -625 -5 -254
       38 -472 104 -691 211 -123 60 -373 214 -389 240 -8 12 46 146 92 230 237 436
       659 711 1168 764 71 7 278 -4 370 -20z"/>
                <path d="M2449 4310 c-382 -47 -694 -314 -805 -687 -32 -108 -43 -293 -24
       -409 36 -224 158 -439 332 -583 89 -74 260 -162 378 -193 119 -32 346 -32 465
       0 113 31 286 119 373 192 174 146 296 360 332 584 19 116 8 301 -24 409 -81
       271 -273 495 -523 609 -143 64 -352 97 -504 78z m197 -301 c215 -30 401 -163
       494 -353 52 -106 70 -181 70 -291 0 -187 -56 -321 -190 -456 -69 -70 -101 -94
       -170 -128 -193 -94 -387 -94 -580 0 -68 34 -102 59 -171 128 -133 134 -189
       268 -189 456 0 110 18 185 69 290 104 211 320 350 568 364 12 0 56 -4 99 -10z"/>
            </g>
        </svg>

        Bienvenido <%= nombre %>
    </div>


    <a class="logout-button" href="logout">Salir</a>
</header>


<br>

<div class="container">
    <div class="row">
        <div class="col-md-6 col-lg-4">
            <div class="card">
                <div class="card-body" onclick="irAgestionarDoc()">
                    <h5 class="card-title">
                        <svg version="1.0" xmlns="http://www.w3.org/2000/svg"
                             width="200.000000pt" height="74.000000pt" viewBox="0 0 140.000000 140.000000"
                             preserveAspectRatio="xMidYMid meet">

                            <g transform="translate(0.000000,140.000000) scale(0.100000,-0.100000)"
                               fill="#002DA0" stroke="none">
                                <path d="M725 1234 c-142 -36 -260 -153 -287 -285 -10 -50 -15 -59 -38 -64
                     -79 -17 -129 -88 -130 -180 0 -70 16 -120 52 -160 36 -42 32 -60 -17 -69 -51
                     -10 -117 -78 -134 -138 -16 -57 -8 -94 27 -131 l26 -27 209 0 209 0 29 29 c24
                     24 29 38 29 77 0 89 -52 160 -139 190 -44 15 -51 42 -16 67 25 18 26 18 54 -3
                     44 -31 108 -51 186 -58 63 -6 70 -9 73 -29 3 -19 -1 -23 -23 -23 -25 0 -26 -3
                     -23 -42 2 -36 7 -44 26 -46 25 -4 27 -14 10 -42 -11 -17 -9 -24 15 -47 23 -24
                     30 -26 47 -15 28 17 38 15 42 -10 2 -19 10 -24 46 -26 39 -3 42 -1 42 22 0 19
                     5 26 20 26 11 0 20 -4 20 -10 0 -20 39 -9 59 17 19 23 20 28 6 43 -22 25 -18
                     38 13 42 24 3 27 7 27 43 0 32 -4 40 -20 43 -33 6 -40 20 -22 40 16 18 16 20
                     -4 45 -21 27 -53 35 -64 17 -9 -15 -25 -12 -31 5 -4 10 11 34 41 66 25 27 58
                     75 73 107 23 49 27 70 27 152 0 86 -3 101 -32 161 -65 132 -185 211 -328 215
                     -44 2 -89 1 -100 -2z m227 -56 c154 -71 235 -238 194 -398 -52 -203 -245 -312
                     -442 -252 -82 25 -136 64 -117 83 10 10 16 9 31 -4 68 -62 221 -81 314 -39
                     209 93 257 370 92 522 -66 60 -124 83 -214 84 -91 0 -154 -25 -218 -87 -50
                     -48 -76 -93 -93 -161 -14 -55 -35 -56 -32 -2 7 108 115 233 236 272 65 22 181
                     13 249 -18z m-37 -53 c65 -28 113 -73 145 -139 29 -59 32 -72 28 -138 -4 -84
                     -26 -136 -78 -188 -105 -105 -274 -112 -387 -16 -29 24 -33 34 -33 77 0 54
                     -16 93 -50 124 -18 16 -20 26 -14 60 29 177 226 289 389 220z m-410 -289 c13
                     -9 29 -24 34 -34 8 -15 4 -17 -37 -19 -26 0 -79 -3 -119 -5 -70 -3 -72 -3 -59
                     17 7 11 28 31 47 43 38 27 92 26 134 -2z m29 -86 c24 -9 26 -14 26 -68 0 -94
                     -50 -152 -130 -152 -40 0 -88 28 -106 62 -8 13 -13 51 -14 84 0 56 2 62 23 68
                     12 3 38 3 57 0 19 -3 46 -1 60 5 33 13 53 13 84 1z m487 -241 c9 -19 17 -21
                     55 -15 41 5 58 -4 34 -19 -5 -3 -10 -18 -10 -31 0 -19 8 -29 30 -37 37 -14 38
                     -22 3 -39 -29 -14 -39 -38 -28 -66 10 -26 8 -27 -38 -27 -34 0 -44 -4 -52 -22
                     -13 -30 -31 -29 -39 1 -7 28 -31 37 -64 22 -29 -12 -35 -5 -22 28 12 34 -2 66
                     -30 66 -11 0 -20 7 -20 15 0 8 6 15 13 15 24 0 48 36 42 61 -5 21 0 26 47 45
                     68 28 65 28 79 3z m-541 -25 c0 -23 -32 -74 -47 -74 -14 0 -53 57 -53 78 0 8
                     17 12 50 12 39 0 50 -3 50 -16z m-105 -64 c31 -60 76 -60 112 0 21 37 56 39
                     103 8 50 -34 72 -71 78 -126 4 -41 1 -53 -17 -71 -20 -20 -31 -21 -219 -21
                     -177 0 -201 2 -214 18 -39 43 -28 118 26 173 56 57 107 65 131 19z"/>
                                <path d="M797 1123 c-13 -12 -7 -43 8 -43 9 0 15 9 15 25 0 24 -10 32 -23 18z"/>
                                <path d="M610 1041 c0 -15 28 -33 40 -26 8 5 8 11 -1 21 -13 15 -39 19 -39 5z"/>
                                <path d="M963 1035 c-3 -9 -3 -18 0 -22 10 -10 37 6 37 22 0 20 -29 20 -37 0z"/>
                                <path d="M797 1013 c-4 -3 -7 -25 -7 -48 0 -26 -6 -48 -15 -55 -19 -16 -19
                     -64 -1 -80 8 -6 26 -10 40 -8 19 2 37 -8 71 -42 33 -32 48 -41 56 -33 8 8 -1
                     24 -35 61 -25 27 -46 56 -46 64 0 8 -9 23 -20 33 -15 13 -20 31 -20 67 0 45
                     -7 57 -23 41z m28 -144 c0 -7 -8 -15 -17 -17 -18 -3 -25 18 -11 32 10 10 28 1
                     28 -15z"/>
                                <path d="M1033 858 c2 -7 12 -13 22 -13 10 0 20 6 23 13 2 7 -6 12 -23 12 -17
                     0 -25 -5 -22 -12z"/>
                                <path d="M620 695 c-9 -10 -10 -19 -4 -25 13 -13 49 13 40 28 -10 16 -21 15
                     -36 -3z"/>
                                <path d="M960 696 c0 -7 6 -19 14 -25 19 -16 32 5 16 24 -16 19 -30 19 -30 1z"/>
                                <path d="M794 625 c-3 -8 -3 -19 1 -25 11 -18 25 -11 25 15 0 27 -17 34 -26
                     10z"/>
                                <path d="M965 458 c-51 -30 -60 -84 -20 -123 30 -31 66 -32 101 -2 49 43 29
                     117 -36 131 -14 3 -34 1 -45 -6z m73 -67 c3 -25 -2 -33 -22 -43 -22 -9 -29 -8
                     -46 7 -26 23 -25 50 1 69 32 22 63 6 67 -33z"/>
                            </g>
                        </svg>
                        <center>Gestionar docentes</center>
                    </h5>
                    <p class="card-text">
                    <center>Permite administrar a los profesores en el sistema.</center>
                    </p>
                </div>
            </div>
        </div>
        <div class="col-md-6 col-lg-4">
            <a href="getListaAdminAspirantes">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">
                        <svg version="1.0" xmlns="http://www.w3.org/2000/svg"
                             width="200.000000pt" height="74.000000pt" viewBox="0 0 139.000000 115.000000"
                             preserveAspectRatio="xMidYMid meet">

                            <g transform="translate(0.000000,115.000000) scale(0.100000,-0.100000)"
                               fill="#002DA0" stroke="none">
                                <path d="M702 1082 c-15 -15 -47 -34 -72 -41 -25 -7 -65 -24 -89 -37 -55 -30
                     -57 -30 -64 6 -7 32 -49 60 -90 60 -56 0 -99 -68 -78 -123 9 -23 6 -30 -20
                     -56 -28 -28 -30 -35 -27 -93 3 -60 4 -63 31 -66 36 -4 35 -27 -3 -62 -38 -35
                     -38 -64 -1 -99 37 -34 47 -78 26 -117 -18 -36 -18 -42 -1 -75 13 -25 12 -28
                     -9 -39 -32 -17 -45 -51 -45 -116 l0 -55 133 3 132 3 3 32 3 33 37 -19 c20 -10
                     53 -22 72 -26 19 -4 46 -20 61 -36 34 -37 64 -37 98 0 15 16 42 32 61 36 19 4
                     52 16 72 26 l37 19 3 -33 c3 -31 4 -32 57 -35 40 -2 52 0 49 10 -3 7 -21 14
                     -41 16 -36 3 -37 4 -37 47 0 64 16 75 110 75 90 0 100 -8 100 -79 0 -40 0 -40
                     -42 -43 -23 -2 -43 -9 -46 -15 -3 -10 13 -13 57 -13 l61 0 0 56 c0 59 -11 88
                     -42 114 -16 13 -17 19 -8 47 10 26 9 39 -4 64 -22 44 -12 91 25 118 39 29 38
                     64 -1 101 -38 35 -39 58 -2 62 26 3 27 6 30 66 3 58 1 65 -27 92 -27 27 -28
                     33 -19 64 20 64 -41 129 -105 112 -32 -8 -67 -43 -67 -68 0 -24 -9 -23 -61 6
                     -24 13 -64 30 -89 37 -25 7 -57 26 -72 41 -14 15 -36 28 -48 28 -12 0 -34 -13
                     -48 -28z m79 -18 c17 -21 0 -49 -31 -49 -31 0 -48 28 -31 49 8 9 21 16 31 16
                     10 0 23 -7 31 -16z m-331 -56 c22 -40 -2 -82 -49 -86 -60 -6 -90 46 -55 96 23
                     34 83 27 104 -10z m702 15 c41 -37 10 -103 -48 -103 -34 0 -64 28 -64 60 0 9
                     7 26 16 38 18 27 69 30 96 5z m-402 -43 c12 0 32 11 45 24 24 24 26 25 72 11
                     51 -15 163 -81 163 -95 0 -5 -8 -14 -19 -19 -27 -15 -43 -61 -39 -117 l3 -49
                     86 -3 c77 -2 87 -5 92 -23 3 -13 -3 -28 -19 -44 -30 -30 -31 -59 0 -90 17 -17
                     22 -31 19 -49 -5 -23 -10 -26 -48 -26 -35 0 -48 -5 -64 -26 -22 -28 -29 -98
                     -11 -109 6 -3 -6 -21 -25 -39 -19 -18 -35 -38 -35 -44 0 -14 -60 -46 -113 -60
                     -34 -10 -40 -8 -62 14 -31 31 -59 31 -90 0 -22 -22 -28 -24 -62 -14 -53 14
                     -113 46 -113 60 0 6 -16 26 -35 44 -19 18 -31 36 -25 39 5 3 10 24 10 46 0 55
                     -34 89 -88 89 -35 0 -40 3 -45 26 -3 18 2 32 19 49 31 31 30 60 -1 89 -29 27
                     -24 63 9 68 39 6 17 23 -34 26 l-50 3 0 46 c0 68 18 83 99 83 90 0 111 -15
                     111 -81 0 -48 -1 -49 -31 -49 -20 0 -29 -4 -26 -12 2 -8 20 -13 43 -13 l39 0
                     0 68 c0 64 -2 70 -30 93 l-30 24 25 21 c38 30 115 68 157 77 31 6 40 4 59 -15
                     13 -13 33 -23 44 -23z m442 -107 c13 -11 18 -30 18 -65 l0 -48 -105 0 -105 0
                     0 49 c0 40 4 53 22 65 32 22 145 22 170 -1z m-851 -223 c23 -13 25 -43 3 -61
                     -31 -26 -70 25 -44 56 15 18 16 18 41 5z m850 0 c23 -13 25 -43 3 -61 -31 -26
                     -70 25 -44 56 15 18 16 18 41 5z m-756 -195 c30 -29 31 -45 4 -79 -25 -31 -61
                     -34 -89 -6 -32 32 -26 75 15 98 30 17 43 15 70 -13z m715 5 c39 -39 11 -110
                     -44 -110 -25 0 -66 41 -66 67 0 21 46 63 70 63 11 0 29 -9 40 -20z m-666 -156
                     c10 -9 16 -33 16 -60 l0 -44 -105 0 -105 0 0 48 c0 26 5 53 12 60 19 19 163
                     16 182 -4z m296 -95 c23 -41 -38 -68 -63 -27 -8 12 -7 21 2 32 19 22 48 20 61
                     -5z"/>
                                <path d="M747 943 c-11 -10 -8 -133 3 -133 6 0 10 30 10 70 0 70 -1 76 -13 63z"/>
                                <path d="M672 750 c-45 -28 -72 -76 -72 -130 0 -88 64 -150 157 -150 57 0 101
                     27 128 81 19 36 19 109 1 135 -21 28 -30 11 -17 -29 21 -62 -7 -124 -66 -152
                     -64 -31 -132 -3 -170 69 -43 83 59 198 149 167 57 -20 84 -6 33 17 -40 18
                     -106 14 -143 -8z"/>
                                <path d="M760 675 c-7 -8 -24 -15 -39 -15 -32 0 -51 -17 -51 -45 0 -26 39 -65
                     66 -65 29 0 94 70 94 102 0 37 -46 52 -70 23z m50 -23 c0 -4 -18 -25 -39 -46
                     l-39 -38 -21 21 c-24 24 -19 45 10 38 10 -3 25 3 35 14 17 19 54 26 54 11z"/>
                                <path d="M420 620 c0 -6 30 -10 70 -10 40 0 70 4 70 10 0 6 -30 10 -70 10 -40
                     0 -70 -4 -70 -10z"/>
                                <path d="M940 620 c0 -6 30 -10 70 -10 40 0 70 4 70 10 0 6 -30 10 -70 10 -40
                     0 -70 -4 -70 -10z"/>
                                <path d="M740 360 c0 -40 4 -70 10 -70 6 0 10 30 10 70 0 40 -4 70 -10 70 -6
                     0 -10 -30 -10 -70z"/>
                            </g>
                        </svg>
                        <center>Gestionar aspirantes</center>
                    </h5>
                    <p class="card-text">
                    <center>Permite administrar los solicitantes en el sistema.</center>
                    </p>
                </div>
            </div>
            </a>
        </div>
        <div class="col-md-6 col-lg-4">
            <a href="GestionarGP.jsp">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">
                        <svg version="1.0" xmlns="http://www.w3.org/2000/svg"
                             width="200.000000pt" height="75.000000pt" viewBox="0 0 185.000000 139.000000"
                             preserveAspectRatio="xMidYMid meet">

                            <g transform="translate(0.000000,139.000000) scale(0.100000,-0.100000)"
                               fill="#002DA0" stroke="none">
                                <path d="M751 1215 c-119 -27 -235 -99 -303 -189 -32 -41 -35 -43 -59 -30 -13
                     7 -32 13 -42 14 -18 0 -18 -8 -12 -122 4 -68 10 -126 14 -130 8 -9 213 104
                     219 120 2 7 -10 20 -27 29 -17 10 -31 21 -31 24 0 3 16 24 36 47 48 57 115
                     101 183 122 32 10 56 24 56 31 0 37 -148 -21 -223 -86 -23 -20 -54 -57 -69
                     -82 l-26 -45 24 -19 c13 -9 22 -20 19 -22 -9 -7 -131 -77 -136 -77 -2 0 -4 36
                     -4 81 0 61 3 80 13 76 6 -3 19 -8 28 -11 11 -5 24 5 44 33 64 93 170 168 280
                     197 28 8 89 14 137 14 80 0 113 9 88 25 -22 14 -148 14 -209 0z"/>
                                <path d="M1098 1219 c-48 -14 -113 -71 -139 -122 -24 -46 -29 -139 -10 -175
                     21 -40 30 -24 24 47 -5 59 -2 76 17 116 59 121 228 144 317 42 49 -56 63 -125
                     42 -206 -2 -7 2 -16 8 -18 32 -12 44 120 17 185 -42 102 -167 161 -276 131z"/>
                                <path d="M835 1150 c-8 -13 4 -32 16 -25 12 8 12 35 0 35 -6 0 -13 -4 -16 -10z"/>
                                <path d="M1125 1128 c-32 -17 -45 -39 -45 -78 0 -78 96 -115 146 -56 33 38 31
                     80 -5 117 -31 30 -62 36 -96 17z m83 -46 c39 -50 -37 -111 -82 -66 -22 21 -20
                     50 5 75 22 22 55 19 77 -9z"/>
                                <path d="M790 971 c-109 -34 -197 -133 -203 -228 -3 -59 18 -48 37 19 14 51
                     27 72 65 109 45 43 73 58 144 73 16 4 27 12 24 19 -4 15 -34 18 -67 8z"/>
                                <path d="M1070 919 c-30 -12 -70 -48 -70 -63 0 -6 -20 -12 -45 -13 -40 -2 -46
                     1 -51 22 -5 21 -12 25 -40 25 -28 0 -36 -5 -44 -26 -9 -23 -14 -25 -43 -20
                     -27 5 -38 2 -55 -17 -15 -16 -18 -27 -12 -37 16 -25 11 -40 -15 -50 -20 -8
                     -25 -16 -25 -45 0 -29 4 -36 25 -41 27 -7 31 -24 15 -55 -11 -19 -11 -19 -52
                     2 -55 28 -141 28 -195 0 -74 -37 -133 -128 -133 -202 0 -40 20 -99 34 -99 10
                     0 12 19 9 78 -4 72 -3 80 25 123 40 63 103 93 178 87 126 -11 204 -126 171
                     -255 -7 -27 -6 -33 7 -33 41 0 49 122 13 192 l-23 45 24 11 c30 14 50 6 54
                     -21 2 -17 11 -23 36 -25 26 -3 34 1 41 21 12 30 29 38 54 25 14 -7 25 -4 43
                     13 14 13 22 29 19 36 -3 7 -8 19 -11 27 -4 10 5 20 25 31 30 15 38 36 25 69
                     -3 9 -14 16 -24 16 -24 0 -31 23 -18 52 l11 24 45 -23 c79 -40 194 -23 246 36
                     19 21 19 22 -1 49 -11 15 -35 32 -54 39 -41 14 -155 16 -189 2z m201 -48 c24
                     -20 24 -20 4 -35 -30 -22 -102 -37 -143 -30 -39 7 -92 33 -92 46 0 40 186 56
                     231 19z m-396 -29 c7 -25 50 -44 81 -36 25 6 32 -4 13 -23 -14 -14 15 -73 36
                     -73 22 0 18 -21 -4 -27 -11 -3 -23 -17 -27 -31 -8 -30 -8 -30 1 -54 6 -15 2
                     -16 -28 -11 -30 4 -40 1 -60 -21 -28 -30 -37 -32 -37 -11 0 20 -47 38 -78 30
                     -22 -5 -24 -3 -18 19 8 31 -11 74 -36 81 -24 8 -23 25 1 25 26 0 45 54 30 82
                     -10 19 -9 20 14 14 34 -8 78 9 84 34 7 25 20 26 28 2z"/>
                                <path d="M844 782 c-64 -10 -87 -99 -39 -147 69 -70 187 31 130 112 -17 24
                     -60 40 -91 35z m62 -57 c20 -30 11 -62 -21 -77 -52 -23 -99 46 -59 86 23 24
                     61 20 80 -9z"/>
                                <path d="M1116 688 c-2 -7 -9 -31 -15 -54 -23 -87 -93 -155 -181 -177 -66 -17
                     -78 -37 -23 -37 109 0 242 130 243 237 0 32 -17 55 -24 31z"/>
                                <path d="M1261 585 c-52 -30 -98 -58 -103 -63 -6 -6 1 -18 21 -33 17 -12 31
                     -27 31 -31 0 -5 -20 -31 -45 -57 -48 -52 -137 -104 -195 -116 -60 -11 -70 -16
                     -70 -31 0 -19 26 -18 101 6 103 32 204 112 248 197 9 18 7 24 -16 41 l-26 19
                     68 36 c37 20 72 34 77 31 4 -3 8 -39 8 -81 0 -68 -2 -74 -17 -68 -44 18 -51
                     16 -72 -19 -31 -49 -124 -132 -182 -162 -70 -35 -172 -56 -254 -52 -57 2 -70
                     0 -70 -12 0 -12 18 -16 89 -18 99 -3 164 12 259 60 57 28 163 122 185 163 10
                     19 12 19 40 3 52 -31 53 -28 50 109 -2 105 -6 128 -18 130 -8 1 -57 -22 -109
                     -52z"/>
                                <path d="M524 526 c-55 -24 -66 -107 -21 -144 8 -7 31 -16 51 -19 30 -5 40 -1
                     66 25 45 45 36 108 -19 137 -36 18 -37 18 -77 1z m74 -38 c21 -21 14 -66 -13
                     -84 -23 -15 -27 -15 -50 0 -17 11 -25 26 -25 44 0 35 16 52 50 52 14 0 31 -5
                     38 -12z"/>
                                <path d="M431 294 c-35 -29 -39 -54 -13 -77 74 -67 230 -61 296 12 18 20 18
                     21 -17 56 l-35 35 -100 0 c-93 0 -103 -2 -131 -26z m223 -15 c41 -19 39 -36
                     -8 -58 -63 -31 -165 -23 -197 15 -11 14 -10 19 10 35 18 15 40 19 97 19 40 0
                     84 -5 98 -11z"/>
                                <path d="M827 264 c-9 -10 2 -24 19 -24 8 0 14 7 14 15 0 15 -21 21 -33 9z"/>
                            </g>
                        </svg>
                        <center>Registrar grupos</center>
                    </h5>
                    <p class="card-text">
                    <center>Permite administrar la gestión de grupos.</center>
                    </p>
                </div>
            </div>
            </a>
        </div>
        <div class="col-md-6 col-lg-4">
            <div class="card">
                <a href="gestionarMat.jsp">
                <div class="card-body">
                    <h5 class="card-title">
                        <svg  version="1.0" xmlns="http://www.w3.org/2000/svg"
                             width="190.000000pt" height="80.000000pt" viewBox="0 0 114.000000 96.000000"
                             preserveAspectRatio="xMidYMid meet">

                            <g transform="translate(0.000000,106.000000) scale(0.100000,-0.100000)"
                               fill="#002DA0" stroke="none">
                                <path d="M296 929 l-26 -20 0 -335 c0 -321 1 -335 20 -354 19 -19 33 -20 224
                     -20 135 0 207 -4 211 -11 4 -6 14 -8 22 -5 22 9 63 -4 63 -20 0 -9 12 -14 35
                     -14 24 0 35 5 35 14 0 17 30 29 52 21 17 -7 64 40 49 49 -14 9 8 56 26 56 21
                     0 16 57 -6 69 -21 12 -34 48 -19 57 5 3 0 17 -13 30 -14 15 -26 21 -32 15 -13
                     -13 -37 -3 -64 26 -20 21 -22 35 -27 200 -2 98 -6 185 -7 193 -1 8 1 27 6 43
                     l7 27 -265 0 c-252 0 -266 -1 -291 -21z m522 -16 c-3 -16 -23 -18 -216 -21
                     -282 -3 -282 -21 0 -24 193 -3 213 -5 216 -20 3 -17 -13 -18 -235 -18 -259 0
                     -288 5 -288 50 0 45 29 50 288 50 222 0 238 -1 235 -17z m-488 -398 c0 -162
                     -2 -295 -4 -295 -3 0 -12 7 -20 16 -14 13 -16 55 -16 305 0 287 0 290 20 279
                     19 -10 20 -21 20 -305z m500 140 c0 -97 -4 -155 -10 -155 -5 0 -10 -6 -10 -13
                     0 -18 -47 -40 -56 -26 -9 15 -56 -32 -49 -49 8 -22 -4 -52 -21 -52 -9 0 -14
                     -11 -14 -35 0 -23 5 -35 14 -35 15 0 30 -45 21 -60 -4 -6 -81 -10 -181 -10
                     l-174 0 0 295 0 295 240 0 240 0 0 -155z m20 -185 c0 -15 58 -41 83 -38 18 2
                     21 -1 19 -19 -4 -27 24 -83 41 -83 8 -1 7 -5 -3 -13 -19 -15 -42 -68 -38 -88
                     2 -8 -5 -14 -17 -15 -36 -1 -75 -16 -86 -33 -8 -12 -12 -13 -15 -3 -8 18 -71
                     42 -91 35 -12 -5 -15 -2 -10 10 7 20 -17 83 -35 91 -10 3 -9 7 3 15 17 11 32
                     50 33 86 1 11 7 19 14 17 22 -4 82 21 82 35 0 7 5 13 10 13 6 0 10 -4 10 -10z"/>
                                <path d="M410 730 c0 -6 67 -10 180 -10 113 0 180 4 180 10 0 6 -67 10 -180
                     10 -113 0 -180 -4 -180 -10z"/>
                                <path d="M410 650 c0 -6 67 -10 180 -10 113 0 180 4 180 10 0 6 -67 10 -180
                     10 -113 0 -180 -4 -180 -10z"/>
                                <path d="M415 580 c-11 -18 17 -21 185 -18 120 2 164 6 168 16 5 15 -343 18
                     -353 2z"/>
                                <path d="M410 500 c0 -6 50 -10 130 -10 80 0 130 4 130 10 0 6 -50 10 -130 10
                     -80 0 -130 -4 -130 -10z"/>
                                <path d="M814 418 c-42 -11 -65 -39 -71 -87 -5 -37 -2 -44 31 -77 33 -33 41
                     -36 77 -31 47 6 68 21 85 62 16 39 8 78 -22 109 -29 28 -58 35 -100 24z m83
                     -40 c41 -38 28 -105 -25 -127 -57 -24 -120 28 -107 89 13 58 87 80 132 38z"/>
                            </g>
                        </svg>
                        <center>Gestionar materias</center>
                    </h5>
                    <p class="card-text">
                    <center>Permite administrar las materias.</center>
                    </p>
                </div>
            </a>
            </div>
        </div>
        <div class="col-md-6 col-lg-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">
                        <svg version="1.0" xmlns="http://www.w3.org/2000/svg"
                             width="190.000000pt" height="80.000000pt" viewBox="0 0 133.000000 169.000000"
                             preserveAspectRatio="xMidYMid meet">

                            <g transform="translate(0.000000,155.000000) scale(0.100000,-0.100000)"
                               fill="#002DA0" stroke="none">
                                <path d="M935 1530 c-55 -61 -181 -115 -310 -134 l-80 -11 0 -185 c1 -162 4
                     -194 23 -255 27 -87 66 -155 126 -222 l47 -52 -232 -3 -231 -3 -24 -28 c-24
                     -28 -24 -29 -24 -266 l0 -238 26 -24 c24 -23 32 -24 177 -27 154 -3 185 3 174
                     32 -5 14 -28 16 -160 16 -106 0 -157 4 -165 12 -17 17 -17 449 0 466 9 9 173
                     12 678 12 505 0 669 -3 678 -12 15 -15 17 -445 2 -468 -8 -13 -77 -16 -487
                     -20 -263 -3 -477 -8 -475 -12 1 -5 2 -12 2 -18 0 -13 929 -14 964 0 50 19 56
                     49 56 289 l0 221 -29 32 -29 33 -420 3 -420 3 -56 59 c-31 32 -56 62 -56 67 0
                     15 63 85 102 114 l39 28 42 -22 c55 -29 130 -29 180 0 l36 22 44 -30 c42 -28
                     97 -93 97 -115 0 -6 -9 -19 -20 -29 -23 -20 -26 -40 -8 -51 17 -11 83 68 118
                     141 50 104 61 174 58 363 l-3 167 -78 12 c-127 19 -209 53 -286 117 -50 42
                     -52 42 -76 16z m78 -74 c63 -45 160 -83 248 -97 l71 -12 -4 -181 c-4 -171 -5
                     -185 -32 -254 l-29 -73 -41 45 c-47 51 -110 96 -137 96 -10 0 -34 -10 -54 -21
                     -44 -26 -118 -23 -161 8 l-29 21 -41 -22 c-50 -26 -80 -51 -117 -94 l-27 -34
                     -24 54 c-36 82 -46 147 -46 306 l0 147 85 17 c87 16 209 68 255 106 14 12 27
                     21 30 22 3 0 27 -15 53 -34z"/>
                                <path d="M882 1320 c-51 -31 -74 -76 -69 -136 14 -198 297 -188 297 10 0 56
                     -26 103 -71 130 -38 22 -117 20 -157 -4z m131 -31 c48 -22 71 -93 46 -142 -32
                     -62 -114 -77 -168 -31 -96 81 6 226 122 173z"/>
                                <path d="M1354 570 c-35 -14 -64 -59 -64 -98 0 -28 -7 -42 -27 -58 -27 -21
                     -28 -26 -28 -114 0 -126 5 -130 167 -130 113 0 120 1 143 25 22 22 25 32 25
                     105 0 73 -2 83 -25 106 -16 15 -25 36 -25 55 0 85 -86 142 -166 109z m79 -41
                     c26 -12 47 -47 47 -79 0 -18 -7 -20 -75 -20 -68 0 -75 2 -75 20 0 30 20 67 44
                     78 28 14 31 14 59 1z m95 -224 c4 -90 -3 -95 -121 -95 -121 0 -127 4 -127 89
                     0 37 3 71 7 75 4 3 59 5 122 4 l116 -3 3 -70z"/>
                                <path d="M447 484 c-4 -4 -7 -20 -7 -36 0 -32 0 -32 -35 -16 -20 9 -28 9 -38
                     -1 -9 -10 -6 -17 16 -35 l27 -22 -27 -21 c-22 -17 -25 -24 -16 -34 10 -10 18
                     -10 38 -1 35 16 35 16 35 -18 0 -23 4 -30 20 -30 16 0 20 7 20 30 0 31 17 39
                     37 19 15 -15 43 -4 43 15 0 9 -12 22 -27 30 l-28 14 28 13 c51 23 18 57 -35
                     35 -13 -6 -17 -1 -20 25 -3 32 -17 46 -31 33z"/>
                                <path d="M717 483 c-4 -3 -7 -19 -7 -35 0 -25 -2 -27 -19 -18 -48 25 -71 -6
                     -29 -40 l22 -17 -22 -12 c-25 -13 -30 -51 -6 -51 8 0 24 5 35 10 17 10 19 7
                     19 -20 0 -27 3 -31 23 -28 16 2 23 11 25 31 3 22 7 27 20 22 51 -21 73 13 25
                     38 l-28 15 28 13 c15 7 27 20 27 31 0 20 -21 23 -51 8 -16 -9 -19 -7 -19 9 0
                     41 -23 65 -43 44z"/>
                                <path d="M986 475 c-3 -9 -6 -25 -6 -36 0 -16 -3 -18 -19 -9 -30 15 -51 12
                     -51 -8 0 -11 12 -24 27 -31 l28 -13 -28 -14 c-15 -9 -27 -23 -27 -34 0 -22 20
                     -26 51 -10 16 9 19 7 19 -13 0 -32 22 -51 38 -35 7 7 12 23 12 36 0 17 4 22
                     15 18 8 -3 22 -9 30 -12 27 -11 30 27 4 47 -20 16 -22 20 -9 29 8 5 18 10 23
                     10 4 0 7 9 7 20 0 22 -24 27 -50 10 -12 -8 -16 -3 -20 23 -5 35 -33 49 -44 22z"/>
                            </g>
                        </svg>
                        <center>Restablecer contraseña</center>
                    </h5>
                    <p class="card-text">
                    <center>Permite al usuario restablecer su contraseña.</center>
                    </p>
                </div>
            </div>
        </div>
        <div class="col-md-6 col-lg-4">
            <a href="gestCarrera.jsp">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">
                        <svg version="1.0" xmlns="http://www.w3.org/2000/svg"
                             width="200.000000pt" height="80.000000pt" viewBox="0 0 229.000000 228.000000"
                             preserveAspectRatio="xMidYMid meet">

                            <g transform="translate(0.000000,228.000000) scale(0.100000,-0.100000)"
                               fill="#002DA0" stroke="none">
                                <path d="M1011 2031 c-8 -5 -29 -65 -46 -132 l-32 -123 -57 -23 -57 -24 -100
61 c-55 33 -110 60 -122 60 -34 0 -207 -177 -207 -212 0 -15 26 -69 58 -124
l59 -96 -22 -54 c-12 -30 -25 -57 -28 -60 -3 -3 -56 -19 -118 -34 -71 -18
-118 -36 -126 -46 -9 -12 -13 -58 -13 -146 0 -111 2 -130 18 -146 11 -11 66
-31 129 -46 l110 -28 26 -58 25 -58 -59 -98 c-33 -54 -59 -109 -59 -124 0 -35
174 -210 209 -210 13 0 67 27 121 59 l98 59 59 -23 58 -24 28 -113 c37 -150
34 -148 196 -148 87 0 133 4 145 13 9 7 26 47 37 92 42 165 35 152 87 175 26
12 54 22 62 22 8 1 57 -24 108 -55 51 -32 105 -57 119 -57 20 0 49 22 120 93
55 55 93 101 93 113 0 11 -27 66 -61 123 l-61 103 25 56 24 57 115 30 c63 17
123 36 132 44 13 11 16 36 16 152 0 165 9 153 -155 193 l-110 27 -23 59 -22
58 60 100 c33 55 60 108 60 119 0 24 -190 213 -214 213 -11 0 -65 -27 -120
-60 l-101 -59 -57 22 -57 22 -27 110 c-40 164 -28 155 -192 155 -75 0 -143 -4
-151 -9z m288 -396 c159 -38 304 -154 380 -305 23 -45 40 -84 38 -86 -2 -2
-50 17 -108 42 -57 25 -181 79 -276 120 l-171 74 -274 -119 c-150 -65 -274
-115 -276 -110 -2 4 10 37 27 71 72 150 217 269 381 312 72 19 199 19 279 1z
m79 -327 c133 -58 209 -95 203 -101 -6 -6 -87 0 -216 16 -113 14 -212 24 -220
20 -24 -9 -18 -52 8 -62 12 -5 75 -14 140 -21 65 -7 120 -16 122 -20 2 -4 -54
-32 -125 -62 l-128 -55 -209 89 c-114 50 -211 93 -215 97 -6 5 398 187 422
190 3 1 101 -40 218 -91z m-656 -173 l87 -38 3 -137 c3 -132 4 -138 31 -173
17 -23 55 -50 104 -74 l77 -38 130 0 c146 0 204 14 276 66 71 52 80 76 80 220
0 119 6 149 32 149 4 0 9 -88 10 -196 3 -171 5 -198 20 -207 12 -8 21 -7 32 2
14 12 16 44 16 221 l0 208 54 30 54 29 6 -30 c19 -96 -3 -256 -48 -345 -118
-232 -359 -360 -608 -324 -310 45 -534 344 -492 655 6 44 7 45 28 32 11 -7 60
-30 108 -50z m298 -130 c69 -30 132 -55 141 -55 9 0 73 25 142 55 69 30 128
55 131 55 3 0 6 -48 6 -106 l0 -107 -36 -33 c-86 -82 -298 -99 -429 -35 -85
42 -95 62 -95 186 0 52 3 95 8 95 4 0 63 -25 132 -55z"/>
                            </g>
                        </svg>
                        <center>Gestionar Carrera</center>
                    </h5>
                    <p class="card-text">
                    <center>Permite administrar las carreras.</center>
                    </p>
                </div>
            </div>
            </a>
        </div>
    </div>
</div>

<footer class="footer">
    <svg version="1.0" xmlns="http://www.w3.org/2000/svg"
         width="70.000000pt" height="60.000000pt" viewBox="0 0 277.000000 317.000000"
         preserveAspectRatio="xMidYMid meet">

        <g transform="translate(0.000000,317.000000) scale(0.100000,-0.100000)"
           fill="#000000" stroke="none">
            <path d="M1287 3086 c-57 -21 -112 -61 -136 -99 -18 -30 -28 -35 -70 -40 -102
   -12 -197 -91 -225 -188 -9 -29 -16 -57 -16 -63 0 -7 -25 -11 -62 -11 -105 -1
   -192 -55 -239 -148 -25 -49 -36 -143 -21 -186 10 -29 8 -34 -37 -79 -156 -156
   -157 -399 -2 -566 40 -43 47 -55 40 -76 -23 -80 0 -182 58 -249 49 -58 103
   -83 190 -89 l71 -5 7 -35 c22 -118 132 -221 236 -222 31 0 42 -7 79 -51 90
   -107 244 -132 353 -57 15 11 27 15 27 9 0 -7 46 -11 134 -11 120 0 136 2 160
   21 24 19 26 27 26 89 l0 68 45 17 45 18 40 -37 c64 -58 80 -62 133 -36 102 51
   286 235 337 337 26 53 22 69 -36 133 l-37 40 18 45 17 45 67 0 c83 0 98 13
   117 102 17 82 17 314 0 396 -19 88 -34 102 -112 102 -55 0 -65 3 -78 23 -31
   50 -29 63 19 123 38 46 45 62 40 83 -16 67 -162 237 -273 319 -119 87 -133 89
   -207 21 l-44 -41 -46 17 -45 18 0 68 c0 61 -3 70 -26 88 -23 18 -41 21 -139
   21 l-112 0 -44 35 c-74 59 -173 79 -252 51z m148 -95 c46 -21 79 -54 94 -94 7
   -18 11 -160 11 -398 l0 -369 -51 0 c-77 0 -129 40 -129 100 0 24 -36 49 -61
   43 -43 -12 -36 -97 12 -156 44 -54 96 -77 169 -77 l60 0 -2 -162 -3 -163 -47
   1 c-58 0 -88 24 -88 68 0 45 -41 126 -82 162 -51 45 -112 66 -183 62 -58 -3
   -60 -4 -63 -32 -5 -39 8 -48 79 -57 95 -11 144 -57 158 -147 15 -93 68 -140
   171 -149 l60 -6 0 -261 c0 -252 -1 -262 -23 -301 -52 -92 -188 -114 -264 -43
   -13 12 -23 24 -23 28 0 3 20 20 44 37 98 69 151 241 81 259 -34 8 -51 -8 -59
   -57 -15 -93 -73 -150 -161 -157 -69 -6 -117 11 -154 53 -41 47 -57 104 -44
   158 11 50 8 64 -17 77 -13 7 -31 4 -66 -11 -149 -67 -301 78 -239 228 23 54
   19 68 -28 105 -58 45 -74 65 -102 122 -67 139 -18 317 110 396 39 24 44 47 20
   103 -21 50 -19 93 6 145 39 80 128 117 209 87 76 -28 86 -29 103 -5 12 17 13
   29 5 57 -21 78 20 166 97 203 38 18 55 21 100 15 92 -11 146 -66 163 -169 9
   -50 42 -66 73 -35 17 17 19 28 14 62 -11 67 -39 119 -87 163 -24 23 -51 43
   -59 46 -39 15 66 88 125 88 17 0 49 -9 71 -19z m253 -127 c20 -6 22 -13 22
   -64 0 -41 5 -64 18 -78 21 -24 182 -92 235 -99 35 -5 43 -1 82 37 42 41 44 42
   67 26 33 -23 136 -125 166 -164 l25 -33 -42 -43 c-48 -49 -54 -82 -26 -136 10
   -19 30 -66 45 -105 30 -80 49 -95 126 -95 63 0 64 -2 64 -150 0 -150 0 -150
   -69 -150 -68 0 -95 -16 -112 -68 -6 -20 -25 -66 -41 -102 -41 -89 -39 -113 13
   -166 37 -38 41 -45 29 -61 -26 -34 -145 -154 -173 -175 l-29 -21 -42 42 c-53
   52 -78 54 -166 13 -36 -16 -82 -35 -102 -41 -52 -17 -68 -44 -68 -112 0 -50
   -3 -57 -22 -63 -50 -13 -48 -22 -48 262 l0 267 60 23 c83 33 161 106 202 190
   30 61 33 75 33 162 0 82 -4 103 -27 152 -36 77 -107 151 -181 188 -33 16 -66
   30 -74 30 -10 0 -13 51 -13 270 0 286 -2 277 48 264z m4 -719 c92 -62 122
   -200 66 -296 -23 -39 -90 -99 -111 -99 -4 0 -7 95 -7 210 0 116 3 210 8 210 4
   0 24 -11 44 -25z"/>
            <path d="M1202 2527 c-6 -6 -13 -24 -17 -39 -8 -32 -31 -53 -67 -62 -64 -15
   -56 -86 10 -86 73 0 142 68 142 141 0 52 -40 80 -68 46z"/>
            <path d="M758 2380 c-21 -13 -24 -50 -6 -68 7 -7 23 -12 35 -12 59 0 102 -48
   94 -105 -4 -29 -41 -65 -66 -65 -35 0 -57 -23 -53 -55 3 -26 8 -30 37 -33 47
   -5 74 4 111 34 117 99 62 291 -90 309 -25 3 -53 1 -62 -5z"/>
            <path d="M906 1850 c-22 -11 -48 -28 -59 -37 -30 -28 -64 -94 -72 -140 -9 -55
   7 -83 45 -83 24 0 31 5 36 28 3 15 10 43 15 63 13 52 70 99 122 99 26 0 57 28
   57 51 0 42 -77 52 -144 19z"/>
            <path d="M1086 1641 c-23 -25 -12 -87 24 -145 60 -93 220 -131 220 -51 0 28
   -19 45 -50 45 -57 0 -120 67 -120 129 0 19 -26 41 -48 41 -5 0 -16 -8 -26 -19z"/>
            <path d="M914 641 c-71 -44 -86 -120 -36 -171 27 -26 85 -50 123 -50 9 0 27
   -8 40 -19 20 -16 21 -21 10 -35 -26 -31 -111 -12 -111 25 0 5 -22 9 -50 9 -44
   0 -50 -3 -50 -20 0 -88 121 -143 241 -110 78 22 111 105 67 170 -23 34 -52 49
   -136 70 -49 13 -64 36 -37 56 26 19 52 17 75 -6 14 -14 33 -20 65 -20 38 0 45
   3 45 20 0 11 -15 37 -34 57 -33 36 -37 38 -108 41 -59 2 -79 -1 -104 -17z"/>
            <path d="M1210 459 l0 -200 53 3 52 3 3 198 2 197 -55 0 -55 0 0 -201z"/>
            <path d="M1475 646 c-43 -18 -93 -79 -101 -121 -3 -20 -4 -62 -2 -95 7 -101
   70 -160 178 -168 43 -2 65 2 100 20 54 28 77 66 86 141 l7 57 -92 0 -91 0 0
   -35 c0 -33 2 -35 35 -35 42 0 47 -22 10 -46 -32 -21 -89 -11 -110 19 -9 13
   -15 44 -15 80 0 48 4 62 25 82 30 31 77 33 105 5 24 -24 120 -29 120 -6 0 24
   -44 79 -80 97 -41 22 -130 25 -175 5z"/>
            <path d="M1878 640 c-58 -31 -88 -91 -88 -177 0 -92 28 -147 90 -180 104 -55
   246 -4 266 95 l7 32 -48 0 c-39 0 -52 -5 -75 -30 -48 -52 -111 -32 -130 40
   -30 111 71 202 132 120 19 -26 28 -30 70 -30 44 0 48 2 48 24 0 33 -39 86 -80
   107 -47 26 -142 25 -192 -1z"/>
            <path d="M2202 463 l3 -198 53 -3 52 -3 0 200 0 201 -55 0 -55 0 2 -197z"/>
        </g>
    </svg>
</footer>
<script src="<%= request.getContextPath() %>/js/enlaces.js"></script>
<script src="<%= request.getContextPath() %>/js/bootstrap.js"></script>
<%
    }else{
%>
<style>
    .container-logout {
        text-align: center;
        background-color: white;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    .container-logout h1 {
        color: #333;
    }
    .container-logout p {
        color: #666;
    }
    .container-logout a {
        display: inline-block;
        margin-top: 10px;
        padding: 10px 20px;
        background-color: #007bff;
        color: white;
        text-decoration: none;
        border-radius: 5px;
    }
    .container-logout a:hover {
        background-color: #0056b3;
    }

</style>
<div class="container-logout">
    <h1>Sesión Expirada</h1>
    <br>
    <svg version="1.0" xmlns="http://www.w3.org/2000/svg"
         width="200.000000pt" height="100.000000pt" viewBox="0 0 512.000000 512.000000"
         preserveAspectRatio="xMidYMid meet">

        <g transform="translate(0.000000,512.000000) scale(0.100000,-0.100000)"
           fill="#FB0D1C" stroke="none">
            <path d="M2410 5114 c-565 -50 -978 -204 -1410 -528 -110 -82 -350 -317 -436
-426 -246 -312 -420 -677 -503 -1056 -76 -344 -74 -759 5 -1108 216 -958 976
-1717 1934 -1930 192 -43 347 -59 560 -59 354 0 670 62 987 194 496 207 930
585 1213 1059 328 548 434 1223 294 1860 -229 1037 -1102 1836 -2158 1975
-119 15 -401 26 -486 19z m340 -1794 l0 -760 -190 0 -190 0 0 760 0 760 190 0
190 0 0 -760z m-570 117 l0 -204 -62 -32 c-305 -159 -499 -478 -499 -826 -1
-203 46 -363 153 -526 54 -81 156 -191 228 -244 167 -124 411 -195 619 -180
418 29 753 303 863 706 20 72 23 106 22 244 -1 143 -3 169 -27 248 -80 260
-254 473 -479 583 l-58 28 0 204 0 203 23 -6 c388 -119 722 -445 851 -835 58
-175 69 -246 69 -430 0 -184 -16 -282 -73 -445 -112 -319 -359 -595 -675 -753
-22 -11 -80 -34 -130 -52 -439 -155 -913 -72 -1282 225 -242 195 -413 487
-468 799 -20 115 -20 337 0 452 70 398 333 760 685 944 76 39 213 98 233 99 4
1 7 -91 7 -202z"/>
        </g>
    </svg>
    <br>
    <p>Tu sesión ha expirado. Por favor, vuelve a iniciar sesión.</p>
    <a href="${pageContext.request.contextPath}/login.jsp">Regresar</a>
</div>
<br>
<%
    }
%>
</body>
</html>

