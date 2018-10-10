<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<title>编辑</title>
</head>
<style>
a{
text-decoration:none;
}
</style>

<script src="http://how2j.cn/study/js/jquery/2.0.0/jquery.min.js"></script>
<link href="http://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="http://how2j.cn/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>
<div style="margin:50px auto; width:400px">
  <form class="form-horizontal" action="updateHero" method=""post" role="form">
  <div class="form-group">
    <label for="firstname" class="col-sm-2 control-label">名称</label>
    <div class="col-sm-10">
      <input type="text" class="form-control"  name="name" value="${hero.name}">
    </div>
  </div>
  <div class="form-group">
    <label for="lastname" class="col-sm-2 control-label">血量</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="hp" value="${hero.hp}">
    </div>
  </div>
  <div class="form-group">
    <label for="lastname" class="col-sm-2 control-label">伤害</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="damage" value="${hero.damage}">
    </div>
  </div>
   <input type="hidden" name = "id" value="${hero.id}">
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">修改</button>
       <button type="button" class="btn btn-default"><a href="javascript:history.back(-1)">点击返回</a></button>
    </div>
  </div>
 
  
</form>


</div>