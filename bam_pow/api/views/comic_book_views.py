from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated
from rest_framework.exceptions import PermissionDenied
from rest_framework import generics, status
from django.shortcuts import get_object_or_404

from ..models.comic_book import ComicBook
from ..serializers import ComicBookSerializer, ComicBookReadSerializer

# Create your views here.
class ComicBooks(generics.ListCreateAPIView):
    authentication_classes = ()
    permission_classes = ()
    serializer_class = ComicBookSerializer
    def get(self, request):
        """Index request"""
        # Get all the comic_books:
        comic_books = ComicBook.objects.all()
        # Filter the comic_books by owner, so you can only see your owned comic_books
        # comic_books = ComicBook.objects.filter(owner=request.user.id)
        # Run the data through the serializer
        data = ComicBookReadSerializer(comic_books, many=True).data
        return Response({ 'comic_books': data })

    def post(self, request):
        """Create request"""
        # Add user to request data object
        request.data['comic_book']['owner'] = request.user.id
        # Serialize/create comic_book
        comic_book = ComicBookSerializer(data=request.data['comic_book'])
        # If the comic_book data is valid according to our serializer...
        if comic_book.is_valid():
            # Save the created comic_book & send a response
            comic_book.save()
            return Response({ 'comic_book': comic_book.data }, status=status.HTTP_201_CREATED)
        # If the data is not valid, return a response with the errors
        return Response(comic_book.errors, status=status.HTTP_400_BAD_REQUEST)

class ComicBookDetail(generics.RetrieveUpdateDestroyAPIView):
    authentication_classes = ()
    permission_classes = ()
    def get(self, request, pk):
        """Show request"""
        # Locate the comic_book to show
        comic_book = get_object_or_404(ComicBook, pk=pk)
        # Only want to show owned comic_books?
        if request.user != comic_book.owner:
            raise PermissionDenied('Unauthorized, you do not own this comic_book')

        # Run the data through the serializer so it's formatted
        data = ComicBookReadSerializer(comic_book).data
        return Response({ 'comic_book': data })

    def delete(self, request, pk):
        """Delete request"""
        # Locate comic_book to delete
        comic_book = get_object_or_404(ComicBook, pk=pk)
        # Check the comic_book's owner against the user making this request
        if request.user != comic_book.owner:
            raise PermissionDenied('Unauthorized, you do not own this comic book')
        # Only delete if the user owns the  comic_book
        comic_book.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)

    def partial_update(self, request, pk):
        """Update Request"""
        # Locate ComicBook
        # get_object_or_404 returns a object representation of our ComicBook
        comic_book = get_object_or_404(ComicBook, pk=pk)
        # Check the comic_book's owner against the user making this request
        if request.user != comic_book.owner:
            raise PermissionDenied('Unauthorized, you do not own this comic book')

        # Ensure the owner field is set to the current user's ID
        request.data['comic_book']['owner'] = request.user.id
        # Validate updates with serializer
        data = ComicBookSerializer(comic_book, data=request.data['comic book'], partial=True)
        if data.is_valid():
            # Save & send a 204 no content
            data.save()
            return Response(status=status.HTTP_204_NO_CONTENT)
        # If the data is not valid, return a response with the errors
        return Response(data.errors, status=status.HTTP_400_BAD_REQUEST)

