PROJECT_NAME := test-django-zodb

clean:
	rm -rvf ../../mongodb/django-zodb/build/

edit:
	nvim ../../mongodb/django-zodb/django_zodb/base.py ../../mongodb/django-zodb/django_zodb/introspection.py
