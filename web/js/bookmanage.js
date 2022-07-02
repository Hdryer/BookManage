$(function () {
    //初始化页面 查询所有书籍
    $.get("/book/allbook",function (data) {
        var html="";
        for (var i=0; i<data.length;i++){
            html+="<tr>"+
                "<td>"+data[i].bookid+"</td>"+
                "<td>"+data[i].bookname+"</td>"+
                "<td>"+data[i].author+"</td>"+
                "<td>"+data[i].num+"</td>"+
                "<td>"+data[i].something+"</td>"+
                "<td><button value='修改' type='button' onclick='updatebook(this)' class='btn btn-warning btn-sm'>修改</button>&nbsp;<button value='删除'  onclick='deletebook(this)' type='button' class='btn btn-danger btn-sm'>删除</button> </td>"+
                "</tr>";
        }
        $("#bookbody").html(html);
    });

    //添加书籍
    $("#addbook").click(function () {
        $("#addpage").show();

        $("#add").off().on('click',function () {
            var data1 ={
                "bookid":$("#bookid").val(),
                "bookname":$("#bookname").val(),
                "author":$("#author").val(),
                "num":$("#num").val(),
                "something":$("#something").val()
            };
            $.ajax({
                type:"post",
                url:"/book/addbook",
                contentType:"application/json;charset=utf-8",
                data: JSON.stringify(data1),
                dataType:"Json",
                success:function (data) {
                    $("#addpage input").val("");
                    $("#addpage").hide();
                    console.log(data);
                    var html1 ="<tr>"+
                        "<td>"+data.bookid+"</td>"+
                        "<td>"+data.bookname+"</td>"+
                        "<td>"+data.author+"</td>"+
                        "<td>"+data.num+"</td>"+
                        "<td>"+data.something+"</td>"+
                        "<td><button value='修改' type='button' onclick='updatebook(this)' class='btn btn-warning btn-sm'>修改</button>&nbsp;<button value='删除' onclick='deletebook(this)' type='button' class='btn btn-danger btn-sm'>删除</button> </td>"+
                        "</tr>";
                    $("#bookbody").append(html1);
                },
                error:function () {
                    alert("上架失败");
                }
            });
        })
    });

    $("#off").click(function () {
        $("#addpage input").val("");
        $("#addpage").hide();
    })

    $("#off2").click(function () {
        $("#updatepage input").val("");
        $("#updatepage").hide();
    })
})

function deletebook(o) {
    var bookid =$(o).parent().prev().prev().prev().prev().prev().text();
    $.ajax({
        type: "post",
        url: "/book/deletebook",
        contentType:"application/json;charset=utf-8",
        data: bookid,
        dataType: "text",
        success: function () {
            $(o).parent().parent().remove();
        },
        error:function () {
            alert("删除失败");
        }
    })
}

function updatebook(o) {
    $("#updatepage").show();
    var bookid = $(o).parent().prev().prev().prev().prev().prev().text();
    var bookname =$(o).parent().prev().prev().prev().prev().text();
    var author = $(o).parent().prev().prev().prev().text();
    var num = $(o).parent().prev().prev().text();
    var something =$(o).parent().prev().text();
    $("#bookid2").val(bookid);
    $("#bookname2").val(bookname);
    $("#author2").val(author);
    $("#num2").val(num);
    $("#something2").val(something);

    $("#update").off().on('click',function () {
        var isflag = false;
        var data1 = {
            "bookid":$("#bookid2").val(),
            "bookname":$("#bookname2").val(),
            "author":$("#author2").val(),
            "num":$("#num2").val(),
            "something":$("#something2").val()
        };
        if (!isflag) {
            $.ajax({
                url: "/book/updatebook",
                type: "post",
                contentType: "application/json;charset=utf-8",
                data: JSON.stringify(data1),
                dataType: "Json",
                beforeSend:function () {
                    isflag=true;
                },
                success: function (data) {
                    $("#updatepage input").val("");
                    $("#updatepage").hide();
                    $(o).parent().prev().prev().prev().prev().text(data.bookname);
                    $(o).parent().prev().prev().prev().text(data.author);
                    $(o).parent().prev().prev().text(data.num);
                    $(o).parent().prev().text(data.something);
                    isflag = false;
                },
                error: function () {
                    isflag = false;
                    alert("修改失败");
                }
            })
        }
    })
}
