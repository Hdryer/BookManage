$(function () {
    //初始化页面 加载页面时候就查询所有用户
    $.get("/student/allstudent", function (data) {
        var html = "";
        for (var i = 0; i < data.length; i++) {
            html += "<tr>" +
                "<td>" + data[i].studentid + "</td>" +
                "<td>" + data[i].password + "</td>" +
                "<td>" + data[i].username + "</td>" +
                "<td>" + data[i].sex + "</td>" +
                "<td>" + data[i].age + "</td>" +
                "<td>" + data[i].address + "</td>" +
                "<td>" + data[i].identity + "</td>" +
                "<td><button value='删除'  onclick='deletestudent(this)' type='button' class='btn btn-danger btn-sm'>删除用户</button> </td>" +
                "</tr>";
        }
        $("#studentbody").html(html);
    });
})

function deletestudent(o) {
    var id = $(o).parent().prev().prev().prev().prev().prev().prev().prev().text();
    console.log(id);
    $.ajax({
        type: "post",
        url: "/student/deletestudent",
        contentType:"application/json;charset=utf-8",
        data: id,
        dataType: "text",
        success: function () {
            $(o).parent().parent().remove();
        },
        error:function () {
            alert("删除失败");
        }
    })
}

