

#include <stdlib.h>
#include <stdio.h>


void create_mutex_array( long n_coordinates ) {
	mutex_array=malloc(sizeof(pthread_mutex_t)*n);
}


pthread_mutex_init(&mutex_array[index_couter++], NULL);
pthread_mutex_lock(&mutex_array[index_couter]);

thread_mutex_unlock(&mutex_array[index_couter]);

static long index_couter=0;
pthread_mutex_t *mutex_array;

    mutex_array= malloc(sizeof(pthread_mutex_t)*width*height*depth);