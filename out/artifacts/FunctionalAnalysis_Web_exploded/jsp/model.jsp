<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--手动添加数据模态框-->
<div class="modal fade" id="addInfoModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="newProjectModalTitle">
                    请输入零件信息：
                </h4>
            </div>
            <div class="modal-body">
                <!-- <%--输入框组--%> -->
                <div class="input-group">
                     <span class="input-group-addon"style="width: 85px;height: 34px">零件名称：</span>
                     <input type="text" class="form-control" style="width: 350px"placeholder="请输入零件名称" id="partName">
                     <input type="number" class="form-control" style="width: 120px" placeholder="请输入成本" id="partCost">
                     <div  id="sourceAuto" style="overflow: auto"></div>
                </div>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" onclick="showTable()">关闭</button>
                <button type="button" class="btn btn-primary" onclick="addData()">确认</button>
            </div>
        </div>
    </div>
</div>
<!--修改模态框-->
<div class="modal fade" id="updatedatainfo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"
                        aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">修改元素名称</h4>
            </div>
            <div class="modal-body" style="margin: auto;">
                <div id="spindivupdate"></div>
                <form id="updateprocesspop">
                    <table style="width: 100%;font-size:13px" class="table table-striped table-bordered table-hover" id="modal-table">
                        <input type="hidden" id="procedureId_u" name="procedureId" size="24" ></input>
                        <tr>
                            <td>Source：</td>
                            <td><input type="text" style="width:100%" id="source_u"></input></td>
                        </tr><br>
                        <tr>
                            <td>Target：</td>
                            <td><input type="text" style="width:100%" id="target_u"></input></td>
                        </tr><br>
                        <tr>
                            <td>Weight：</td>
                            <td><input type="text" style="width:100%" id="weight_u"></input></td>
                        </tr>
                    </table>
                    <a class="btn btn-sm btn-info" style=""
                       onclick="editItem()"> <i class="ace-icon glyphicon glyphicon-ok bigger-120"></i>
                        提交
                    </a>
                </form>
            </div>
        </div>
    </div>
</div>