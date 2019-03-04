$(document).ready(function() {
  $('#example').dataTable( {
  'language': {  
                'emptyTable': '没有数据',  
                'loadingRecords': '加载中...',  
                'processing': '查询中...',  
                'search': '查询:',  
                'lengthMenu': '每页 _MENU_ 件',  
                'zeroRecords': '没有数据',  
                'paginate': {  
                    'first':      '首页',  
                    'last':       '尾页',  
                    'next':       '>',  
                    'previous':   '<'  
                },  
                'info': '第 _PAGE_ 页 / 共 _PAGES_ 页',  
                'infoEmpty': '没有数据',  
                'infoFiltered': '(过滤总件数 _MAX_ 条)'  
            }  ,    

    "pagingType":   "full_numbers",
    "dom":  "<'row'<'col-sm-6'f><'col-sm-6'>>" +
        "<'row'<'col-sm-12'tr>>" +
        "<'row'<'col-sm-3'i><'col-sm-3'l><'col-sm-6'p>>",

     "columnDefs": [{  
            // 定义操作列  
            "targets": 5,  
            "data": null,  
            "render": function(data, type, row) {  
                var html = ' <a href="javascript:void(0);" class="look btn btn-default btn-xs"><i class="fa fa-arrow-up"></i> 查看</a>'  
                return html;  
            }  
        }],

        "sDom": "<'row-fluid'<'span6 myBtnBox'><'span6'f>r>t<'row-fluid'<'span6'i><'span6 'p>>",
    "sPaginationType": "bootstrap",
    
    "fnCreatedRow": function (nRow, aData, iDataIndex) {
        //add selected class
        $(nRow).click(function () {
            if ($(this).hasClass('row_selected')) {
                $(this).removeClass('row_selected');
            } else {
                oTable.$('tr.row_selected').removeClass('row_selected');
                $(this).addClass('row_selected');
            }
        });
    },


  } );//end


   // 初始化刪除按钮  
    $('#example tbody').on('click', 'a.delete', function(e) {  
        e.preventDefault();  
  
        if (confirm("确定要删除？")) {  
            var table = $('#example').DataTable();  
            table.row($(this).parents('tr')).remove().draw();  
        }  
  
    }); 

     $('#example tbody').on('click', 'a.look', function(e) {  
        e.preventDefault();  
  
        if (confirm("确定要查看？")) {  
            var table = $('#example').DataTable();  
            console.log(table);
        } 
       
    }); 
 
} );

