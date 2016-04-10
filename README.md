mod_proctitle
=============

Port of mod_proctitle to Apache 2.4 (can also be used for Apache 2.2)

Original port repo: https://github.com/drakmor/mod_proctitle

mod_proctitle.c -- Apache proctitle module

To use this module first compile it into a DSO file
and install it into Apache's modules directory by running:

    $ apxs2 -c -i mod_proctitle.c

Then activate it as follows:

    $ echo "LoadModule proctitle_module /usr/lib/apache2/modules/mod_proctitle.so" > /etc/apache2/mods-available/proctitle.load
    $ a2enmod proctitle

Then after restarting Apache via:

    $ apache2ctl restart
