<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang chủ</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.13.2/themes/smoothness/jquery-ui.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css">
    <style>
        /* General Reset and Typography */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html, body {
            height: 100%;
            font-family: 'Segoe UI', Roboto, sans-serif;
            background-color: #f1f3f5;
            color: #333;
            line-height: 1.5;
        }

        /* Main Layout */
        .main-container {
            display: flex;
            min-height: 100vh;
            width: 100%;
        }

        /* Sidebar */
        .sidebar {
            width: 250px;
            background: linear-gradient(180deg, #1e3a8a 0%, #3b82f6 100%);
            color: #fff;
            padding: 20px 0;
            position: fixed;
            height: 100%;
            top: 0;
            left: 0;
            transition: width 0.3s ease;
            z-index: 1000;
        }

        .sidebar.collapsed {
            width: 60px;
        }

        .sidebar.collapsed .menu-text,
        .sidebar.collapsed .sidebar-shortcuts-mini {
            display: none;
        }

        .sidebar-toggle {
            background: #2563eb;
            padding: 12px;
            text-align: center;
            cursor: pointer;
            transition: background 0.2s;
        }

        .sidebar-toggle:hover {
            background: #3b82f6;
        }

        /* Sidebar Shortcuts */
        .sidebar-shortcuts {
            padding: 15px 0;
            text-align: center;
        }

        .sidebar-shortcuts-large {
            display: flex;
            justify-content: center;
            gap: 10px;
        }

        .sidebar-shortcuts-large .btn {
            width: 45px;
            height: 45px;
            border-radius: 8px;
            display: flex;
            align-items: center;
            justify-content: center;
            transition: transform 0.2s, box-shadow 0.2s;
        }

        .sidebar-shortcuts-large .btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .sidebar-shortcuts-mini {
            margin-top: 10px;
            display: flex;
            justify-content: center;
            gap: 6px;
        }

        .sidebar-shortcuts-mini .btn {
            width: 10px;
            height: 10px;
            border-radius: 50%;
        }

        /* Navigation Menu */
        .nav-list {
            list-style: none;
            padding: 0;
            margin-top: 20px;
        }

        .nav-list li {
            margin: 5px 0;
        }

        .nav-list a {
            display: flex;
            align-items: center;
            padding: 12px 20px;
            color: #fff;
            text-decoration: none;
            transition: background 0.2s, padding-left 0.2s;
        }

        .sidebar:before {
            width: 250px;
            background: linear-gradient(180deg, #1e3a8a 0%, #3b82f6 100%);
            color: #fff;
            padding: 20px 0;
            position: fixed;
            height: 100%;
            top: 0;
            left: 0;
            transition: width 0.3s ease;
            z-index: 1000;
        }

        .nav-list a:hover {
            background: #3b82f6;
            padding-left: 25px;
        }

        .nav-list .menu-icon, .nav-list svg {
            margin-right: 10px;
            font-size: 16px;
        }

        .nav-list .submenu {
            padding-left: 30px;
            background: rgba(0, 0, 0, 0.1);
        }

        .nav-list .submenu a {
            padding: 8px 0;
            font-size: 0.9em;
            color: #e0e7ff;
        }

        .nav-list .submenu a:hover {
            color: #fff;
            background: none;
            padding-left: 10px;
        }

        /* Main Content */
        .main-content {
            margin-left: 250px;
            flex: 1;
            padding: 20px;
            transition: margin-left 0.3s ease;
            width: calc(100% - 250px);
        }

        .main-content.collapsed {
            margin-left: 60px;
            width: calc(100% - 60px);
        }

        .main-content-inner {
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            overflow-x: auto;
        }

        /* Breadcrumbs */
        .breadcrumbs {
            background: #fff;
            padding: 10px 15px;
            border-bottom: 1px solid #e5e7eb;
            margin-bottom: 20px;
            border-radius: 6px;
        }

        .breadcrumb {
            display: flex;
            align-items: center;
            list-style: none;
            margin: 0;
            padding: 0;
        }

        .breadcrumb li a {
            color: #2563eb;
            text-decoration: none;
        }

        .breadcrumb li a:hover {
            text-decoration: underline;
        }

        /* Table Styling */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        table th, table td {
            padding: 12px;
            text-align: left;
            border: 1px solid #e5e7eb;
        }

        table th {
            background-color: #f9fafb;
            font-weight: 600;
        }

        table tr:nth-child(even) {
            background-color: #f1f3f5;
        }

        table tr:hover {
            background-color: #e5e7eb;
        }

        /* Button Styles */
        .btn-success {
            background-color: #16a34a !important;
            border-color: #16a34a !important;
        }

        .btn-info {
            background-color: #0284c7 !important;
            border-color: #0284c7 !important;
        }

        .btn-warning {
            background-color: #d97706 !important;
            border-color: #d97706 !important;
        }

        .btn-danger {
            background-color: #dc2626 !important;
            border-color: #dc2626 !important;
        }

        /* SweetAlert2 Overrides */
        .swal2-popup {
            border-radius: 8px !important;
            font-family: 'Segoe UI', sans-serif !important;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .sidebar {
                transform: translateX(-250px);
            }

            .sidebar.active {
                transform: translateX(0);
            }

            .main-content {
                margin-left: 0;
                width: 100%;
            }

            .main-content.collapsed {
                margin-left: 0;
            }

            .sidebar-shortcuts-large .btn {
                width: 40px;
                height: 40px;
            }

            .main-content-inner {
                margin: 10px;
            }

            table {
                font-size: 0.9em;
            }
        }
    </style>
</head>
<body>
<div class="main-container">
    <div class="sidebar" id="sidebar">
        <div class="sidebar-toggle" onclick="toggleSidebar()">
            <i class="fa fa-bars"></i>
        </div>
        <div class="sidebar-shortcuts">
            <div class="sidebar-shortcuts-large">
                <a href="/trang-chu">
                    <button class="btn btn-success" title="Trang chủ">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-door-open" viewBox="0 0 16 16">
                            <path d="M8.5 10c-.276 0-.5-.448-.5-1s.224-1 .5-1 .5.448.5 1-.224 1-.5 1z"/>
                            <path d="M10.828.122A.5.5 0 0 1 11 .5V1h.5A1.5 1.5 0 0 1 13 2.5V15h1.5a.5.5 0 0 1 0 1h-13a.5.5 0 0 1 0-1H3V1.5a.5.5 0 0 1 .43-.495l7-1a.5.5 0 0 1 .398.117zM11.5 2H11v13h1V2.5a.5.5 0 0 0-.5-.5zM4 1.934V15h6V1.077l-6 .857z"/>
                        </svg>
                    </button>
                </a>
                <button class="btn btn-info">
                    <i class="fa fa-pencil"></i>
                </button>
                <button class="btn btn-warning">
                    <i class="fa fa-users"></i>
                </button>
                <button class="btn btn-danger">
                    <i class="fa fa-cogs"></i>
                </button>
            </div>
            <div class="sidebar-shortcuts-mini">
                <span class="btn btn-success"></span>
                <span class="btn btn-info"></span>
                <span class="btn btn-warning"></span>
                <span class="btn btn-danger"></span>
            </div>
        </div>
        <ul class="nav nav-list">
            <li>
                <a href="/admin/building-list" class="dropdown-toggle">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-building-fill" viewBox="0 0 16 16">
                        <path d="M3 0a1 1 0 0 0-1 1v14a1 1 0 0 0 1 1h3v-3.5a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 .5.5V16h3a1 1 0 0 0 1-1V1a1 1 0 0 0-1-1H3Zm1 2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1Zm3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1Zm3.5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1a.5.5 0 0 1 .5-.5ZM4 5.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1ZM7.5 5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1a.5.5 0 0 1 .5-.5Zm2.5.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1ZM4.5 8h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1a.5.5 0 0 1 .5-.5Zm2.5.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1Zm3.5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1a.5.5 0 0 1 .5-.5Z"/>
                    </svg>
                    <span class="menu-text">Quản Lý Tòa Nhà</span>
                </a>
                <ul class="submenu">
<%--                    <li>--%>
<%--                        <a href="/admin/building-list" onclick="loadPage(event, '/admin/building-list')">--%>
<%--                            <i class="menu-icon fa fa-caret-right"></i>--%>
<%--                            Danh sách tòa nhà--%>
<%--                        </a>--%>
<%--                    </li>--%>
<%--                    <li>--%>
<%--                        <a href="/admin/building-edit" onclick="loadPage(event, '/admin/building-edit')">--%>
<%--                            <i class="menu-icon fa fa-caret-right"></i>--%>
<%--                            Sửa toà nhà--%>
<%--                        </a>--%>
<%--                    </li>--%>
                </ul>
            </li>
            <li>
                <a href="/admin/user-list" class="dropdown-toggle">
                    <i class="menu-icon fa fa-users"></i>
                    <span class="menu-text">Quản Lý Tài Khoản</span>
                </a>
<%--                <ul class="submenu">--%>
<%--                    <li>--%>
<%--                        <a href="/admin/user-list" onclick="loadPage(event, '/admin/user-list')">--%>
<%--                            <i class="menu-icon fa fa-caret-right"></i>--%>
<%--                            Danh sách tài khoản--%>
<%--                        </a>--%>
<%--                    </li>--%>
<%--                </ul>--%>
            </li>
            <li>
                <a href="#" class="dropdown-toggle">
                    <i class="menu-icon fa fa-users"></i>
                    <span class="menu-text">Quản Lý Khách Hàng</span>
                </a>
                <ul class="submenu">
<%--                    <li>--%>
<%--                        <a href="/admin/customer-list">--%>
<%--                            <i class="menu-icon fa fa-caret-right"></i>--%>
<%--                            Danh sách khách hàng--%>
<%--                        </a>--%>
<%--                    </li>--%>
                </ul>
            </li>
        </ul>
    </div>
    <div class="main-content" id="main-content">
        <div class="main-content-inner">
            <div class="breadcrumbs">
                <ul class="breadcrumb">
                    <li>
                        <i class="fa fa-home"></i>
                        <a href="/admin/home">Trang chủ</a>
                    </li>
                </ul>
            </div>
            <div class="content" id="content">
                <p>Chọn một trang từ menu.</p>
            </div>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.min.js"></script>
<script>
    function toggleSidebar() {
        const sidebar = document.getElementById('sidebar');
        const mainContent = document.getElementById('main-content');
        sidebar.classList.toggle('collapsed');
        mainContent.classList.toggle('collapsed');
        // Ensure sidebar stays visible in mobile view
        if (window.innerWidth <= 768) {
            sidebar.classList.toggle('active');
        }
    }

    function loadPage(event, pageUrl) {
        event.preventDefault();
        // Prevent sidebar from collapsing on link click
        const sidebar = document.getElementById('sidebar');
        if (sidebar.classList.contains('collapsed')) {
            sidebar.classList.remove('collapsed');
            document.getElementById('main-content').classList.remove('collapsed');
        }
        fetch(pageUrl)
            .then(response => response.text())
            .then(html => {
                document.getElementById('content').innerHTML = html;
                // Ensure tables are responsive after loading
                const tables = document.querySelectorAll('table');
                tables.forEach(table => {
                    table.style.width = '100%';
                    table.style.maxWidth = '100%';
                });
            })
            .catch(err => {
                document.getElementById('content').innerHTML = '<p>Lỗi tải trang.</p>';
            });
    }

    // Initialize Ace settings
    try { ace.settings.loadState('sidebar'); } catch (e) {}
</script>
</body>
</html>