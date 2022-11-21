from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated
from rest_framework.exceptions import PermissionDenied
from rest_framework import generics, status
from django.shortcuts import get_object_or_404

from ..models.publisher import Publisher
from ..serializers import PublisherSerializer 

# Create your views here.
class Publishers(generics.ListCreateAPIView):
    authentication_classes = ()
    permission_classes = ()
    serializer_class = PublisherSerializer
    def get(self, request):
        """Index request"""
        # Get all the publishers:
        publishers = Publisher.objects.all()
        # Filter the publishers by owner, so you can only see your owned publishers
        # publishers = Publisher.objects.filter(owner=request.user.id)
        # Run the data through the serializer
        data = PublisherSerializer(publishers, many=True).data
        return Response({ 'publishers': data })

    def post(self, request):
        """Create request"""
        # Add user to request data object
        request.data['publisher']['owner'] = request.user.id
        # Serialize/create publisher
        publisher = PublisherSerializer(data=request.data['publisher'])
        # If the publisher data is valid according to our serializer...
        if publisher.is_valid():
            # Save the created publisher & send a response
            publisher.save()
            return Response({ 'publisher': publisher.data }, status=status.HTTP_201_CREATED)
        # If the data is not valid, return a response with the errors
        return Response(publisher.errors, status=status.HTTP_400_BAD_REQUEST)

class PublisherDetail(generics.RetrieveUpdateDestroyAPIView):
    authentication_classes = ()
    permission_classes = ()
    def get(self, request, pk):
        """Show request"""
        # Locate the publisher to show
        publisher = get_object_or_404(Publisher, pk=pk)
        # Only want to show owned publishers?
        if request.user != publisher.owner:
            raise PermissionDenied('Unauthorized, you do not own this publisher')

        # Run the data through the serializer so it's formatted
        data = PublisherSerializer(publisher).data
        return Response({ 'publisher': data })

    def delete(self, request, pk):
        """Delete request"""
        # Locate publisher to delete
        publisher = get_object_or_404(Publisher, pk=pk)
        # Check the publisher's owner against the user making this request
        if request.user != publisher.owner:
            raise PermissionDenied('Unauthorized, you do not own this comic book')
        # Only delete if the user owns the  publisher
        publisher.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)

    def partial_update(self, request, pk):
        """Update Request"""
        # Locate Publisher
        # get_object_or_404 returns a object representation of our Publisher
        publisher = get_object_or_404(Publisher, pk=pk)
        # Check the publisher's owner against the user making this request
        if request.user != publisher.owner:
            raise PermissionDenied('Unauthorized, you do not own this comic book')

        # Ensure the owner field is set to the current user's ID
        request.data['publisher']['owner'] = request.user.id
        # Validate updates with serializer
        data = PublisherSerializer(publisher, data=request.data['comic book'], partial=True)
        if data.is_valid():
            # Save & send a 204 no content
            data.save()
            return Response(status=status.HTTP_204_NO_CONTENT)
        # If the data is not valid, return a response with the errors
        return Response(data.errors, status=status.HTTP_400_BAD_REQUEST)

