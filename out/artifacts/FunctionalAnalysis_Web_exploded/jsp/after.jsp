<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div>
    <a class="btn btn-xs btn-primary"  value = "cluster" data-toggle="modal" data-target="#gaModal" onclick="showMatrix()"> <!---->
        <i class="menu-icon fa fa-desktop bigger-120"></i> 显示矩阵
    </a>
    <a class="btn btn-xs btn-primary" id = "cluster" value = "cluster" data-toggle="modal" data-target="#gaModal" onclick="clusterMatrix()"> <!---->
        <i class="ace-icon fa fa-gears bigger-120"></i>聚类分析
    </a>
</div> <br>

<div style="float:left;width:50%;margin-top:10px">
    <table id="myBootstrapTtable1" data-toggle="table" <%--data-search="true" data-show-refresh="true"--%>
    <%-- data-show-toggle="true"--%> <%--data-toolbar="#toolbar"--%> data-pagination="true"
           class="table table-striped table-bordered"
           data-side-pagination="client">
        <thead>
        <tr>
            <th class="col-sm-2 center" data-field="name">零部件名称</th>
            <th class="col-sm-1 center" data-field="cost">目前成本</th>
            <th class="col-sm-1 center" data-field="functionCoefficient">功能系数</th>
            <th class="col-sm-1 center" data-field="costCoefficient">成本系数</th>
            <th class="col-sm-1 center" data-field="valueCoefficient">价值系数</th>
        </tr>
        </thead>
    </table>
</div>


