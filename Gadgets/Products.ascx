<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Products.ascx.cs" Inherits="Gadgets_Products" %>
<ul class="nav nav-tabs" id="myTab">
    <li class="active"><a href="#overview" data-toggle="tab">Overview</a></li>
    <li><a href="#compare" data-toggle="tab">Compare</a></li>
    <li><a href="#why" data-toggle="tab">Why this product</a></li>
    <li><a href="#migrate" data-toggle="tab">Migrate</a></li>
    <li><a href="#management" data-toggle="tab">Management</a></li>
    <li><a href="#scripting" data-toggle="tab">Scripting</a></li>
</ul>
<div class="tab-content">
    <div class="tab-pane" id="overview">
        <div class="row-fluid">
            <div class="span8">Description</div>
            <div class="span4">Image</div>
        </div>
    </div>
    <div class="tab-pane" id="compare">Compare</div>
    <div class="tab-pane" id="why">Why this?</div>
    <div class="tab-pane" id="migrate">...</div>
    <div class="tab-pane" id="management">...</div>
    <div class="tab-pane" id="scripting">...</div>
</div>
<script src="../Javascript/jquery-1.9.1.min.js"></script>
<script src="../Javascript/bootstrap.min.js"></script>
<script type="text/javascript">
    $(function () {
        $("#myTab a:first").tab("show");
        $("#myTab a").click(function (e) {
            e.preventDefault();
            $(this).tab('show');
        });
    })
</script>
