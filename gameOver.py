import pygame, sys
from pygame.locals import *
from main import main_menu

pygame.init()
pygame.display.set_caption('GAME OVER')

SCREEN_WIDTH = 1280
SCREEN_HEIGHT = 780
MAROON = (128, 0, 0)
GRAY = (130, 135, 143)
WHITE = (255, 255, 255)

font = pygame.font.Font('freesansbold.ttf', 48)

screen = pygame.display.set_mode((SCREEN_WIDTH, SCREEN_HEIGHT))

clock = pygame.time.Clock()

game_over_text = pygame.image.load('game_over.png')
game_over_rect = game_over_text.get_rect(center=(SCREEN_WIDTH/2, (SCREEN_HEIGHT/2) - 100))

# Buttons
mm_btn = pygame.Rect(((SCREEN_WIDTH / 2) - 335, 450), (300, 100))
quit_btn = pygame.Rect(((SCREEN_WIDTH / 2) + 65, 450), (300, 100))

def write_text(text, font, color, surface, x, y):
    textobj = font.render(text, 1, color)
    textrect = textobj.get_rect(center=(x, y))
    surface.blit(textobj, textrect)

def game_over(score):

    click = False

    while True:

        screen.fill(MAROON)
        screen.blit(game_over_text, game_over_rect)

        # Display score
        the_score = font.render("Your Score: " + score, True, WHITE)
        screen.blit(the_score, (SCREEN_WIDTH / 2, 50))

        # Mouse coordinates
        mx, my = pygame.mouse.get_pos()

        # Launches command based on mouse input
        if mm_btn.collidepoint((mx,my)):
            if click:
                return_to_main_menu()
        if quit_btn.collidepoint((mx,my)):
            if click:
                pygame.quit()
                sys.exit()

        # Draw buttons
        pygame.draw.rect(screen, GRAY, mm_btn)
        write_text("Main Menu", font, (255,255,255), screen, mm_btn.left + 150, 500)

        pygame.draw.rect(screen, GRAY, quit_btn)
        write_text("Quit", font, (255,255,255), screen, quit_btn.left + 150, 500)
    
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

def return_to_main_menu():
    screen = pygame.display.set_mode((480, 640))
    from main import main_menu
    main_menu()

if __name__ == "__main__":
    game_over()