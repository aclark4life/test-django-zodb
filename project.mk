PROJECT_NAME := test-django-zodb

clean:
	rm -rvf ../../mongodb/django-zodb/build/

edit:
	vi ../../mongodb/django-zodb/django_zodb/base.py
