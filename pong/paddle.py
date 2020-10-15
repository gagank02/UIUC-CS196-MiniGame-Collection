import pygame
from player import Player

black = (0, 0, 0)
white = (255, 255, 255)

class Paddle(pygame.sprite.Sprite):
    def __init__(self, color, width, height, image):
        super().__init__()

        # initliazing background color and setting the block to be transparent
        self.image = pygame.image.load('107623182-pixel-elephant-isolated-on-white-background-8-bit-vector-illustration.jpg')
        self.image = pygame.transform.scale(self.image, (100, 50))

        pygame.draw.rect(self.image, color, [0, 0, width, height])

        self.rect = self.image.get_rect()

    def moveUp(self, pixels):
        self.rect.y -= pixels
        # checks to make sure paddle doesn't go off screen
        if self.rect.y < 0:
            self.rect.y = 0

    def moveDown(self, pixels):
        self.rect.y += pixels
        # checks for offscreen
        if self.rect.y > 400:
            self.rect.y = 400
