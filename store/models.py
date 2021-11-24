# cookbook/ingredients/models.py
from django.db import models

class Store(models.Model):
    name = models.CharField(max_length=100)
    address = models.TextField()
    owner = models.CharField(max_length=255)
    
    def __str__(self):
        return self.name + ' at: ' + self.address + ' belongs to ' + self.owner