# Generated by Django 4.0.4 on 2022-05-18 19:12

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Ventas', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='mascota',
            name='foto',
            field=models.ImageField(null=True, upload_to='mascotas'),
        ),
        migrations.AlterField(
            model_name='mascota',
            name='edadMascota',
            field=models.IntegerField(verbose_name='Edad de la mascota'),
        ),
    ]
