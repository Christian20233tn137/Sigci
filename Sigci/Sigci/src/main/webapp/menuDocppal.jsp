<%
    // Estas lineas lo que hacen es borrar la caché, si el usuario cierra la sesión, y quiere regresar a la página de atras no lo dejaría
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
    response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
    response.setDateHeader("Expires", 0); // Proxies.
%>
<%@ page import="utez.edu.mx.sicci.model.User" %>
<%@ page import="utez.edu.mx.sicci.model.Usuario_has_Materia" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Menu Docente</title>
    <link rel="icon" sizes="32x32" href="<%= request.getContextPath() %>/img/sigci.png" type="image/png">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/bootstrap.css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/menuDocppal.css">
</head>
<body>
<%
    User u = (User) session.getAttribute("user");
    if (u != null) {
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
        Bienvenido Docente
    </div>
    <a class="logout-button" href="logout">Salir</a>
</header>
<div class="container">
    <div class="row">
        <div class="col-md-6 col-lg-4">
            <a href="getListaEstadoAspirantes">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">
                            <svg version="1.0" xmlns="http://www.w3.org/2000/svg"
                                 width="200.000000pt" height="75.000000pt" viewBox="0 0 512.000000 512.000000"
                                 preserveAspectRatio="xMidYMid meet">

                                <g transform="translate(0.000000,512.000000) scale(0.100000,-0.100000)"
                                   fill="#002DA0" stroke="none">
                                    <path d="M1740 4865 c-625 -200 -799 -259 -813 -277 -15 -18 -17 -31 -12 -68
4 -25 9 -172 11 -327 l5 -282 -26 -7 c-53 -13 -65 -45 -65 -172 0 -95 -10
-175 -55 -438 -60 -348 -60 -357 -8 -391 23 -15 54 -19 204 -21 213 -4 252 3
277 54 16 34 15 44 -36 347 -43 256 -53 333 -52 430 0 134 -11 168 -60 185
l-30 11 0 261 0 262 27 -6 c35 -7 389 -66 397 -66 3 0 6 -94 6 -210 0 -197 1
-211 20 -230 11 -11 24 -20 30 -20 6 0 10 -124 10 -352 0 -316 2 -357 18 -388
17 -34 54 -59 117 -77 28 -8 31 -12 42 -86 33 -218 128 -390 293 -529 l60 -51
0 -88 0 -87 -345 -226 c-190 -124 -358 -232 -373 -239 -15 -8 -101 -35 -192
-62 -198 -57 -284 -95 -366 -161 -90 -72 -150 -148 -199 -249 -71 -146 -75
-182 -75 -668 0 -481 1 -489 75 -562 81 -81 -82 -75 1935 -75 2017 0 1854 -6
1935 75 74 73 75 81 75 562 0 486 -4 522 -75 668 -72 149 -178 256 -320 325
-44 21 -152 59 -240 85 -88 25 -171 50 -185 56 -14 6 -184 114 -377 241 l-353
230 0 88 0 87 60 51 c88 74 155 156 204 252 50 96 72 166 89 277 11 74 14 78
42 86 63 18 100 43 117 77 16 31 18 72 18 388 0 228 4 352 10 352 5 0 19 9 30
20 19 19 20 33 20 228 l0 209 253 43 c298 51 312 54 332 83 20 29 19 80 -3
106 -13 17 -204 81 -817 277 -439 140 -808 254 -820 253 -11 0 -378 -115 -815
-254z"/>
                                </g>
                            </svg>
                            <center>Gestionar aspirantes</center>
                        </h5>
                        <p class="card-text">
                        <center>Asignar aprobación a los aspirantes.</center>
                        </p>
                    </div>
                </div>
            </a>

        </div>
        <div class="col-md-6 col-lg-4">
            <a href="actualizarPassdoc.jsp">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">
                            <svg version="1.0" xmlns="http://www.w3.org/2000/svg"
                                 width="200.000000pt" height="75.000000pt" viewBox="0 0 512.000000 512.000000"
                                 preserveAspectRatio="xMidYMid meet">

                                <g transform="translate(0.000000,512.000000) scale(0.100000,-0.100000)"
                                   fill="#002DA0" stroke="none">
                                    <path d="M2375 5016 c-169 -45 -300 -118 -415 -235 -162 -163 -260 -395 -260
                           -612 0 -111 24 -123 224 -117 146 4 154 10 167 123 4 43 14 94 20 114 37 113
                           125 231 217 289 268 171 634 36 734 -271 17 -51 22 -97 26 -259 l4 -197 -733
                           -3 c-682 -3 -737 -4 -774 -21 -51 -23 -91 -61 -118 -112 -22 -40 -22 -45 -25
                           -724 -3 -754 -3 -755 59 -825 16 -19 51 -45 77 -58 l47 -23 910 -3 c557 -2
                           934 1 973 7 82 13 146 58 182 126 l25 49 0 696 c0 775 3 743 -70 815 -39 39
                           -68 54 -136 69 l-26 6 -6 202 c-7 225 -26 330 -85 460 -106 234 -316 418 -567
                           498 -55 17 -102 23 -215 26 -129 4 -155 2 -235 -20z m300 -1735 c93 -42 144
                           -142 124 -245 -10 -52 -15 -61 -65 -116 l-32 -35 -4 -178 -3 -179 -33 -29
                           c-46 -41 -111 -41 -153 0 l-29 29 0 167 c0 170 -5 197 -41 223 -26 18 -66 91
                           -73 134 -15 82 41 185 123 228 47 25 133 26 186 1z"/>
                                    <path d="M453 1418 c-32 -16 -43 -59 -43 -170 l0 -100 -67 38 c-146 82 -139
                           79 -169 69 -36 -13 -59 -53 -50 -88 5 -21 30 -41 112 -88 l105 -62 -100 -58
                           c-55 -33 -105 -68 -111 -80 -18 -34 -2 -79 33 -94 37 -15 49 -12 156 50 43 25
                           81 45 84 45 3 0 7 -51 9 -114 2 -95 6 -117 22 -135 28 -31 79 -28 105 5 18 23
                           21 41 21 140 l0 113 96 -56 c106 -62 147 -69 176 -32 43 52 19 89 -101 158
                           -50 29 -91 55 -91 59 0 4 43 31 95 61 96 54 115 72 115 111 0 27 -43 70 -71
                           70 -12 0 -65 -25 -116 -55 -52 -30 -96 -55 -98 -55 -2 0 -5 54 -7 120 -3 128
                           -9 144 -58 154 -14 3 -35 0 -47 -6z"/>
                                    <path d="M1826 1409 c-26 -20 -26 -23 -26 -141 0 -94 -3 -119 -13 -115 -7 3
                           -53 28 -102 56 -49 28 -99 51 -111 51 -36 0 -67 -32 -66 -69 1 -44 11 -54 120
                           -118 l94 -56 -28 -17 c-16 -10 -62 -36 -101 -59 -54 -31 -75 -49 -80 -69 -9
                           -34 -5 -52 14 -74 28 -31 72 -21 173 37 l95 55 5 -126 c5 -138 13 -154 72
                           -154 51 0 62 27 68 160 l5 120 94 -55 c101 -59 146 -69 174 -37 23 25 22 77
                           -3 99 -10 10 -57 41 -104 68 -47 27 -83 52 -80 56 2 4 45 31 94 59 50 28 95
                           60 100 70 26 49 -5 110 -56 110 -14 0 -68 -25 -119 -55 -52 -30 -96 -55 -99
                           -55 -3 0 -6 54 -6 119 0 117 -1 120 -26 140 -15 12 -34 21 -44 21 -10 0 -29
                           -9 -44 -21z"/>
                                    <path d="M3206 1409 c-25 -20 -26 -23 -26 -140 0 -65 -3 -119 -6 -119 -3 0
                           -47 25 -99 55 -51 30 -105 55 -119 55 -51 0 -82 -61 -56 -110 5 -10 50 -42
                           100 -70 49 -28 92 -55 94 -59 3 -4 -33 -29 -80 -56 -47 -27 -94 -58 -104 -68
                           -26 -23 -26 -78 -2 -100 32 -29 74 -20 173 38 l94 55 5 -120 c6 -133 17 -160
                           68 -160 59 0 67 16 72 154 l5 126 95 -55 c101 -58 145 -68 173 -37 19 22 23
                           40 14 74 -6 21 -30 41 -108 86 l-102 60 95 56 c110 64 119 73 120 117 1 36
                           -30 69 -66 69 -11 0 -65 -25 -119 -55 -53 -30 -100 -55 -102 -55 -3 0 -5 54
                           -5 119 0 117 -1 120 -26 140 -15 12 -34 21 -44 21 -10 0 -29 -9 -44 -21z"/>
                                    <path d="M4589 1411 c-22 -18 -24 -27 -27 -140 -2 -67 -5 -121 -7 -121 -1 0
                           -45 25 -96 55 -52 30 -104 55 -117 55 -31 0 -72 -43 -72 -75 0 -34 21 -53 123
                           -111 48 -27 87 -52 87 -56 0 -3 -40 -30 -90 -58 -49 -28 -97 -61 -105 -73 -21
                           -30 -19 -63 5 -87 33 -33 76 -25 175 34 l90 54 5 -118 c6 -134 18 -160 75
                           -160 58 0 70 26 73 160 l4 118 92 -54 c122 -71 174 -71 192 2 10 38 -16 66
                           -115 123 -50 29 -91 55 -91 59 0 4 38 29 85 56 89 50 125 85 125 118 0 26 -44
                           68 -72 68 -13 0 -66 -25 -118 -54 l-95 -55 -6 112 c-6 126 -10 140 -45 156
                           -35 15 -48 14 -75 -8z"/>
                                    <path d="M40 309 c-36 -15 -40 -26 -40 -116 0 -61 4 -86 16 -97 14 -14 70 -16
                           473 -16 381 0 461 2 470 14 8 9 11 47 9 107 -3 88 -4 94 -28 106 -31 16 -861
                           18 -900 2z"/>
                                    <path d="M1423 310 c-12 -5 -26 -18 -32 -29 -17 -31 -14 -153 5 -179 l15 -22
                           458 0 c414 0 460 2 472 17 9 11 14 43 14 99 0 129 42 119 -473 121 -240 1
                           -447 -2 -459 -7z"/>
                                    <path d="M2801 308 c-15 -8 -28 -27 -34 -48 -11 -43 -3 -146 13 -165 11 -13
                           81 -15 471 -15 l458 0 15 22 c24 34 22 159 -3 189 l-19 24 -439 3 c-335 1
                           -444 -1 -462 -10z"/>
                                    <path d="M4180 307 c-24 -12 -25 -18 -28 -106 -2 -60 1 -98 9 -107 9 -12 89
                           -14 470 -14 403 0 459 2 473 16 12 11 16 36 16 97 0 92 -4 101 -43 116 -43 17
                           -864 15 -897 -2z"/>
                                </g>
                            </svg>
                            <center>Actualizar Contraseña</center>
                        </h5>
                        <p class="card-text">
                        <center>Permite actualizar la contraseña.</center>
                        </p>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-md-6 col-lg-4">
            <a href="getListaMateriaDocente?userId=<%=u.getId_usuario()%>">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">
                            <svg version="1.0" xmlns="http://www.w3.org/2000/svg"
                                 width="200.000000pt" height="75.000000pt" viewBox="0 0 200.000000 200.000000"
                                 preserveAspectRatio="xMidYMid meet">

                                <g transform="translate(0.000000,200.000000) scale(0.100000,-0.100000)"
                                   fill="#002DA0" stroke="none">
                                    <path d="M1022 1695 c-140 -39 -235 -175 -217 -309 10 -78 42 -142 96 -190
143 -129 366 -86 457 89 38 74 38 178 -1 257 -61 124 -203 189 -335 153z"/>
                                    <path d="M263 1219 c-8 -8 12 -80 73 -262 46 -138 83 -251 81 -252 -45 -23
-57 -38 -57 -71 0 -52 19 -120 41 -143 41 -43 152 -12 182 52 21 43 21 70 2
107 -18 34 -62 60 -102 60 -28 0 -29 2 -112 253 -46 138 -86 255 -90 260 -4 4
-12 2 -18 -4z"/>
                                    <path d="M885 1016 c-214 -57 -375 -165 -375 -250 0 -9 15 -22 34 -30 38 -16
80 -67 90 -109 10 -40 -11 -106 -44 -139 l-28 -28 229 0 229 0 0 210 0 210
293 0 c326 1 318 -2 187 65 -130 66 -219 87 -380 91 -129 4 -155 2 -235 -20z"/>
                                    <path d="M1080 574 l0 -254 126 0 c100 0 129 -3 141 -15 19 -19 111 -18 133 1
11 9 55 14 140 16 l125 3 0 250 0 250 -332 2 -333 2 0 -255z m310 1 l0 -196
-125 3 c-69 2 -125 6 -125 11 0 4 0 90 0 192 l0 185 125 0 125 0 0 -195z m300
0 l0 -195 -130 0 -130 0 0 195 0 195 130 0 130 0 0 -195z"/>
                                    <path d="M1490 655 c0 -12 14 -15 70 -15 56 0 70 3 70 15 0 12 -14 15 -70 15
-56 0 -70 -3 -70 -15z"/>
                                    <path d="M1490 595 c0 -12 14 -15 70 -15 56 0 70 3 70 15 0 12 -14 15 -70 15
-56 0 -70 -3 -70 -15z"/>
                                    <path d="M1490 534 c0 -12 10 -14 47 -12 66 4 70 28 4 28 -39 0 -51 -4 -51
-16z"/>
                                </g>
                            </svg>

                            <center>Ver Materias asignadas</center>
                        </h5>
                        <p class="card-text">
                        <center>Podrá ver las materias asignadas</center>
                        </p>
                    </div>
                </div>
            </a>
        </div>
    </div>
</div>

<footer class="logo">
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
} else {
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