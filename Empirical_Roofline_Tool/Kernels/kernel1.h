//-------------------------------------------
// kernel.h
//-------------------------------------------
// Kernel function
// 07.10.2014
//-------------------------------------------

#ifndef KERNEL_H
#define KERNEL_H

void initialize(uint64_t nsize, double * __restrict__ array, double value);
void doFused (uint64_t nsize, uint64_t ntrials, double * __restrict__ array);

#endif //KERNEL_H
