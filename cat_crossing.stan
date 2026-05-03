data {
  int<lower=0> n;
  array[n] int y;
  real<lower=0> alpha;
  real<lower=0> beta;
}

parameters {
  real<lower=0> lambda;
}

model {
  target += poisson_lpmf(y | lambda);
  target += gamma_lpdf(lambda | alpha, beta);
}
