﻿<%@ tag trimDirectiveWhitespaces="true" %>
<%@ attribute name="pageTitle" required="true" %>
<html>
<head>
    <link rel="icon" type="image/x-icon" href="/images/shop-icon.png"/>
    <title>${pageTitle}</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/main.css">
    <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
            rel="stylesheet"
    />
    <link
            href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
            rel="stylesheet"
    />
    <link
            href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.11.0/mdb.min.css"
            rel="stylesheet"
    />
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css"
          integrity="sha512-xodZBNTC5n17Xt2atTPuE1HxjVMSvLVW9ocqUKLsCC5CXdbqCmblAshOMAS6/keqq/sMZMZ19scR4PsZChSR7A=="
          crossorigin=""/>
</head>
<body>
<nav class="navbar fixed-top navbar-expand-sm navbar-dark bg-dark">
    <div class="container-fluid">
        <a href="/" class="navbar-brand">PHONESHOP</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarContent"
                aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
            <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a href="/products" class="nav-link">Каталог</a>
                </li>
                <li class="nav-item">
                    <a href="#footer" class="nav-link">Контакты</a>
                </li>
                <li class="nav-item">
                    <a href="#footer" class="nav-link">О нас</a>
                </li>
                <li class="nav-item">
                    <a href="/products/liked/matching" id="matchBtn" class="nav-link">Сравнить товары</a>
                </li>
            </ul>
            <a class="nav-link" href="/cart">
                <jsp:include page="../pages/miniCart.jsp"/>
            </a>
        </div>
    </div>
</nav>
<div class="container pt-5">
    <jsp:doBody/>
</div>
<footer id="footer" class="text-center text-lg-start bg-light text-muted">
    <section class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom">
        <div class="me-5 d-none d-lg-block">
            <span>Присоединяйтесь ко мне в социальных сетях:</span>
        </div>
        <div>
            <a href="https://t.me/walkcat921" class="me-4 text-reset">
                <i class="fab fa-telegram"></i>
            </a>
            <a href="https://steamcommunity.com/id/walkcat921/" class="me-4 text-reset">
                <i class="fab fa-steam"></i>
            </a>
            <a href="https://vk.com/grknho" class="me-4 text-reset">
                <i class="fab fa-vk"></i>
            </a>
            <a href="https://www.instagram.com/walkcat921/" class="me-4 text-reset">
                <i class="fab fa-instagram"></i>
            </a>
            <a href="https://www.linkedin.com/in/egor-zhukovskij-0a41b7226/" class="me-4 text-reset">
                <i class="fab fa-linkedin"></i>
            </a>
            <a href="https://github.com/WalkCat921" class="me-4 text-reset">
                <i class="fab fa-github"></i>
            </a>
        </div>
    </section>
    <section class="">
        <div class="container text-center text-md-start mt-5">
            <div class="row mt-3">
                <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
                    <h6 class="text-uppercase fw-bold mb-4">
                        <i class="fas fa-gem me-3"></i>Egor Zhukovsky Company
                    </h6>
                    <p>
                        Я являюсь Java-разработчиком! Открыт для новых предложений. В активном поиске работы!
                    </p>
                </div>
                <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
                    <h6 class="text-uppercase fw-bold mb-4">
                        Контакты
                    </h6>
                    <p><i class="fas fa-home me-3"></i> ул. Космонавтов, г. Минск, РБ</p>
                    <p>
                        <i class="fas fa-envelope me-3"></i>
                        egor.zhukovsky.dev@gmail.com
                    </p>
                    <p><i class="fas fa-phone me-3"></i>+375 29 364-85-27</p>
                </div>
            </div>
        </div>
    </section>

    <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.05);">
        © 2022 Copyright:
        <a class="text-reset fw-bold" href="https://vk.com/grknho">Egor Zhukovky</a>
    </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
<script
        type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.11.0/mdb.min.js"
></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js"
        integrity="sha512-XQoYMqMTK8LvdxXYG3nZ448hOEQiglfqkJs1NOQV44cWnUrBc8PkAOcXy20w0vlaXaVUearIOBhiXZ5V3ynxwA=="
        crossorigin=""></script>
<script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js"
        integrity="sha512-XQoYMqMTK8LvdxXYG3nZ448hOEQiglfqkJs1NOQV44cWnUrBc8PkAOcXy20w0vlaXaVUearIOBhiXZ5V3ynxwA=="
        crossorigin=""></script>
<script src="/index.js"></script>
</body>
</html>