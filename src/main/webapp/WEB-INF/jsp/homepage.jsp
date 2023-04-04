<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<html id="black">
<head>

    <title>欢迎使用保险业务管理平台</title>

    <!-- Meta -->

    <meta charset='utf-8'/>
    <meta http-equiv='Content-Language' content='zh'/>


    <!-- CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/sess2.css">


</head>



<body class='lang-zh page-front' ontouchstart=''>


<nav id='nav'>
    <div id='placeholder-element'></div>
    <div class='container'>
        <header class='header'>
            <a class='logo' href='/'>
                <img src='${pageContext.request.contextPath}/img/sheild.jpg' />
            </a>
            <div class='primary'>
                <ul>

                    <li class='account'>
                        <a id='account-primary'  href='${pageContext.request.contextPath}/user/gouseraccount.action'>
                            我的帐户
                        </a>
                    </li>


                </ul>
            </div>

            <a class='icon trigger' rel='nav-overlay' id='nav-menu'>
                <img src='${pageContext.request.contextPath}/css/icon-hamburger.svg'/>
                <span>更多</span>
            </a>

        </header>

        <div class='body'>
            <div class='container middle secondary'>
                <div data-reactroot>
          <span>
            <div class="display-1">
              <span>欢迎使用</span><br>
              <span>保险业务管理系统</span>
            </div>
            <footer class="account margin2 mobile-hidden">
              <a class="sign-in" href="${pageContext.request.contextPath}/user/gouserlogin.action">
                <img src="${pageContext.request.contextPath}/css/icon-account.svg">
                <span>
                <span>登陆</span>
              </span>
              </a>
              <a class="button small register" href="${pageContext.request.contextPath}/user/goadduser.action">
                <span>
                <span>注册</span>
              </span>
              </a>

            </footer>
          </span>
                </div>
            </div>

        </div>
    </div>


    <div class='overlay ' id='nav-overlay'>
        <div class='container'>
            <header class='header'>
                <a class='logo' href='/'>
                    <img src='${pageContext.request.contextPath}/img/sheild.jpg'/>
                </a>
                <button class='icon close'>Close</button>
            </header>
            <section class='body'>
                <div class='container middle'>
                    <ul>


                        <li>
                            <a id='' href='${pageContext.request.contextPath}/user/gouseraccount.action' >
                                我的帐户
                            </a>
                        </li>



                        <li>
                            <a id='svc-overlay' href='${pageContext.request.contextPath}/insuranceinf/SelectInsuranceinfByAll.action' >
                                保险列表
                            </a>
                        </li>



                        <li>
                            <a id='help-overlay' href='${pageContext.request.contextPath}/help/' >
                                帮助中心
                            </a>
                        </li>


                        <li><hr/></li>
                    </ul>
                </div>
            </section>
            <footer class='footer'>
                <div class='container'>

                    <a id='privacy-collapse' href='/'>
                        隐私政策
                    </a>
                    |
                    <a id='terms-collapse' href='/'>
                        使用条款
                    </a>
                </div>
            </footer>
        </div>
    </div>
</nav>

<style>
    @media (min-width: 1025px) {
        #terms-notes {
            margin-left: 30%;
            width: 69%;
        }
        #placeholder-element {
            display: none;
        }
    }
    .terms-notes {
        position: fixed;
        display: none;
        width: 100%;
        padding: 4px 16px;
        background-color: #0bac69;
        z-index: 999;
    }
    .terms-notes p {
        margin: 0;
        padding-right: 18px
    }
    .terms-notes p a {
        width: 100%;
        margin: 0;
        color: #ffffff;
    }
</style>

