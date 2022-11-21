from django.db import models
from django.core.validators import MinValueValidator


class ComicBook(models.Model):
    title = models.CharField(max_length=100)
    author = models.CharField(max_length=100)
    illustrator = models.CharField(max_length=100)
    edition = models.IntegerField(validators=[MinValueValidator(0)])
    publisher = models.CharField(max_length=50)
    characters = models.CharField(max_length=100)
    release_date = models.DateField()
    owner = models.ForeignKey(
      get_user_model(),
      on_delete=models.CASCADE
  )

    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"{self.title}"

    
    