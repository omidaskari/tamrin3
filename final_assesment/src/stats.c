//file modify shode barae stats barae final assessment

#include <stdio.h>
#include <stdint.h>
#include "platform.h"
#include "stats.h"


/* Size of the Data Set */
#define SIZE (40)



void print_statistics(uint8_t *arrayPtr, uint8_t arrayLength){
    print_array(arrayPtr, arrayLength);
    PRINTF("Array Min: %u\n", find_min(arrayPtr, arrayLength));
    PRINTF("Array Max: %u\n", find_max(arrayPtr, arrayLength));
    PRINTF("Array Mean: %u\n", find_mean(arrayPtr, arrayLength));
    PRINTF("Array Median: %u\n", find_median(arrayPtr, arrayLength));
    PRINTF("Array Size: %u\n", arrayLength);
    print_array(arrayPtr, arrayLength);
    return;
}

void print_array(uint8_t *arrayPtr, uint8_t arrayLength){
  #ifdef VERBOSE
    // Loop through and print the array
    for(uint8_t i=0; i<arrayLength; i++){
      PRINTF("array[%u](0x%x): %u\n", i, arrayPtr+i, *(arrayPtr + sizeof(char)*i));
    }
    PRINTF("\n");
  #endif
  return;
}

void sort_array(uint8_t *arrayPtr, uint8_t arrayLength){
  uint8_t i, j = 0;
  uint8_t temp;
  // Sort Array
  for(i=0; i<arrayLength; i++){
    for(j=i+1; j<arrayLength; j++){
      if(arrayPtr[i]<arrayPtr[j]){
        temp = arrayPtr[i];
        arrayPtr[i]=arrayPtr[j];
        arrayPtr[j]=temp;
      }
    }
  }
}

uint8_t find_min(uint8_t *arrayPtr, uint8_t arrayLength){
  uint8_t minValue=0xFF;

  for (uint8_t i=0; i<arrayLength; i++){
    if (arrayPtr[i] < minValue){
      minValue = arrayPtr[i];
    }
  }

  return minValue;
}

uint8_t find_max(uint8_t *arrayPtr, uint8_t arrayLength){
  uint8_t maxValue=0;

  for (uint8_t i=0; i<arrayLength; i++){
    if (arrayPtr[i] > maxValue){
      maxValue = arrayPtr[i];
    }
  }

  return maxValue;
}

uint8_t find_mean(uint8_t *arrayPtr, uint8_t arrayLength){
  uint32_t avg=0;

  // Add up all the numbers in the array
  for(uint8_t i=0; i<arrayLength; i++){
    avg+= arrayPtr[i];
  }
  
  // Integer division using Array Length
  return (avg/arrayLength);
}

uint8_t find_median(uint8_t *arrayPtr, uint8_t arrayLength){
  // Make sure array is sorted first
  sort_array(arrayPtr, arrayLength);

  // Case where array length is odd
  if (arrayLength%2){
    return arrayPtr[arrayLength/2];
  }

  // Case where array length is even.  Average between two middle values is necessary
  uint8_t avg = (arrayPtr[arrayLength/2 - 1]+arrayPtr[arrayLength/2])/2;
  return avg;
}
