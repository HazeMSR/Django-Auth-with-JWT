from django.db import models
from users.models import User
from datetime import datetime

class Address(models.Model):
	state = models.CharField(max_length=100)
	city = models.CharField(max_length=100)
	pc = models.SmallIntegerField()   
	longitude = models.DecimalField(max_digits=40, decimal_places=20)
	latitude = models.DecimalField(max_digits=40, decimal_places=20)
	street = models.CharField(max_length=255)
	int_number = models.IntegerField(null=True)
	ext_number = models.IntegerField(null=True)

	def __str__(self):
		return f"({str(self.longitude)}, {str(self.latitude)}) {self.street} #{str(self.ext_number)}"

class Restaurant(models.Model):
	name = models.CharField(max_length=100)
	type = models.CharField(max_length=100)
	phone = models.CharField(max_length=16, null=True)
	schedule = models.CharField(max_length=16, null=True)
	address = models.ForeignKey(Address, related_name='restaurants', on_delete=models.CASCADE)

	def __str__(self):
		return self.name +' is a restaurant type ' + self.type

class Products(models.Model):
	name = models.CharField(max_length=255, unique=True)
	price = models.DecimalField(max_digits=11, decimal_places=2)
	description = models.TextField()
	image = models.BinaryField(null=True)

	def __str__(self):
		return self.name

class Status(models.Model):
	description = models.TextField()

	def __str__(self):
		return self.description

class Orders(models.Model):
	user = models.ForeignKey(User, related_name='user_orders', on_delete=models.DO_NOTHING)
	restaurant = models.ForeignKey(Restaurant, related_name='restaurant_orders', on_delete=models.CASCADE)
	created_at = models.DateTimeField(auto_now_add=True, null=True)
	updated_at = models.DateTimeField(auto_now=True,null=True)
	status = models.ForeignKey(Status, related_name='status_orders', on_delete=models.DO_NOTHING, null=True)
	products = models.ManyToManyField(Products, through='OrdersProducts')

	def __str__(self):
		return f"{self.user} {self.restaurant} {self.created_at} {self.updated_at}"

class OrdersProducts(models.Model):
	order = models.ForeignKey(Orders, related_name='orders_products_orders', on_delete=models.CASCADE)
	product = models.ForeignKey(Products, related_name='orders_products_products', on_delete=models.CASCADE)
	quantity = models.IntegerField()

	def __str__(self):
		return f"Order: {self.orders}, Product: {self.product}, Quantity: {self.quantity}"