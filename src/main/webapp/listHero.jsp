<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<script src="http://how2j.cn/study/js/jquery/2.0.0/jquery.min.js"></script>
<link href="http://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="http://how2j.cn/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>
<center>

<div style="margin-top:80px;"><h2>英雄管理</h2></div>
<div style="width:800px;margin-top:80px;">
<table class="table table-hover" align='center' border='1' cellspacing='0'>
    <tr>
        <td>ID</td>
        <td>名称</td>
        <td>血量</td>
        <td>伤害</td>
        <td>编辑</td>
        <td>删除</td>
    </tr>
    <c:forEach items="${heros}" var="hero" varStatus="st">
        <tr>
            <td>${hero.id}</td>
            <td>${hero.name}</td>
            <td>${hero.hp}</td>
            <td>${hero.damage}</td>
            <td><a href="editHero?id=${hero.id}">edit</a></td>
            <td><a href="deleteHero?id=${hero.id}">delete</a></td>
        </tr>
   </c:forEach>
   <tr>
        <td colspan="6" align="center">
            <a href="?start=0">[首  页]</a>
            <a href="?start=${pre}">[上一页]</a>
            <a href="?start=${next}">[下一页]</a>
            <a href="?start=${last}">[末  页]</a>
        </td>
    </tr>



</table>
</div>
<div style="margin:50px auto; width:400px">
  <form class="form-horizontal"  action="addHero" method=""post" role="form">
  <div class="form-group">
    <label for="firstname" class="col-sm-2 control-label">名称</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="name" placeholder="请输入名称">
    </div>
  </div>
  <div class="form-group">
    <label for="lastname" class="col-sm-2 control-label">血量</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="hp" placeholder="请输入血量">
    </div>
  </div>
    <div class="form-group">
    <label for="lastname" class="col-sm-2 control-label">伤害</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="damage" placeholder="请输入伤害">
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">添加</button>
    </div>
  </div>
</form>

</div>

</center>