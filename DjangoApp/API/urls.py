from django.urls import path
from .views import APIViewSet


urlpatterns = [
    path('', APIViewSet.as_view({'get': 'list'})),
]
