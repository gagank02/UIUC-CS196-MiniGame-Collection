import pygame
from itertools import cycle
from green_light_red_light import font, screen, screen_rect, BLUE

pygame.init()
font = pygame.font.Font('freesansbold.ttf', 100) 

clock =  pygame.time.Clock()

class Green(pygame.sprite.Sprite):
    def __init__(self):
        super().__init__()
        self.green_light = font.render('GO', True, pygame.Color('green3'))
        self.green_rect = self.green_light.get_rect()
        self.green_rect.center = screen_rect.center
        self.green_off = pygame.Surface(self.green_rect.size)
        self.green_off.fill(BLUE)
        self.green_surfaces = cycle([self.green_light, self.green_off])
        self.green_surface = next(self.green_surfaces)

class Red(pygame.sprite.Sprite):
    def __init__(self):
        super().__init__()
        self.red_light = font.render('STOP', True, pygame.Color('red3'))
        self.red_rect = self.red_light.get_rect()
        self.red_rect.center = screen_rect.center
        self.red_off = pygame.Surface(self.red_rect.size)
        self.red_off.fill(BLUE)
        self.red_surfaces = cycle([self.red_light, self.red_off])
        self.red_surface = next(self.red_surfaces)
    