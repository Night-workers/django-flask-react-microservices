from rest_framework import viewsets
from rest_framework.response import Response
from .models import Hello
from .serializers import HelloSerializer

class APIViewSet(viewsets.ViewSet):
    def list(self, request):
        hello = Hello.objects.all()
        serializer = HelloSerializer(hello, many=True)
        return Response(serializer.data)
        