# below defines the colors we're using.
RED = (255, 0, 0)
GREEN = (0, 255, 0)
BLUE = (0, 0, 255)
WHITE = (255, 255, 255)
BLACK = (0, 0, 0)
YELLOW = (255, 225, 0)
BACKGROUND_COLOR = BLACK

# below defines the size of the screen.
WIDTH = 1280
HEIGHT = 780

ACCELERATION_COEFFICIENT = 1.030  # <- this determines the acceleration of falling objects
# (note that this coefficient is super sensitive and should be altered carefully).

BLOCK_SPAWN_FREQUENCY = 180  # <- this determines how fast falling objects generates (one per milliseconds).

FONT = {  # <- the font properties the UI uses.
    'HP':
        {
            'font': 'calibri',
            'size': 30
        },
    'game_over':
        {
            'font': 'calibri',
            'size': 60,
            'color': (200, 200, 200)
        },
    'score':
        {
            'font': 'monospace',
            'size': '35',
            'color': YELLOW
        }
}
