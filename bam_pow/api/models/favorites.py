from django.db import models
from django.contrib.auth import get_user_model
from .author import Author

# Create your models here.
class Favorites(models.Model):
  # define fields
  # https://docs.djangoproject.com/en/3.0/ref/models/fields/
  id = models.AutoField(primary_key=True)
  favorite_authors = models.ManyToManyField('Author', related_name='favorite_author', blank=True,)
  favorite_illustrators = models.ManyToManyField('Illustrator', related_name='favorite_illustrator', blank=True,)
  favorite_publishers = models.ManyToManyField('Publisher', related_name='favorite_publisher', blank=True,)
  favorite_characters = models.ManyToManyField('Character', related_name='favorite_character', blank=True,)
  owner = models.ForeignKey(
      get_user_model(),
      on_delete=models.CASCADE
  )

  def __str__(self):
    # This must return a string
    return f"The owner is {self.owner} and they like {self.favorite_authors}"

  # def as_dict(self):
  #   """Returns dictionary version of Favorites models"""
  #   return {
  #       'authors': self.favorite_author,
  #       'illustrators': self.favorite_illustrators,
  #       'publishers': self.favorite_pusblishers,
  #       'character': self.favoite_characters
  #   }
