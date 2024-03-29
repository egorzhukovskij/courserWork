<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>

<jsp:useBean id="product" type="com.egor.zhukovsky.phoneshop.model.product.Product" scope="request"/>
<tags:master pageTitle="Product Details">
    <%--    <c:if test="${not empty param.message}">--%>
    <%--        <p class="success" id="product-description-text">--%>
    <%--                ${param.message}--%>
    <%--        </p>--%>
    <%--    </c:if>--%>
    <%--    <c:if test="${not empty param.error}">--%>
    <%--        <p class="error" id="product-description-text">--%>
    <%--                ${param.error}--%>
    <%--        </p>--%>
    <%--    </c:if>--%>

    <div class="container mt-5">
        <div class="row">
            <div class="col">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/">Главная</a></li>
                    <li class="breadcrumb-item active">${product.description}</li>
                </ol>
            </div>
        </div>
        <div class="row">
        <div class="col-md-4">
            <img style="max-width: 350px" src="${product.imageUrl}">
        </div>
        <div class="col-md-8 card p-4 text-center">
                <p>
                    <strong>${product.description}</strong>
                </p>
                <hr/>
                <div class="row text-center">
                    <b>Код товара: ${product.code}</b>

                </div>
                <hr/>
                <div class="row">
                    <b class="text-success">В наличии: ${product.stock}</b>
                </div>
                <hr/>
                <div class="row">
                    <h1 style="text-shadow:1px 1px 0 #444">
                        <b><fmt:formatNumber value="${product.price}" type="currency"
                                             currencySymbol="${product.currency.symbol}"/></b>
                    </h1>
                </div>
                <hr/>
                <div class="row">
                    <form method="post">
                        <label class="form-label" for="customRange1">Количество :</label>
                        <div class="range">
                            <input type="range" min="1" max="${product.stock}" name="quantity" value="${not empty error ? param.quantity : 1}" class="form-range" id="customRange1" />
                            <p id="rangeValue"></p>
                        </div>
                    <br>
                    <button class="btn btn-success">В корзину</button>
                    <c:if test="${not empty param.error}">
                        <p class="error">
                                ${param.error}
                        </p>
                    </c:if>
                    </form>
                </div>
        </div>
        </div>
    </div>

    <div class="accordion mt-5" id="accordionExample">
        <div class="accordion-item">
            <h2 class="accordion-header" id="headingOne">
                <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                    Основные характеристики
                </button>
            </h2>
            <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                <div class="accordion-body">
                    <table class="table table-bordered">
                        <tbody>
                        <tr>
                            <td>Дата выхода на рынок</td>
                            <td>${product.mainСharacteristics.releaseYear}</td>
                        </tr>
                        <tr>
                            <td>Операционная система</td>
                            <td>${product.mainСharacteristics.os}</td>
                        </tr>
                        <tr>
                            <td>Исходная версия операционной системы</td>
                            <td>${product.mainСharacteristics.osVersion}</td>
                        </tr>
                        <tr>
                            <td>Размер экрана</td>
                            <td>${product.mainСharacteristics.screenSize}</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header" id="headingTwo">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                    Камера
                </button>
            </h2>
            <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                <div class="accordion-body">
                    <table class="table table-bordered">
                        <tbody>
                        <tr>
                            <td>Встроенная камера</td>
                            <td>${product.cameraСharacteristics.builtCamera}</td>
                        </tr>
                        <tr>
                            <td>Максимальное разрешение видео</td>
                            <td>${product.cameraСharacteristics.video}</td>
                        </tr>
                        <tr>
                            <td>Фронтальная камера</td>
                            <td>${product.cameraСharacteristics.frontalCamera}</td>
                        </tr>
                        <tr>
                            <td>Диафрагма</td>
                            <td>${product.cameraСharacteristics.diaphragm}</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header" id="headingThree">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                    Дополнительно
                </button>
            </h2>
            <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                <div class="accordion-body">
                    <table class="table table-bordered">
                        <tbody>
                        <tr>
                            <td>Аудиовыход</td>
                            <td>${product.otherСharacteristics.audioType}</td>
                        </tr>
                        <tr>
                            <td>Емкость аккумулятора</td>
                            <td>${product.otherСharacteristics.battery}  мА·ч</td>
                        </tr>
                        <tr>
                            <td>Материал корпуса</td>
                            <td>${product.otherСharacteristics.material}</td>
                        </tr>
                        <tr>
                            <td>Графический ускоритель</td>
                            <td>${product.otherСharacteristics.graphics}</td>
                        </tr>
                        <tr>
                            <td>Количество ядер</td>
                            <td>${product.otherСharacteristics.core}</td>
                        </tr>
                        <tr>
                            <td>Процессор</td>
                            <td>${product.otherСharacteristics.cpu}</td>
                        </tr>
                        <tr>
                            <td>Формат SIM-карты</td>
                            <td>${product.otherСharacteristics.sim}</td>
                        </tr>
                        <tr>
                            <td>Объем оперативной памяти</td>
                            <td>${product.otherСharacteristics.ram} Гб</td>
                        </tr>
                        <tr>
                            <td>Объем встроенной памяти</td>
                            <td>${product.otherСharacteristics.builtMemory} Гб</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <br>
    <br>
    <br>
    <tags:recentlyView recentlyView="${recentlyView}"/>
</tags:master>