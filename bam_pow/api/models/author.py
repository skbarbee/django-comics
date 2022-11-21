import django.db import models
from django.contrib.auth import get_user_model

class Author(models.Model):
	first_name: models.CharField(max_length=100)
	last_name: models.CharField(max_length=100)

	def __str__(self):
		return f"{self.first_name} {self.last_name}"

		