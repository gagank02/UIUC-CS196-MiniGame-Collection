import pygame

class Player(pygame.sprite.Sprite):
    def __init__(self, hp, ms, luck, awareness, attack):
        super().__init__()

        self.image = pygame.image.load('107623182-pixel-elephant-isolated-on-white-background-8-bit-vector-illustration.jpg').convert()
        
