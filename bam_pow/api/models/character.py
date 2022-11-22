from django.db import models


class Character(models.Model):

	real_name = models.CharField(max_length=100)
	alias = models.CharField(max_length=100)
	details = models.CharField(max_length=100)

	created_at = models.DateTimeField(auto_now_add=True)
	updated_at = models.DateTimeField(auto_now=True)


	def __str__(self):
		return f"{self.alias}"
