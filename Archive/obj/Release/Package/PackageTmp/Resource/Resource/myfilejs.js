var a = 0;
var itemID = "";
function fileUpload(inputID, divID, masterID, tableID) {
    itemID = masterID;
    $('#' + inputID).uploadifive({
        'auto': false,
        'fileSizeLimit': '103000KB',
        'buttonText': '浏  览',
        'multi': true,
        'queueID': divID,
        'uploadScript': '/File/Upload',
        'formData': { 'ID': masterID, 'type': tableID },
        'onUploadComplete': function (file, data) {
            a = a + 1;
            if ($("#" + divID).children().length - a == 0) {
                checkCancelNew(divID, inputID, tableID, masterID);
                a = 0;
            }
        }
    });




    $('#' + tableID).bootstrapTable({
        method: 'post',
        url: '/File/GetList?ID=' + masterID + '&Type=' + tableID,
        striped: true,
        clickToSelect: true,
        pageSize: 10,
        sidePagination: 'server',
        pageList: [10, 30, 50, 100, 300, 500],
        queryParamsType: 'limit',
        sortName: 'ID',
        sortOrder: 'asc',
        columns: [
            {
                field: 'TimeStamp', title: '上传时间', width: 150, formatter: function (value, row, index) {
                    var str = "";
                    console.log(ChangeDateFormat(row.Timestamp));
                    str = "<span>" + ChangeDateFormat(row.Timestamp) + "</span>";
                    return str;
                }
            },
            { field: 'FileName', title: '文件名', width: 300, editable: false, },
            { field: 'opt', title: '操作', width: 150, editable: false, formatter: operateFormattermoney30 },
        ],
    });
}


function fileReview(inputID, divID, masterID, tableID) {
    itemID = masterID;
    $('#' + inputID).uploadifive({
        'auto': false,
        'fileSizeLimit': '103000KB',
        'buttonText': '浏  览',
        'multi': true,
        'queueID': divID,
        'uploadScript': '/File/Upload',
        'formData': { 'ID': masterID, 'type': tableID },
        'onUploadComplete': function (file, data) {
            a = a + 1;
            if ($("#" + divID).children().length - a == 0) {
                checkCancelNew(divID, inputID, tableID, masterID);
                a = 0;
            }
        }
    });

    $('#' + tableID).bootstrapTable({
        method: 'post',
        url: '/File/GetList?ID=' + masterID + '&Type=' + tableID,
        striped: true,
        clickToSelect: true,
        pageSize: 10,
        sidePagination: 'server',
        pageList: [10, 30, 50, 100, 300, 500],
        queryParamsType: 'limit',
        sortName: 'ID',
        sortOrder: 'asc',
        columns: [
            {
                field: 'TimeStamp', title: '上传时间', width: 150, formatter: function (value, row, index) {
                    var str = "";
                    console.log(ChangeDateFormat(row.Timestamp));
                    str = "<span>" + ChangeDateFormat(row.Timestamp) + "</span>";
                    return str;
                }
            },
            { field: 'FileName', title: '文件名', width: 300, editable: false, },
            { field: 'opt', title: '操作', width: 150, editable: false, formatter: operateFormattermoney31 },
        ],
    });
}


function operateFormattermoney31(value, row, index) {
    console.log(row);
    return [
        '<a href="javascript:Affix(\''+row.ID+'\')" id="btn_detail" type="button" class="layui-btn layui-btn-sm" style="margin-right:30px;">预览</a>',
        '<a href="/File/Download?ID=' + row.ID + '" id="btn_detail" type="button" class="layui-btn layui-btn-sm layui-btn-normal" style="margin-right:30px;">下载</a>',
    ].join('');
}

function Affix(ID) {
    console.log(ID);
    $("#url").val(ID);
    //$("#pdf").attr('src', $("#pdf").attr('src'));
    LayerModal("附件预览", "/Person/Pdf");

}


function operateFormattermoney30(value, row, index) {
    console.log(row);
    return [
        '<a href="/File/Download?ID=' + row.ID + '" id="btn_detail" type="button" class="layui-btn layui-btn-sm" style="margin-right:30px;">下载</a>',
        '<a href="javascript:deleteFile(\'' + row.ID + '\',\'' + row.Type + '\')" type="button"  class="layui-btn layui-btn-sm layui-btn-danger">删除</a>',
    ].join('');
}


function checkQueueNew(divID,inputID) {
    if ($("#" + divID).children().length == 0) {
        alert("请先点击浏览选择要上传的文件！");
    } else {
        $("#" + inputID).uploadifive('upload');
    }
}
function checkCancelNew(divID, inputID, type, masterID) {
    if ($("#" + divID).children().length == 0) {
        alert("没有待上传的文件！");
    } else {

        $("#" + inputID).uploadifive('clearQueue');
        console.log(masterID);
        refeshGridNew(type, masterID);
    }
}

function refeshGridNew(type, masterID) {
    console.log(type + masterID);
    $('#' + type).bootstrapTable("refresh", { url: '/File/GetList?ID=' + masterID + '&Type=' + type });
}



function deleteFile(fileID,type) {
    $.ajax({
        url: "/File/Delete",
        data: { "ID": fileID },
        success: function (data) {
            layer.msg("删除成功");
            refeshGridNew(type, itemID);
        },
    });
}

function guid() {
    return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function (c) {
        var r = Math.random() * 16 | 0, v = c == 'x' ? r : (r & 0x3 | 0x8);
        return v.toString(16);
    });
}
