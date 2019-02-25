#from django.shortcuts import render
from django.shortcuts import render, redirect
from .forms import *
from .models import *
from django.views.generic.base import TemplateView
from django.urls import reverse_lazy
from django.views.generic.edit import CreateView
from django.utils import timezone
from django.views.generic.detail import DetailView
from django.views.generic.edit import UpdateView
from django.views.generic.edit import DeleteView
from django.contrib.auth import login, logout, authenticate
from django.contrib.auth.models import User
from django.http import HttpResponse
from django.core import serializers
from django.contrib.auth.decorators import login_required

def about_view(request):

	
	return render(request,'about.html',locals())

def listar_peliculas_view(request):
	lista=Pelicula.objects.filter(status=True)
	#lista=Pelicula.objects.filter()
	#lista=Pelicula.objects.filter(genero__id=3)
	#lista=Pelicula.objects.filter(genero__id=3)  # siiiiiiiiiiiii
	#lista1=Pelicula.objects.filter()				#siiiiiiii
	#lista=lista1[1:]    # los ultimos 3 .....hay 4   #siiiiiiiiiiii
	

	#lista=Actor.objects.all()    # para listar actores  #siiiiiiii

	return render(request,'listar_peliculas.html',locals())


def desactivar_pelicula_view(request, id_peli):
	obj=Pelicula.objects.get(id=id_peli)
	obj.status=False
	obj.save()
	return redirect('/listar_peliculas')


class agregar_pelicula_view(CreateView): #especificamos el modelos los campos que van a air
	model = Pelicula
	fields = '__all__' #['nombre','anio_estreno']
	success_url=reverse_lazy('listar_peliculas') # cuando todo eso funcione viene redirija hacia donde quedamos


class ver_pelicula_view(DetailView):

    model = Pelicula

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['now'] = timezone.now()
        return context

class ver_sus_peliculas_view(DetailView):

    model = Actor

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['now'] = timezone.now()
        return context


class editar_pelicula_view(UpdateView):
    model = Pelicula
    fields = '__all__'
    template_name_suffix = '_update_form'
    success_url=reverse_lazy('listar_peliculas')

class eliminar_pelicula_view(DeleteView):
    model = Pelicula
    success_url = reverse_lazy('listar_peliculas')

def login_view(request):
	usu=''
	cla=''
	if request.method=='POST':
		formulario=login_form(request.POST)
		if formulario.is_valid():
			usu=formulario.cleaned_data['usuario']
			cla=formulario.cleaned_data['clave']
			usuario=authenticate(username=usu,password=cla)
			if usuario is not None and usuario.is_active: #none =nulo , is active retorna un booleano
				login(request,usuario)
				return redirect('/listar_peliculas')
			else: #si no se pudo loguear
				msj: "usuario o clave incorrectos"
	formulario=login_form()
	return render(request,'login.html',locals())

def logout_view(request):
	logout(request)
	return redirect('/login')

'''
def register_view(request):
	formulario= register_form()
	if request.method=='POST':
		formulario=register_form(request.POST)
		if formulario.is_valid():
			usuario=formulario.cleaned_data['username']
			correo=formulario.cleaned_data['email']
			password_1=formulario.cleaned_data['password_1']
			password_2=formulario.cleaned_data['password_2']
			u=User.objects.create_user(username=usuario, email=correo, password=password_1)
			u.save()
			return render(request,'thanks_for_register.html',locals())
		else:
			return render(request,'register.html',locals())
	return render(request,'register.html',locals())
'''

def servicio_web_view(request):
	data=serializers.serialize('json',Perfil.objects.all())
	return HttpResponse(data,content_type='application/json')


def listar_actores_view(request):

	lista=Actor.objects.all()   
	return render(request,'listar_actores.html',locals())

#@login_required    #para twitter
def inicio_view (request):
	#empresa = 'Cluster Creatic 2018'
	lista=Pelicula.objects.filter(status=True)
	lista_ultimas=Pelicula.objects.filter(status=True)[1:]
	return render(request, 'inicio.html', locals())


def nuevo_perfil_view (request):
	form_1 = register_form()
	form_2 = perfil_form()
	if request.method=='POST':
		form_1 = register_form(request.POST)
		form_2 = perfil_form(request.POST, request.FILES)
		if form_1.is_valid() and form_2.is_valid():
			usuario 	= form_1.cleaned_data['usuario']
			correo 		= form_1.cleaned_data['correo']
			password_1 	= form_1.cleaned_data['clave_1']
			password_2 	= form_1.cleaned_data['clave_2']
			u = User.objects.create_user(username=usuario, email=correo, password=password_1)
			u.save()
			
			y = form_2.save(commit=False)
			y.user= u
			y.save()
			msg = "gracias por registrarse..."
			return redirect('/login/')

	return render(request,'crear_perfil.html', locals())


def sugerencias_view(request):
	#lista=Pelicula.objects.filter(status=True)
	id_log=request.user.id
	
	#user_log=Perfil.objects.get(id=id1)
	user_log=Perfil.objects.get(user_id=id_log)
	gener=user_log.genero.all()
	
	#lista=Pelicula.objects.select_related().filter(genero__id__in=[1,2])
	lista=Pelicula.objects.select_related().filter(genero__in=gener)
	lista_sin_rep=dict.fromkeys(lista).keys()
	
	#lista=Perfil.objects.filter(genero)

	#node_query = Perfil.objects.annotate(count=Count('genero')).filter(count=len(pk_list))

	#for pk in pk_list:
    #node_query = node_query.filter(tags__pk=pk)

	return render(request,'sugerencias.html',locals())
