from django.db import models
from django.contrib.auth import get_user_model
from django.core.validators import MinValueValidator
from .author import Author
from .character import Character
from .publisher import Publisher
from .illustrator import Illustrator

class ComicBook(models.Model):
    id = models.AutoField(primary_key=True)
    title = models.CharField(max_length=100)
    edition = models.IntegerField(validators=[MinValueValidator(0)])
    release_date = models.DateField(null=True, blank=True)
    publisher = models.ForeignKey(
      Publisher,
      on_delete=models.CASCADE,
      related_name='published_comics'
    ) 
    authors = models.ManyToManyField('Author', related_name='authored')
    illustrators = models.ManyToManyField('Illustrator', related_name='illustrated')
    characters = models.ManyToManyField('Character', related_name='appeared')
    cover = models.CharField(max_length=200, null=True, blank=True)

    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"{self.title}"

      