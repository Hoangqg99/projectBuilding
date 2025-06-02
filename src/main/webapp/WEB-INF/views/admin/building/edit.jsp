<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<c:url var="buildingAPI" value="/api/building"></c:url>
<html>
<head>
    <!-- bootstrap & fontawesome -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
        <link rel="stylesheet"
            href="assets/font-awesome/4.2.0/css/font-awesome.min.css" />

        <!-- page specific plugin styles -->

        <!-- text fonts -->
        <link rel="stylesheet" href="assets/fonts/fonts.googleapis.com.css" />

        <!-- ace styles -->
        <link rel="stylesheet" href="assets/css/ace.min.css"
            class="ace-main-stylesheet" id="main-ace-style" />
    <title>Thêm tòa nhà</title>
</head>
<body>
<div class="main-content" id="main-container">
    <div class="main-content">
        <div class="main-content-inner">
            <div class="breadcrumbs" id="breadcrumbs">
                <script type="text/javascript">
                    try { ace.settings.check('breadcrumbs', 'fixed') } catch (e) { }
                </script>

                <ul class="breadcrumb">
                    <li>
                        <i class="ace-icon fa fa-home home-icon"></i>
                        <a href="#">Home</a>
                    </li>
                    <li class="active">Dashboard</li>
                </ul><!-- /.breadcrumb -->
            </div>

            <div class="page-content">
                <div class="page-header">
                    <h1>
                        Sửa hoặc thêm tòa nhà
                        <small>
                            <i class="ace-icon fa fa-angle-double-right"></i>
                            overview &amp; stats
                        </small>
                    </h1>
                </div><!-- /.page-header -->

                <div class="row" style="font-family: Times New Roman, Times, serif;">
                    <form:form modelAttribute="buildingEdit" id="listForm" method="GET">
                        <div class="col-xs-12">
                            <form action="" class="form-horizontal" role="form">
                                <div class="form-group">
                                    <label class="col-xs-3">Tên tòa nhà</label>
                                    <div class="col-xs-9">
                                        <form:input class="form-control" path="name" />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-xs-3">Quận</label>
                                    <div class="col-xs-2">
                                        <form:select class="form-control" path="district">
                                            <form:option value="">---Chọn quận---</form:option>
                                            <form:options items="${districts}"></form:options>
                                        </form:select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-xs-3">Phường</label>
                                    <div class="col-xs-9">
                                        <%--<input class="form-control" type="text" name="ward" id="ward" value="">--%>
                                        <form:input class="form-control" path="ward" />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-xs-3">Đường</label>
                                    <div class="col-xs-9">
                                        <%--<input class="form-control" type="text" name="street" id="street" value="">--%>
                                        <form:input class="form-control" path="street" />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-xs-3">Kết cấu</label>
                                    <div class="col-xs-9">
                                        <%--<input class="form-control" type="text" name="structure" id="structure" value="">--%>
                                        <form:input class="form-control" path="structure"/>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-xs-3">Số tầng hầm</label>
                                    <div class="col-xs-9">
                                        <%--<input class="form-control" type="number" name="numberofbasement" id="numberofbasement" value=""></div>--%>
                                        <form:input class="form-control" path="numberOfBasement"/>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-xs-3">Diện tích sàn</label>
                                    <div class="col-xs-9">
                                        <%--<input class="form-control" type="number" name="floorArea" id="floorarea" value="">--%>
                                        <form:input class="form-control" path="floorArea"/>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-xs-3">Hướng</label>
                                    <div class="col-xs-9">
                                        <%--<input class="form-control" type="text" name="direction" id="direction" value="">--%>
                                        <form:input class="form-control" path="direction"/>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-xs-3">Hạng</label>
                                    <div class="col-xs-9">
                                        <%--<input class="form-control" type="text" name="level" id="level" value="">--%>
                                        <form:input class="form-control" path="level"/>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-xs-3">Diện tích thuê</label>
                                    <div class="col-xs-9">
                                        <%--<input class="form-control" type="text" name="rentarea" id="rentarea" value="">--%>
                                        <form:input class="form-control" path="rentArea"/>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-xs-3">Giá thuê</label>
                                    <div class="col-xs-9">
                                        <%--<input class="form-control" type="number" name="rentprice" id="rentprice" value="">--%>
                                        <form:input class="form-control" path="rentPrice"/>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-xs-3">Mô tả giá</label>
                                    <div class="col-xs-9">
                                        <%--<input class="form-control" type="text" name="rentpricedescription" id="rentpricedescription" value=""></div>--%>
                                        <form:input class="form-control" path="rentPriceDescription"/>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-xs-3">Phí dịch vụ</label>
                                    <div class="col-xs-9">
                                        <%--<input class="form-control" type="text" name="" id="serviceFee" value="">--%>
                                        <form:input class="form-control" path="serviceFee"/>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-xs-3">Phí ô tô</label>
                                    <div class="col-xs-9">
                                        <%--<input class="form-control" type="text" name="" id="carFee" value="">--%>
                                        <form:input class="form-control" path="carFee"/>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-xs-3">Phí mô tô</label>
                                    <div class="col-xs-9">
                                        <%--<input class="form-control" type="text" name="" id="motorbikeFee" value="">--%>
                                        <form:input class="form-control" path="motorbikeFee"/>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-xs-3">Phí ngoài giờ</label>
                                    <div class="col-xs-9">
                                        <%--<input class="form-control" type="text" name="" id="extraFee" value="">--%>
                                        <form:input class="form-control" path="extraFee"/>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-xs-3">Tiền điện</label>
                                    <div class="col-xs-9">
                                        <%--<input class="form-control" type="text" name="" id="electricFee" value="">--%>
                                        <form:input class="form-control" path="electricFee"/>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-xs-3">Đặt cọc</label>
                                    <div class="col-xs-9">
                                        <%--<input class="form-control" type="text" name="" id="deposit" value="">--%>
                                        <form:input class="form-control" path="deposit"/>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-xs-3">Thanh toán</label>
                                    <div class="col-xs-9">
                                        <%--<input class="form-control" type="text" name="" id="payment" value="">--%>
                                        <form:input class="form-control" path="payment"/>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-xs-3">Thời hạn thuê</label>
                                    <div class="col-xs-9">
                                        <%--<input class="form-control" type="text" name="" id="time" value="">--%>
                                        <form:input class="form-control" path="rentTime"/>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-xs-3">Thời gian trang trí</label>
                                    <div class="col-xs-9">
                                        <%--<input class="form-control" type="text" name="" id="decorationTime" value="">--%>
                                        <form:input class="form-control" path="decorationTime"/>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-xs-3">Tên quản lý</label>
                                    <div class="col-xs-9">
                                        <form:input class="form-control" path="managerName" />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-xs-3">SĐT quản lí</label>
                                    <div class="col-xs-9">
                                        <%--<input class="form-control" type="text" name="" id="managerPhone" value="">--%>
                                        <form:input class="form-control" path="managerPhone"/>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-xs-3">Phí môi giới</label>
                                    <div class="col-xs-9">
                                        <%--<input class="form-control" type="text" name="" id="brokerageFee" value="">--%>
                                        <form:input class="form-control" path="brokerageFee"/>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-xs-3">Loại tòa nhà</label>
                                    <div class="col-xs-9">
                                        <form:checkboxes path="typeCode" items="${typeCodes}"></form:checkboxes>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-xs-3">Ghi chú</label>
                                    <div class="col-xs-9">
                                        <%--<input class="form-control" type="text" name="" id="note" value="">--%>
                                        <form:input class="form-control" path="note"/>
                                    </div>
                                </div>

                                <!-- <div class="form-group">
                                    <label class="col-sm-3 no-padding-right">Hình đại diện</label>
                                    <input class="col-sm-3 no-padding-right" type="file" id="uploadImage"/>
                                    <div class="col-sm-9">
