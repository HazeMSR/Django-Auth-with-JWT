from django.urls import path, include
from rest_framework import routers  
from .views import *
# import everything from views
  
# define the router
router = routers.DefaultRouter()
  
# define the router path and viewset to be used
router.register(r'', StoreViewSet)

# specify URL Path for rest_framework
urlpatterns = [
    path('', include(router.urls)),
    path('view', StoreView.as_view()),
    path('logout', LogoutView.as_view(), name='auth_logout'),
]
