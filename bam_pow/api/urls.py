from django.urls import path
from .views.comic_book_views import ComicBooks, ComicBookDetail
from .views.mango_views import Mangos, MangoDetail
from .views.user_views import SignUp, SignIn, SignOut, ChangePassword

urlpatterns = [
  	# Restful routing
    path('comics/', ComicBooks.as_view(), name='comics'),
    path('comics/<int:pk>/', ComicBookDetail.as_view(), name='comic_detail'),
    path('authors/', ComicBooks.as_view(), name='authors'),
    path('authors/<int:pk>/', ComicBookDetail.as_view(), name='author'),
    path('mangos/', Mangos.as_view(), name='mangos'),
    path('mangos/<int:pk>/', MangoDetail.as_view(), name='mango_detail'),
    path('sign-up/', SignUp.as_view(), name='sign-up'),
    path('sign-in/', SignIn.as_view(), name='sign-in'),
    path('sign-out/', SignOut.as_view(), name='sign-out'),
    path('change-pw/', ChangePassword.as_view(), name='change-pw')
]
