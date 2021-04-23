class HomeController < ApplicationController
  def index
    @blocks = [{
      title: 'First block',
      images: %w[
        https://picsum.photos/235/243/?random
        https://picsum.photos/235/245/?random
        https://picsum.photos/235/242/?random
        https://picsum.photos/235/243/?random
      ]
    }, {
      title: 'Second block',
      images: %w[
        https://picsum.photos/235/246/?random
        https://picsum.photos/235/248/?random
      ]
    }, {
      title: 'Third block',
      images: %w[
        https://picsum.photos/235/241/?random
        https://picsum.photos/235/243/?random
      ]
    }, {
      title: 'Fourth block',
      images: %w[
        https://picsum.photos/235/247/?random
        https://picsum.photos/235/242/?random
        https://picsum.photos/235/243/?random
      ]
    }, {
      title: 'Fifth block',
      images: %w[
        https://picsum.photos/235/249/?random
        https://picsum.photos/235/243/?random
        https://picsum.photos/235/248/?random
        https://picsum.photos/235/248/?random
      ]
    }, {
      title: 'Sixth block',
      images: %w[
        https://picsum.photos/235/241/?random
        https://picsum.photos/235/243/?random
      ]
    }, {
      title: 'Seventh block',
      images: %w[
        https://picsum.photos/235/243/?random
        https://picsum.photos/235/245/?random
        https://picsum.photos/235/242/?random
        https://picsum.photos/235/243/?random
      ]
    }, {
      title: 'Eighth block',
      images: %w[
        https://picsum.photos/235/241/?random
        https://picsum.photos/235/243/?random
      ]
    }, {
      title: 'Ninth block',
      images: %w[
        https://picsum.photos/235/241/?random
        https://picsum.photos/235/243/?random
      ]
    }]
  end
end

