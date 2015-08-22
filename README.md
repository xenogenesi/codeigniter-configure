# codeigniter-configure
GNU/Autotools for CodeIgniter tailored installation

Project still in **early stage**, currently support only few options

    cd codeigniter-configure/
    autogen.sh
    mkdir build && cd build
    CI_SRCDIR=/path/to/ci-src ../configure --prefix=/path/to/install \
            --enable-welcome \
            --enable-session=files \
            --enable-url-helper \
            --enable-form-helper \
            --enable-form-validation \
            --enable-email \
            --enable-database=sqlite3 \
            --enable-dbforge
    make install

Current minimal installation:

    $(prefix)/
    ├── app
    │   ├── config
    │   │   ├── config.php
    │   │   └── constants.php
    │   ├── logs
    │   └── views
    │       └── errors
    │           └── html
    │               ├── error_404.php
    │               ├── error_exception.php
    │               ├── error_general.php
    │               └── error_php.php
    ├── CI-3.1.0-dev
    │   └── system
    │       └── core
    │           ├── Benchmark.php
    │           ├── CodeIgniter.php
    │           ├── Common.php
    │           ├── compat
    │           │   ├── hash.php
    │           │   ├── mbstring.php
    │           │   ├── password.php
    │           │   └── standard.php
    │           ├── Config.php
    │           ├── Controller.php
    │           ├── Exceptions.php
    │           ├── Hooks.php
    │           ├── Input.php
    │           ├── Lang.php
    │           ├── Loader.php
    │           ├── Log.php
    │           ├── Output.php
    │           ├── Router.php
    │           ├── Security.php
    │           ├── URI.php
    │           └── Utf8.php
    └── public_html
        ├── .htaccess
        └── index.php
