from django.shortcuts import render, get_object_or_404
from rest_framework import status
from rest_framework.views import APIView
from rest_framework.response import Response 

from ..models.comic_book import ComicBook
from ..serializers import ComicBookSerializer, ComicBookReadSerializer


#create your views here

class ComicBooksView(APIView):
	"""View class for comic_books/ for viewing all and creating"""
	authentication_classes = ()
	permission_classes = ()
	serializer_class = ComicBookSerializer
	def get(self, request):
		comic_books = ComicBook.objects.all()
		serializer = ComicBookReadSerializer(comic_books, many=True)
		return Response({'comic_books': serializer.data})

	def post(self, request):
		
		serializer = ComicBookSerializer(data=request.data['comicbook'], partial=True)
		if serializer.is_valid():
			serializer.save()
			return Response(serializer.data, status=status.HTTP_201_CREATED)
		return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

class ComicBookDetailView(APIView):
	""" View class for comic_books/:pk for viewing a single comic_book, updating a single comic_book, or removing a single comic_book  """
	authentication_classes = ()
	permission_classes = ()
	serializer_class = ComicBookSerializer
	def get(self, request, pk):
		comic_book = get_object_or_404(ComicBook, pk=pk)
		serializer = ComicBookReadSerializer(comic_book)
		return Response({'comic_book': serializer.data})

	def patch(self, request, pk):
		comic_book = get_object_or_404(ComicBook, pk=pk)
		
		serializer = ComicBookSerializer(comic_book, data=request.data['comicbook'], partial=True)
		if serializer.is_valid():
			serializer.save()
			return Response(serializer.data, status=status.HTTP_200_OK)
		return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

	def delete(self, request, pk):
		comic_book = get_object_or_404(ComicBook, pk=pk)
		comic_book.delete()
		return Response(status=status.HTTP_204_NO_CONTENT)