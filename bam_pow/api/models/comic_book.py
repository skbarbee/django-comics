from django.db import models
from django.contrib.auth import get_user_model
from django.core.validators import MinValueValidator
from .author import Author
from .character import Character
from .publisher import Publisher
from .illustrator import Illustrator

class ComicBook(models.Model):
    title = models.CharField(max_length=100)
    edition = models.IntegerField(validators=[MinValueValidator(0)])
    release_date = models.DateField(null=True, blank=True)
    publisher = models.ForeignKey(
      Publisher,
      on_delete=models.CASCADE,
      related_name='published_comics'
    ) 
    authors = models.ManyToManyField('Author')
    illustrators = models.ManyToManyField('Illustrator')
    characters = models.ManyToManyField('Character')
    cover = models.CharField(max_length=200, null=True, blank=True)

    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"{self.title}"