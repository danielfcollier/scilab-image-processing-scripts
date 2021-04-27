function I=connection(F,Pos,Neigbor,L)

[M1,M2]=size(F);
m1=Pos(1);
m2=Pos(2);

F=ceil((F+1-L)/L);

I=ones(M1,M2);
N=zeros(M1,M2);
T=zeros(M1,M2);
I(m1,m2)=0;
N(m1,m2)=1;

while(sum(N)>0)

for m1=1:M1
for m2=1:M2
	if N(m1,m2)==1

	n1=(m1-1)+1*((m1-1)==0);
	n2=m2;
	if T(n1,n2)~=1
		if F(m1,m2)==F(n1,n2)
			I(n1,n2)=0;
			N(n1,n2)=1;
		end
	end

	n1=m1;
	n2=(m2-1)+1*((m2-1)==0);
	if T(n1,n2)~=1
		if F(m1,m2)==F(n1,n2)
			I(n1,n2)=0;
			N(n1,n2)=1;
		end
	end

	n1=(m1+1)-1*(m1==M1);
	n2=m2;
	if T(n1,n2)~=1
		if F(m1,m2)==F(n1,n2)
			I(n1,n2)=0;
			N(n1,n2)=1;
		end
	end

	n1=m1;
	n2=(m2+1)-1*(m2==M2);
	if T(n1,n2)~=1
		if F(m1,m2)==F(n1,n2)
			I(n1,n2)=0;
			N(n1,n2)=1;
		end
	end

	if (Neigbor==8)

	n1=(m1-1)+1*((m1-1)==0);
	n2=(m2-1)+1*((m2-1)==0);
	if T(n1,n2)~=1
		if F(m1,m2)==F(n1,n2)
			I(n1,n2)=0;
			N(n1,n2)=1;
		end
	end

	n1=(m1+1)-1*(m1==M1);
	n2=(m2-1)+1*((m2-1)==0);
	if T(n1,n2)~=1
		if F(m1,m2)==F(n1,n2)
			I(n1,n2)=0;
			N(n1,n2)=1;
		end
	end

	n1=(m1+1)-1*(m1==M1);
	n2=(m2+1)-1*(m2==M2);
	if T(n1,n2)~=1
		if F(m1,m2)==F(n1,n2)
			I(n1,n2)=0;
			N(n1,n2)=1;
		end
	end

	n1=(m1-1)+1*((m1-1)==0);
	n2=(m2+1)-1*(m2==M2);
	if T(n1,n2)~=1
		if F(m1,m2)==F(n1,n2)
			I(n1,n2)=0;
			N(n1,n2)=1;
		end
	end

	end
	N(m1,m2)=0;
	T(m1,m2)=1;
	end

end
end

end

endfunction
