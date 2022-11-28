from django.db import models
from .author import Author
from .illustrator import Illustrator
from .character import Character
from .publisher import Publisher

class Favorite(models.Model):
    author = models.ForeignKey(
        Author,
        on_delete=models.CASCADE,
    )
    illustrator = models.ForeignKey(
        Illustrator,
        on_delete=models.CASCADE,
    )
    character = models.ForeignKey(
        Character,
        on_delete=models.CASCADE
    )
    publisher = models.ForeignKey(
        Publisher,
        on_delete=models.CASCADE
    )

    def __str__(self):
        return