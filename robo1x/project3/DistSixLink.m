function out = DistSixLink (x1, x2)
% Compute the distance between two sets of six link coordinates
% Note we assume all angular coordinates are between 0 and 360
% Use sum of the absolute value of angle difference (L1 norm) as the
% distance.
% Note this is angle difference.
% i.e. DistSixLink([0, 0, 0, 0, 0, 0], [360, 360, 360, 360, 360, 360]) = 0
dis = abs(x1 - x2);
dis = 360 * (dis > 90) - dis;
out = sum(abs(dis));

end