<!-- Page content -->
<section id='content'>

    <style>
        #app-promotion .close {
            display: none !important;
        }
        @media (max-width: 1024px) {
            #desktop-placeholder-element {
                display: none;
            }
        }

        .video-wrapper {
            text-align: center;
        }
    </style>

    <section class='promotion'>
        <div class='wrapper fluid'>
            <div class='grid columns-3 padded-2'>
                <a id='home-left-campaign' ><img src='${pageContext.request.contextPath}/img/shake1.jpg' alt=""/></a>
                <a id='home-middle-campaign' href='${pageContext.request.contextPath}/insuranceinf/SelectInsuranceinfByAll.action?pageNum=1&insurancetype=社会保险' target='_blank'><img src='${pageContext.request.contextPath}/img/scinsure.jpg' alt=""/></a>
                <a id='home-right-campaign' href='' target='_blank'><img src='${pageContext.request.contextPath}/img/shake.jpg' alt=""/></a>
            </div>
        </div>
    </section>


    <section class='program-msr bg-white'>
        <div class='wrapper'>
            <div class='grid columns-2 padded-2'>
                <div>
                    <h2 >保险管理系统</h2>
                    <p >选择您的保险，保障您的生活。<a id="home-msr-learn-more" class='button link' href='${pageContext.request.contextPath}/insuranceinf/SelectInsuranceinfByAll.action'>了解更多 ›</a></p>
                </div>
                <div class='image'>
                    <img src='/img/sheild.jpg' />
                </div>
            </div>
        </div>
    </section>

    <section class='coffeehouse'>
        <div class='wrapper center'>
            <h2 class='wrapper-mobile'>热门保险展示</h2>
            <p class='light wrapper-mobile'>选择更多保险</p>
        </div>
        <div class='scroll-wrapper'>
            <div class='scroll-arrow scroll-arrow-left'>
                <img src='https://www-static.chinacdn.starbucks.com.cn/prod/assets/icons/icon-scroll-left.svg' />
            </div>
            <div class='scroll'>
                <div class='wrapper'>
                    <div class="scroll-items">
                        <a id='home-blog-origin' target='_blank' href='${pageContext.request.contextPath}/insuranceinf/SelectDetailByName.action?insurancename=汽车保险' class='thumbnail rect card'>
                            <div class='preview' style='background-image: url(${pageContext.request.contextPath}/img/pic1.jpg)'></div>
                            <span class='tag'>汽车保险</span>
                            <!-- <time>08/07/2017</time> -->
                            <strong>保障汽车安全</strong>
                        </a>
                        <a id='home-blog-fundamentals' target='_blank' href='${pageContext.request.contextPath}/insuranceinf/SelectDetailByName.action?insurancename=财产保险' class='thumbnail rect card'>
                            <div class='preview' style='background-image: url(${pageContext.request.contextPath}/img/pic2.jpg)'></div>
                            <span class='tag'>财产保险</span>
                            <!-- <time>08/07/2017</time> -->
                            <strong>保障财产安全</strong>
                        </a>
                        <a id='home-blog-roast' target='_blank' href='${pageContext.request.contextPath}/insuranceinf/SelectDetailByName.action?insurancename=人寿保险' class='thumbnail rect card'>
                            <div class='preview' style='background-image: url(${pageContext.request.contextPath}/img/pic3.jpg)'></div>
                            <span class='tag'>人寿保险</span>
                            <!-- <time>08/07/2017</time> -->
                            <strong>保障生命安全</strong>
                        </a>
                        <a id='home-blog-pour' target='_blank' href='${pageContext.request.contextPath}/insuranceinf/SelectDetailByName.action?insurancename=意外保险' class='thumbnail rect card'>
                            <div class='preview' style='background-image: url(${pageContext.request.contextPath}/img/pic4.jpg)'></div>
                            <span class='tag'>意外保险</span>
                            <!-- <time>08/07/2017</time> -->
                            <strong>防止意外情况</strong>
                        </a>
                    </div>
                </div>
            </div>
            <div class='scroll-arrow scroll-arrow-right'>
                <img src='https://www-static.chinacdn.starbucks.com.cn/prod/assets/icons/icon-scroll-right.svg' />
            </div>
        </div>
    </section>
    <footer class="index-footer">
        <style>
            .index-footer {
                margin-bottom: -24px;
                background: #fff;
            }

            @media screen and (max-width: 640px) {
                .index-footer {
                    margin-bottom: 0;
                }
            }

        </style>

        <style>
            .license {
                color: #666;
                font-size: 14px;
                text-align: center;
                line-height: 40px;
            }

            @media screen and (max-width: 640px) {
                .license {
                    font-size: 12px;
                }
            }

            .license a {
                color: #666;
            }

            .license a:hover {
                color: #333;
            }
        </style>
        <div class="license">






            <!-- Javascript -->

            <!--[if lt IE 9
  ]><script src="https://html5shim.googlecode.com/svn/trunk/html5.js"></script
        ><![endif]-->
            <script>
                var PAGE_LANG = 'zh';
                var PAGE_TITLE = '用每一杯咖啡传递星巴克独特的咖啡体验';
                var PAGE_URL = '/';
                var SEARCH_EMPTY = '未找到结果，猜你喜欢';
                var SEARCH_POPULAR = '大家都在搜';
                var SURVEY_URL = '';
            </script>

            <script
                    type="text/javascript"
                    src="https://res.wx.qq.com/open/js/jweixin-1.2.0.js"
            ></script>

            <script
                    type="text/javascript"
                    src="https://cards.starbucks.com.cn/esabxubs5h.js"
            ></script>
            <script
                    type="text/javascript"
                    src="https://cards.starbucks.com.cn/prod/assets/js/esabxubs5hwen.js?"
            ></script>
            <script
                    type="text/javascript"
                    src="https://cards.starbucks.com.cn/prod/assets/js/esabxubs5hwen.js?async"
                    async
            ></script>

            <script
                    type="text/javascript"
                    src="https://www-static.chinacdn.starbucks.com.cn/prod/assets/js/base-bundle.js?202302232015"
            ></script>

            <script
                    type="text/javascript"
                    src='https://www-static.chinacdn.starbucks.com.cn/prod/assets/js/common.bundle.js?202302232015'
            ></script>
            <script
                    type="text/javascript"
                    src='https://www-static.chinacdn.starbucks.com.cn/prod/assets/js/vendor.bundle.js?202302232015'
            ></script>
            <script
                    type="text/javascript"
                    src='https://www-static.chinacdn.starbucks.com.cn/prod/assets/js/pages.bundle.js?202302232015'
            ></script>


            <script
                    type="text/javascript"
                    src="https://www-static.chinacdn.starbucks.com.cn/prod/assets/js/slick.min.js"
            ></script>
            <script
                    type="text/javascript"
                    src="https://www-static.chinacdn.starbucks.com.cn/prod/assets/js/home-base.js?v2"
            ></script>
            <script
                    type="text/javascript"
                    src="https://www-static.chinacdn.starbucks.com.cn/prod/assets/js/homepage.js?v6"
            ></script>
            <script
                    type="text/javascript"
                    src="https://www-static.chinacdn.starbucks.com.cn/prod/assets/js/tmall-banner.js?v6"
            ></script>
            <script
                    type="text/javascript"
                    src="https://www-static.chinacdn.starbucks.com.cn/prod/assets/js/homepage-banner.js?v6"
            ></script>


            <!-- <script src="https://browser.sentry-cdn.com/4.6.4/bundle.min.js" crossorigin="anonymous"></script> -->







</body>

</html>
