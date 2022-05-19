# Generated by Django 4.0.4 on 2022-05-16 20:07

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Raza',
            fields=[
                ('idRaza', models.AutoField(primary_key=True, serialize=False, verbose_name='Codigo de la raza')),
                ('nombre', models.CharField(max_length=30, null=True, verbose_name='Nombre de la raza')),
            ],
        ),
        migrations.CreateModel(
            name='Mascota',
            fields=[
                ('chip', models.IntegerField(primary_key=True, serialize=False, verbose_name='Chip de la mascota')),
                ('nombreMascota', models.CharField(max_length=50, null=True, verbose_name='Nombre de la mascota')),
                ('edadMascota', models.IntegerField(verbose_name='Chip de la mascota')),
                ('colorPelo', models.CharField(max_length=30, verbose_name='Color de pelo de la mascota')),
                ('raza', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='Ventas.raza')),
            ],
        ),
    ]
