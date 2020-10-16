import pygame
import random
from itertools import cycle
from runner import Runner
import lights

from pygame.locals import (
    K_LEFT,
    K_RIGHT,
    K_ESCAPE,
    KEYDOWN,
    QUIT,
)


WHITE = (255,255,255)
BLACK = (0,0,0)
GREEN = (34,139,34)
BLUE = (135,235,250)

SCREEN_WIDTH = 1280
SCREEN_HEIGHT = 780

GREEN_EVENT = pygame.USEREVENT + 0
RED_EVENT = pygame.USEREVENT + 1

def red(font):
    red_light = font.render('GO', True, pygame.Color('green3'))
    blink_rect = red_light.get_rect()
    blink_rect.center = screen_rect.center
    off = pygame.Surface(blink_rect.size)
    blink_surfaces = cycle([red_light, off])
    blink_surface = next(blink_surfaces)
        

pygame.init()
font = pygame.font.Font('freesansbold.ttf', 100) 

# Create screen
screen = pygame.display.set_mode((SCREEN_WIDTH, SCREEN_HEIGHT))
screen_rect = screen.get_rect()

# Create a runner
runner = Runner(BLACK, 75, 75)

# # Sprite groups
# all_sprites = pygame.sprite.Group()
# all_sprites.add(runner)

# Main function
def main():
    running = True

    # Alternates between GO and STOP
    clock = pygame.time.Clock()

    green = lights.Green()
    red = lights.Red()

    if random.randint(0, 100) < 40:
        pygame.time.set_timer(RED_EVENT, random.randint(1000,2001))
    else:
        pygame.time.set_timer(GREEN_EVENT, random.randint(1000,2001))

    count = random.randint(1,2)
    

    # Main loop
    while running:
        # Look for each event in the queue
        for event in pygame.event.get():
            # Check if user hit a key
            if event.type == KEYDOWN:
                #If esc, QUIT
                if event.key == K_ESCAPE:
                    running = False
                # If window close button, QUIT
                elif event.key == QUIT:
                    running = False
            if event.type == GREEN_EVENT:
                count = random.randint(0,2)
                green.green_surface = next(green.green_surfaces)
                pygame.time.set_timer(GREEN_EVENT, random.randint(1000,2001))
            elif event.type == RED_EVENT:
                count = random.randint(0,2)
                red.red_surface = next(red.red_surfaces)
                pygame.time.set_timer(RED_EVENT, random.randint(1000,2001))
        
        # Get set of pressed keys
        pressed_keys = pygame.key.get_pressed()
        if pressed_keys[K_RIGHT]:
            runner.moveRight(5)
        if pressed_keys[K_LEFT]:
            runner.moveRight(-5)
            
        runner.rect.clamp_ip(screen_rect) 


        screen.fill(BLUE)

        # Adds stationary floor
        floor_surf = pygame.Surface((SCREEN_WIDTH, 50))
        floor_surf.fill(GREEN)
        screen.blit(floor_surf, (0, SCREEN_HEIGHT - 50))

        # Blinks green/red
        if count == 0:
            screen.blit(green.green_surface, green.green_rect)
        elif count == 1:
            screen.blit(red.red_surface, red.red_rect)

        # Draw sprites
        screen.blit(runner.surf, runner.rect)

        # Flip everything to display
        pygame.display.flip()

if __name__ == '__main__':
    main()