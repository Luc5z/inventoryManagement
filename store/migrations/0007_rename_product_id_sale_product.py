# Generated by Django 5.1.7 on 2025-03-22 01:25

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('store', '0006_sale'),
    ]

    operations = [
        migrations.RenameField(
            model_name='sale',
            old_name='product_id',
            new_name='product',
        ),
    ]
