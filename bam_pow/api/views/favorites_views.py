from django.shortcuts import render, get_object_or_404
from rest_framework.permissions import IsAuthenticated
from rest_framework import status
from rest_framework.views import APIView
from rest_framework.response import Response 

from ..models.user import User
from ..serializers import UserFavoriteSerializer, UserReadFavoriteSerializer,UserGetFavoriteSerializer


#create your views here

class UsersView(APIView):
	"""View class for users/ for viewing all and creating"""
	
	permission_classes=(IsAuthenticated,)
	serializer_class = UserFavoriteSerializer
	def get(self, request):
		users = User.objects.filter(id=request.user.id)
		serializer = UserGetFavoriteSerializer(users, many=True)
		return Response({'users': serializer.data})

	def post(self, request):
		
		serializer = UserFavoriteSerializer(data=request.data['users'], partial=True)
		if serializer.is_valid():
			serializer.save()
			return Response(serializer.data, status=status.HTTP_201_CREATED)
		return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

class UserDetailView(APIView):
	""" View class for users/:pk for viewing a single user, updating a single user, or removing a single user  """
	authentication_classes = ()
	permission_classes = ()
	serializer_class = UserFavoriteSerializer
	def get(self, request, pk):
		user = get_object_or_404(User, pk=pk)
		serializer = UserReadFavoriteSerializer(user)
		return Response({'user': serializer.data})

	def patch(self, request, pk):
		user = get_object_or_404(User, pk=pk)
		serializer = UserFavoriteSerializer(user, data=request.data['favorites'], partial=True)
		if serializer.is_valid():
			serializer.save()
			return Response(serializer.data, status=status.HTTP_200_OK)
		return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

	def delete(self, request, pk):
		user = get_object_or_404(User, pk=pk)
		user.delete()
		return Response(status=status.HTTP_204_NO_CONTENT)