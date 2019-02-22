function BindSelect(ctrlName, url) {
    var control = $('#' + ctrlName);
    //设置Select2的处理
    control.select2({
        allowClear: true,
        formatResult: formatResult,
        formatSelection: formatSelection,
        escapeMarkup: function (m) {
            return m;
        }
    });

    //绑定Ajax的内容
    $.getJSON(url, function (data) {
        control.empty();//清空下拉框
        $.each(data, function (i, item) {
            control.append("<option value='" + item.Value + "'>&nbsp;" + item.Text + "</option>");
        });
    });
}