<%--                                        <c:if test="${not empty buildingEdit.image}">--%>
<%--                                            <c:set var="imagePath" value="/repository${buildingEdit.image}"/>--%>
<%--                                            <img src="${imagePath}" id="viewImage" alt="" width="300px" height="300px" style="margin-top: 50px">--%>
<%--                                        </c:if>--%>
<%--                                        <c:if test="${empty buildingEdit.image}">--%>
<%--                                            <img src="${pageContext.request.contextPath}/admin/imagey" alt="" id="viewImage" width="300px" height="300px">--%>
<%--                                        </c:if>--%>
                                    </div>
                                </div> -->

                                <div class="form-group">
                                    <label class="col-xs-3"></label>
                                    <div class="col-xs-9">

                                        <c:if test="${not empty buildingEdit.id}">
                                            <button type="button" class="btn btn-primary" id="btnAddOrUpdateBuilding">Cập nhật tòa nhà</button>
                                            <button type="button" class="btn btn-primary" id="btnCancel">Hủy thao tác</button>
                                        </c:if>

                                        <c:if test="${empty buildingEdit.id}">
                                            <button type="button" class="btn btn-primary" id="btnAddOrUpdateBuilding">Thêm mới</button>
                                            <button type="button" class="btn btn-primary" id="btnCancel">Hủy thao tác</button>
                                        </c:if>
                                        <img src="${pageContext.request.contextPath}/img/loading.gif" style="display: none; height: 100px" id="loading_image">
                                    </div>
                                </div>

                                <form:hidden path="id" id="buildingId"/>
                            </form>
                        </div>
                    </form:form>

                </div>
            </div><!-- /.page-content -->
        </div>
    </div><!-- /.main-content -->
