<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
	 .parent{
            /*background-image: url("D:\WEWE1\HTML\day1\img\abstract-background.jpg");
            height: 1000px;
            width: 100%;*/
            display: flex;
            background-size: cover;
        }
        #child{
            height: 55px;
            width: 100%;
            background: rgba(66, 252, 252, 0.35);
            margin-top: 10px;
            display: flex;
            justify-content:flex-start;
            
        }
        button{
            height: 40px;
            width: 100px;
            background-color: transparent;
            border: 2px dashed white;
            /* border: none; */
            transition: all 0.2s ease;
            margin-top: 8px;
            margin-left: 60px;
            box-shadow: 0px 0px 9px 2px rgb(24, 25, 25);
        }
        button:hover{
            height: 45px;
            width: 100px;
            border: none;
            text-align: center;
            background-color: black;
            color: beige;
            border-radius: 10px;
            transform: scale(1.2);
            box-shadow: 0px 0px 9px 7px rgb(107, 179, 234);
        }
        a{
           text-decoration: none; 
           color: black;
           margin-top: 100px;
           font-size: 20px;
        }
        button:hover a{
            color: beige;
        }
</style>
</head>
<body>
	<div class="parent">
        <div id="child">
            <div id="c1">
                <i class="fa fa-play-circle" aria-hidden="true" style="font-size: 52px;margin-top: 10px;color: rgb(194, 202, 210);margin-left: 10px;box-shadow: 0px 0px 6px 4px ;border-radius: 50%;"></i>
            </div>
            <button style="margin-right: 30px;"><a href="./addStudent">INSERT</a></button>
            <button style="margin-right: 20px;"><a href="./updateStudent">UPDATE</a></button>
            <button style="margin-right: 30px;"><a href="./removeStudent">REMOVE</a></button>
            <button><a href="./searchStudent">SEARCH</a></button>
            <div id="c2" style="margin-left: 320px;">
                <button style="width: 150px;"><a href="./logout">LOG OUT</a></button>
            </div>
        </div>
    </div>
</body>
</html>