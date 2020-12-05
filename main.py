import pygame, sys
from pygame.locals import *

from greenLightRedLight.green_light_red_light import GLRL_main
from greenLightRedLight.lights import Green, Red
from greenLightRedLight.clouds import Cloud

# from bossRush.bossRush import boss_rush_main

from fallingObjects.falling_objects import falling_objects_main
import fallingObjects.constants
from fallingObjects.all_elements import Drop_Block, UI, Start, HP, GameOver

from pong.pong_game import reset_all_values, pong_main
from pong.ball import Ball

from spaceShooter.space_shooter import health_bar, new_enemies, space_shooter_main
from spaceShooter.sprites import Enemies, Bullet

pygame.init()
pygame.display.set_caption('Main Menu')

SCREEN_WIDTH = 480
SCREEN_HEIGHT = 640

font = pygame.font.Font('freesansbold.ttf', 48)
button_font = pygame.font.Font('freesansbold.ttf', 16)

screen = pygame.display.set_mode((SCREEN_WIDTH, SCREEN_HEIGHT))

clock = pygame.time.Clock()

# Background image
bg = pygame.image.load("bg.png")

# Colors
button_clr = (130, 135, 143)

# Buttons
glrl_button = pygame.Rect(((SCREEN_WIDTH // 2) - 100, 130), (200, 50))
boss_rush_button = pygame.Rect(((SCREEN_WIDTH // 2) - 100, 230), (200, 50))
falling_objects_button = pygame.Rect(((SCREEN_WIDTH // 2) - 100, 330), (200, 50))
pong_button = pygame.Rect(((SCREEN_WIDTH // 2) - 100, 430), (200, 50))
space_shooter_button = pygame.Rect(((SCREEN_WIDTH // 2) - 100, 530), (200, 50))

def write_text(text, font, color, surface, x, y):
    textobj = font.render(text, 1, color)
    textrect = textobj.get_rect(center=(x, y))
    surface.blit(textobj, textrect)

def main_menu():

    click = False

    while True:
        
        screen.blit(bg, (0, 0))
        write_text("Main Menu", font, (255, 255, 255), screen, SCREEN_WIDTH/2, 65)
        
        # Mouse coordinates
        mx, my = pygame.mouse.get_pos()
        
        # Launches specific game based on mouse input
        if glrl_button.collidepoint((mx,my)):
            if click:
                pygame.display.set_mode((1024, 800))
                GLRL_main()
        if boss_rush_button.collidepoint((mx,my)):
            if click:
                pygame.display.set_mode((1280, 720))
                boss_rush_main()
        if falling_objects_button.collidepoint((mx,my)):
            if click:
                pygame.display.set_mode((1000, 500))
                falling_objects_main()
        if pong_button.collidepoint((mx,my)):
            if click:
                pygame.display.set_mode((700, 500))
                pong_main()
        if space_shooter_button.collidepoint((mx,my)):
            if click:
                pygame.display.set_mode((600, 700))
                space_shooter_main()
        
        # Draw buttons
        pygame.draw.rect(screen, button_clr, glrl_button)
        write_text("Green Light Red Light", button_font, (255,255,255), screen, (SCREEN_WIDTH / 2), 155)

        pygame.draw.rect(screen, button_clr, boss_rush_button)
        write_text("Boss Rush", button_font, (255,255,255), screen, (SCREEN_WIDTH / 2), 255)

        pygame.draw.rect(screen, button_clr, falling_objects_button)
        write_text("Falling Objects", button_font, (255,255,255), screen, (SCREEN_WIDTH / 2), 355)

        pygame.draw.rect(screen, button_clr, pong_button)
        write_text("Pong", button_font, (255,255,255), screen, (SCREEN_WIDTH / 2), 455)

        pygame.draw.rect(screen, button_clr, space_shooter_button)
        write_text("Space Shooter", button_font, (255,255,255), screen, (SCREEN_WIDTH / 2), 555)

        click = False

        for event in pygame.event.get():
            if event.type == QUIT:
                pygame.quit()
                sys.exit()
            if event.type == KEYDOWN:
                if event.key == K_ESCAPE:
                    pygame.quit()
                    sys.exit()
            if event.type == MOUSEBUTTONDOWN:
                if event.button == 1:
                    click = True
 
        pygame.display.update()
        clock.tick(60)

if __name__ == "__main__":
    main_menu()