import pygame
from random import randint
from fallingObjects.constants import *


class Drop_Block(pygame.sprite.Sprite):
    """determines properties and behaviors of falling objects

    Attributes:
        __horizontal_move_direction (int): direction of movement of drop block
                                           -1 for left, 1 for right, and 0 for NA
        __horizontal_move_speed (int):     movement speed of drop block
        surf (pygame.Surface):  Surface object where the image is drawn
        rect (pygame.Rect):     Rect object representing the size and the position of surf
        speed (int):            the velocity falling object moves
        side (int):             length of the surface of individual drop block
    """
    def __init__(self, side):
        super(Drop_Block, self).__init__()

        # create a rectangular surface
        self.surf = pygame.Surface((side, side))
        self.surf.set_colorkey(BACKGROUND_COLOR)
        self.rect = pygame.draw.circle(
            self.surf,
            WHITE,
            (side // 2, side // 2),
            side // 2
        )
        self.rect.center = (
            randint(0, WIDTH),
            randint(-150, -20))
        self.speed = 2
        self.__horizontal_move_direction = randint(-1, 1)
        self.__horizontal_move_speed = randint(1, 4)

    def update(self):
        self.rect.move_ip(self.__horizontal_move_direction * self.__horizontal_move_speed,
                          self.speed)
        self.speed = self.speed * ACCELERATION_COEFFICIENT
        if self.rect.top > HEIGHT:
            self.kill()

    def change_color(self, color):
        self.surf.fill(color)


class UI:
    """UI class

    The super class of all classes related to GUI.

    Args:
        font (pygame.font.Font):  font object that initiates the font properties
        size (int): the size of text to be rendered
        color (tuple): the color of the text

    Attributes:
        surf (pygame.Surface):
        rect (pygame.Rect):

    """
    def __init__(self, font, size, color):
        self.font = pygame.font.SysFont(font, size)
        self.surf = None
        self.rect = None
        self.color = color
        self.to_render = str()

    def render(self, to_render):
        """draw text with given font properties to a Surface

        Args:
            to_render (str): the text message to be rendered

        Returns:
            None

        Raises:
            TypeError: if the type of parameter is not str

        """
        if type(to_render) != str:
            raise TypeError('Argument to_render must be str')
        self.surf = self.font.render(to_render, True, self.color)
        self.to_render = to_render

    def set_rect(self, pos: tuple):
        self.rect = self.surf.get_rect(center=pos)


class Start(UI):
    def __init__(self):
        super(Start, self).__init__(FONT['game_over']['font'],
                                    FONT['game_over']['size'],
                                    FONT['game_over']['color'])


class HP(UI):
    """HP class extending UI

    Attributes:
        __hp (int): private variable
                    the HP value to be displayed.
        name (str): the name of the owner of this HP-UI.

    """

    '''initiate self.surf and self.rect'''
    def __init__(self, init_hp, name):
        super(HP, self).__init__(FONT['HP']['font'], FONT['HP']['size'], WHITE)
        self.__hp = init_hp
        self.name = name

    def lose_hp(self):
        self.__hp -= 1

    def render(self, unused=None):
        self.surf = self.font.render(f'{self.name} ->>   {self.__hp}', True, self.color)

    def update(self, color):
        self.surf = self.font.render(f'{self.name} ->>   {self.__hp}', True, color)


class GameOver(UI):
    """GameOver class extending UI
    """
    def __init__(self, size, color):
        super(GameOver, self).__init__(FONT['game_over']['font'],
                                       size, color)
