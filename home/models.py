from django.db import models
from django.contrib.auth.models import User

# Create your models here.

class Genero (models.Model):
	nombre = models.CharField(max_length=100) 

	def __str__(self):
		return self.nombre


class Actor (models.Model):
	nombre = models.CharField(max_length=100) #  el id lo pone django
	nacionalidad=models.CharField(max_length=100)
	fecha_nacimiento=models.DateField(blank=True, null=True)
	foto = models.ImageField(upload_to='fotos_actores', null=True, blank=True)
	
	
	def __str__(self):
		return self.nombre


class Pelicula (models.Model):
	nombre = models.CharField(max_length=100) 
	#fecha_publicacion = models.DateTimeField(blank=True, null=True)
	anio_estreno=models.IntegerField()
	sinopsis = models.TextField(max_length=500)
	duracion_min = models.IntegerField()
	foto_vertical = models.ImageField(upload_to='fotos_peliculas', null=True, blank=True) # que se suba y la url donde esta, que se pueda no tener foto
	foto_horizontal = models.ImageField(upload_to='fotos_peliculas', null=True, blank=True)
	#genero = models.ForeignKey(Genero, on_delete=models.PROTECT)#el modelo se llama Genero, relacion peli con genero de uno a muchos, que no me elimine en cascada 
	status = models.BooleanField(default=True) # que por defecto tenga el valor de true, cada que agregue una pelicula
	genero =models.ManyToManyField(Genero,  null =True, blank =True)
	actor = models.ManyToManyField(Actor,  null =True, blank =True)

	#la funcion que vamos a retornar
	def __str__(self): #unicode
		return self.nombre


class Perfil (models.Model):
	nombre = models.CharField(max_length=100)
	cedula= models.CharField(max_length=100)
	image=models.ImageField(upload_to='perfiles_usuarios', null=True, blank=True) #se va a guardar en la carpeta perfiles_usuarios
	user= models.OneToOneField(User, on_delete=models.PROTECT) #Para que no me elimine en cascada
	genero = models.ManyToManyField(Genero,  null =True, blank =True)

	def __str__(self):
		return str(self.user.username) + ' , ' + self.cedula
		
		#self.user a a guardar un entero
		# yo puedo concatenar texto

