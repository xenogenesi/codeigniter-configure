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
    AS_HELP_STRING([--enable-welcome], [Enable Welcome example with routes @<:@default=yes@:>@]),
    [AS_CASE(${enableval}, [yes], [], [no], [],
             [AC_MSG_ERROR([bad value ${enableval} for --enable-welcome])])],
    [enable_welcome=yes])
AM_CONDITIONAL([ENABLE_WELCOME], [test x$enable_welcome = xyes])

AC_ARG_ENABLE([session],
    AS_HELP_STRING([--enable-session], [Enable session library @<:@default=yes@:>@]),
    [AS_CASE(${enableval}, [yes], [], [no], [],
             [AC_MSG_ERROR([bad value ${enableval} for --enable-session])])],
    [enable_session=yes])
AM_CONDITIONAL([ENABLE_SESSION], [test x$enable_session = xyes])

AC_ARG_ENABLE([url-helper],
    AS_HELP_STRING([--enable-url-helper], [Enable Url helper @<:@default=yes@:>@]),
    [AS_CASE(${enableval}, [yes], [], [no], [],
             [AC_MSG_ERROR([bad value ${enableval} for --enable-url-helper])])],
    [enable_url_helper=yes])
AM_CONDITIONAL([ENABLE_URL_HELPER], [test x$enable_url_helper = xyes])

AC_ARG_ENABLE([form-helper],
    AS_HELP_STRING([--enable-form-helper], [Enable Form helper @<:@default=yes@:>@]),
    [AS_CASE(${enableval}, [yes], [], [no], [],
             [AC_MSG_ERROR([bad value ${enableval} for --enable-form-helper])])],
    [enable_form_helper=yes])
AM_CONDITIONAL([ENABLE_FORM_HELPER], [test x$enable_form_helper = xyes])

AC_ARG_ENABLE([form-validation],
    AS_HELP_STRING([--enable-form-validation], [Enable Form Validation library @<:@default=yes@:>@]),
    [AS_CASE(${enableval}, [yes], [], [no], [],
             [AC_MSG_ERROR([bad value ${enableval} for --enable-form-validation])])],
    [enable_form_validation=yes])
AM_CONDITIONAL([ENABLE_FORM_VALIDATION], [test x$enable_form_validation = xyes])

AC_ARG_ENABLE([email],
    AS_HELP_STRING([--enable-email], [Enable Email library @<:@default=yes@:>@]),
    [AS_CASE(${enableval}, [yes], [], [no], [],
             [AC_MSG_ERROR([bad value ${enableval} for --enable-email])])],
    [enable_email=yes])
AM_CONDITIONAL([ENABLE_EMAIL], [test x$enable_email = xyes])



AC_OUTPUT(Makefile public_html/Makefile ci-system/Makefile ci-application/Makefile)
