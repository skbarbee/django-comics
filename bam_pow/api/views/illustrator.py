from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated
from rest_framework.exceptions import PermissionDenied
from rest_framework import generics, status
from django.shortcuts import get_object_or_404

from ..models.illustrator import Illustrator
from ..serializers import IllustratorSerializer 

# Create your views here.
class Illustrators(generics.ListCreateAPIView):
    authentication_classes = ()
    permission_classes = ()
    serializer_class = IllustratorSerializer
    def get(self, request):
        """Index request"""
        # Get all the illustrators:
        illustrators = Illustrator.objects.all()
        # Filter the illustrators by owner, so you can only see your owned illustrators
        # illustrators = Illustrator.objects.filter(owner=request.user.id)
        # Run the data through the serializer
        data = IllustratorSerializer(illustrators, many=True).data
        return Response({ 'illustrators': data })

    def post(self, request):
        """Create request"""
        # Add user to request data object
        request.data['illustrator']['owner'] = request.user.id
        # Serialize/create illustrator
        illustrator = IllustratorSerializer(data=request.data['illustrator'])
        # If the illustrator data is valid according to our serializer...
        if illustrator.is_valid():
            # Save the created illustrator & send a response
            illustrator.save()
            return Response({ 'illustrator': illustrator.data }, status=status.HTTP_201_CREATED)
        # If the data is not valid, return a response with the errors
        return Response(illustrator.errors, status=status.HTTP_400_BAD_REQUEST)

class IllustratorDetail(generics.RetrieveUpdateDestroyAPIView):
    authentication_classes = ()
    permission_classes = ()
    def get(self, request, pk):
        """Show request"""
        # Locate the illustrator to show
        illustrator = get_object_or_404(Illustrator, pk=pk)
        # Only want to show owned illustrators?
        if request.user != illustrator.owner:
            raise PermissionDenied('Unauthorized, you do not own this illustrator')

        # Run the data through the serializer so it's formatted
        data = IllustratorSerializer(illustrator).data
        return Response({ 'illustrator': data })

    def delete(self, request, pk):
        """Delete request"""
        # Locate illustrator to delete
        illustrator = get_object_or_404(Illustrator, pk=pk)
        # Check the illustrator's owner against the user making this request
        if request.user != illustrator.owner:
            raise PermissionDenied('Unauthorized, you do not own this comic book')
        # Only delete if the user owns the  illustrator
        illustrator.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)

    def partial_update(self, request, pk):
        """Update Request"""
        # Locate Illustrator
        # get_object_or_404 returns a object representation of our Illustrator
        illustrator = get_object_or_404(Illustrator, pk=pk)
        # Check the illustrator's owner against the user making this request
        if request.user != illustrator.owner:
            raise PermissionDenied('Unauthorized, you do not own this comic book')

        # Ensure the owner field is set to the current user's ID
        request.data['illustrator']['owner'] = request.user.id
        # Validate updates with serializer
        data = IllustratorSerializer(illustrator, data=request.data['comic book'], partial=True)
        if data.is_valid():
            # Save & send a 204 no content
            data.save()
            return Response(status=status.HTTP_204_NO_CONTENT)
        # If the data is not valid, return a response with the errors
        return Response(data.errors, status=status.HTTP_400_BAD_REQUEST)

