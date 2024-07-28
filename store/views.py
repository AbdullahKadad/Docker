from django.shortcuts import render
from django.views.generic import TemplateView, ListView
from cars.models import *

# Create your views here.

class StoreList(ListView):
    model = Car
    template_name = 'home.html'
    context_object_name = 'cars'

    