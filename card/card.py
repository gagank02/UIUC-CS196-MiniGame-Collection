import pygame
from random import randint


class Card(pygame.sprite.Sprite):
    """Class Card
    
    Attributes:
        image (pygame.Surface): The image/sprite for your card
        ih (int): How tall your card is (in px)
        iw (int): How wide your card is (in px)

        hm (int):
        mm (int):
        lm (int):
        am (int):

        name (str):
        desc (str):

    """
    def __init__(self, image, ih, iw):
        super(Card, self).__init__()

        self.image = pygame.image.load(image)
        self.image = pygame.transform.scale(self.image, (iw, ih))
        self.rect = self.image.get_rect()

        # Sets stats to random values between -5 and 5
        self.hm = randint(-5, 5)
        self.mm = randint(-5, 5)
        self.lm = randint(-5, 5)
        self.am = randint(-5, 5)
        self.__randomizer()

        # Initializes the title of the card and its description
        self.name = " the "
        self.desc = ""
        self.__name_desc()

    # Corrects any invalid stat totals (all variables must add to 0)
    def __randomizer(self):
        total = self.hm + self.mm + self.lm + self.am
        args = [self.hm, self.mm, self.lm, self.am]
        while total != 0:
            random = randint(0, 3)
            if 5 > args[random] > -5:
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

    # Sets the title of the card and its description
    def __name_desc(self):
        args = [self.hm, self.mm, self.lm, self.am]
        args.sort(reverse=True)
        if args[0] == 0:
            self.name += "Balanced"
            self.desc += "All stats equal"
        elif args[0] > 3:
            if args[0] == self.hm:
                self.name += "Steadfast"
                self.desc += "Substantial increase in health"
            if args[0] == self.mm:
                self.name += "Swift"
                self.desc += "Substantial increase in speed"
            if args[0] == self.lm:
                self.name += "Favored"
                self.desc += "Substantial increase in luck"
            if args[0] == self.am:
                self.name += "Merciless"
                self.desc += "Substantial increase in attack"
        else:
            if args[0] == self.hm:
                if args[1] == self.mm:
                    self.name += "Resilient"
                    self.desc += "Moderate increase in health and speed"
                if args[1] == self.lm:
                    self.name += "Gifted"
                    self.desc += "Moderate increase in health and luck"
                if args[1] == self.am:
                    self.name += "Barbarous"
                    self.desc += "Moderate increase in health and attack"
            if args[0] == self.mm:
                if args[1] == self.hm:
                    self.name += "Resilient"
                    self.desc += "Moderate increase in health and speed"
                if args[1] == self.lm:
                    self.name += "Nimble"
                    self.desc += "Moderate increase in speed and luck"
                if args[1] == self.am:
                    self.name += "Rutheless"
                    self.desc += "Moderate increase in speed and attack"
            if args[0] == self.lm:
                if args[1] == self.hm:
                    self.name += "Gifted"
                    self.desc += "Moderate increase in health and luck"
                if args[1] == self.mm:
                    self.name += "Nimble"
                    self.desc += "Moderate increase in speed and luck"
                if args[1] == self.am:
                    self.name += "Calculated"
                    self.desc += "Moderate increase in luck and attack"
            if args[0] == self.am:
                if args[1] == self.hm:
                    self.name += "Barbarous"
                    self.desc += "Moderate increase in health and attack"
                if args[1] == self.mm:
                    self.name += "Ruthless"
                    self.desc += "Moderate increase in speed and attack"
                if args[1] == self.lm:
                    self.name += "Calculated"
                    self.desc += "Moderate increase in luck and attack"

    def get_stats(self) -> tuple:
        """Wrap up the stats of the card and return
        Used by `Entity` class in *entity.entity.py*

        Returns:
            tuple: the packaged stats of the card

        """
        return tuple([self.hm, self.mm, self.lm, self.am])
