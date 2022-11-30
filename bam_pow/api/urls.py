from django.urls import path
from .views.comic_book_views import ComicBooksView, ComicBookDetailView
from .views.author_views import AuthorDetailView, AuthorsView
from .views.favorites_views import FavoritesView, FavoritesDetail
from .views.user_views import SignUp, SignIn, SignOut, ChangePassword
from .views.illustrator import IllustratorsView, IllustratorDetailView
from .views.publisher import PublishersView, PublisherDetailView
from .views.character_views import CharactersView, CharacterDetailView



urlpatterns = [
  	# Restful routing
    path('comics/', ComicBooksView.as_view(), name='comics'),
    path('comics/<int:pk>/', ComicBookDetailView.as_view(), name='comic_detail'),
    path('favorites/', FavoritesView.as_view(), name='comics'),
    path('favorites/<int:pk>/', FavoritesDetail.as_view(), name='comic_detail'),
    path('authors/', AuthorsView.as_view(), name='authors'),
    path('authors/<int:pk>/', AuthorDetailView.as_view(), name='author'),
    path('illustrators/', IllustratorsView.as_view(), name='illustrators'),
    path('illustrators/<int:pk>/', IllustratorDetailView.as_view(), name='illustrator'),
    path('publishers/', PublishersView.as_view(), name='publishers'),
    path('publishers/<int:pk>/', PublisherDetailView.as_view(), name='publisher'),
    path('characters/', CharactersView.as_view(), name='characters'),
    path('characters/<int:pk>/', CharacterDetailView.as_view(), name='character'),
    path('sign-up/', SignUp.as_view(), name='sign-up'),
    path('sign-in/', SignIn.as_view(), name='sign-in'),
    path('sign-out/', SignOut.as_view(), name='sign-out'),
    path('change-pw/', ChangePassword.as_view(), name='change-pw')
]
