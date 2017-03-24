rng(201601);
[ellipse_a, ellipse_b] = get_error_ellipse(MU_ORIG,SIGMA_OLD, 0.6);
plot(ellipse_a, ellipse_b);