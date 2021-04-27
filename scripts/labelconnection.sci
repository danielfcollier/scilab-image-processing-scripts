function I=labelconnection(F,Neigbor,L)

F=ceil((F+1-L)/L);

[M1,M2]=size(F);
I=zeros(M1,M2);
label=0;
List=1:M1*M2;
V=Neigbor/2;


for m1=1:M1
for m2=1:M2
	labelV=zeros(1,V);

	n1=(m1-1)+1*((m1-1)==0);
	n2=m2;
	if F(m1,m2)==F(n1,n2)
		labelV(1)=I(n1,n2);
	end
	n1=m1;
	n2=(m2-1)+1*((m2-1)==0);
	if F(m1,m2)==F(n1,n2)
		labelV(2)=I(n1,n2);
	end

	if(V==4)
	n1=(m1-1)+1*((m1-1)==0);
	n2=(m2-1)+1*((m2-1)==0);;
	if F(m1,m2)==F(n1,n2)
		labelV(3)=I(n1,n2);
	end
	n1=(m1-1)+1*((m1-1)==0);
	n2=(m2+1)-1*(m2==M2);
	if F(m1,m2)==F(n1,n2)
		labelV(4)=I(n1,n2);
	end
	end

	if max(labelV)>0
		labelV=labelV+max(labelV)*(labelV==0);
		labelA=min(labelV);
		I(m1,m2)=List(labelA);
		for i=1:V
		List(labelV(1,i))=labelA;
		end
	end

	if I(m1,m2)==0;
		label=label+1;
		I(m1,m2)=label;
	end
end
end

for m1=1:M1
for m2=1:M2
	I(m1,m2)=List(I(m1,m2));
end
end





endfunction
