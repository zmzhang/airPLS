function [Xc,Z]= airPLS(X,lambda,order,wep,p,itermax)
%  Baseline correction using adaptive iteratively reweighted Penalized Least Squares;		
%  Input 
%         X:row matrix of spectra or chromatogram (size m*n, m is sample and n is variable)
%         lambda: lambda is an adjustable parameter, it can be adjusted by user. The larger lambda is, the smoother z will be 
%         order: an integer indicating the order of the difference of penalties
%         wep: weight exception proportion at both the start and end
%         p: asymmetry parameter for the start and end
%         itermax: maximum iteration times
%  Output
%         Xc: the corrected spectra or chromatogram vector (size m*n)
%         Z: the fitted vector (size m*n)
%  Examples:
%         Xc=airPLS(X);
%         [Xc,Z]=airPLS(X,10e5,2,0.1,0.5,20);
%  Reference:
%         (1) Eilers, P. H. C., A perfect smoother. Analytical Chemistry 75 (14), 3631 (2003).
%         (2) Eilers, P. H. C., Baseline Correction with Asymmetric Least
%         Squares Smoothing, http://www.science.uva.nl/~hboelens/publications/draftpub/Eilers_2005.pdf
%         (3) Gan, Feng, Ruan, Guihua, and Mo, Jinyuan, Baseline correction by improved iterative polynomial fitting with automatic threshold. Chemometrics and Intelligent Laboratory Systems 82 (1-2), 59 (2006).
% 
%  zhimin zhang @ central south university on Mar 30,2011

if nargin < 6
    itermax=20;
  if nargin < 5
     p=0.05;
    if nargin < 4
       wep=0.1;
      if nargin < 3
          order=2;
          if nargin < 2
               lambda=10e7;
              if nargin < 1
                   error('airPLS:NotEnoughInputs','Not enough input arguments. See airPLS.');
              end    
          end  
      end  
    end
  end
end

[m,n]=size(X);
wi = [1:ceil(n*wep) floor(n-n*wep):n];
D = diff(speye(n), order);
DD = lambda*D'*D;
for i=1:m
    w=ones(n,1);
    x=X(i,:);
    for j=1:itermax
        W=spdiags(w, 0, n, n);
        C = chol(W + DD);
        z = (C\(C'\(w .* x')))';
        d = x-z;
        dssn= abs(sum(d(d<0)));
        if(dssn<0.001*sum(abs(x))) 
            break;
        end
        w(d>=0) = 0;
        w(wi)   = p;
        w(d<0)  = exp(j*abs(d(d<0))/dssn);
    end
    Z(i,:)=z;
end
Xc=X-Z;