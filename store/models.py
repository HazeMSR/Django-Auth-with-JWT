# cookbook/ingredients/models.py
from django.db import models

class Store(models.Model):
    name = models.CharField(max_length=100)
    address = models.TextField()
    # address = models.OneToOneField(Address)
    owner = models.CharField(max_length=255)
    
    def __str__(self):
        return self.name + ' at: ' + self.address + ' belongs to ' + self.owner

class Job(models.Model):
    name = models.CharField(max_length=255, unique=True)

    def __str__(self):
        return self.name

class Address(models.Model):
    name = models.CharField(max_length=100)
    state = models.CharField(max_length=100)
    int_number = models.IntegerField(null=True)
    ext_number = models.IntegerField(null=True)

    def __str__(self):
        return self.name + ' ' + str(self.ext_number)

class Employee(models.Model):
    name = models.CharField(max_length=100)
    age = models.IntegerField()
    last_grade = models.CharField(max_length=100)
    branch = models.ForeignKey(Store, related_name='employees', on_delete=models.CASCADE)
    job = models.ManyToManyField(Job)
    home_address = models.OneToOneField(Address, on_delete=models.DO_NOTHING)
    
    def __str__(self):
        return 'Worker: ' + self.name + ' is ' + str(self.age) + ' old and finished ' + self.last_grade