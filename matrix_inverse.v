`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//NAME: Grishma shah
//PROJECT NAME: matrix inversion
//SEM: 3rd
//ROLL NO: 201501095
//SUBJECT: linear algebra
//////////////////////////////////////////////////////////////////////////////////
module matrix_inverse(clk,reset,opt0,opt1,opt2,opt3,opt4,opt5,opt6,opt7,opt8,opt9,opt10,opt11,opt12,opt13,opt14,opt15,opt16,opt17,opt18,opt19,opt20,opt21,opt22,opt23,opt24);

//DECLARING INPUTS
input clk,reset;

//DECLARING REGISTER
reg [15:0] a [24:0];
reg [15:0] I [24:0];
reg [15:0] cst;
integer i;

//DECLARING opt
output reg [15:0] opt0,opt1,opt2,opt3,opt4,opt5,opt6,opt7,opt8,opt9,opt10,opt11,opt12,opt13,opt14,opt15,opt16,opt17,opt18,opt19,opt20,opt21,opt22,opt23,opt24;

//intialising input
always@(posedge clk)
begin
 a[0]=16'h1;
 a[1]=16'h0;
 a[2]=16'h0;
 a[3]=16'h0;
 a[4]=16'h0;
 
a[5]=16'h0;
a[6]=16'h1;
a[7]=16'h0;
a[8]=16'h0;
a[9]=16'h0;

a[10]=16'h0;
a[11]=16'h0;
a[12]=16'h1;
a[13]=16'h0;
a[14]=16'h0;

a[15]=16'h0;
a[16]=16'h0;
a[17]=16'h0;
a[18]=16'h1;
a[19]=16'h0;

a[20]=16'h0;
a[21]=16'h0;
a[22]=16'h0;
a[23]=16'h0;
a[24]=16'h1;

I[0]=16'b1;
I[1]=16'b0;
I[2]=16'b0;
I[3]=16'b0;
I[4]=16'b0;

I[5]=16'b0;
I[6]=16'b1;
I[7]=16'b0;
I[8]=16'b0;
I[9]=16'b0;

I[10]=16'b0;
I[11]=16'b0;
I[12]=16'b1;
I[13]=16'b0;
I[14]=16'b0;

I[15]=16'b0;
I[16]=16'b0;
I[17]=16'b0;
I[18]=16'b1;
I[19]=16'b0;

I[20]=16'b0;
I[21]=16'b0;
I[22]=16'b0;
I[23]=16'b0;
I[24]=16'b1;

//assinging cst the value of a[0]
cst=a[0];

//making a[0] equals to 1
a[0]=(a[0]/cst);
a[1]=(a[1]/cst);
a[2]=(a[2]/cst);
a[3]=(a[3]/cst);
a[4]=(a[4]/cst);

I[0]=(I[0]/cst);
I[1]=(I[1]/cst);
I[2]=(I[2]/cst);
I[3]=(I[3]/cst);
I[4]=(I[4]/cst);

//assinging cst the value of a[5]
cst=a[5];

//making a[5]=0
a[5]=a[5]-(a[0]*cst);
a[6]=a[6]-(a[1]*cst);
a[7]=a[7]-(a[2]*cst);
a[8]=a[8]-(a[3]*cst);
a[9]=a[9]-(a[4]*cst);

I[5]=I[5]-(I[0]*cst);
I[6]=I[6]-(I[1]*cst);
I[7]=I[7]-(I[2]*cst);
I[8]=I[8]-(I[3]*cst);
I[9]=I[9]-(I[4]*cst);

cst=a[10];

//making a[10]=0
a[10]=a[10]-(a[0]*cst);
a[11]=a[11]-(a[1]*cst);
a[12]=a[12]-(a[2]*cst);
a[13]=a[13]-(a[3]*cst);
a[14]=a[14]-(a[4]*cst);

I[10]=I[10]-(I[0]*cst);
I[11]=I[11]-(I[1]*cst);
I[12]=I[12]-(I[2]*cst);
I[13]=I[13]-(I[3]*cst);
I[14]=I[14]-(I[4]*cst);

cst=a[15];

//making a[15]=0
a[15]=a[15]-(a[0]*cst);
a[16]=a[16]-(a[1]*cst);
a[17]=a[17]-(a[2]*cst);
a[18]=a[18]-(a[3]*cst);
a[19]=a[19]-(a[4]*cst);


I[15]=I[15]-(I[0]*cst);
I[16]=I[16]-(I[1]*cst);
I[17]=I[17]-(I[2]*cst);
I[18]=I[18]-(I[3]*cst);
I[19]=I[19]-(I[4]*cst);

cst=a[20];

//making a[20]=0
a[20]=a[20]-(a[0]*cst);
a[21]=a[21]-(a[1]*cst);
a[22]=a[22]-(a[2]*cst);
a[23]=a[23]-(a[3]*cst);
a[24]=a[24]-(a[4]*cst);

I[20]=I[20]-(I[0]*cst);
I[21]=I[21]-(I[1]*cst);
I[22]=I[22]-(I[2]*cst);
I[23]=I[23]-(I[3]*cst);
I[24]=I[24]-(I[4]*cst);

cst=a[6];
//making a[6]=1
a[5]=(a[5]/cst);
a[6]=(a[6]/cst);
a[7]=(a[7]/cst);
a[8]=(a[8]/cst);
a[9]=(a[9]/cst);

I[5]=(I[5]/cst);
I[6]=(I[6]/cst);
I[7]=(I[7]/cst);
I[8]=(I[8]/cst);
I[9]=(I[9]/cst);

cst=a[11];

//making a[11]=0
a[10]=a[10]-(cst*a[5]);
a[11]=a[11]-(cst*a[6]);
a[12]=a[12]-(cst*a[7]);
a[13]=a[13]-(cst*a[8]);
a[14]=a[14]-(cst*a[9]);

 I[10]=I[10]-(cst*I[5]);
 I[11]=I[11]-(cst*I[6]);
 I[12]=I[12]-(cst*I[7]);
 I[13]=I[13]-(cst*I[8]);
 I[14]=I[14]-(cst*I[9]);

cst=a[16];

//making a[16]=0
 a[15]=a[15]-(cst*a[5]);
 a[16]=a[16]-(cst*a[6]);
 a[17]=a[17]-(cst*a[7]);
 a[18]=a[18]-(cst*a[8]);
 a[19]=a[19]-(cst*a[9]);

 I[15]=I[15]-(cst*I[5]);
 I[16]=I[16]-(cst*I[6]);
 I[17]=I[17]-(cst*I[7]);
 I[18]=I[18]-(cst*I[8]);
 I[19]=I[19]-(cst*I[9]);

cst=a[21];

 //making a[21]=0
 a[20]=a[20]-(cst*a[5]);
 a[21]=a[21]-(cst*a[6]);
 a[22]=a[22]-(cst*a[7]);
 a[23]=a[23]-(cst*a[8]);
 a[24]=a[24]-(cst*a[9]);

 I[20]=I[20]-(cst*I[5]);
 I[21]=I[21]-(cst*I[6]);
 I[22]=I[22]-(cst*I[7]);
 I[23]=I[23]-(cst*I[8]);
 I[24]=I[24]-(cst*I[9]);

cst=a[12];

//making a[12]=1
 a[10]=(a[10]/cst);
 a[11]=(a[11]/cst);
 a[12]=(a[12]/cst);
 a[13]=(a[13]/cst);
 a[14]=(a[14]/cst);

 I[10]=(I[10]/cst);
 I[11]=(I[11]/cst);
 I[12]=(I[12]/cst);
 I[13]=(I[13]/cst);
 I[14]=(I[14]/cst);

cst=a[17];

//making a[17]=0
 a[15]=a[15]-(a[10]*cst);
 a[16]=a[16]-(a[11]*cst);
 a[17]=a[17]-(a[12]*cst);
 a[18]=a[18]-(a[13]*cst);
 a[19]=a[19]-(a[14]*cst);

 I[15]=I[15]-(I[10]*cst);
 I[16]=I[16]-(I[11]*cst);
 I[17]=I[17]-(I[12]*cst);
 I[18]=I[18]-(I[13]*cst);
 I[19]=I[19]-(I[14]*cst);

cst=a[22];

//making a[22]=0
 a[20]=a[20]-(a[10]*cst);
 a[21]=a[21]-(a[11]*cst);
 a[22]=a[22]-(a[12]*cst);
 a[23]=a[23]-(a[13]*cst);
 a[24]=a[24]-(a[14]*cst);

 I[15]=I[15]-(I[10]*cst);
 I[16]=I[16]-(I[11]*cst);
 I[17]=I[17]-(I[12]*cst);
 I[18]=I[18]-(I[13]*cst);
 I[19]=I[19]-(I[14]*cst);

cst=a[18];
 
 //making a[18]=1
 a[15]=(a[15]/cst);
 a[16]=(a[16]/cst);
 a[17]=(a[17]/cst);
 a[18]=(a[18]/cst);
 a[19]=(a[19]/cst);

 I[15]=(I[15]/cst);
 I[16]=(I[16]/cst);
 I[17]=(I[17]/cst);
 I[18]=(I[18]/cst);
 I[19]=(I[19]/cst);

cst=a[23];

//making a[23]=0
 a[20]=a[20]-(cst*a[15]);
 a[21]=a[21]-(cst*a[16]);
 a[22]=a[22]-(cst*a[17]);
 a[23]=a[23]-(cst*a[18]);
 a[24]=a[24]-(cst*a[19]);

 I[20]=I[20]-(cst*I[15]);
 I[21]=I[21]-(cst*I[16]);
 I[22]=I[22]-(cst*I[17]);
 I[23]=I[23]-(cst*I[18]);
 I[24]=I[24]-(cst*I[19]);

cst=a[24];

//making a[24]=1
 a[20]=(a[20]/cst);
 a[21]=(a[21]/cst);
 a[22]=(a[22]/cst);
 a[23]=(a[23]/cst);
 a[24]=(a[24]/cst);

 I[20]=(I[20]/cst);
 I[21]=(I[21]/cst);
 I[22]=(I[22]/cst);
 I[23]=(I[23]/cst);
 I[24]=(I[24]/cst);

//rref
cst=a[1];

//making a[1]=0
 a[0]=a[0]-(cst*a[5]);
 a[1]=a[1]-(cst*a[6]);
 a[2]=a[2]-(cst*a[7]);
 a[3]=a[3]-(cst*a[8]);
 a[4]=a[4]-(cst*a[9]);

 I[0]=I[0]-(cst*I[5]);
 I[1]=I[1]-(cst*I[6]);
 I[2]=I[2]-(cst*I[7]);
 I[3]=I[3]-(cst*I[8]);
 I[4]=I[4]-(cst*I[9]);

cst=a[7];

//making a[7]=0
 a[5]=a[5]-(cst*a[10]);
 a[6]=a[6]-(cst*a[11]);
 a[7]=a[7]-(cst*a[12]);
 a[8]=a[8]-(cst*a[13]);
 a[9]=a[9]-(cst*a[14]);

 I[5]=I[5]-(cst*I[10]);
 I[6]=I[6]-(cst*I[11]);
 I[7]=I[7]-(cst*I[12]);
 I[8]=I[8]-(cst*I[13]);
 I[9]=I[9]-(cst*I[14]);

cst=a[2];

//making a[2]=0
 a[0]=a[0]-(cst*a[10]);
 a[1]=a[1]-(cst*a[11]);
 a[2]=a[2]-(cst*a[12]);
 a[3]=a[3]-(cst*a[13]);
 a[4]=a[4]-(cst*a[14]);

 I[0]=I[0]-(cst*I[10]);
 I[1]=I[1]-(cst*I[11]);
 I[2]=I[2]-(cst*I[12]);
 I[3]=I[3]-(cst*I[13]);
 I[4]=I[4]-(cst*I[14]);

cst=a[13];

//making a[13]=0
 a[10]=a[10]-(cst*a[15]);
 a[11]=a[11]-(cst*a[16]);
 a[12]=a[12]-(cst*a[17]);
 a[13]=a[13]-(cst*a[18]);
 a[14]=a[14]-(cst*a[19]);

 I[10]=I[10]-(cst*I[15]);
 I[11]=I[11]-(cst*I[16]);
 I[12]=I[12]-(cst*I[17]);
 I[13]=I[13]-(cst*I[18]);
 I[14]=I[14]-(cst*I[19]);

cst=a[8];

//making a[8]=0
 a[5]=a[5]-(cst*a[15]);
 a[6]=a[6]-(cst*a[16]);
 a[7]=a[7]-(cst*a[17]);
 a[8]=a[8]-(cst*a[18]);
 a[9]=a[9]-(cst*a[19]);

 I[5]=I[5]-(cst*I[15]);
 I[6]=I[6]-(cst*I[16]);
 I[7]=I[7]-(cst*I[17]);
 I[8]=I[8]-(cst*I[18]);
 I[9]=I[9]-(cst*I[19]);

cst=a[3];

//making a[3]=0
 a[0]=a[0]-(cst*a[15]);
 a[1]=a[1]-(cst*a[16]);
 a[2]=a[2]-(cst*a[17]);
 a[3]=a[3]-(cst*a[18]);
 a[4]=a[4]-(cst*a[19]);

 I[0]=I[0]-(cst*I[15]);
 I[1]=I[1]-(cst*I[16]);
 I[2]=I[2]-(cst*I[17]);
 I[3]=I[3]-(cst*I[18]);
 I[4]=I[4]-(cst*I[19]);

//assigning opt
opt20=(I[20]/a[24]);
opt21=(I[21]/a[24]);
opt22=(I[22]/a[24]);
opt23=(I[23]/a[24]);
opt24=(I[24]/a[24]);

cst=a[19];

//making a[19]=0
 a[15]=a[15]-(cst*a[20]);
 a[16]=a[16]-(cst*a[21]);
 a[17]=a[17]-(cst*a[22]);
 a[18]=a[18]-(cst*a[23]);
 a[19]=a[19]-(cst*a[24]);

 opt15=I[15]-(cst*I[20]);
 opt16=I[16]-(cst*I[21]);
 opt17=I[17]-(cst*I[22]);
 opt18=I[18]-(cst*I[23]);
 opt19=I[19]-(cst*I[24]);

cst=a[14];

//making a[14]=0
 a[10]=a[10]-(cst*a[20]);
 a[11]=a[11]-(cst*a[21]);
 a[12]=a[12]-(cst*a[22]);
 a[13]=a[13]-(cst*a[23]);
 a[14]=a[14]-(cst*a[24]);

 opt10=I[10]-(cst*I[20]);
 opt11=I[11]-(cst*I[21]);
 opt12=I[12]-(cst*I[22]);
 opt13=I[13]-(cst*I[23]);
 opt14=I[14]-(cst*I[24]);

cst=a[9];

//making a[9]=0
 a[5]=a[5]-(cst*a[20]);
 a[6]=a[6]-(cst*a[21]);
 a[7]=a[7]-(cst*a[22]);
 a[8]=a[8]-(cst*a[23]);
 a[9]=a[9]-(cst*a[24]);

 opt5=I[5]-(cst*I[20]);
 opt6=I[6]-(cst*I[21]);
 opt7=I[7]-(cst*I[22]);
 opt8=I[8]-(cst*I[23]);
 opt9=I[9]-(cst*I[24]);

cst=a[4];

//making a[4]=0
 a[0]=a[0]-(cst*a[20]);
 a[1]=a[1]-(cst*a[21]);
 a[2]=a[2]-(cst*a[22]);
 a[3]=a[3]-(cst*a[23]);
 a[4]=a[4]-(cst*a[24]);

 opt0=I[0]-(cst*I[20]);
 opt1=I[1]-(cst*I[21]);
 opt2=I[2]-(cst*I[22]);
 opt3=I[3]-(cst*I[23]);
 opt4=I[4]-(cst*I[24]);
end

endmodule
