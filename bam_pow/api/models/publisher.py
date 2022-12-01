from django.db import models


class Publisher(models.Model):
	id = models.AutoField(primary_key=True)
	publisher_name = models.CharField(max_length=100)
	
	created_at = models.DateTimeField(auto_now_add=True)
	updated_at = models.DateTimeField(auto_now=True)

	def __str__(self):
		return f"{self.publisher_name}"
