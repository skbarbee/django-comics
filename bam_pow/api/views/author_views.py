from django.shortcuts import render, get_object_or_404
from django.core.serializers.json import DjangoJSONEncoder
from rest_framework import status
from rest_framework.views import APIView
from rest_framework.response import Response 
from ..models.comic_book import ComicBook
from ..models.author import Author
from ..serializers import AuthorSerializer
from ..serializers import ComicBookReadSerializer



#create your views here

class AuthorsView(APIView):
	"""View class for authors/ for viewing all and creating"""
	authentication_classes = ()
	permission_classes = ()
	serializer_class = AuthorSerializer
	def get(self, request):
		authors = Author.objects.all()
		serializer = AuthorSerializer(authors, many=True, )
		return Response({'authors': serializer.data})

	def post(self, request):
		request.data['author']['owner'] = request.user.id
		serializer = AuthorSerializer(data=request.data['author'])
		print('this is the author create\n', request.data['author'])
		if serializer.is_valid():
			serializer.save()
			return Response(serializer.data, status=status.HTTP_201_CREATED)
		return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
		

class AuthorDetailView(APIView):
	""" View class for authors/:pk for viewing a single author, updating a single author, or removing a single author  """
	authentication_classes = ()
	permission_classes = ()
	serializer_class = AuthorSerializer
	def get(self, request, pk):
		author = get_object_or_404(Author, pk=pk)
		comics_written = author.authored.filter(id=pk)
		print('this is the comics written\n', comics_written)
		serializer = AuthorSerializer(author)
		c_serializer = ComicBookReadSerializer
		print(c_serializer(comics_written,many=True).data)
		return Response(
			{'author': serializer.data , 
			"written":c_serializer(comics_written,many=True).data
			}
		)

	def patch(self, request, pk):
		author = get_object_or_404(Author, pk=pk)
		serializer = AuthorSerializer(author, data=request.data['author'])
		if serializer.is_valid():
			serializer.save()
			return Response(serializer.data, status=status.HTTP_200_OK)
		return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

	def delete(self, request, pk):
		author = get_object_or_404(Author, pk=pk)
		author.delete()
		return Response(status=status.HTTP_204_NO_CONTENT)


