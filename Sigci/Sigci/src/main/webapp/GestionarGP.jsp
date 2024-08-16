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
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/GestionarGP.css">
</head>
<body>
<%
    User u = (User) session.getAttribute("user");
    if(u != null){
        String nombre = u.getNombre() + " " + u.getApellidos();
        request.setAttribute("nombre", nombre);
%>
<header>
    <div class="user"> <svg version="1.0" xmlns="http://www.w3.org/2000/svg"
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
    </svg> <%= nombre %></div>



    <a class="logout-button" href="logout">Salir</a>
</header>


<br>

<div class="container">
    <div class="row">

        <div class="col-md-6 col-lg-4">
            <a href="registrarGrupo.jsp">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title"> <svg version="1.0" xmlns="http://www.w3.org/2000/svg"
                                                 width="220.000000pt" height="74.000000pt" viewBox="0 0 128.000000 128.000000"
                                                 preserveAspectRatio="xMidYMid meet">

                        <g transform="translate(0.000000,128.000000) scale(0.100000,-0.100000)"
                           fill="#002DA0" stroke="none">
                            <path d="M575 1026 c-92 -40 -124 -168 -60 -244 l24 -29 -41 -27 c-36 -24 -45
                   -26 -70 -15 -32 13 -33 17 -13 43 8 11 15 40 15 64 0 37 -6 50 -34 78 -29 29
                   -41 34 -81 34 -40 0 -52 -5 -81 -34 -28 -28 -34 -41 -34 -78 0 -25 7 -54 17
                   -68 12 -17 13 -25 5 -28 -51 -17 -112 -111 -112 -174 0 -58 21 -68 139 -68 98
                   0 104 -1 123 -25 12 -16 29 -25 48 -25 24 0 29 -5 39 -44 29 -115 151 -175
                   256 -127 52 23 92 71 106 127 10 39 15 44 39 44 19 0 36 9 48 25 19 24 25 25
                   124 25 119 0 138 10 138 70 0 61 -61 155 -112 172 -8 3 -7 11 5 28 10 14 17
                   43 17 68 0 37 -6 50 -34 78 -29 29 -41 34 -81 34 -40 0 -52 -5 -81 -34 -28
                   -28 -34 -41 -34 -78 0 -24 7 -53 15 -64 20 -26 19 -30 -13 -43 -25 -11 -34 -9
                   -70 15 l-41 27 24 29 c104 124 -40 309 -190 244z m110 -52 c31 -14 65 -64 65
                   -94 0 -7 -7 -27 -16 -45 -19 -41 -73 -69 -114 -60 -37 8 -77 48 -85 85 -9 40
                   19 95 58 114 40 20 51 20 92 0z m-325 -114 c40 -40 11 -110 -45 -110 -32 0
                   -65 33 -65 65 0 14 9 34 20 45 11 11 31 20 45 20 14 0 34 -9 45 -20z m650 0
                   c11 -11 20 -31 20 -45 0 -14 -9 -34 -20 -45 -11 -11 -31 -20 -45 -20 -14 0
                   -34 9 -45 20 -11 11 -20 31 -20 45 0 14 9 34 20 45 11 11 31 20 45 20 14 0 34
                   -9 45 -20z m-309 -155 c87 -30 155 -109 161 -187 3 -27 -1 -34 -19 -36 -16 -2
                   -27 7 -43 35 -35 62 -81 88 -160 88 -79 0 -125 -26 -160 -88 -16 -28 -27 -37
                   -43 -35 -18 2 -22 9 -19 36 6 76 74 157 157 186 53 19 73 19 126 1z m-321 -30
                   c17 -9 30 -18 30 -20 0 -2 -9 -24 -19 -47 -11 -24 -22 -51 -25 -60 -5 -16 -19
                   -18 -107 -18 l-101 0 6 33 c19 97 132 155 216 112z m660 -7 c43 -29 68 -65 76
                   -105 l7 -33 -102 0 c-88 0 -102 2 -107 18 -3 9 -14 36 -25 60 -10 23 -19 45
                   -19 47 0 2 12 11 28 19 41 23 103 20 142 -6z m-339 -123 c99 -52 89 -200 -16
                   -241 -42 -16 -48 -16 -90 0 -53 21 -85 66 -85 120 0 102 102 166 191 121z"/>
                            <path d="M622 498 c-7 -7 -12 -20 -12 -29 0 -11 -9 -19 -22 -21 -31 -4 -31
                   -42 -1 -46 13 -2 24 -13 27 -28 4 -15 14 -24 26 -24 12 0 22 9 26 24 3 15 14
                   26 27 28 30 4 30 42 0 46 -14 2 -23 10 -23 21 0 16 -18 41 -30 41 -3 0 -11 -5
                   -18 -12z"/>
                        </g>
                    </svg>
                        <br> <center> Registrar Grupos </center>
                    </h5>
                    <p class="card-text">Permite administrar los solicitantes en el sistema.</p>
                </div>
            </div>
            </a>
        </div>
        <div class="col-md-6 col-lg-4">
            <a href="getListaGrupos">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title"> <svg version="1.0" xmlns="http://www.w3.org/2000/svg"
                                                 width="230.000000pt" height="74.000000pt" viewBox="0 0 512.000000 512.000000"
                                                 preserveAspectRatio="xMidYMid meet">

                        <g transform="translate(0.000000,512.000000) scale(0.100000,-0.100000)"
                           fill="#002DA0" stroke="none">
                            <path d="M2426 4645 c-207 -53 -368 -218 -411 -422 -40 -186 13 -361 150 -499
                   220 -221 572 -221 790 0 136 138 190 313 151 497 -40 186 -170 336 -353 405
                   -86 33 -237 41 -327 19z"/>
                            <path d="M945 4144 c-126 -19 -239 -76 -326 -163 -107 -107 -161 -236 -161
                   -386 0 -150 54 -279 161 -386 109 -109 240 -163 396 -163 157 1 285 54 395
                   164 214 214 214 557 0 770 -69 69 -150 118 -238 144 -57 16 -178 27 -227 20z"/>
                            <path d="M4013 4140 c-178 -32 -329 -145 -407 -305 -104 -213 -63 -459 104
                   -625 111 -110 238 -163 395 -164 156 0 287 54 396 163 173 173 210 420 97 645
                   -61 121 -206 236 -343 272 -69 19 -180 25 -242 14z"/>
                            <path d="M2037 3537 c-139 -78 -249 -193 -320 -336 l-41 -83 39 -31 c75 -58
                   174 -165 221 -238 58 -92 180 -219 210 -219 35 0 42 19 46 135 3 98 6 115 31
                   157 56 96 118 118 337 118 219 0 281 -22 337 -118 25 -42 28 -59 31 -157 4
                   -116 11 -135 46 -135 30 0 152 127 210 219 47 73 146 180 221 238 l39 31 -41
                   83 c-72 145 -190 267 -326 340 l-59 31 -43 -31 c-240 -172 -585 -174 -823 -4
                   -26 18 -49 33 -52 33 -3 0 -31 -15 -63 -33z"/>
                            <path d="M502 3030 c-198 -108 -334 -283 -393 -505 -19 -71 -21 -110 -23 -341
                   -1 -208 2 -264 13 -277 12 -16 63 -17 562 -17 l548 0 17 36 c37 78 116 114
                   252 114 106 0 122 7 122 50 0 18 -18 44 -66 90 -77 76 -103 125 -104 196 0 83
                   34 135 180 278 71 69 140 128 154 132 14 3 26 10 26 14 0 22 -154 162 -229
                   208 -79 48 -86 51 -105 37 -265 -191 -590 -201 -846 -26 l-57 39 -51 -28z"/>
                            <path d="M3559 3008 c-72 -45 -229 -186 -229 -207 0 -3 15 -13 33 -20 17 -8
                   87 -68 154 -134 139 -136 173 -190 173 -271 -1 -71 -27 -120 -104 -196 -48
                   -46 -66 -72 -66 -90 0 -43 16 -50 122 -50 136 0 215 -36 252 -114 l17 -36 548
                   0 c499 0 550 1 562 17 11 13 14 69 13 277 -2 230 -4 271 -23 341 -55 211 -205
                   405 -389 503 l-57 31 -25 -20 c-46 -36 -144 -87 -208 -109 -221 -73 -464 -32
                   -668 115 -19 14 -26 11 -105 -37z"/>
                            <path d="M2384 2878 c-34 -16 -44 -52 -44 -154 0 -102 -14 -147 -62 -191 -54
                   -51 -150 -68 -211 -37 -18 9 -64 47 -103 85 -105 101 -108 100 -262 -54 -151
                   -151 -150 -150 -53 -251 38 -39 76 -85 85 -103 22 -44 21 -125 -3 -171 -44
                   -85 -101 -112 -239 -112 -146 0 -142 5 -142 -219 0 -223 -8 -213 158 -221 135
                   -6 168 -19 208 -80 15 -22 29 -60 31 -84 10 -84 -2 -111 -88 -202 -111 -119
                   -112 -116 44 -271 97 -97 129 -123 150 -123 21 0 49 20 111 79 69 65 93 81
                   134 90 88 22 177 -18 219 -98 20 -38 23 -59 23 -148 0 -97 2 -106 25 -128 24
                   -25 27 -25 195 -25 168 0 171 0 195 25 23 22 25 31 25 128 0 89 3 110 23 148
                   42 80 131 120 219 98 41 -9 65 -25 134 -90 62 -59 90 -79 111 -79 21 0 53 26
                   150 123 155 155 155 154 48 265 -41 43 -79 91 -85 106 -30 80 3 188 73 234 36
                   24 52 28 158 32 167 8 159 -3 159 221 0 224 4 219 -142 219 -138 0 -195 27
                   -239 112 -24 46 -25 127 -3 171 9 18 47 64 85 103 98 102 98 101 -54 252 -154
                   153 -156 154 -261 53 -39 -38 -85 -76 -103 -85 -61 -31 -157 -14 -211 37 -48
                   44 -62 89 -62 191 0 105 -10 138 -47 155 -31 14 -320 14 -349 -1z m314 -623
                   c170 -40 318 -159 398 -320 166 -336 -12 -732 -381 -841 -81 -24 -229 -24
                   -310 0 -219 65 -385 240 -430 452 -67 315 132 633 443 709 76 18 202 18 280 0z"/>
                        </g>
                    </svg>

                        <br><center>Gestionar grupos</center></h5>
                    <p class="card-text">Permite administrar la gestión de grupos.</p>
                </div>
            </div>
            </a>
        </div>



    </div>
</div>

<footer class="logo"><svg version="1.0" xmlns="http://www.w3.org/2000/svg"
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
<script src="app.js"></script>
<script src="bootstrap.js"></script>
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


