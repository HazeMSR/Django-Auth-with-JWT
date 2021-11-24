from rest_framework.views import APIView
from rest_framework.generics import GenericAPIView
from rest_framework.response import Response
from rest_framework.exceptions import AuthenticationFailed
from rest_framework.viewsets import ModelViewSet
from rest_framework.permissions import IsAuthenticated
from rest_framework_simplejwt.tokens import RefreshToken
from rest_framework import status

from .serializers import *
from .models import *
from users.views import verify_token


class JobViewSet(ModelViewSet):
    queryset = Job.objects.all()
    permission_classes = [IsAuthenticated]
    serializer_class = JobSerializer

class AddressViewSet(ModelViewSet):
    queryset = Address.objects.all()
    permission_classes = [IsAuthenticated]
    serializer_class = AddressSerializer

class EmployeeViewSet(ModelViewSet):
    queryset = Employee.objects.all()
    permission_classes = [IsAuthenticated]
    serializer_class = EmployeeSerializer


class StoreViewSet(ModelViewSet):
    permission_classes = [IsAuthenticated]
    queryset = Store.objects.all()
    serializer_class = StoreSerializer


class StoreView(APIView):
    def get(self, request):
        payload = verify_token(request)
        store = Store.objects.all()
        serializer = StoreSerializer(store, many=True)
        return Response(serializer.data)
    
    def post(self,request):
        pass

    def delete(self,request):
        pass

    def put(self,request):
        pass

    def patch(self,request):
        pass

class LogoutView(GenericAPIView):
    serializer_class = RefreshTokenSerializer
    permission_classes = (IsAuthenticated, )

    def post(self, request, *args):
        sz = self.get_serializer(data=request.data)
        sz.is_valid(raise_exception=True)
        sz.save()
        return Response(status=status.HTTP_204_NO_CONTENT)