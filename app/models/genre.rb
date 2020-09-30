class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 4, name: 'Japanese Food' },
    { id: 8, name: 'Asian Food' },
    { id: 9, name: 'Italian' },
    { id: 9, name: 'French' },
    { id: 9, name: 'American' },
    { id: 9, name: 'Indian' },
    { id: 3, name: 'currey' },
    { id: 9, name: 'Pasta' },
    { id: 2, name: 'Pizza' },
    { id: 6, name: 'Burger' },
    { id: 6, name: 'Fast Food' },
    { id: 7, name: 'Desserts' },
    { id: 6, name: 'Cafe' },
    { id: 7, name: 'Bakery' },
    { id: 10, name: 'Other' }
  ]
  end