/******************************************************************************
 * Copyright (C) 2017 by Alex Fosdick - University of Colorado
 *
 * Redistribution, modification or use of this software in source or binary
 * forms is permitted as long as the files maintain this copyright. Users are 
 * permitted to modify this and use it to learn about the field of embedded
 * software. Alex Fosdick and the University of Colorado are not liable for any
 * misuse of this material. 
 *
 *****************************************************************************/
/**
 * @file <Add File Name> 
 * @brief <Add Brief Description Here >
 *
 * <Add Extended Description Here>
 *
 * @author <Add FirsName LastName>
 * @date <Add date >
 *
 */



#include <stdio.h>
#include <stdlib.h>
#include "stats.h"

void print_array(unsigned char* arr, unsigned int size) {
    printf("Array: ");
    for (int i = 0; i < size; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");
}

unsigned char find_median(unsigned char* arr, unsigned int size) {
    // Sort the array
    sort_array(arr, size);

    // Calculate the median
    if (size % 2 == 0) {
        // If the size is even, average the middle two values
        return (arr[size / 2] + arr[size / 2 - 1]) / 2;
    } else {
        // If the size is odd, take the middle value
        return arr[size / 2];
    }
}

unsigned char find_mean(unsigned char* arr, unsigned int size) {
    unsigned int sum = 0;
    for (int i = 0; i < size; i++) {
        sum += arr[i];
    }
    return sum / size;
}

unsigned char find_maximum(unsigned char* arr, unsigned int size) {
    unsigned char max = 0;
    for (int i = 0; i < size; i++) {
        if (arr[i] > max) {
            max = arr[i];
        }
    }
    return max;
}

unsigned char find_minimum(unsigned char* arr, unsigned int size) {
    unsigned char min = arr[0];
    for (int i = 1; i < size; i++) {
        if (arr[i] < min) {
            min = arr[i];
        }
    }
    return min;
}

void sort_array(unsigned char* arr, unsigned int size) {
    // Insertion sort
    for (int i = 1; i < size; i++) {
        unsigned char temp = arr[i];
        int j = i - 1;
        while (j >= 0 && arr[j] < temp) {
            arr[j + 1] = arr[j];
            j--;
        }
        arr[j + 1] = temp;
    }
}

void print_statistics(unsigned char* arr, unsigned int size) {
    printf("Statistics:\n");
    printf("  Minimum: %d\n", find_minimum(arr, size));
    printf("  Maximum: %d\n", find_maximum(arr, size));
    printf("  Mean: %d\n", find_mean(arr, size));
    printf("  Median: %d\n", find_median(arr, size));
}

int main() {
    unsigned char test[SIZE] = {34, 201, 190, 154, 8, 194, 2, 6, 114, 88, 45, 76, 123, 87, 25, 23,
                                 200, 122, 150, 90, 92, 87, 177, 244, 201, 6, 12, 60, 8, 2, 5, 67,
                                 7, 87, 250, 230, 99, 3, 100, 90};

    printf("Unsorted ");
    print_array(test, SIZE);

    sort_array(test, SIZE);

    printf("Sorted ");
    print_array(test, SIZE);

    print_statistics(test, SIZE);

    return 0;
}
/* Add other Implementation File Code Here */
