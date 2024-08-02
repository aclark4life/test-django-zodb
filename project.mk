# Custom Makefile
# Add your custom makefile commands here
#
PROJECT_NAME := test-django-zodb

define DATABASE_SETTINGS
DATABASES = {
    'default': {
	'ENGINE': 'django_zodb',
	'NAME': 'Data.fs',
    }
}
endef

export DATABASE_SETTINGS

django-settings: django-settings-default
	@echo "INSTALLED_APPS.append('django_zodb')" >> $(DJANGO_SETTINGS_FILE_BASE)
	@echo "$$DATABASE_SETTINGS" >> $(DJANGO_SETTINGS_FILE_BASE)

django-install: django-install-default
	pip install -e git+ssh://git@github.com/aclark4life/django-zodb.git#egg=django_zodb
