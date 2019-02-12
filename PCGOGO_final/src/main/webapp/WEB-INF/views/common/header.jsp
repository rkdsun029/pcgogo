<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Fredoka+One" rel="stylesheet">
<style>
   html{
       margin:0px;
       padding:0px;
   }
   body{
       background:skyblue;
   }
   @keyframes colorAni1{
       0%{background:rgba(30, 30, 30, .3);}
       100%{background:white;}
   }
   @keyframes colorAni2{
       0%{background:white;}
       100%{background:rgba(30, 30, 30, .3);}
   }
   div#head-container{
       position:fixed;
       width:100%;
       height:70px;
       top:0px;
       left:0px;
       margin:0px;
       padding:0px;
       background:rgba(30, 30, 30, .3);
       white-space:nowrap;
   }
   h1#head-title{
       display:inline-block;
       font-family: 'Fredoka One', cursive; 
       font-size:30px;
       margin:0px;
       margin-left:150px;
       margin-top:15px;
   }
   a{
       text-decoration:none;
       color:white;
   }
   ul#main-menu{
       display:inline-block;
       font-family:'Nanum Gothic', sans-serif;
       font-size:15px;
       font-weight:bold;
       position:relative;
       top:-5px;
       margin-left:100px;
   }
   ul#main-menu li{
       display:inline-block;
       padding-right:30px;
       cursor:pointer;
   }
   ul#main-menu li:hover{
       color:rgba(255, 40, 40, .7);
   }
   section#main-container{
       /* width: 1008px; */
       width:1200px;
       /* min-height:100px; */
       height:2000px;
       margin:0 auto;
       margin-top:90px;
       background:white;
   }
   div#footer{
       position:absolute;
       width:100%;
       height:70px;
       left:0px;
       background:rgba(0, 0, 0, .3);
       margin:0px;
       margin-top:20px;
       padding:0px;
   }
   div#footer p{
       margin-left:150px;
       font-size:13px;
       color:white;
       font-family:'Nanum Gothic', sans-serif;
       position:relative;
       top:15px;
   }
   div#quick-menu{
       position: absolute;
       right:25px;
       width: 120px;
       height: 430px;
       background:gray;
       border:1px solid gray; 
       text-align:center;
       font-family:'Nanum Gothic', sans-serif;
       font-weight:bold;
       font-size:17px;
   }
   div#quick-menu .quick{
       position: relative;
       width: 100px;
       height: 110px;
       margin: 0 auto;
       margin-bottom: 15px;
       background:white;
       cursor:pointer;
   }
   div#quick-menu div:first-of-type{
       margin-top: 10px;
   }    
   div#goToTop{
       margin:0 auto;
       width:100px;
       height:30px;
       cursor:pointer;
       font-size:20px;
   }
   
   </style>
   <script>
   $(function(){
       $("div#head-container").on("mouseenter", function(){
           $("div#head-container").css({
               "background": "white",
               "animation": "colorAni1 .5s 1 forwards" 
           });
           $("a").css("color", "rgba(255, 40, 40, .7)");
       });
       $("div#head-container").on("mouseleave", function(){
           $("div#head-container").css({
               "background": "rgba(30, 30, 30, .3)",
               "animation": "colorAni2 .5s 1 forwards" 
           });
           $("a").css("color", "white");
       });

       $("#goToTop").on("click", function(){
           $("html, body").animate({
               scrollTop : 0
           }, 400);
       });

       $(window).scroll(function(){
           var top = $(document).scrollTop();
           $("#quick-menu").animate({"top": (top+100)}, 50);
       });
   });
   </script>
</head>
<body>
    <div id="head-container">
        <a href="#"><h1 id="head-title">PCGOGO.COM</h1></a>
        <ul id="main-menu">
            <li>PC방 검색</li>
            <li>인기 PC방</li>
            <li>분실물찾기</li>
            <li>고객센터</li>
        </ul>

    </div>
    <div id="quick-menu">
        <div class="quick" id="menu1">로그인</div>
        <div class="quick" id="menu2">회원가입</div>
        <div class="quick" id="menu3">FAQ</div>
        <div id="goToTop">▲ TOP</div>
    </div>

    <section id="main-container">