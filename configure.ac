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
    AS_HELP_STRING([--enable-welcome], [Enable Welcome example with routes @<:@default=no@:>@]),
    [AS_CASE(${enableval}, [yes], [], [no], [],
             [AC_MSG_ERROR([bad value ${enableval} for --enable-welcome])])],
    [enable_welcome=no])
AM_CONDITIONAL([ENABLE_WELCOME], [test x$enable_welcome = xyes])


AC_ARG_ENABLE([session],
    AS_HELP_STRING([--enable-session], [Enable session library @<:@default=no@:>@]),
    [],
    [enable_session=no])

save_IFS="$IFS"
IFS=","
enable_session_files=no
enable_session_database=no
for option in $enable_session; do
    case "$option" in
        yes|all)
                enable_session_files=yes
                enable_session_database=yes
                enable_session=yes
                ;;
        no|none)
                ;;
        files)
                enable_session_files=yes
                enable_session=yes
                ;;
        database)
                enable_session_database=yes
                enable_session=yes
                ;;
        *)
                IFS="$save_IFS"
                AC_MSG_ERROR([Unknown value $option for --enable-session])
                IFS=","
                ;;
    esac
done
IFS="$save_IFS"
AM_CONDITIONAL([ENABLE_SESSION_FILES], [test x$enable_session_files = xyes])
AM_CONDITIONAL([ENABLE_SESSION], [test x$enable_session = xyes])


AC_ARG_ENABLE([url-helper],
    AS_HELP_STRING([--enable-url-helper], [Enable Url helper @<:@default=no@:>@]),
    [AS_CASE(${enableval}, [yes], [], [no], [],
             [AC_MSG_ERROR([bad value ${enableval} for --enable-url-helper])])],
    [enable_url_helper=no])
AM_CONDITIONAL([ENABLE_URL_HELPER], [test x$enable_url_helper = xyes])

AC_ARG_ENABLE([file-helper],
    AS_HELP_STRING([--enable-file-helper], [Enable File helper @<:@default=no@:>@]),
    [AS_CASE(${enableval}, [yes], [], [no], [],
             [AC_MSG_ERROR([bad value ${enableval} for --enable-file-helper])])],
    [enable_file_helper=no])

AC_ARG_ENABLE([form-helper],
    AS_HELP_STRING([--enable-form-helper], [Enable Form helper @<:@default=no@:>@]),
    [AS_CASE(${enableval}, [yes], [], [no], [],
             [AC_MSG_ERROR([bad value ${enableval} for --enable-form-helper])])],
    [enable_form_helper=no])
AM_CONDITIONAL([ENABLE_FORM_HELPER], [test x$enable_form_helper = xyes])


AC_ARG_ENABLE([form-validation],
    AS_HELP_STRING([--enable-form-validation], [Enable Form Validation library @<:@default=no@:>@]),
    [AS_CASE(${enableval}, [yes], [], [no], [],
             [AC_MSG_ERROR([bad value ${enableval} for --enable-form-validation])])],
    [enable_form_validation=no])
AM_CONDITIONAL([ENABLE_FORM_VALIDATION], [test x$enable_form_validation = xyes])


AC_ARG_ENABLE([email],
    AS_HELP_STRING([--enable-email], [Enable Email library @<:@default=no@:>@]),
    [AS_CASE(${enableval}, [yes], [], [no], [],
             [AC_MSG_ERROR([bad value ${enableval} for --enable-email])])],
    [enable_email=no])
AM_CONDITIONAL([ENABLE_EMAIL], [test x$enable_email = xyes])


AC_ARG_ENABLE([database],
    AS_HELP_STRING([--enable-database], [Enable Databases @<:@default=no@:>@]),
    [],
    [enable_database=no])

save_IFS="$IFS"
IFS=","
enable_sqlite3=no
enable_mysqli=no
for option in $enable_database; do
    case "$option" in
        yes|all)
                enable_sqlite3=yes
                enable_mysqli=yes
                enable_database=yes
                ;;
        no|none)
                ;;
        sqlite3)
                enable_sqlite3=yes
                enable_database=yes
                ;;
        mysqli)
                enable_mysqli=yes
                enable_database=yes
                ;;
        *)
                IFS="$save_IFS"
                AC_MSG_ERROR([Unknown value $option for --enable-database])
                IFS=","
                ;;
    esac
done
IFS="$save_IFS"
AM_CONDITIONAL([ENABLE_DATABASE], [test x$enable_database = xyes])
AM_CONDITIONAL([ENABLE_SQLITE3], [test x$enable_sqlite3 = xyes])
AM_CONDITIONAL([ENABLE_MYSQLI], [test x$enable_mysqli = xyes])


AC_ARG_ENABLE([cache],
    AS_HELP_STRING([--enable-cache], [Enable Cache @<:@default=no@:>@]),
    [],
    [enable_cache=no])

save_IFS="$IFS"
IFS=","
enable_cache_dummy=no
enable_cache_file=no
enable_cache_memcached=no
enable_cache_apc=no
for option in $enable_cache; do
    case "$option" in
        yes|all)
                enable_cache_dummy=yes
                enable_cache_file=yes
                enable_cache_memcached=yes
                enable_cache_apc=yes
                enable_cache=yes
                ;;
        no|none)
                ;;
        dummy)
                enable_cache_dummy=yes
                enable_cache=yes
                ;;
        file)
                enable_cache_file=yes
                enable_cache=yes
                ;;
        memcached)
                enable_cache_memcached=yes
                enable_cache=yes
                ;;
        apc)
                enable_cache_apc=yes
                enable_cache=yes
                ;;
        *)
                IFS="$save_IFS"
                AC_MSG_ERROR([Unknown value $option for --enable-cache])
                IFS=","
                ;;
    esac
done
IFS="$save_IFS"
AM_CONDITIONAL([ENABLE_CACHE_DUMMY], [test x$enable_cache_dummy = xyes])
AM_CONDITIONAL([ENABLE_CACHE_FILE], [test x$enable_cache_file = xyes])
AM_CONDITIONAL([ENABLE_CACHE_MEMCACHED], [test x$enable_cache_memcached = xyes])
AM_CONDITIONAL([ENABLE_CACHE_APC], [test x$enable_cache_apc = xyes])
AM_CONDITIONAL([ENABLE_CACHE], [test x$enable_cache = xyes])

if test x$enable_cache_file = xyes ; then
   enable_file_helper=yes
fi

AM_CONDITIONAL([ENABLE_FILE_HELPER], [test x$enable_file_helper = xyes])


AC_ARG_ENABLE([dbforge],
    AS_HELP_STRING([--enable-dbforge], [Enable DB Forge @<:@default=no@:>@]),
    [AS_CASE(${enableval}, [yes], [], [no], [],
             [AC_MSG_ERROR([bad value ${enableval} for --enable-dbforge])])],
    [enable_dbforge=no])
AM_CONDITIONAL([ENABLE_DBFORGE], [test x$enable_dbforge = xyes])

if test x$enable_dbforge = xyes -a x$enable_database = xno ; then
    AC_MSG_WARN([enabled dbforge without a database backend])
fi


AC_OUTPUT(Makefile public_html/Makefile ci-system/Makefile ci-application/Makefile)
