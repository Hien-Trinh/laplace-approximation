data {
  int<lower=0> y1;
  int<lower=0> n1;
  int<lower=0> y2;
  int<lower=0> n2;
}

parameters {
  real<lower=0, upper=1> theta1;
  real<lower=0, upper=1> theta2;
}

model {
  theta1 ~ beta(90, 10);
  theta2 ~ beta(90, 10);
  y1 ~ binomial(n1, theta1);
  y2 ~ binomial(n2, theta2);
}
