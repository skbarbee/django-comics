from django.urls import path
from .views.comic_book_views import ComicBooks, ComicBookDetail
from .views.author_views import AuthorDetailView, AuthorsView
from .views.mango_views import Mangos, MangoDetail
from .views.user_views import SignUp, SignIn, SignOut, ChangePassword
from .views.illustrator import IllustratorDetail, Illustrators
from .views.publisher import Publishers, PublisherDetail
from .views.character_views import Characters, CharacterDetail


urlpatterns = [
  	# Restful routing
    path('comics/', ComicBooks.as_view(), name='comics'),
    path('comics/<int:pk>/', ComicBookDetail.as_view(), name='comic_detail'),
    path('authors/', AuthorsView.as_view(), name='authors'),
    path('authors/<int:pk>/', AuthorDetailView.as_view(), name='author'),
    path('illustrators/', Illustrators.as_view(), name='illustrators'),
    path('illustrators/<int:pk>/', IllustratorDetail.as_view(), name='illustrators'),
    path('publishers/', Publishers.as_view(), name='publishers'),
    path('publishers/<int:pk>/', PublisherDetail.as_view(), name='publisher'),
    path('characters/', Characters.as_view(), name='characters'),
    path('characters/<int:pk>/', CharacterDetail.as_view(), name='character'),
    path('mangos/', Mangos.as_view(), name='mangos'),
    path('mangos/<int:pk>/', MangoDetail.as_view(), name='mango_detail'),
    path('sign-up/', SignUp.as_view(), name='sign-up'),
    path('sign-in/', SignIn.as_view(), name='sign-in'),
    path('sign-out/', SignOut.as_view(), name='sign-out'),
    path('change-pw/', ChangePassword.as_view(), name='change-pw')
]
