from django.db import models
from .author import Author
from .illustrator import Illustrator
from .character import Character
from .publisher import Publisher


class Favorite(models.Model):
    user = models.ForeignKey(
        'User',
        on_delete=models.CASCADE,
        null=True, blank=True
    )
    author = models.ForeignKey(
        Author,
        on_delete=models.CASCADE,
        null=True, blank=True
    )
    illustrator = models.ForeignKey(
        Illustrator,
        on_delete=models.CASCADE,
        null=True, blank=True
    )
    character = models.ForeignKey(
        Character,
        on_delete=models.CASCADE,
        null=True, blank=True
    )
    publisher = models.ForeignKey(
        Publisher,
        on_delete=models.CASCADE,
        null=True, blank=True
    )
    user = models.ForeignKey(
        'User',
        on_delete=models.CASCADE,
        null=True, blank=True
    )

    def __str__(self):
        return "These are favorites"