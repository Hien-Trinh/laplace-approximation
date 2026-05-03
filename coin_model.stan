data {
  int<lower=0> y1;
  int<lower=0> n1;
  int<lower=0> y2;
  int<lower=0> n2;
  real<lower=0> alpha1;
  real<lower=0> alpha2;
  real<lower=0> beta1;
  real<lower=0> beta2;
}

parameters {
  real<lower=0, upper=1> theta1;
  real<lower=0, upper=1> theta2;
}

model {
  target += binomial_lpmf(y1 | n1, theta1);
  target += binomial_lpmf(y2 | n2, theta2);
  target += beta_lpdf(theta1 | alpha1, beta1);
  target += beta_lpdf(theta2 | alpha2, beta2);
}
