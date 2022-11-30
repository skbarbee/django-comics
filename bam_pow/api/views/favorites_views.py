from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated
from rest_framework.exceptions import PermissionDenied
from rest_framework import generics, status
from django.shortcuts import get_object_or_404

from ..models.favorites import Favorites
from ..serializers import FavoritesSerializer

# Create your views here.
class FavoritesView(generics.ListCreateAPIView):
    permission_classes=()
    serializer_class = FavoritesSerializer
    def get(self, request):
        """Index request"""
        # Get all the favorites:
        favorites = Favorites.objects.all()
        # Filter the favorites by owner, so you can only see your owned favorites
        # favorites = Favorites.objects.filter(owner=request.user.id)
        # Run the data through the serializer
        data = FavoritesSerializer(favorites, many=True).data
        return Response({ 'favorites': data })
    # authentication_classes = ()
    # permission_classes = ()
    # serializer_class = FavoritesSerializer
    # def get(self, request):
    #     favorites = Favorites.objects.all()
    #     print("THIS IS ALL THE FAVORITES\n",favorites)
    #     serializer = FavoritesSerializer(favorites, many=True)
    #     return Response({'favorites': serializer.data})

    def post(self, request):
        """Create request"""
        # Add user to request data object
        request.data['favorites']['owner'] = request.user.id
        # Serialize/create favorites
        favorites = FavoritesSerializer(data=request.data['favorites'])
        # If the favorites data is valid according to our serializer...
        if favorites.is_valid():
            # Save the created favorites & send a response
            favorites.save()
            return Response({ 'favorites': favorites.data }, status=status.HTTP_201_CREATED)
        # If the data is not valid, return a response with the errors
        return Response(favorites.errors, status=status.HTTP_400_BAD_REQUEST)

class FavoritesDetail(generics.RetrieveUpdateDestroyAPIView):
    permission_classes=(IsAuthenticated,)
    def get(self, request, pk):
        """Show request"""
        # Locate the favorites to show
        favorites = get_object_or_404(Favorites, pk=pk)
        # Only want to show owned favoritess?
        if request.user != favorites.owner:
            raise PermissionDenied('Unauthorized, you do not own this favorites')

        # Run the data through the serializer so it's formatted
        data = FavoritesSerializer(favorites).data
        return Response({ 'favorites': data })

    def delete(self, request, pk):
        """Delete request"""
        # Locate favorites to delete
        favorites = get_object_or_404(Favorites, pk=pk)
        # Check the favorites's owner against the user making this request
        if request.user != favorites.owner:
            raise PermissionDenied('Unauthorized, you do not own this favorites')
        # Only delete if the user owns the  favorites
        favorites.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)

    def partial_update(self, request, pk):
        """Update Request"""
        # Locate Favorites
        # get_object_or_404 returns a object representation of our Favorites
        favorites = get_object_or_404(Favorites, pk=pk)
        # Check the favorites's owner against the user making this request
        if request.user != favorites.owner:
            raise PermissionDenied('Unauthorized, you do not own this favorites')

        # Ensure the owner field is set to the current user's ID
        request.data['favorites']['owner'] = request.user.id
        # Validate updates with serializer
        data = FavoritesSerializer(favorites, data=request.data['favorites'], partial=True)
        if data.is_valid():
            # Save & send a 204 no content
            data.save()
            return Response(status=status.HTTP_204_NO_CONTENT)
        # If the data is not valid, return a response with the errors
        return Response(data.errors, status=status.HTTP_400_BAD_REQUEST)
