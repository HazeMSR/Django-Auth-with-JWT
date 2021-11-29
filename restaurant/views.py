from django.shortcuts import render, get_object_or_404
from rest_framework.viewsets import ModelViewSet
from rest_framework.permissions import IsAuthenticated
from rest_framework.response import Response

from .serializers import *
from .models import *
from users.models import User


class AddressViewSet(ModelViewSet):
    queryset = Address.objects.all()
    permission_classes = [IsAuthenticated,]
    serializer_class = AddressSerializer

class RestaurantViewSet(ModelViewSet):
    queryset = Restaurant.objects.all()
    permission_classes = [IsAuthenticated,]
    serializer_class = RestaurantSerializer

class ProductsViewSet(ModelViewSet):
    queryset = Products.objects.all()
    permission_classes = [IsAuthenticated,]
    serializer_class = ProductsSerializer

class StatusViewSet(ModelViewSet):
    queryset = Status.objects.all()
    permission_classes = [IsAuthenticated,]
    serializer_class = StatusSerializer

class OrdersViewSet(ModelViewSet):
    permission_classes = [IsAuthenticated,]
    queryset = Orders.objects.all()
    serializer_class = OrdersSerializer
    
    # Overriding list method to only show the orders related to the current user
    def list(self, request):
        user = User.objects.filter(username=request.user).values('id')
        queryset = Orders.objects.filter(user=user[0]['id'])
        serializer = OrdersSerializer(queryset, many = True)
        return Response(serializer.data)

    # Overriding retrieve method to only show the order related to the current user
    def retrieve(self, request, pk = None):
        user = User.objects.filter(username=request.user).values('id')
        queryset = Orders.objects.filter(user=user[0]['id'], id=pk)
        order = get_object_or_404(queryset, pk = pk)
        serializer = OrdersSerializer(order)
        return Response(serializer.data)

class OrdersProductsViewSet(ModelViewSet):
    queryset = OrdersProducts.objects.all()
    permission_classes = [IsAuthenticated,]
    serializer_class = OrdersProductsSerializer