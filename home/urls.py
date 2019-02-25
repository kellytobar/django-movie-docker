from django.urls import path
from .views import *

from django.conf.urls import include

urlpatterns=[
	#path('', index_view),
	path('index/', inicio_view, name='inicio'),
	path('about/', about_view, name="about"),
	
	path('listar_peliculas/', listar_peliculas_view, name="listar_peliculas"),
	path('desactivar_pelicula/<int:id_peli>/', desactivar_pelicula_view, name="desactivar_pelicula"),
	path('agregar_pelicula/', agregar_pelicula_view.as_view(), name="agregar_pelicula"),
	path('ver_pelicula/<int:pk>/', ver_pelicula_view.as_view(), name="ver_pelicula"),
	path('editar_pelicula/<int:pk>/', editar_pelicula_view.as_view(), name="editar_pelicula"),
	path('eliminar_pelicula/<int:pk>/', eliminar_pelicula_view.as_view(), name="eliminar_pelicula"),
	path('login/', login_view, name="login"),
	path('logout/', logout_view, name="logout"),
	#path('register/', register_view, name="register"),
	path('servicio_web/', servicio_web_view, name="servicio_web"),
	path('listar_actores/', listar_actores_view, name="listar_actores"),
	path('nuevo_perfil/', nuevo_perfil_view, name='nuevo_perfil'),
	path('sugerencias/', sugerencias_view, name='sugerencias'),

	path('', include('social_django.urls', namespace='social')),  # <- Here

]