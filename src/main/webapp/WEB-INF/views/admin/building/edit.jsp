<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<c:url var="buildingAPI" value="/api/building" />
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
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
                                <a href="/admin/home">Home</a>
                            </li>
                            <li class="active">Dashboard</li>
                        </ul>
                    </div>

                    <div class="page-content">
                        <div class="page-header">
                            <h1>
                                <small><i
                                        class="ace-icon fa fa-angle-double-right"></i>
                                    overview & stats</small>
                            </h1>
                        </div>

                        <div class="row"
                            style="font-family: Times New Roman, Times, serif;">
                            <form:form modelAttribute="buildingEdit"
                                id="listForm" method="GET"
                                class="form-horizontal" role="form">
                                <div class="col-xs-12">
                                    <div class="form-group">
                                        <label class="col-xs-3">Tên tòa
                                            nhà</label>
                                        <div class="col-xs-9">
                                            <form:input class="form-control"
                                                name="name" path="name" value=""/>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-xs-3">Quận</label>
                                        <div class="col-xs-2">
                                            <form:select class="form-control" path="district">
                                                        <option value="">---Chọn quận---</option>
                                                        <form:options items="${districts}"/>
                                            </form:select>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label
                                            class="col-xs-3">Phường</label>
                                        <div class="col-xs-9">
                                            <input class="form-control"
                                                name="ward" value="">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label
                                            class="col-xs-3">Đường</label>
                                        <div class="col-xs-9">
                                            <input class="form-control"
                                                name="street" value="">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-xs-3">Kết
                                            cấu</label>
                                        <div class="col-xs-9">
                                            <input class="form-control"
                                                name="structure" value="">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-xs-3">Số tầng
                                            hầm</label>
                                        <div class="col-xs-9">
                                            <input class="form-control"
                                                type="number"
                                                name="numberOfBasement" value="">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-xs-3">Diện tích
                                            sàn</label>
                                        <div class="col-xs-9">
                                            <input class="form-control"
                                                type="number"
                                                name="floorArea" value="">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label
                                            class="col-xs-3">Hướng</label>
                                        <div class="col-xs-9">
                                            <input class="form-control"
                                                name="direction" value="">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-xs-3">Hạng</label>
                                        <div class="col-xs-9">
                                            <input class="form-control"
                                                name="level" value="">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-xs-3">Diện tích
                                            thuê</label>
                                        <div class="col-xs-9">
                                            <input class="form-control"
                                                name="rentArea" value="">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-xs-3">Giá
                                            thuê</label>
                                        <div class="col-xs-9">
                                            <input class="form-control"
                                                type="number"
                                                name="rentPrice" value="">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-xs-3">Mô tả
                                            giá</label>
                                        <div class="col-xs-9">
                                            <input class="form-control"
                                                name="rentPriceDescription" value="">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-xs-3">Phí dịch
                                            vụ</label>
                                        <div class="col-xs-9">
                                            <input class="form-control"
                                                name="serviceFee" value="">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-xs-3">Phí ô
                                            tô</label>
                                        <div class="col-xs-9">
                                            <input class="form-control"
                                                name="carFee" value="">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-xs-3">Phí mô
                                            tô</label>
                                        <div class="col-xs-9">
                                            <input class="form-control"
                                                name="motorbikeFee" value="">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-xs-3">Phí ngoài
                                            giờ</label>
                                        <div class="col-xs-9">
                                            <input class="form-control"
                                                name="extraFee" value="">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-xs-3">Tiền
                                            điện</label>
                                        <div class="col-xs-9">
                                            <input class="form-control"
                                                name="electricFee" value="">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-xs-3">Đặt
                                            cọc</label>
                                        <div class="col-xs-9">
                                            <input class="form-control"
                                                name="deposit" value="">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-xs-3">Thanh
                                            toán</label>
                                        <div class="col-xs-9">
                                            <input class="form-control"
                                                name="payment" value="">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-xs-3">Thời hạn
                                            thuê</label>
                                        <div class="col-xs-9">
                                            <input class="form-control"
                                                name="rentTime" value="">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-xs-3">Thời gian
                                            trang trí</label>
                                        <div class="col-xs-9">
                                            <input class="form-control"
                                                name="decorationTime" value="">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-xs-3">Tên quản
                                            lý</label>
                                        <div class="col-xs-9">
                                            <input class="form-control"
                                                name="managerName" value="">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-xs-3">SĐT quản
                                            lí</label>
                                        <div class="col-xs-9">
                                            <input class="form-control"
                                                name="managerPhone" value="">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-xs-3">Phí môi
                                            giới</label>
                                        <div class="col-xs-9">
                                            <input class="form-control"
                                                name="brokerageFee" value="">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-xs-3">Loại tòa
                                            nhà</label>
                                        <div class="col-xs-9">
                                             <form:checkboxes items="${typeCodes}" path="typeCode"/>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-xs-3">Ghi
                                            chú</label>
                                        <div class="col-xs-9">
                                            <input class="form-control"
                                                name="note" value="">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label
                                            class="col-sm-3 no-padding-right">Hình
                                            đại diện</label>
                                        <input
                                            class="col-sm-3 no-padding-right"
                                            type="file" id="uploadImage">
                                        <div class="col-sm-9">
                                            <img src="#" alt id="viewImage"
                                                width="300px"
                                                height="300px">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-xs-3"></label>
                                        <div class="col-xs-9">
                                            <c:if
                                                test="${not empty buildingEdit.id}">
                                                <button type="button" class="btn btn-primary"
                                                    id="btnAddOrUpdateBuilding">Câp
                                                    nhật toà nhà</button>
                                                <button type="button" class="btn btn-primary"
                                                    id="btnCancel">Hủy thao
                                                    tác</button>
                                            </c:if>
                                            <c:if
                                                test="${empty buildingEdit.id}">
                                                <button type="button" class="btn btn-primary" id="btnAddOrUpdateBuilding">Thêm mới</button>
                                                <button type="button" class="btn btn-primary" id="btnCancel">Hủy thao tác</button>
                                            </c:if>
                                        </div>
                                    </div>

                                    <%-- <input type="hidden" name="id"
                                        id="buildingId">--%>
                                    <form:hidden path="id"
                                        id="buildingId" />
                                </div>
                            </form:form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script>
    $('#btnAddOrUpdateBuilding').click(function () {
        var data = {};
        var typeCode = [];
        var formData = $('#listForm').serializeArray();
        $.each(formData, function (i, v) {
            if (v.name !== 'typeCode') {
                data[v.name] = v.value;
            } else {
                typeCode.push(v.value);
            }
        });
        // if (imageBase64 !== '') {
        //     data['imageBase64'] = imageBase64;
        //     data['imageName'] = imageName;
        // }
        data['typeCode'] = typeCode;
        if (typeCode.length > 0) {
            addOrUpdateBuilding(data);
        } else {
            window.location.href = "/admin/building-list?typeCode=require";
        }
    });
