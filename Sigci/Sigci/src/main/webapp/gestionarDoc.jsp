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
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/gestionarDoc.css">
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
            <a href="registrar.jsp">
            <div class="card">
                <div class="card-body" >
                    <h5 class="card-title"> <svg version="1.0" xmlns="http://www.w3.org/2000/svg"
                                                 width="200.000000pt" height="75.000000pt" viewBox="0 0 512.000000 512.000000"
                                                 preserveAspectRatio="xMidYMid meet">

                        <g transform="translate(0.000000,512.000000) scale(0.100000,-0.100000)" fill="#002DA0" stroke="none">
                            <path d="M2030 4483 c-515 -81 -854 -482 -853 -1008 1 -150 26 -268 86 -399
                   138 -298 418 -515 744 -577 94 -17 318 -6 418 21 175 47 382 171 496 298 256
                   285 325 645 195 1025 -113 329 -391 564 -749 632 -72 14 -271 19 -337 8z"/>
                            <path d="M3686 2609 c-413 -48 -737 -340 -847 -766 -30 -113 -32 -339 -6 -445
                   44 -179 137 -344 266 -475 125 -127 272 -215 441 -263 117 -34 315 -38 450
                   -10 222 46 397 144 553 310 179 191 270 447 254 715 -30 490 -394 874 -887
                   935 -94 11 -123 11 -224 -1z m170 -483 c17 -13 19 -31 24 -218 l5 -203 196 -3
                   c194 -2 196 -3 219 -27 33 -35 31 -82 -4 -112 -26 -22 -32 -23 -222 -23 l-194
                   0 0 -199 0 -200 -26 -20 c-35 -28 -67 -26 -101 3 l-28 24 -3 196 -4 196 -190
                   0 -190 0 -29 29 c-16 16 -29 37 -29 46 0 24 27 72 45 79 9 3 102 6 206 6 l189
                   0 0 173 c0 179 9 240 38 256 25 15 75 13 98 -3z"/>
                            <path d="M1199 2395 c-185 -62 -364 -127 -399 -144 -225 -112 -388 -314 -456
                   -566 -17 -61 -19 -107 -19 -375 l0 -305 28 -57 c34 -69 91 -121 164 -148 53
                   -20 77 -20 1274 -20 l1221 0 -62 67 c-281 307 -373 752 -237 1148 49 143 138
                   295 231 393 28 30 45 56 40 60 -5 5 -47 21 -94 36 l-85 29 -52 -32 c-138 -85
                   -328 -139 -515 -148 -221 -10 -421 34 -606 132 -46 25 -87 45 -91 44 -3 0
                   -157 -51 -342 -114z"/>
                        </g>
                    </svg>
                        <br> <center>Registrar docente</center></h5>
                </div>
            </div>
            </a>
        </div>
        <div class="col-md-6 col-lg-4">
            <a href="getListaDocentes">
            <div class="card">

                <div class="card-body">
                    <h5 class="card-title"> <svg version="1.0" xmlns="http://www.w3.org/2000/svg"
                                                 width="200.000000pt" height="75.000000pt" viewBox="0 0 128.000000 128.000000"
                                                 preserveAspectRatio="xMidYMid meet">

                        <g transform="translate(0.000000,128.000000) scale(0.100000,-0.100000)"
                           fill="#002DA0" stroke="none">
                            <path d="M425 1201 c-184 -53 -341 -205 -398 -386 -31 -98 -31 -252 0 -350 58
                   -186 221 -341 409 -389 130 -33 297 -16 413 44 157 81 286 251 308 406 3 24 9
                   44 13 44 3 0 17 -11 30 -25 13 -14 31 -25 41 -25 23 0 42 25 35 48 -10 29
                   -122 132 -144 132 -10 0 -49 -31 -86 -70 -59 -61 -66 -72 -56 -90 14 -26 42
                   -26 65 0 27 30 34 24 24 -22 -37 -172 -199 -330 -380 -373 -256 -60 -522 92
                   -599 343 -27 87 -27 217 0 304 73 236 321 391 563 350 83 -14 183 -58 241
                   -106 58 -46 65 -49 81 -36 30 25 17 56 -38 98 -70 52 -139 87 -214 106 -81 21
                   -230 20 -308 -3z"/>
                            <path d="M520 1043 c-97 -37 -140 -165 -86 -257 89 -153 326 -87 326 90 -1
                   100 -75 174 -175 173 -27 0 -57 -3 -65 -6z"/>
                            <path d="M350 673 c-58 -65 -80 -127 -80 -221 0 -93 13 -128 60 -156 42 -24
                   468 -24 510 0 47 28 60 63 60 156 0 74 -4 92 -30 144 -16 33 -43 72 -59 88
                   l-29 28 -46 -35 c-92 -71 -210 -71 -302 -1 -24 19 -46 34 -48 34 -2 0 -18 -17
                   -36 -37z"/>
                        </g>
                    </svg>
                        <br><center>Actualizar docente</center></h5>
                </div>

            </div>
            </a>
        </div>

        <div class="col-md-6 col-lg-4">
            <a href="listasDocenteMateria">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title"> <svg version="1.0" xmlns="http://www.w3.org/2000/svg"
                                                 width="200.000000pt" height="75.000000pt" viewBox="0 0 512.000000 512.000000"
                                                 preserveAspectRatio="xMidYMid meet">

                        <g transform="translate(0.000000,512.000000) scale(0.100000,-0.100000)"
                           fill="#002DA0" stroke="none">
                            <path d="M1302 4785 c-188 -41 -361 -183 -444 -364 -61 -133 -59 -43 -56
                   -1894 l3 -1692 27 -73 c38 -105 83 -176 158 -252 76 -75 147 -120 252 -158
                   l73 -27 623 -3 623 -3 -40 59 c-372 548 -371 1256 2 1807 84 124 294 333 417
                   414 187 124 381 206 600 252 153 32 419 33 577 1 61 -12 130 -29 153 -37 24
                   -8 44 -15 46 -15 2 0 4 206 4 458 0 427 -2 460 -19 499 -12 26 -32 49 -53 60
                   -31 17 -105 18 -1463 23 l-1430 5 -51 27 c-76 40 -107 70 -145 140 -31 58 -34
                   70 -33 148 0 72 4 93 26 136 39 75 70 107 140 145 l63 34 1430 5 c1358 5 1432
                   6 1463 23 98 54 91 231 -10 277 -42 19 -77 20 -1458 19 -1155 0 -1427 -3
                   -1478 -14z"/>
                            <path d="M1362 4300 c-33 -15 -47 -29 -62 -62 -40 -88 -12 -184 62 -218 42
                   -19 78 -20 1438 -20 1360 0 1396 1 1438 20 108 49 108 231 0 280 -42 19 -78
                   20 -1438 20 -1360 0 -1396 -1 -1438 -20z"/>
                            <path d="M3700 2554 c-557 -71 -998 -475 -1116 -1024 -26 -119 -26 -381 0
                   -500 56 -261 183 -488 372 -670 519 -495 1319 -476 1812 44 272 288 394 674
                   336 1063 -78 530 -481 953 -1015 1069 -72 15 -319 27 -389 18z m218 -654 c71
                   -32 82 -69 82 -282 l0 -178 178 0 c154 0 183 -3 220 -20 108 -49 108 -231 0
                   -280 -37 -17 -66 -20 -220 -20 l-178 0 0 -177 c0 -155 -3 -184 -20 -221 -49
                   -108 -231 -108 -280 0 -17 37 -20 66 -20 221 l0 177 -177 0 c-155 0 -184 3
                   -221 20 -108 49 -108 231 0 280 37 17 66 20 221 20 l177 0 0 178 c0 154 3 183
                   20 220 34 74 130 102 218 62z"/>
                        </g>
                    </svg><br><center>Asignar docente a materias</center></h5>
                </div>
            </div>
            </a>
        </div>



    </div>
</div>

<footer class="footer"><svg version="1.0" xmlns="http://www.w3.org/2000/svg"
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
