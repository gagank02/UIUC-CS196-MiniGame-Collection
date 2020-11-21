import pygame, sys
from pygame.locals import *
# import green_light_red_light
from greenLightRedLight.green_light_red_light import main
from greenLightRedLight.lights import Green, Red
from greenLightRedLight.clouds import Cloud



pygame.init()

pygame.display.set_caption('Main Menu')

SCREEN_WIDTH = 500
SCREEN_HEIGHT = 650

font = pygame.font.Font('freesansbold.ttf', 48)
button_font = pygame.font.Font('freesansbold.ttf', 16)

screen = pygame.display.set_mode((SCREEN_WIDTH, SCREEN_HEIGHT))

clock = pygame.time.Clock()
is_running = True

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

    draw_text("Main Menu", font, (255, 255, 255), screen, 125, 25)

    while True:
        background = pygame.Surface((SCREEN_WIDTH, SCREEN_HEIGHT))
        background.fill(pygame.Color('#000000'))

        mx, my = pygame.mouse.get_pos()

        if glrl_button.collidepoint((mx,my)):
            if click:
                pygame.display.set_mode((1024, 800))
                main()
        
        # Draw buttons
        pygame.draw.rect(screen, (255,0,0), glrl_button)
        screen.blit(button_font.render("Green Light Red Light", True, (255,255,255)), ((SCREEN_WIDTH // 2) - 90, 110))

        pygame.draw.rect(screen, (255,0,0), boss_rush_button)
        pygame.draw.rect(screen, (255,0,0), falling_objects_button)
        pygame.draw.rect(screen, (255,0,0), pong_button)
        pygame.draw.rect(screen, (255,0,0), space_shooter_button)

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