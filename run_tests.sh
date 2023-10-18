#!/bin/sh

# Assurez-vous que python3 est accessible
which python3

# Exécutez vos tests
python3 manage.py test app_users.tests.CustomUserTests
python3 manage.py test app_manage.tests.SearchTestCase
python3 manage.py test app_manage.tests.BasePageTestCase
python3 manage.py test app_manage.tests.TermesPageTestCase
