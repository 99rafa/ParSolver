
#include <stdlib.h>
#include <stdio.h>
#include <pthread.h>
#include "coordinate.h"


long n_coordinates;

coordinate_t* create_mutex_array( long n_coordinates) {

	coordinate_t *mutex_array;
    mutex_array=(coordinate_t*) malloc(sizeof(coordinate_t)*n_coordinates);
    return mutex_array;
}

