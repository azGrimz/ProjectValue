<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ProjectValue</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/estilo.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">        
    </head>
    <body>
        <%@include file="WEB-INF/jspf/navbar.jspf"%>
        <div class="header">
            <h1 class="w3-margin w3-wide ">Organize seus projetos</h1>
            <h1 class="w3-margin w3-wide ">E deixe seu portifólio</h1>
            <h1 class="w3-margin w3-wide">muito mais atraente!</h1>
            <!--<img src="https://unileao.edu.br/blog/wp-content/uploads/2018/09/remove-online-distractions.jpg"  width="300" height="260" id="imgpos">-->
            <img src="https://img.freepik.com/vetores-gratis/pagina-inicial-do-web-design-dos-desenhos-animados_52683-70880.jpg?q=10&h=200"   id="imgpos">
        </div>

        <div class="header1 row g-5"><br><br>
            <h1 class="w3-margin w3-wide ">Navegue pelo nosso portifólio</h1>
            <br>
            <h1 class="w3-margin w3-wide ">E conheça nossos projetos</h1>
        </div>

        <section>
            <div class="body">
                <div id="carouselExampleCaptions" class="carousel carousel-dark slide">
                    <div class="carousel-indicators">
                        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
                        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
                    </div>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="https://i.ytimg.com/vi/-qIKXW6fqF8/maxresdefault.jpg" class="d-block w-100" width="400" height="500">
                            <!--<div class="carousel-caption d-none d-md-block">
                                <h5>First slide label</h5>
                                <p>Some representative placeholder content for the first slide.</p>
                            </div>-->
                        </div>
                        <div class="carousel-item">
                            <img src="https://www.vandelaydesign.com/wp-content/uploads/coroflot.jpg" class="d-block w-100" width="400" height="500" >
                            <!--<div class="carousel-caption d-none d-md-block">
                                <h5>Second slide label</h5>
                                <p>Some representative placeholder content for the second slide.</p>
                            </div>-->
                        </div>
                        <div class="carousel-item">
                            <img src="https://www.hostinger.com/tutorials/wp-content/uploads/sites/2/2021/08/behance-moodboard.webp" class="d-block w-100" width="400" height="500">
                            <!--<div class="carousel-caption d-none d-md-block">
                                <h5>Third slide label</h5>
                                <p>Some representative placeholder content for the third slide.</p>
                            </div>-->
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div>
        </section>

        <section>
             <div class="header2">
                <h2 class="w3-margin w3-wide ">Comece agora</h2> 
                <div class="form-center">
                    <form class="row g-3" >
                        <div class="col-auto">
                            <label for="inputPassword2" class="visually-hidden">Email</label>
                            <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Email">
                        </div>

                        <div class="col-auto">
                            <a href="cadastro.jsp"><button class="btn btn-primary me-md-2" type="button"> Inscreva-se!</button><a/>
                        </div>
                    </form>
                </div>
            </div>
        </section>
        <%@include file="WEB-INF/jspf/footer.jspf"%>
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>     
    </body>
</html>
