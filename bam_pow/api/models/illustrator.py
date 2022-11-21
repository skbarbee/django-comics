from django.db import models


class Illustrator(models.Model):
	first_name = models.CharField(max_length=100)
	last_name = models.CharField(max_length=100)

	created_at = models.DateTimeField(auto_now_add=True)
	updated_at = models.DateTimeField(auto_now=True)

	def __str__(self):
		return f"{self.first_name} {self.last_name}"
