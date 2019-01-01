//
//  main.m
//  Kata8
//
//  Created by jason harrison on 2019-01-01.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <stdio.h>
#import <stdlib.h>

int getRandomInt1To100(){
    
    time_t t;
    
    srand((unsigned) time(&t));
    
    return 1 + rand() % 100;
    
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int randomInt = getRandomInt1To100();
        int guess = 0;
        int previousGuess = 0;
        int numberOfGuesses = 0;
    
 
        
        while(1){
            printf("\nGuess a num from 1-100: ");
            
            if(scanf("%d", &guess) != 1){
                while(getchar() != '\n');
                printf("not a number\n");
                continue;
            }

            
            if(guess != previousGuess){
                numberOfGuesses++;
            }

            
            if(guess == randomInt){
                printf("You got it!");
                break;
            }else if(guess < randomInt){
                printf("%d was too low (number is %d). Try again: \n", guess, randomInt);
            }else{
                printf("%d was too high (number is %d). Try again: \n", guess, randomInt);
            }
            
            previousGuess = guess;
            
            
        }
        printf(" You took %d attempts!\n", numberOfGuesses);
        return 0;
    }
}
