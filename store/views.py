from rest_framework.views import APIView
from rest_framework.generics import GenericAPIView
from rest_framework.response import Response
from rest_framework.exceptions import AuthenticationFailed
from rest_framework.viewsets import ModelViewSet
from rest_framework.permissions import IsAuthenticated
from rest_framework_simplejwt.tokens import RefreshToken
from rest_framework import status

from .serializers import StoreSerializer, RefreshTokenSerializer
from .models import Store
from users.views import verify_token

class StoreViewSet(ModelViewSet):
    queryset = Store.objects.all()
    permission_classes = [IsAuthenticated]
    serializer_class = StoreSerializer


class LogoutView(GenericAPIView):
    serializer_class = RefreshTokenSerializer
    permission_classes = (IsAuthenticated, )

    def post(self, request, *args):
        sz = self.get_serializer(data=request.data)
        sz.is_valid(raise_exception=True)
        sz.save()
        return Response(status=status.HTTP_204_NO_CONTENT)


class StoreView(APIView):
    def get(self, request):
        payload = verify_token(request)
        store = Store.objects.all()
        serializer = StoreSerializer(store, many=True)
        return Response(serializer.data)