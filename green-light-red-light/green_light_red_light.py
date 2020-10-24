import pygame
import random
from itertools import cycle
from player import Player
from runner import Runner
import lights
import time

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


clock = pygame.time.Clock()

# Main function
def main():
    running = True

    passed_time = 0    
    start_time = pygame.time.get_ticks()

    # Alternates between GO and STOP

    green = lights.Green()
    red = lights.Red()

    LIGHT_EVENT = pygame.USEREVENT + 0
    pygame.time.set_timer(LIGHT_EVENT, random.randint(1000,3000))

    count = 0 # 1 = red, everything else = green
    
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
            if event.type == LIGHT_EVENT:
                count += random.randint(0,10)
                if count % 2 == 1:
                    count = 1
        
        passed_time = pygame.time.get_ticks() - start_time
            
        
        # Get set of pressed keys
        pressed_keys = pygame.key.get_pressed()
        if pressed_keys[K_RIGHT]:
            runner.moveRight(13)
        if pressed_keys[K_LEFT]:
            runner.moveRight(-13)
            
        runner.rect.clamp_ip(screen_rect) 


        screen.fill(BLUE)

        # Adds stationary floor
        floor_surf = pygame.Surface((SCREEN_WIDTH, 50))
        floor_surf.fill(GREEN)
        screen.blit(floor_surf, (0, SCREEN_HEIGHT - 50))

        # Blinks green/red
        ## keep GO stationary interval of red
        if count == 1:
            screen.blit(red.red_surface, red.red_rect)
        else:
            screen.blit(green.green_surface, green.green_rect)

        # Draw sprites
        screen.blit(runner.surf, runner.rect)

        # Displays total time during session
        text = font.render(str(int(passed_time/1000)) + "s", True, BLACK)
        screen.blit(text, (50, 50))

        # Flip everything to display
        pygame.display.flip()
        clock.tick(60)
        
    pygame.quit()

if __name__ == '__main__':
    main()