from django.contrib.auth import get_user_model
from rest_framework import serializers


from .models.comic_book import ComicBook
from .models.author import Author
from .models.user import User
from .models.illustrator import Illustrator
from .models.publisher import Publisher
from .models.character import Character


class ComicBookSerializer(serializers.ModelSerializer):
    class Meta:
        model = ComicBook
        fields = ('id', 'title', 'edition', 'publisher', 'authors', 'illustrators', 'characters', 'release_date', 'cover')
     


class AuthorSerializer(serializers.ModelSerializer):
    class Meta:
        fields = ('first_name', 'last_name', 'id')
        model = Author

class IllustratorSerializer(serializers.ModelSerializer):
    class Meta:
        fields = ('first_name', 'last_name', 'id')
        model = Illustrator

class PublisherSerializer(serializers.ModelSerializer):
    class Meta:
        fields = '__all__'
        model = Publisher

class CharacterSerializer(serializers.ModelSerializer):
    class Meta:
        fields = ('real_name', 'alias', 'details', 'profile_picture', 'id')
        model = Character

class ComicBookReadSerializer(serializers.ModelSerializer):
    authors = serializers.StringRelatedField(many=True)
    illustrators = serializers.StringRelatedField(many=True)
    publisher = serializers.StringRelatedField()
    characters = serializers.StringRelatedField(many=True)
    class Meta:
        fields = '__all__'
        model = ComicBook

class UserFavoriteSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ('id', 'email', 'password', 'favorite_authors', 'favorite_illustrators', 'favorite_publishers', 'favorite_characters')

class UserReadFavoriteSerializer(serializers.ModelSerializer):
    favorite_authors = serializers.StringRelatedField(many=True)
    favorite_illustrators = serializers.StringRelatedField(many=True)
    favorite_publisher = serializers.StringRelatedField(many=True)
    favorite_characters = serializers.StringRelatedField(many=True)
    class Meta:
        fields = '__all__'
        model = User

class UserGetFavoriteSerializer(serializers.ModelSerializer):
    favorite_authors = AuthorSerializer(many=True)
    favorite_illustrators = IllustratorSerializer(many=True)
    favorite_publishers = PublisherSerializer(many=True)
    favorite_characters = CharacterSerializer(many=True)
    class Meta:
        fields = '__all__'
        model = User



class UserSerializer(serializers.ModelSerializer):
   
    # This model serializer will be used for User creation
    # The login serializer also inherits from this serializer
    # in order to require certain data for login
    class Meta:
        # get_user_model will get the user model (this is required)
        # https://docs.djangoproject.com/en/3.0/topics/auth/customizing/#referencing-the-user-model
        model = get_user_model()
        fields = ('id', 'email', 'password')
        extra_kwargs = { 'password': { 'write_only': True, 'min_length': 5 } }

    # This create method will be used for model creation
    def create(self, validated_data):
        return get_user_model().objects.create_user(**validated_data)

class UserRegisterSerializer(serializers.Serializer):
    
    # Require email, password, and password_confirmation for sign up
    email = serializers.CharField(max_length=300, required=True)
    password = serializers.CharField(required=True)
    password_confirmation = serializers.CharField(required=True, write_only=True)

    def validate(self, data):
        # Ensure password & password_confirmation exist
        if not data['password'] or not data['password_confirmation']:
            raise serializers.ValidationError('Please include a password and password confirmation.')

        # Ensure password & password_confirmation match
        if data['password'] != data['password_confirmation']:
            raise serializers.ValidationError('Please make sure your passwords match.')
        # if all is well, return the data
        return data

class ChangePasswordSerializer(serializers.Serializer):
    model = get_user_model()
    old = serializers.CharField(required=True)
    new = serializers.CharField(required=True)
