import pygame, sys
from pygame.locals import *
from greenLightRedLight.green_light_red_light import GLRL_main
from greenLightRedLight.lights import Green, Red
from greenLightRedLight.clouds import Cloud
# from bossRush.bossRush import boss_rush_main

pygame.init()
pygame.display.set_caption('Main Menu')

SCREEN_WIDTH = 480
SCREEN_HEIGHT = 640

font = pygame.font.Font('freesansbold.ttf', 48)
button_font = pygame.font.Font('freesansbold.ttf', 16)

screen = pygame.display.set_mode((SCREEN_WIDTH, SCREEN_HEIGHT))

clock = pygame.time.Clock()
is_running = True

# Background image
bg = pygame.image.load("bg.png")

# Colors
button_clr = (130, 135, 143)

# Buttons
glrl_button = pygame.Rect(((SCREEN_WIDTH // 2) - 100, 100), (200, 50))
boss_rush_button = pygame.Rect(((SCREEN_WIDTH // 2) - 100, 200), (200, 50))
falling_objects_button = pygame.Rect(((SCREEN_WIDTH // 2) - 100, 300), (200, 50))
pong_button = pygame.Rect(((SCREEN_WIDTH // 2) - 100, 400), (200, 50))
space_shooter_button = pygame.Rect(((SCREEN_WIDTH // 2) - 100, 500), (200, 50))

def draw_text(text, font, color, surface, x, y):
    textobj = font.render(text, 1, color)
    textrect = textobj.get_rect()
    textrect.topleft = (x, y)
    surface.blit(textobj, textrect)

def main_menu():

    click = False

    while True:
        
        background = pygame.Surface((SCREEN_WIDTH, SCREEN_HEIGHT))
        # background.fill(pygame.Color('#000000'))
        screen.blit(bg, (0, 0))
        draw_text("Main Menu", font, (255, 255, 255), screen, 105, 25)
        
        # Mouse coordinates
        mx, my = pygame.mouse.get_pos()
        
        # Launches specific game based on mouse input
        if glrl_button.collidepoint((mx,my)):
            if click:
                pygame.display.set_mode((1024, 800))
                GLRL_main()
        # if boss_rush_button.collidepoint((mx,my)):
        #     if click:
        #         pygame.display.set_mode((1280, 720))
        #         boss_rush_main()
        # if falling_objects_button.collidepoint((mx,my)):
        #     if click:
        #         pygame.display.set_mode((1000, 500))
        #         GLRL_main()
        # if pong_button.collidepoint((mx,my)):
        #     if click:
        #         pygame.display.set_mode((700, 500))
        #         GLRL_main()
        # if space_shooter_button.collidepoint((mx,my)):
        #     if click:
        #         pygame.display.set_mode((600, 700))
        #         GLRL_main()
        
        # Draw buttons
        pygame.draw.rect(screen, button_clr, glrl_button)
        screen.blit(button_font.render("Green Light Red Light", True, (255,255,255)), ((SCREEN_WIDTH // 2) - 90, 110))

        pygame.draw.rect(screen, button_clr, boss_rush_button)
        screen.blit(button_font.render("Boss Rush", True, (255,255,255)), ((SCREEN_WIDTH // 2) - 90, 210))

        pygame.draw.rect(screen, button_clr, falling_objects_button)
        screen.blit(button_font.render("Falling Objects", True, (255,255,255)), ((SCREEN_WIDTH // 2) - 90, 310))

        pygame.draw.rect(screen, button_clr, pong_button)
        screen.blit(button_font.render("Pong", True, (255,255,255)), ((SCREEN_WIDTH // 2) - 90, 410))

        pygame.draw.rect(screen, button_clr, space_shooter_button)
        screen.blit(button_font.render("Space Shooter", True, (255,255,255)), ((SCREEN_WIDTH // 2) - 90, 510))

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