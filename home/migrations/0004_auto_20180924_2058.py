# Generated by Django 2.0.6 on 2018-09-25 01:58

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0003_auto_20180909_1657'),
    ]

    operations = [
        migrations.AlterField(
            model_name='pelicula',
            name='sinopsis',
            field=models.TextField(max_length=500),
        ),
    ]