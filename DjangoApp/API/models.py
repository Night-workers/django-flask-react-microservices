from django.db import models

class Hello(models.Model):
    title = models.CharField(max_length=10)

    class Meta:
        verbose_name_plural = "Hello"
