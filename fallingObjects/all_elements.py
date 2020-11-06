import pygame
from random import randint
from fallingObjects.constants import *


class Drop_Block(pygame.sprite.Sprite):
    def __init__(self):
        super(Drop_Block, self).__init__()

        # create a rectangular surface
        self.surf = pygame.Surface((40, 40))
        self.surf.set_colorkey(BACKGROUND_COLOR)
        # fill the surface with #FFFFFF
        # determine the spawnpoint of the blocks
        self.rect = pygame.draw.circle(
            self.surf,
            WHITE,
            (20, 20),
            20
        )
        self.rect.center = (
            randint(0, WIDTH),
            randint(-150, -20))
        self.speed = 2

    def update(self):
        self.rect.move_ip(0, self.speed)
        self.speed = self.speed * ACCELERATION_COEFFICIENT
        if self.rect.top > HEIGHT:
            self.kill()

    def change_color(self, color):
        self.surf.fill(color)


class UI:
    """UI class

    Attributes:
        font : (pygame.font.Font) font object that initiates the font properties
        surf: (pygame.Surface) surface object where the text is rendered
        rect: (pygame.Rect) rectangle object representing the properties of surface
        color: (tuple) the color of the text
    """

    def __init__(self, font, size, color):
        self.font = pygame.font.SysFont(font, size)
        self.surf = None
        self.rect = None
        self.color = color

    def render(self, to_render):
        if type(to_render) != str:
            raise TypeError('to_render must be String')
        self.surf = self.font.render(to_render, True, self.color)


class Start(UI):
    def __init__(self):
        super(Start, self).__init__(FONT['game_over']['font'],
                                    FONT['game_over']['size'],
                                    FONT['game_over']['color'])

    def set_rect(self, pos):
        self.rect = self.surf.get_rect(center=pos)


class HP(UI):
    """HP class extending UI

    Attributes:
        hp: (int) the value to be displayed
    """

    '''initiate self.surf and self.rect'''
    def __init__(self, init_hp):
        super(HP, self).__init__(FONT['HP']['font'], FONT['HP']['size'], WHITE)
        self.hp = init_hp

    def update(self, color):
        self.surf = self.font.render(f'HP: {self.hp}', True, color)


class GameOver(UI):
    """GameOver class extending UI
    """
    def __init__(self, size):
        super(GameOver, self).__init__(FONT['game_over']['font'],
                                       size,
                                       FONT['game_over']['color'])

    def set_rect(self, pos):
        self.rect = self.surf.get_rect(center=pos)
