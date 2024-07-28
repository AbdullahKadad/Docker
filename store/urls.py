from django.contrib import admin
from django.urls import path
from .views import *

urlpatterns = [
    path('', StoreList.as_view(), name='store_list'),
]