"""
Django settings for movie_break project.

Generated by 'django-admin startproject' using Django 2.0.6.

For more information on this file, see
https://docs.djangoproject.com/en/2.0/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/2.0/ref/settings/
"""

import os

# Build paths inside the project like this: os.path.join(BASE_DIR, ...)
BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))


# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/2.0/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = 'ev7buw(+_%*qufk_b=1gjk*6lf%)i^$c5&mymzlyg(sv9w)6u2'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

ALLOWED_HOSTS = []


# Application definition

INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'home',
    'social_django',
    #'webservices',
    #'rest_framework',
]

MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
    #'social_django.middleware.SocialAuthExceptionMiddleware',  #lo puse nuevo para twitter
]

ROOT_URLCONF = 'movie_break.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [os.path.join(BASE_DIR,'templates')],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
                'social_django.context_processors.backends',  # <- Here
                'social_django.context_processors.login_redirect', # <- Here
            ],
        },
    },
]

WSGI_APPLICATION = 'movie_break.wsgi.application'


# Database
# https://docs.djangoproject.com/en/2.0/ref/settings/#databases

DATABASES = {
    'default': {
        #'ENGINE': 'django.db.backends.sqlite3',
        #'NAME': os.path.join(BASE_DIR, 'db.sqlite3'),
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'movie_break_django',
        'USER': 'root', 
        'PASSWORD': '',
        'HOST': '127.0.0.1',
        'PORT': '3306',
    }
}


# Password validation
# https://docs.djangoproject.com/en/2.0/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]


# Internationalization
# https://docs.djangoproject.com/en/2.0/topics/i18n/

LANGUAGE_CODE = 'es-co'

TIME_ZONE = 'UTC'

USE_I18N = True

USE_L10N = True

USE_TZ = True


# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/2.0/howto/static-files/

STATIC_URL = '/static/'

STATICFILES_DIRS=[
    os.path.join(BASE_DIR,"static")
]

MEDIA_URL="/media/"
MEDIA_ROOT="media"

#identifica o define el perfil de los usuarios
AUTH_PROFILE_MODULE='home.Perfil'

AUTHENTICATION_BACKENDS = (
 'social_core.backends.open_id.OpenIdAuth',  # for Google authentication
 'social_core.backends.google.GoogleOpenId',  # for Google authentication
 'social_core.backends.google.GoogleOAuth2',  # for Google authentication
 #'social_core.backends.github.GithubOAuth2',  # for Github authentication
 'social_core.backends.facebook.FacebookAppOAuth2',  # for Facebook authentication
 'social_core.backends.facebook.FacebookOAuth2',
 'social_core.backends.twitter.TwitterOAuth',
 'django.contrib.auth.backends.ModelBackend',
)

"""
SOCIAL_AUTH_LOGIN_REDIRECT_URL = "/index/"
#LOGIN_URL = 'login'   #las puse a lo ultimo
#LOGOUT_URL = 'logout'


SOCIAL_AUTH_FACEBOOK_KEY = '1906193449689129'
SOCIAL_AUTH_FACEBOOK_SECRET = 'd2749c408d272903113c2d62710e39e1'


SOCIAL_AUTH_FACEBOOK_SCOPE = ['user_likes','email',]
#SOCIAL_AUTH_USER_FIELDS = ['username','email']
"""
"""
SOCIAL_AUTH_FACEBOOK_PROFILE_EXTRA_PARAMS = {
  'fields': 'email',
}
"""
"""

SOCIAL_AUTH_GOOGLE_OAUTH2_KEY ='478245000799-pt3mp7ga403k7vv2f8d8vh6nlesd3bea.apps.googleusercontent.com'
SOCIAL_AUTH_GOOGLE_OAUTH2_SECRET='eCxX0FRr-EATL0XaQj1aVYPM'

SOCIAL_AUTH_TWITTER_KEY = '7JUejnDNEYPHOoW1zubv9M7sr'
SOCIAL_AUTH_TWITTER_SECRET = 'TeSwITei2vIzrjr3HDNS4fo6DS4lqQ88JnWZ8mFvxvavq1SsZQ'
"""