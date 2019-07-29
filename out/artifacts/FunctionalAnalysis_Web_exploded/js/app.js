var hot;

function addData() {
    var datanum = $('#myBootstrapTtable').bootstrapTable('getData').length;
//	console.log(datanum);
    var rowdata= {
        procedureIdForDelete:datanum+1,
        partName:$("#partName").val(),
        partCost:$("#partCost").val(),
    };
    if($("#msaData").val() == ""){
        alert("信息不能全为空，请重新填写！");
    }
    else{
        $('#myBootstrapTtable').bootstrapTable('append', rowdata);
    }
    for(var i=0;i<datanum;i++){   //添加样本超过10个时，table自动翻页
        if(datanum=10*i+1){
            $("#myBootstrapTtable").bootstrapTable('nextPage');
        }
    }
    $("#partName").val("");
    $("#partCost").val("");
}

function firstRowRenderer(instance, td, row, col, prop, value, cellProperties) {
    Handsontable.renderers.TextRenderer.apply(this, arguments);
    td.style.fontWeight = 'bold';
    td.style.color = 'green';
    td.style.background = '#266f8e';
}

function showTable() {
    var datanum = $('#myBootstrapTtable').bootstrapTable('getData').length;	//获取数据长度
    let datas = $('#myBootstrapTtable').bootstrapTable('getData');
    let JsonDatas = eval(JSON.stringify(datas));
    let DSMrowHeaders = new Array();
    for(let i=0;i<datanum;i++){
        DSMrowHeaders = JsonDatas[i].partName;
    }
    var container=document.getElementById("compareMatrix");
    var num = $('#myBootstrapTtable').bootstrapTable('getData').length;
    hot =new Handsontable(container,{
        data:Handsontable.helper.createEmptySpreadsheetData(num, num),
        filters:true,
        rowHeaders: DSMrowHeaders,
        colHeaders:DSMrowHeaders,
        height:530,
        className: "htCenter htMiddle",// 定义文本元素居中
        colWidths: 30,//  定义行列大小可缩放
        rowHeights: 30,
        licenseKey:'non-commercial-and-evaluation',
        cells:function (row,col) {
            var cellProperties = {};
            if(row==col /*&& row !=0*/){
                cellProperties.renderer = firstRowRenderer; // uses function directly
            }
            return cellProperties;
        }
    })
}
