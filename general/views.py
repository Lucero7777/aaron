from django.shortcuts import render

# Create your views here.
def pregunta(request):
    return render(request, 'pregunta.html')