#!/usr/bin/perl

use strict;
use 5.010;
use Time::HiRes;
use lib '.'; #Redundant if @IRC includes current dir
use cos_sim;

my $size = 1000000;
my (@vect0, @vect1);
print("Generating 2 vectors of size $size with random values in range -10 to 10.\n");

# Generate random values in vectors
foreach(0..$size) {
    $vect0[$_] = int(rand(20)) + -10;
    $vect1[$_] = int(rand(20)) + -10;
}

my $begin = Time::HiRes::time();
print("Calculating cosine similarity between vectors.\n");
my $sim = &cos_sim::get_cos_sim(\@vect0, \@vect1);
my $end = Time::HiRes::time();
my $runtime = $end - $begin;

printf("Done. Runtime: %.3f s. Similarity: %.5f.\n", $runtime, $sim);