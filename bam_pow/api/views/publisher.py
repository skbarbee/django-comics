from django.shortcuts import render, get_object_or_404
from rest_framework import status
from rest_framework.views import APIView
from rest_framework.response import Response 

from ..models.publisher import Publisher
from ..serializers import PublisherSerializer
from ..serializers import ComicBookReadSerializer


#create your views here

class PublishersView(APIView):
	"""View class for publishers/ for viewing all and creating"""
	authentication_classes = ()
	permission_classes = ()
	serializer_class = PublisherSerializer
	def get(self, request):
		publishers = Publisher.objects.all()
		serializer = PublisherSerializer(publishers, many=True)
		return Response({'publishers': serializer.data})

	def post(self, request):
		request.data['publisher']['owner'] = request.user.id
		serializer = PublisherSerializer(data=request.data["publisher"])
		if serializer.is_valid():
			serializer.save()
			return Response(serializer.data, status=status.HTTP_201_CREATED)
		return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

class PublisherDetailView(APIView):
	""" View class for publishers/:pk for viewing a single publisher, updating a single publisher, or removing a single publisher  """
	authentication_classes = ()
	permission_classes = ()
	serializer_class = PublisherSerializer
	def get(self, request, pk):
		publisher = get_object_or_404(Publisher, pk=pk)
		publications = publisher.published_comics.filter(id=pk)
		serializer = PublisherSerializer(publisher)
		c_serializer = ComicBookReadSerializer
		print(c_serializer(publications, many=True).data)
		return Response(
			{
				'publisher': serializer.data,
				'published': c_serializer(publications, many=True).data

			}
		)

	def patch(self, request, pk):
		publisher = get_object_or_404(Publisher, pk=pk)
		serializer = PublisherSerializer(publisher, data=request.data["publisher"])
		if serializer.is_valid():
			serializer.save()
			return Response(serializer.data, status=status.HTTP_200_OK)
		return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

	def delete(self, request, pk):
		publisher = get_object_or_404(Publisher, pk=pk)
		publisher.delete()
		return Response(status=status.HTTP_204_NO_CONTENT)

