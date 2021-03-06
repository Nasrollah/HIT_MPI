function dhatdx = ddx(u)
  size = size(u);
  N = size(3);
  
  kz = (0:N/2)'+0*j;
  kx = cat(1,kz(1:end-1),-kz(end:-1:2));
  kx = reshape(kx,1,1,N);
  dhatdx = zeros(N/2+1,N,N);
  
  for j = 1:N
    for k = 1:N/2+1
      dhatdx(k,j,:) = 1*j*kx.*u(k,j,:);
    end
  end
