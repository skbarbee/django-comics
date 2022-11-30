from django.shortcuts import render, get_object_or_404
from rest_framework import status
from rest_framework.views import APIView
from rest_framework.response import Response 

from ..models.illustrator import Illustrator
from ..serializers import IllustratorSerializer
from ..serializers import ComicBookReadSerializer


#create your views here

class IllustratorsView(APIView):
	"""View class for illustrators/ for viewing all and creating"""
	authentication_classes = ()
	permission_classes = ()
	serializer_class = IllustratorSerializer
	def get(self, request):
		illustrators = Illustrator.objects.all()
		serializer = IllustratorSerializer(illustrators, many=True)
		return Response({'illustrators': serializer.data})

	def post(self, request):
		request.data['illustrator']['owner'] = request.user.id
		serializer = IllustratorSerializer(data=request.data['illustrator'])
		if serializer.is_valid():
			serializer.save()
			return Response(serializer.data, status=status.HTTP_201_CREATED)
		return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

class IllustratorDetailView(APIView):
	""" View class for illustrators/:pk for viewing a single illustrator, updating a single illustrator, or removing a single illustrator  """
	authentication_classes = ()
	permission_classes = ()
	serializer_class = IllustratorSerializer
	def get(self, request, pk):
		illustrator = get_object_or_404(Illustrator, pk=pk)
		comics_illustrated = illustrator.illustrated.all()
		serializer = IllustratorSerializer(illustrator)
		c_serializer = ComicBookReadSerializer
		return Response(
			{
				'illustrator': serializer.data ,
				'illustrated': c_serializer(comics_illustrated, many=True).data
			}
		)

	def patch(self, request, pk):
		illustrator = get_object_or_404(Illustrator, pk=pk)
		serializer = IllustratorSerializer(illustrator, data=request.data['illustrator'])
		if serializer.is_valid():
			serializer.save()
			return Response(serializer.data, status=status.HTTP_200_OK)
		return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

	def delete(self, request, pk):
		illustrator = get_object_or_404(Illustrator, pk=pk)
		illustrator.delete()
		return Response(status=status.HTTP_204_NO_CONTENT)
