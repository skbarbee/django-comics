from django.shortcuts import render, get_object_or_404
from rest_framework import status
from rest_framework.views import APIView
from rest_framework.response import Response 

from ..models.favorites import Favorite
from ..serializers import FavoriteSerializer


#create your views here

class FavoritesView(APIView):
	"""View class for favorites/ for viewing all and creating"""
	authentication_classes = ()
	permission_classes = ()
	serializer_class = FavoriteSerializer
	def get(self, request):
		favorites = Favorite.objects.all()
		serializer = FavoriteSerializer(favorites, many=True)
		return Response({'favorites': serializer.data})

	def post(self, request):
		serializer = FavoriteSerializer(data=request.data['favorite'], partial=True)
		if serializer.is_valid():
			serializer.save()
			return Response(serializer.data, status=status.HTTP_201_CREATED)
		return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

class FavoriteDetailView(APIView):
	""" View class for favorites/:pk for viewing a single favorite, updating a single favorite, or removing a single favorite  """
	authentication_classes = ()
	permission_classes = ()
	serializer_class = FavoriteSerializer
	def get(self, request, pk):
		favorite = get_object_or_404(Favorite, pk=pk)
		serializer = FavoriteSerializer(favorite)
		return Response({'favorite': serializer.data})

	def patch(self, request, pk):
		favorite = get_object_or_404(Favorite, pk=pk)
		serializer = FavoriteSerializer(favorite, data=request.data['favorite'],partial=True)
		if serializer.is_valid():
			serializer.save()
			return Response(serializer.data, status=status.HTTP_200_OK)
		return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

	def delete(self, request, pk):
		favorite = get_object_or_404(Favorite, pk=pk)
		favorite.delete()
		return Response(status=status.HTTP_204_NO_CONTENT)