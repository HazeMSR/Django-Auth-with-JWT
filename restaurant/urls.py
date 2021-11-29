from django.urls import path, include
from rest_framework import routers  
from .views import *

# define the router
router = routers.DefaultRouter()
  
# define the router path and viewset to be used
router.register(r'address', AddressViewSet)
router.register(r'status', StatusViewSet)
router.register(r'products', ProductsViewSet)
router.register(r'orders', OrdersViewSet)
router.register(r'ordersproducts', OrdersProductsViewSet)
router.register(r'', RestaurantViewSet)

# URLS
urlpatterns = [
    path('', include(router.urls)),
]