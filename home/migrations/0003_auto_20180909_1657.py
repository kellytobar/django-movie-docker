# Generated by Django 2.0.6 on 2018-09-09 21:57

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0002_auto_20180901_1319'),
    ]

    operations = [
        migrations.RenameField(
            model_name='pelicula',
            old_name='foto',
            new_name='foto_vertical',
        ),
        migrations.AddField(
            model_name='pelicula',
            name='foto_horizontal',
            field=models.ImageField(blank=True, null=True, upload_to='fotos_peliculas'),
        ),
    ]