</div><!-- /.main-container -->

<script src="assets/js/jquery.2.1.1.min.js"></script>
<!-- <script src="assets/js/jquery.1.11.1.min.js"></script> -->
<script type="text/javascript">
    window.jQuery || document.write("<script src='assets/js/jquery.min.js'>"+"<"+"/script>");
</script>
<script type="text/javascript">
    window.jQuery || document.write("<script src='assets/js/jquery1x.min.js'>"+"<"+"/script>");
</script>
<script type="text/javascript">
    if('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
</script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/excanvas.min.js"></script>
<script src="assets/js/jquery-ui.custom.min.js"></script>
<script src="assets/js/jquery.ui.touch-punch.min.js"></script>
<script src="assets/js/jquery.easypiechart.min.js"></script>
<script src="assets/js/jquery.sparkline.min.js"></script>
<script src="assets/js/jquery.flot.min.js"></script>
<script src="assets/js/jquery.flot.pie.min.js"></script>
<script src="assets/js/jquery.flot.resize.min.js"></script>

<!-- ace scripts -->
<script src="assets/js/ace-elements.min.js"></script>
<script src="assets/js/ace.min.js"></script>

<script>

    $('#btnAddOrUpdateBuilding').click(function () {
        var data = {};
        var typeCode = [];

        var formData = $('#listForm').serializeArray();
        $.each(formData, function (i, v) {
            if (v.name !== 'typeCode') {
                data["" + v.name + ""] = v.value;
            }

            else {
                typeCode.push(v.value);
            }
        });
        data['typeCode'] = typeCode;
        if(typeCode !== '')
        {
            addOrUpdateBuilding(data);
        }

        else
        {
            window.location.href="<c:url value = '/admin/building-list?typeCode=require'/>";
        }
    });


    function addOrUpdateBuilding(data)
    {
        $.ajax({
            type: "POST",
            url: "${buildingAPI}",
            data: JSON.stringify(data),
            contentType: "application/json",
            dataType: "JSON",
            success: function (response)
            {
                window.location.href="<c:url value = '/admin/building-list?message=success'/>";
                alert("Thêm tòa nhà thành công!!!");
            },

            error: function (response) {
                console.log("failed");
                window.location.href="<c:url value = '/admin/building-edit?message=error'/>";
            }
        })
    }


    $('#btnCancel').click(function () {
        window.location.href="<c:url value = '/admin/building-list'/>";
    });

    function assignmentBuilding(buildingId) {
        $('#assignmentBuildingModal').modal();
        $('buildingId').val();
    }

    $('#btnassignmentBuilding').click(function (e) {
        e.preventDefault();
        var data = {};
        data['buildingId'] = $('buildingId').val();
        var staffs = $('#staffList').find('tbody input[type = checkbox]:checked').map(function () {
            return $(this).val();
        }).get();
        data['staffs'] = staffs;
        console.log("ok");
    })
</script>




<%--<script>--%>

<%--    // var imageBase64 = '';--%>
<%--    // var imageName = '';--%>

<%--    // function openImage(input, imageView) {--%>
<%--    //     if (input.files && input.files[0]) {--%>
<%--    //         var reader = new FileReader();--%>
<%--    //         reader.onload = function (e) {--%>
<%--    //             $('#' +imageView).attr('src', reader.result);--%>
<%--    //         }--%>
<%--    //         reader.readAsDataURL(input.files[0]);--%>
<%--    //     }--%>
<%--    // }--%>

<%--    $('#btnAddOrUpdateBuilding').click(function () {--%>
<%--        var data = {};--%>
<%--        var typeCode = [];--%>

<%--        var formData = $('#listForm').serializeArray();--%>
<%--        $.each(formData, function (i, v) {--%>
<%--            if (v.name !== 'typeCode') {--%>
<%--                data["" + v.name + ""] = v.value;--%>
<%--            } else {--%>
<%--                typeCode.push(v.value);--%>
<%--            }--%>
<%--        });--%>
<%--        data['typeCode'] = typeCode;--%>

<%--        if(typeCode.length > 0) {--%>
<%--            addOrUpdateBuilding(data);--%>
<%--        } else {--%>
<%--            alert('Vui lòng chọn ít nhất một loại tòa nhà');--%>
<%--            return;--%>
<%--        }--%>
<%--    });--%>

<%--    function addOrUpdateBuilding(data) {--%>
<%--        $('#loading_image').show();--%>
<%--        $.ajax({--%>
<%--            type: "POST",--%>
<%--            url: "${buildingAPI}",--%>
<%--            data: JSON.stringify(data),--%>
<%--            contentType: "application/json",--%>
<%--            dataType: "JSON",--%>
<%--            success: function (response) {--%>
<%--                // $('#loading_image').hide();--%>
<%--                if(response.id) {--%>
<%--                    alert('Thao tác thành công!');--%>
<%--                    window.location.href = '<c:url value="/admin/building-list"/>';--%>
<%--                } else {--%>
<%--                    alert('Có lỗi xảy ra!');--%>
<%--                }--%>
<%--            },--%>
<%--            error: function (response) {--%>
<%--                // $('#loading_image').hide();--%>
<%--                console.log("Error:", response);--%>
<%--                alert('Có lỗi xảy ra: ' + (response.responseJSON?.message || 'Unknown error'));--%>
<%--            }--%>
<%--        });--%>
<%--    }--%>

<%--    // $('#uploadImage').change(function (event) {--%>
<%--    //     var reader = new FileReader();--%>
<%--    //     var file = $(this)[0].files[0];--%>
<%--    //     reader.onload = function(e){--%>
<%--    //         imageBase64 = e.target.result;--%>
<%--    //         imageName = file.name; // ten hinh khong dau, khoang cach. Dat theo format sau: a-b-c--%>
<%--    //     };--%>
<%--    //     reader.readAsDataURL(file);--%>
<%--    //     openImage(this, "viewImage");--%>
<%--    // });--%>





<%--    $('#btnCancel').click(function () {--%>
<%--        window.location.href="<c:url value = '/admin/building-list'/>";--%>
<%--    });--%>

<%--    function assignmentBuilding(buildingId) {--%>
<%--        $('#assignmentBuildingModal').modal();--%>
<%--        $('buildingId').val();--%>
<%--    }--%>

<%--    $('#btnassignmentBuilding').click(function (e) {--%>
<%--        e.preventDefault();--%>
<%--        var data = {};--%>
<%--        data['buildingId'] = $('buildingId').val();--%>
<%--        var staffs = $('#staffList').find('tbody input[type = checkbox]:checked').map(function () {--%>
<%--            return $(this).val();--%>
<%--        }).get();--%>
<%--        data['staffs'] = staffs;--%>
<%--        console.log("ok");--%>
<%--    })--%>
<%--</script>--%>

</body>
</html>
