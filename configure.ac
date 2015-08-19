AC_INIT(codeigniter-builder, 0.1, raziel@eml.cc)
AC_CONFIG_AUX_DIR(config)
AM_INIT_AUTOMAKE([foreign])

AC_PROG_MKDIR_P
AC_PROG_SED

AC_ARG_VAR([CI_SRCDIR], [path to CodeIgniter sources])
if test x"$CI_SRCDIR" = x""
then
    AC_MSG_FAILURE([CI_SRCDIR undefined],[1])
fi


AC_MSG_CHECKING([CodeIgniter version])
dnl don't use 'define' it conflict with m4!
CI_VERSION=$($SED -n "s/^.*efine('CI_VERSION', '\(@<:@^'@:>@*\)').*/\1/p" $CI_SRCDIR/system/core/CodeIgniter.php)
AC_MSG_RESULT([$CI_VERSION])
AC_SUBST([CI_VERSION])


AC_ARG_ENABLE([welcome],
    AS_HELP_STRING([--enable-welcome], [Enable welcome route example @<:@default=yes@:>@]),
    [case "${enableval}" in
        yes) enable_welcome=true ;;
        no)  enable_welcome=false ;;
        *) AC_MSG_ERROR([bad value ${enableval} for --enable-welcome]) ;;
     esac],[enable_welcome=true])
AM_CONDITIONAL([ENABLE_WELCOME], [test x$enable_welcome = xtrue])

AC_ARG_ENABLE([session],
    AS_HELP_STRING([--enable-session], [Enable session library @<:@default=yes@:>@]),
    [case "${enableval}" in
        yes) enable_session=true ;;
        no)  enable_session=false ;;
        *) AC_MSG_ERROR([bad value ${enableval} for --enable-session]) ;;
     esac],[enable_session=true])
AM_CONDITIONAL([ENABLE_SESSION], [test x$enable_session = xtrue])

AC_ARG_ENABLE([url-helper],
    AS_HELP_STRING([--enable-url-helper], [Enable Url helper @<:@default=yes@:>@]),
    [case "${enableval}" in
        yes) enable_url_helper=true ;;
        no)  enable_url_helper=false ;;
        *) AC_MSG_ERROR([bad value ${enableval} for --enable-url-helper]) ;;
     esac],[enable_url_helper=true])
AM_CONDITIONAL([ENABLE_URL_HELPER], [test x$enable_url_helper = xtrue])


AC_OUTPUT(Makefile public_html/Makefile ci-system/Makefile ci-application/Makefile)
