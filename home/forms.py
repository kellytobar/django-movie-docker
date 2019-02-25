from django import forms
from .models import *  # esto es mio
from django.contrib.auth.models import User

class contacto_form(forms.Form):
	correo=forms.EmailField(widget=forms.TextInput())
	asunto=forms.CharField(widget=forms.TextInput())
	texto=forms.CharField(widget=forms.Textarea())

class login_form(forms.Form):
	usuario=forms.CharField(widget=forms.TextInput(attrs={'class':'form-control'}))
	clave=forms.CharField(widget=forms.PasswordInput(render_value=False, attrs={'class':'form-control'}))

"""
class register_form(forms.Form):
	usuario=forms.CharField(widget=forms.TextInput(attrs={'class':'form-control'}))
	correo=forms.EmailField(widget=forms.TextInput(attrs={'class':'form-control'}))
	clave_1=forms.CharField(label='Password', widget=forms.PasswordInput(render_value=False, attrs={'class':'form-control'}))
	clave_2=forms.CharField(label='Confirmar Password', widget=forms.PasswordInput(render_value=False, attrs={'class':'form-control'}))

	def clean_username(self):
		username=self.cleaned_data['username']
		try:
			u=User.objects.get(username=username)
		except User.DoesNotExist:
			return username
		raise forms.ValidationError('Nombre de usuario ya registrado')


	def clean_email(self):
		email=self.cleaned_data['email']
		try:
			email=User.objects.get(email=email)
		except User.DoesNotExist:
			return email
		raise forms.ValidationError('Correo electronico ya existe')

	def clean_username(self):
		username=self.cleaned_data['username']
		try:
			u=User.objects.get(username=username)
		except User.DoesNotExist:
			return username
		raise forms.ValidationError('Nombre de usuario ya registrado')

	def clean_password_2(self):
		password_1=self.cleaned_data['password_1']
		password_2=self.cleaned_data['password_2']
	
		if password_1==password_2:
			pass
		else:
			raise forms.ValidationError('Passwords no coinciden')

"""

class register_form(forms.Form):
	usuario = forms.CharField(widget=forms.TextInput())
	correo 	= forms.EmailField(widget=forms.TextInput())
	clave_1	= forms.CharField(widget=forms.PasswordInput(render_value=False))
	clave_2	= forms.CharField(widget=forms.PasswordInput(render_value=False))

	def clean_usuario (self):
		usuario = self.cleaned_data['usuario']
		try:
			u = User.objects.get(username = usuario)
		except User.DoesNotExist:
			return usuario 
		raise forms.ValidationError('Usuario ya registrado')

	def clean_correo (self):
		correo = self.cleaned_data['correo']
		try:
			u = User.objects.get(email = correo)
		except User.DoesNotExist:
			return correo
		raise forms.ValidationError('El correo ya esta registrado')

	def clean_clave_2 (self):
		clave_1 = self.cleaned_data['clave_1']
		clave_2 = self.cleaned_data['clave_2']
		if clave_1 == clave_2:
			pass
		else:
			raise forms.ValidationError('las Claves no coinciden')


class perfil_form(forms.ModelForm):
	class Meta:
		model = Perfil 
		fields = ['nombre','cedula', 'image','genero']
		exclude = ['user',]

		'''widgets= {
									'nombre':forms.CharField(attrs={'class':'form-control'}), 
									'cedula':forms.CharField(attrs={'class':'form-control'}),
									'image':forms.ImageField(attrs={'class':'form-control'}),		
									}'''