</script>
        <script>
    var imageBase64 = '';
    var imageName = '';

    function openImage(input, imageView) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                $('#' + imageView).attr('src', e.target.result);
            };
            reader.readAsDataURL(input.files[0]);
        }
    }

    // $('#uploadImage').change(function (event) {
    //     var reader = new FileReader();
    //     var file = $(this)[0].files[0];
    //     reader.onload = function (e) {
    //         imageBase64 = e.target.result;
    //         imageName = file.name;
    //     };
    //     reader.readAsDataURL(file);
    //     openImage(this, "viewImage");
    // });

    function addOrUpdateBuilding(data) {
        $.ajax({
            type: "POST",
            url: "${buildingAPI}",
            data: JSON.stringify(data),
            contentType: "application/json",
            dataType: "JSON",
            success: function (response) {
                window.location.href = "/admin/building-list?message=success";
                alert("Thêm tòa nhà thành công!!!");
            },
            error: function (response) {
                console.log("failed");
                window.location.href = "/admin/building-edit?message=error";
            }
        });
    }

    $('#btnCancel').click(function () {
        window.location.href = "/admin/building-list";
    });

    function assignmentBuilding(buildingId) {
        $('#assignmentBuildingModal').modal();
        $('#buildingId').val(buildingId);
    }

    $('#btnassignmentBuilding').click(function (e) {
        e.preventDefault();
        var data = {};
        data['buildingId'] = $('#buildingId').val();
        var staffs = $('#staffList').find('tbody input[type=checkbox]:checked').map(function () {
            return $(this).val();
        }).get();
        data['staffs'] = staffs;
        console.log("ok");
    });
</script>
        <!-- page specific plugin scripts -->

        <!--[if lte IE 8]>
<script src="assets/js/excanvas.min.js"></script>
<![endif]-->
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
    </body>
</html>