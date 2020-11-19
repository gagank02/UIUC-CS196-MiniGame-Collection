# import pygame
from random import randint

# class Card(pygame.sprite.Sprite):
class Card:

    """
    Class Card
    
    Arguments:
        image (pygame.Surface): The image/sprite for your card
        ih (int): How tall your card is (in px)
        iw (int): How wide your card is (in px)
    """
    
    def __init__(self): #, image, ih, iw):
        """
        super(Card, self).__init__()
        
        self.image = pygame.image.load(image)
        self.image = pygame.transform.scale(self.image, (iw, ih))
        self.rect = self.image.get_rect()
        """
        
        self.hm = randint(-5, 5)
        self.mm = randint(-5, 5)
        self.lm = randint(-5, 5)
        self.am = randint(-5, 5)
        
        self.__randomizer()
        
        self.name = self.__name_gen()
        
    # Corrects any invalid stat totals (all variables must add to 0)
    def __randomizer(self):
        total = self.hm + self.mm + self.lm + self.am
        args = [self.hm, self.mm, self.lm, self.am]
        while total != 0:
            random = randint(0, 3)
            if args[random] < 5 and args[random] > -5:
                if total > 0:
                    if random == 0:
                        self.hm -= 1
                    if random == 1:
                        self.mm -= 1
                    if random == 2:
                        self.lm -= 1
                    if random == 3:
                        self.am -= 1
                    args[random] -= 1
                    total -= 1
                if total < 0:
                    if random == 0:
                        self.hm += 1
                    if random == 1:
                        self.mm += 1
                    if random == 2:
                        self.lm += 1
                    if random == 3:
                        self.am += 1
                    args[random] += 1
                    total += 1
        
    def __name_gen(self):
        args = [self.hm, self.mm, self.lm, self.am]
        name = " the "
        args.sort(reverse = True)
        if args[0] > 3:
            if args[0] == self.hm:
                name += "Steadfast"
            if args[0] == self.mm:
                name += "Swift"
            if args[0] == self.lm:
                name += "Favored"
            if args[0] == self.am:
                name += "Merciless"
        else:
            if args[0] == self.hm:
                if args[1] == self.mm
                name += "Steadfast"
            if args[0] == self.mm:
                name += "Swift"
            if args[0] == self.lm:
                name += "Favored"
            if args[0] == self.am:
                name += "Merciless"
        