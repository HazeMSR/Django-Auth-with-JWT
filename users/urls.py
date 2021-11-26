from django.urls import path, include
from rest_framework import routers  
from .views import *

router = routers.DefaultRouter()
  
# define the router path and viewset to be used
router.register(r'', UserViewSet)

urlpatterns = [
    path('register', RegisterView.as_view()),
    path('login', LoginView.as_view()),
    path('logout', LogoutView.as_view(), name='auth_logout'),
    path('logout_oldie', LogoutOldieView.as_view()),
    path('', include(router.urls))
]
