<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Carousel.ascx.cs" Inherits="Gadgets_Carousel" %>
<div id="myCarousel" class="carousel slide">
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
        <li data-target="#myCarousel" data-slide-to="3"></li>
        <li data-target="#myCarousel" data-slide-to="4"></li>
    </ol>
    <!-- Carousel items -->
    <div class="carousel-inner">
        <div class="active item">
            <img src="../Images/Slider/1.jpg" />
            <div class="carousel-caption">
            </div>
        </div>
        <div class="item">
            <img src="../Images/Slider/2.jpg" />
            <div class="carousel-caption">
            </div>
        </div>
        <div class="item">
            <img src="../Images/Slider/3.jpg" />
            <div class="carousel-caption">
            </div>
        </div>
        <div class="item">
            <img src="../Images/Slider/4.jpg" />
            <div class="carousel-caption">
            </div>
        </div>
        <div class="item">
            <img src="../Images/Slider/5.jpg" />
            <div class="carousel-caption">
            </div>
        </div>
    </div>
    <!-- Carousel nav -->
    <a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
    <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
</div>
<script src="../Javascript/jquery-1.9.1.min.js"></script>
<script src="../Javascript/bootstrap.min.js"></script>
<script type="text/javascript">
    $('.carousel').carousel({
        interval: 5000
    })
</script>
