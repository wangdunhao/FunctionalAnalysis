<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- handsontable -->
<script type="text/javascript" src="js/handsontable/handsontable.full.js"></script>
<link href="js/handsontable/handsontable.full.min.css">

<div id="dataInfo" class="tab-pane active">
    <div id="toolbar" style="float:left" class="btn-group">
        <a class="btn btn-xs btn-info" onclick="" data-toggle="modal" data-target="#addInfoModal">
            <i class="ace-icon glyphicon glyphicon-plus"></i>
            添加样本
        </a>
        <button type="button" class="btn btn-xs btn-danger" style="margin-right: 40px" onclick="deleterow()">
            <i class="glyphicon glyphicon-trash"></i>
            删除
        </button>
        <button type="button" class="btn btn-xs btn-info" onclick="saveRelaxData()">
            <i class="ace-icon fa fa-save bigger-120"></i>保存
        </button>
        <button type="button" class="btn btn-xs btn-info" onclick="saveAsNewProject()">
            <i class="ace-icon fa fa-random bigger-120"></i>另存为
        </button>
    </div>
</div>

<!-- 主界面区 -->
<div id="main" style="height:500px">
    <div style="float:left;width:50%;margin-top:1px">
        <table id="myBootstrapTtable" data-toggle="table" data-search="true" data-show-refresh="true"
               data-show-toggle="true" data-toolbar="#toolbar" data-pagination="true"
               class="table table-striped table-bordered"
               data-side-pagination="client">
            <thead>
            <tr>
                <th class="col-sm-1 center" data-field="state" data-checkbox="true"></th>
                <th data-field="procedureIdForDelete" data-visible="false">procedureId</th>
                <th class="col-sm-2 center" data-field="procedureId" data-formatter="generateId">序号</th>
                <th class="col-sm-3 center" data-field="partName">零部件名称</th>
                <th class="col-sm-3 center" data-field="partCost">目前成本</th>
                <th class="col-sm-2 center" data-field="action" data-formatter="actionFormatter" data-events="actionEvents">编&nbsp辑</th>
            </tr>
            </thead>
        </table>
    </div>
    <div style="float:left;width: 40%;margin-left:55%;margin-top:5px;" id="compareMatrix"></div>

    <%--<script>
        var data = [
            ['', 'Ford', 'Tesla', 'Toyota', 'Honda'],
            ['2017', 10, 11, 12, 13],
            ['2018', 20, 11, 14, 13],
            ['2019', 30, 15, 12, 13]
        ];

        var container = document.getElementById('compareMatrix');
        var hot = new Handsontable(container, {
            data: data,
            rowHeaders: true,
            colHeaders: true,
            filters: true,
            licenseKey:'non-commercial-and-evaluation',
            dropdownMenu: true
        });
    </script>--%>
</div>