ePai(pai, eu).
ePai(pai, filho2).
ePai(eu, mulher).
ePai(eu, filho1).

eMae(mulher, eu).
eMae(mulher, filho2).
eMae(viuva, mulher).
eMae(viuva, filho1).


eNeto(X, Y):- eMae(Z, X), ePai(Y, Z); 
    		eMae(Z, X), eMae(Y, Z);
			ePai(Z, X), ePai(Y, Z);
    		ePai(Z, X), eMae(Y, Z).