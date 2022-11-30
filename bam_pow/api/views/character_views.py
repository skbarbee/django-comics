from django.shortcuts import render, get_object_or_404
from rest_framework import status
from rest_framework.views import APIView
from rest_framework.response import Response 

from ..models.character import Character
from ..serializers import CharacterSerializer


#create your views here

class CharactersView(APIView):
	"""View class for characters/ for viewing all and creating"""
	authentication_classes = ()
	permission_classes = ()
	serializer_class = CharacterSerializer
	def get(self, request):
		characters = Character.objects.all()
		serializer = CharacterSerializer(characters, many=True)
		return Response({'characters': serializer.data})

	def post(self, request):
		request.data['character']['owner'] = request.user.id
		serializer = CharacterSerializer(data=request.data['character'], partial=True)
		if serializer.is_valid():
			serializer.save()
			return Response(serializer.data, status=status.HTTP_201_CREATED)
		return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

class CharacterDetailView(APIView):
	""" View class for characters/:pk for viewing a single character, updating a single character, or removing a single character  """
	authentication_classes = ()
	permission_classes = ()
	serializer_class = CharacterSerializer
	def get(self, request, pk):
		character = get_object_or_404(Character, pk=pk)
		serializer = CharacterSerializer(character)
		return Response({'character': serializer.data})

	def patch(self, request, pk):
		character = get_object_or_404(Character, pk=pk)
		serializer = CharacterSerializer(character, data=request.data['character'], partial=True)
		if serializer.is_valid():
			serializer.save()
			return Response(serializer.data, status=status.HTTP_200_OK)
		return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

	def delete(self, request, pk):
		character = get_object_or_404(Character, pk=pk)
		character.delete()
		return Response(status=status.HTTP_204_NO_CONTENT)
