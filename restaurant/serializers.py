from rest_framework import serializers
from .models import *
from users.serializers import UserSerializer

class AddressSerializer(serializers.ModelSerializer):
    restaurants = serializers.StringRelatedField(many=True, read_only=True)
    class Meta:
        model = Address
        fields = ['id','state', 'city', 'pc', 'longitude', 'latitude', 'street', 'ext_number', 'int_number', 'restaurants']

class RestaurantSerializer(serializers.ModelSerializer):
    #orders = serializers.StringRelatedField(many=True, read_only=True)
    address = AddressSerializer(read_only=True)
    class Meta:
        model = Restaurant
        fields = ['id','name','type', 'phone', 'schedule', 'address']

class ProductsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Products
        fields = ['id','name','price','description','image']

class StatusSerializer(serializers.ModelSerializer):
    #orders = serializers.StringRelatedField(many=True, read_only=True)
    class Meta:
        model = Status
        fields = ['id','description']

class OrdersSerializer(serializers.ModelSerializer):
    products = serializers.StringRelatedField(many=True, read_only=True)
    class Meta:
        model = Orders
        fields = ['id','user','restaurant','created_at','updated_at','status', 'products']

class OrdersProductsSerializer(serializers.ModelSerializer):
    class Meta:
        model = OrdersProducts
        fields = ['id','order', 'product']

