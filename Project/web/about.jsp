

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/estilo.css">
        <title>Sobre Nós</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/navbar.jspf"%>


        <div class="w3-container w3-padding-64 w3-xlarge" style="background: white" id="about">
            <div class="w3-content">
                <h1 class="w3-center w3-jumbo" style="margin-bottom:64px">Sobre Nós</h1>
                <div class="textabout">
                    <p>A ProjectValue foi fundada em 2023 por estudantes da Fatec Praia Grande. Somos uma ferramenta de gerenciamento de projetos flexível, onde você pode organizar seus projetos e sua agenda, planejar, calcular e organizar seu trabalho e acompanhar seu progresso de maneira visual, produtiva e recompensadora. A ProjectValue gerencia os grandes marcos e as tarefas do dia a dia com praticidade e organização.</p>
                    <br><br>
                    <h2><strong>Conheça nossa Equipe</strong></h2>
                </div>

                <div class="headerabout">            
                    <p><strong>Bianca Drumond</strong> Formada em Engenharia Civil em<br>
                         2018, me interessei em aprender sobre tecnologia<br>  durante a pandemia.</p>            
                    <img src="Resources/images/bianca.jpeg"  class="w3-circle w3-right" id="imgpos2">
                    <br><br>
                    <p><strong>Carla Sanz</strong> Formada em Administração de Empresas<br>
                         em 2015, resolvi me aventurar nesse mundo da<br> tecnologia em 2020.</p>            
                    <img src="Resources/images/carla.jpeg"  class="w3-circle w3-right" id="imgpos3">
                    <br><br>
                    <p><strong>Pedro Vinícius</strong> Me interesso muito pela parte do <br>
                        Back-End. Vim da Etec e agora estou aprimorando<br> meus conhecimentos na Fatec.</p>            
                    <img src="Resources/images/pedro.jpeg"  class="w3-circle w3-right" id="imgpos4">
                    <br><br>
                    <p><strong>Raphael Santos</strong> Comecei a me aventurar no mundo 
                        <br>  da tecnologia recentemente e estou buscando <br> evoluir nessa área desde a pandemia.</p>            
                    <img src="Resources/images/raphael.jpeg"  class="w3-circle w3-right" id="imgpos5">
                    <br><br>
                    <p><strong>Victória Cabral</strong> Sempre me interessei pela área da<br> 
                        programação. Sou formada na Etec e agora estou<br> cursando ADS na Fatec.</p>            
                    <img src="Resources/images/victoria.jpeg"  class="w3-circle w3-right" id="imgpos6">
                    <br>  
                </div>

            </div>

        </div>
        <div><br><hr></div>

        <div class="headerabout2">


            <div class="w3-main" style="margin-left:100px">

                <div class="w3-row w3-padding-64">
                    <div class="w3-twothird w3-container">
                        <h1 class="w3-text-blue" style="margin-left:300px">Missão</h1>
                        <h4><p>Nossa missão é fornecer uma plataforma confiável e eficiente, visando facilitar a vida dos profissionais independentes e promover o sucesso de seus negócios. Buscamos oferecer soluções inovadoras e personalizadas, proporcionando aos freelancers mais tempo para se concentrarem em seu trabalho e alcançarem resultados satisfatórios.</p></h4>
                    </div>
                    <div class="w3-third w3-container">
                        <img src="Resources/images/missao.png" style="margin-left:20px" width="260" height="260"></p>
                    </div>
                </div>

                <div class="w3-row">
                    <div class="w3-twothird w3-container">
                        <h1 class="w3-text-blue" style="margin-left:300px">Visão</h1>
                        <h4><p>Nossa visão é nos tornarmos a principal referência no mercado, reconhecidos pela excelência de nossos serviços e pela constante busca pela inovação. Almejamos ser uma plataforma indispensável para profissionais independentes, oferecendo soluções inteligentes e intuitivas que atendam às suas necessidades de forma ágil e eficaz.</p></h4>
                    </div>
                    <div class="w3-third w3-container">
                        <img src="Resources/images/visao.png" style="margin-left:20px" width="260" height="260"></p>
                    </div>
                </div>

                <div class="w3-row w3-padding-64">
                    <div class="w3-twothird w3-container">
                        <h1 class="w3-text-blue" style="margin-left:300px">Valores</h1>
                        <h4><p>1. Excelência: Buscamos constantemente a excelência em todos os aspectos do nosso trabalho, desde a qualidade dos nossos serviços até o atendimento ao cliente. <br>
                                2. Confiança: Valorizamos a confiança depositada em nós pelos nossos clientes e parceiros. <br>
                                3. Inovação: Estamos sempre em busca de soluções inovadoras que agreguem valor aos nossos clientes e ao mercado como um todo. <br>
                                4. Colaboração: Acreditamos no poder da colaboração e no trabalho em equipe. Encorajamos a troca de conhecimentos, ideias e experiências entre os membros da nossa equipe e com nossos clientes. <br>
                                5. Empoderamento: Nosso objetivo é capacitar os profissionais independentes, oferecendo ferramentas e recursos que os ajudem a gerenciar seus negócios de forma eficiente.</p></h4>
                    </div>
                    <div class="w3-third w3-container">
                        <img src="Resources/images/valores.png" style="margin-left:20px; margin-top: 60px" width="260" height="260"></p>
                    </div>
                </div>


                <!-- <div>-->
                <!-- <img src="Resources/images/carla.jpeg" class="rounded float-start" alt="missao">
                 <p style="text-align: right; font-size: 30px; color: black; margin: 12px; " class="w3-justify"><b>MISSÃO</b></p>
             <b><p style="text-align: right; font-size: 30px; color: black; margin: 12px;" class="w3-justify">
             Proporcionar um espaço de incentivo à experimentação do novo,<br> apoiado no conforto do que já é familiar e
             conhecido. Aperfeiçoar receitas e <br>produtos de gosto popular para que ninguém faça como nós fazemos. Acolher gostos
             pessoais de diversos tipos, desde os mais simples e tradicionais aos <br>mais aventureiros. Usar o espaço do café para
             promover o lazer, a pesquisa, <br>o estudo, a arte e a cultura local.</b></p>-->

            </div>
        </div>


        <%@include file="WEB-INF/jspf/footer.jspf"%>
    </body>
</html>
