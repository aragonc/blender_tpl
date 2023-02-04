<div class="custompage">

    <!-- Fixed navbar -->
    <nav class="navbar navbar-default navbar-blend">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <div class="logo">
                    <img width="150px" class="img-responsive" title="{{ _s.site_name }}" src="{{ _p.web_css_theme }}images/header-logo.svg">
                </div>
            </div>
            <div id="navbar" class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li><a href="#">Consulta tu certificado</a></li>
                    <li><a href="#">Ayuda y Soporte</a></li>
                    <li><a href="#">Contactenos</a></li>
                </ul>
            </div><!--/.nav-collapse -->
        </div>
    </nav>

    <div class="container urpi">
        <div class="row">
            <div class="col-md-4">
                <div class="campus">
                    <img width="350px" class="img-responsive" title="{{ _s.site_name }}" src="{{ _p.web_css_theme }}images/campus_virtual.png">
                </div>
                <div class="container-login">
                    <div class="wrap-login width-login">
                        <form class="login100-form validate-form" action="{{ _p.web }}" method="post">
                            <h3 class="title">{{ 'Login'|get_lang() }}</h3>
                            {{ mgs_flash }}
                            {% if error %}
                            <div class="alert alert-warning" role="alert">
                                {{ error }}
                            </div>
                            {% endif %}
                            <div class="form-group">
                                <label for="user">{{ 'LoginOrEmailAddress'|get_lang() }}</label>
                                <input type="text" class="form-control" id="user" name="login" ">
                            </div>
                            <div class="form-group">
                                <label for="password">{{ 'Password'|get_lang() }}</label>
                                <input type="password" class="form-control" name="password" id="password" >
                            </div>

                            <button type="submit" class="btn btn-primary btn-block">
                                {{ 'LoginEnter'|get_lang() }}
                            </button>
                            {% if url_register %}
                            <a href="{{ url_register }}" class="btn btn-success btn-block" >
                                {{ 'Registration'|get_lang() }}
                            </a >
                            {% endif %}
                            <div class="last-password">
                                <a href="{{ url_lost_password }}">
                                    {{ 'LostPassword'|get_lang() }}
                                </a>
                            </div>
                        </form>
                        <div class="software-name">
                            <a href="{{_p.web}}" target="_blank">
                                {{ "PoweredByX" |get_lang | format(_s.software_name) }}
                            </a>&copy; {{ "now"|date("Y") }}
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-8">
                <div class="cube-slide">
                    {{ slides }}
                </div>
            </div>
        </div>

    </div>

    <div class="footer-login">
        Tunqui Agencia Creativa EIRL | Todos los derechos reservados 2023
    </div>
</div>
<script>
    // Shorthand for $( document ).ready()
    $(function() {
        console.log( "ready!" );
        $("body").addClass( "custom-login" );
    });
</script>
