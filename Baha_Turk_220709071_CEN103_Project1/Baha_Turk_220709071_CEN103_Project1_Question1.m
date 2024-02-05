%Baha Türk
%220709071
%Computer Engineering
%CEN103/Introduction to Programming
%Project1
%Fall 2023
%Dr.Lecturer Deniz DAL

stockPrice=input('Please enter current stock price: '); %The price of the current stock(S) the user wants to buy.
if stockPrice<0
    disp('Please enter a positive value!'); %If the user enters a negative value.
else 
    strikePrice=stockPrice+(stockPrice*0.1); %Strike price(K) assumed 10% more than current stock price.
    interestRate=5; %The risk-free interest rate(r) was given as 5%. 
    timeToMaturity=6; %The time to maturity(t) given as six months was coverted into years. %Six months is half a year.
    normalD1=0.93; %N is a normal distribution. %0.93 is the N(d1) value obtained using the cumulative standard normal distribution table. %d1 is 1.46 .
    normalD2=0.85; %N is a normal distribution. %0.85 is the N(d2) value obtained using the cumulative standard normal distribution table. %d2 is 1.03 .
    callOptionPrice=abs((stockPrice*normalD1)-strikePrice*(1/(2.71828^(timeToMaturity*interestRate)))*normalD2); %Black-Scholes model of option pricing.
    
    fprintf('A stock with a current stock price of %g,',stockPrice);
    fprintf('a strike price of %g,',strikePrice);
    fprintf('a risk-free interest rate of %g%%,',interestRate);
    fprintf('a time to maturity of %g months ',timeToMaturity);
    fprintf('and normal distrubitions of %g and %g ',normalD1,normalD2);
    fprintf('has an call option price of %g.\n',callOptionPrice);
end 