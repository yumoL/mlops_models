î¿
¼
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
¾
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.5.32v2.5.2-194-g959e9b2a0c08Ïå
u
bn_dens1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namebn_dens1/gamma
n
"bn_dens1/gamma/Read/ReadVariableOpReadVariableOpbn_dens1/gamma*
_output_shapes	
:*
dtype0
s
bn_dens1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namebn_dens1/beta
l
!bn_dens1/beta/Read/ReadVariableOpReadVariableOpbn_dens1/beta*
_output_shapes	
:*
dtype0

bn_dens1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_namebn_dens1/moving_mean
z
(bn_dens1/moving_mean/Read/ReadVariableOpReadVariableOpbn_dens1/moving_mean*
_output_shapes	
:*
dtype0

bn_dens1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_namebn_dens1/moving_variance

,bn_dens1/moving_variance/Read/ReadVariableOpReadVariableOpbn_dens1/moving_variance*
_output_shapes	
:*
dtype0
u
dens1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*
shared_namedens1/kernel
n
 dens1/kernel/Read/ReadVariableOpReadVariableOpdens1/kernel*
_output_shapes
:	@*
dtype0
l

dens1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
dens1/bias
e
dens1/bias/Read/ReadVariableOpReadVariableOp
dens1/bias*
_output_shapes
:@*
dtype0
t
bn_dens2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namebn_dens2/gamma
m
"bn_dens2/gamma/Read/ReadVariableOpReadVariableOpbn_dens2/gamma*
_output_shapes
:@*
dtype0
r
bn_dens2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namebn_dens2/beta
k
!bn_dens2/beta/Read/ReadVariableOpReadVariableOpbn_dens2/beta*
_output_shapes
:@*
dtype0

bn_dens2/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_namebn_dens2/moving_mean
y
(bn_dens2/moving_mean/Read/ReadVariableOpReadVariableOpbn_dens2/moving_mean*
_output_shapes
:@*
dtype0

bn_dens2/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_namebn_dens2/moving_variance

,bn_dens2/moving_variance/Read/ReadVariableOpReadVariableOpbn_dens2/moving_variance*
_output_shapes
:@*
dtype0
u
dens2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*
shared_namedens2/kernel
n
 dens2/kernel/Read/ReadVariableOpReadVariableOpdens2/kernel*
_output_shapes
:	@*
dtype0
m

dens2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dens2/bias
f
dens2/bias/Read/ReadVariableOpReadVariableOp
dens2/bias*
_output_shapes	
:*
dtype0
u
bn_dens3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namebn_dens3/gamma
n
"bn_dens3/gamma/Read/ReadVariableOpReadVariableOpbn_dens3/gamma*
_output_shapes	
:*
dtype0
s
bn_dens3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namebn_dens3/beta
l
!bn_dens3/beta/Read/ReadVariableOpReadVariableOpbn_dens3/beta*
_output_shapes	
:*
dtype0

bn_dens3/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_namebn_dens3/moving_mean
z
(bn_dens3/moving_mean/Read/ReadVariableOpReadVariableOpbn_dens3/moving_mean*
_output_shapes	
:*
dtype0

bn_dens3/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_namebn_dens3/moving_variance

,bn_dens3/moving_variance/Read/ReadVariableOpReadVariableOpbn_dens3/moving_variance*
_output_shapes	
:*
dtype0
v
dens3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedens3/kernel
o
 dens3/kernel/Read/ReadVariableOpReadVariableOpdens3/kernel* 
_output_shapes
:
*
dtype0
m

dens3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dens3/bias
f
dens3/bias/Read/ReadVariableOpReadVariableOp
dens3/bias*
_output_shapes	
:*
dtype0
u
bn_dens4/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namebn_dens4/gamma
n
"bn_dens4/gamma/Read/ReadVariableOpReadVariableOpbn_dens4/gamma*
_output_shapes	
:*
dtype0
s
bn_dens4/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namebn_dens4/beta
l
!bn_dens4/beta/Read/ReadVariableOpReadVariableOpbn_dens4/beta*
_output_shapes	
:*
dtype0

bn_dens4/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_namebn_dens4/moving_mean
z
(bn_dens4/moving_mean/Read/ReadVariableOpReadVariableOpbn_dens4/moving_mean*
_output_shapes	
:*
dtype0

bn_dens4/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_namebn_dens4/moving_variance

,bn_dens4/moving_variance/Read/ReadVariableOpReadVariableOpbn_dens4/moving_variance*
_output_shapes	
:*
dtype0
u
final/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
*
shared_namefinal/kernel
n
 final/kernel/Read/ReadVariableOpReadVariableOpfinal/kernel*
_output_shapes
:	
*
dtype0
l

final/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_name
final/bias
e
final/bias/Read/ReadVariableOpReadVariableOp
final/bias*
_output_shapes
:
*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0

Adam/bn_dens1/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/bn_dens1/gamma/m
|
)Adam/bn_dens1/gamma/m/Read/ReadVariableOpReadVariableOpAdam/bn_dens1/gamma/m*
_output_shapes	
:*
dtype0

Adam/bn_dens1/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/bn_dens1/beta/m
z
(Adam/bn_dens1/beta/m/Read/ReadVariableOpReadVariableOpAdam/bn_dens1/beta/m*
_output_shapes	
:*
dtype0

Adam/dens1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*$
shared_nameAdam/dens1/kernel/m
|
'Adam/dens1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dens1/kernel/m*
_output_shapes
:	@*
dtype0
z
Adam/dens1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameAdam/dens1/bias/m
s
%Adam/dens1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dens1/bias/m*
_output_shapes
:@*
dtype0

Adam/bn_dens2/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/bn_dens2/gamma/m
{
)Adam/bn_dens2/gamma/m/Read/ReadVariableOpReadVariableOpAdam/bn_dens2/gamma/m*
_output_shapes
:@*
dtype0

Adam/bn_dens2/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/bn_dens2/beta/m
y
(Adam/bn_dens2/beta/m/Read/ReadVariableOpReadVariableOpAdam/bn_dens2/beta/m*
_output_shapes
:@*
dtype0

Adam/dens2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*$
shared_nameAdam/dens2/kernel/m
|
'Adam/dens2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dens2/kernel/m*
_output_shapes
:	@*
dtype0
{
Adam/dens2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dens2/bias/m
t
%Adam/dens2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dens2/bias/m*
_output_shapes	
:*
dtype0

Adam/bn_dens3/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/bn_dens3/gamma/m
|
)Adam/bn_dens3/gamma/m/Read/ReadVariableOpReadVariableOpAdam/bn_dens3/gamma/m*
_output_shapes	
:*
dtype0

Adam/bn_dens3/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/bn_dens3/beta/m
z
(Adam/bn_dens3/beta/m/Read/ReadVariableOpReadVariableOpAdam/bn_dens3/beta/m*
_output_shapes	
:*
dtype0

Adam/dens3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dens3/kernel/m
}
'Adam/dens3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dens3/kernel/m* 
_output_shapes
:
*
dtype0
{
Adam/dens3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dens3/bias/m
t
%Adam/dens3/bias/m/Read/ReadVariableOpReadVariableOpAdam/dens3/bias/m*
_output_shapes	
:*
dtype0

Adam/bn_dens4/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/bn_dens4/gamma/m
|
)Adam/bn_dens4/gamma/m/Read/ReadVariableOpReadVariableOpAdam/bn_dens4/gamma/m*
_output_shapes	
:*
dtype0

Adam/bn_dens4/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/bn_dens4/beta/m
z
(Adam/bn_dens4/beta/m/Read/ReadVariableOpReadVariableOpAdam/bn_dens4/beta/m*
_output_shapes	
:*
dtype0

Adam/final/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
*$
shared_nameAdam/final/kernel/m
|
'Adam/final/kernel/m/Read/ReadVariableOpReadVariableOpAdam/final/kernel/m*
_output_shapes
:	
*
dtype0
z
Adam/final/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*"
shared_nameAdam/final/bias/m
s
%Adam/final/bias/m/Read/ReadVariableOpReadVariableOpAdam/final/bias/m*
_output_shapes
:
*
dtype0

Adam/bn_dens1/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/bn_dens1/gamma/v
|
)Adam/bn_dens1/gamma/v/Read/ReadVariableOpReadVariableOpAdam/bn_dens1/gamma/v*
_output_shapes	
:*
dtype0

Adam/bn_dens1/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/bn_dens1/beta/v
z
(Adam/bn_dens1/beta/v/Read/ReadVariableOpReadVariableOpAdam/bn_dens1/beta/v*
_output_shapes	
:*
dtype0

Adam/dens1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*$
shared_nameAdam/dens1/kernel/v
|
'Adam/dens1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dens1/kernel/v*
_output_shapes
:	@*
dtype0
z
Adam/dens1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameAdam/dens1/bias/v
s
%Adam/dens1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dens1/bias/v*
_output_shapes
:@*
dtype0

Adam/bn_dens2/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/bn_dens2/gamma/v
{
)Adam/bn_dens2/gamma/v/Read/ReadVariableOpReadVariableOpAdam/bn_dens2/gamma/v*
_output_shapes
:@*
dtype0

Adam/bn_dens2/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/bn_dens2/beta/v
y
(Adam/bn_dens2/beta/v/Read/ReadVariableOpReadVariableOpAdam/bn_dens2/beta/v*
_output_shapes
:@*
dtype0

Adam/dens2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*$
shared_nameAdam/dens2/kernel/v
|
'Adam/dens2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dens2/kernel/v*
_output_shapes
:	@*
dtype0
{
Adam/dens2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dens2/bias/v
t
%Adam/dens2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dens2/bias/v*
_output_shapes	
:*
dtype0

Adam/bn_dens3/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/bn_dens3/gamma/v
|
)Adam/bn_dens3/gamma/v/Read/ReadVariableOpReadVariableOpAdam/bn_dens3/gamma/v*
_output_shapes	
:*
dtype0

Adam/bn_dens3/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/bn_dens3/beta/v
z
(Adam/bn_dens3/beta/v/Read/ReadVariableOpReadVariableOpAdam/bn_dens3/beta/v*
_output_shapes	
:*
dtype0

Adam/dens3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dens3/kernel/v
}
'Adam/dens3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dens3/kernel/v* 
_output_shapes
:
*
dtype0
{
Adam/dens3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dens3/bias/v
t
%Adam/dens3/bias/v/Read/ReadVariableOpReadVariableOpAdam/dens3/bias/v*
_output_shapes	
:*
dtype0

Adam/bn_dens4/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/bn_dens4/gamma/v
|
)Adam/bn_dens4/gamma/v/Read/ReadVariableOpReadVariableOpAdam/bn_dens4/gamma/v*
_output_shapes	
:*
dtype0

Adam/bn_dens4/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/bn_dens4/beta/v
z
(Adam/bn_dens4/beta/v/Read/ReadVariableOpReadVariableOpAdam/bn_dens4/beta/v*
_output_shapes	
:*
dtype0

Adam/final/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
*$
shared_nameAdam/final/kernel/v
|
'Adam/final/kernel/v/Read/ReadVariableOpReadVariableOpAdam/final/kernel/v*
_output_shapes
:	
*
dtype0
z
Adam/final/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*"
shared_nameAdam/final/bias/v
s
%Adam/final/bias/v/Read/ReadVariableOpReadVariableOpAdam/final/bias/v*
_output_shapes
:
*
dtype0

NoOpNoOp
]
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ö\
valueÌ\BÉ\ BÂ\
¶
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
layer_with_weights-6
layer-7
	layer_with_weights-7
	layer-8

	optimizer
regularization_losses
trainable_variables
	variables
	keras_api

signatures
R
regularization_losses
trainable_variables
	variables
	keras_api

axis
	gamma
beta
moving_mean
moving_variance
regularization_losses
trainable_variables
	variables
	keras_api
h

kernel
bias
regularization_losses
 trainable_variables
!	variables
"	keras_api

#axis
	$gamma
%beta
&moving_mean
'moving_variance
(regularization_losses
)trainable_variables
*	variables
+	keras_api
h

,kernel
-bias
.regularization_losses
/trainable_variables
0	variables
1	keras_api

2axis
	3gamma
4beta
5moving_mean
6moving_variance
7regularization_losses
8trainable_variables
9	variables
:	keras_api
h

;kernel
<bias
=regularization_losses
>trainable_variables
?	variables
@	keras_api

Aaxis
	Bgamma
Cbeta
Dmoving_mean
Emoving_variance
Fregularization_losses
Gtrainable_variables
H	variables
I	keras_api
h

Jkernel
Kbias
Lregularization_losses
Mtrainable_variables
N	variables
O	keras_api

Piter

Qbeta_1

Rbeta_2
	Sdecay
Tlearning_ratemmmm$m%m,m-m3m4m;m<mBmCmJm Km¡v¢v£v¤v¥$v¦%v§,v¨-v©3vª4v«;v¬<v­Bv®Cv¯Jv°Kv±
 
v
0
1
2
3
$4
%5
,6
-7
38
49
;10
<11
B12
C13
J14
K15
¶
0
1
2
3
4
5
$6
%7
&8
'9
,10
-11
312
413
514
615
;16
<17
B18
C19
D20
E21
J22
K23
­
regularization_losses
trainable_variables
Ulayer_regularization_losses
Vlayer_metrics
Wnon_trainable_variables
Xmetrics

Ylayers
	variables
 
 
 
 
­
regularization_losses
trainable_variables
Zlayer_regularization_losses
[layer_metrics
\non_trainable_variables
]metrics

^layers
	variables
 
YW
VARIABLE_VALUEbn_dens1/gamma5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEbn_dens1/beta4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbn_dens1/moving_mean;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUEbn_dens1/moving_variance?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
2
3
­
regularization_losses
trainable_variables
_layer_regularization_losses
`layer_metrics
anon_trainable_variables
bmetrics

clayers
	variables
XV
VARIABLE_VALUEdens1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dens1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
­
regularization_losses
 trainable_variables
dlayer_regularization_losses
elayer_metrics
fnon_trainable_variables
gmetrics

hlayers
!	variables
 
YW
VARIABLE_VALUEbn_dens2/gamma5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEbn_dens2/beta4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbn_dens2/moving_mean;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUEbn_dens2/moving_variance?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

$0
%1

$0
%1
&2
'3
­
(regularization_losses
)trainable_variables
ilayer_regularization_losses
jlayer_metrics
knon_trainable_variables
lmetrics

mlayers
*	variables
XV
VARIABLE_VALUEdens2/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dens2/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

,0
-1

,0
-1
­
.regularization_losses
/trainable_variables
nlayer_regularization_losses
olayer_metrics
pnon_trainable_variables
qmetrics

rlayers
0	variables
 
YW
VARIABLE_VALUEbn_dens3/gamma5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEbn_dens3/beta4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbn_dens3/moving_mean;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUEbn_dens3/moving_variance?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

30
41

30
41
52
63
­
7regularization_losses
8trainable_variables
slayer_regularization_losses
tlayer_metrics
unon_trainable_variables
vmetrics

wlayers
9	variables
XV
VARIABLE_VALUEdens3/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dens3/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
 

;0
<1

;0
<1
­
=regularization_losses
>trainable_variables
xlayer_regularization_losses
ylayer_metrics
znon_trainable_variables
{metrics

|layers
?	variables
 
YW
VARIABLE_VALUEbn_dens4/gamma5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEbn_dens4/beta4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbn_dens4/moving_mean;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUEbn_dens4/moving_variance?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

B0
C1

B0
C1
D2
E3
¯
Fregularization_losses
Gtrainable_variables
}layer_regularization_losses
~layer_metrics
non_trainable_variables
metrics
layers
H	variables
XV
VARIABLE_VALUEfinal/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
final/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE
 

J0
K1

J0
K1
²
Lregularization_losses
Mtrainable_variables
 layer_regularization_losses
layer_metrics
non_trainable_variables
metrics
layers
N	variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
 
8
0
1
&2
'3
54
65
D6
E7

0
1
?
0
1
2
3
4
5
6
7
	8
 
 
 
 
 
 
 

0
1
 
 
 
 
 
 
 
 
 

&0
'1
 
 
 
 
 
 
 
 
 

50
61
 
 
 
 
 
 
 
 
 

D0
E1
 
 
 
 
 
 
 
8

total

count
	variables
	keras_api
I

total

count

_fn_kwargs
	variables
	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

0
1

	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

	variables
|z
VARIABLE_VALUEAdam/bn_dens1/gamma/mQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/bn_dens1/beta/mPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dens1/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dens1/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/bn_dens2/gamma/mQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/bn_dens2/beta/mPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dens2/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dens2/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/bn_dens3/gamma/mQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/bn_dens3/beta/mPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dens3/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dens3/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/bn_dens4/gamma/mQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/bn_dens4/beta/mPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/final/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/final/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/bn_dens1/gamma/vQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/bn_dens1/beta/vPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dens1/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dens1/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/bn_dens2/gamma/vQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/bn_dens2/beta/vPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dens2/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dens2/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/bn_dens3/gamma/vQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/bn_dens3/beta/vPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dens3/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dens3/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/bn_dens4/gamma/vQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/bn_dens4/beta/vPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/final/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/final/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_flat_inputPlaceholder*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*$
shape:ÿÿÿÿÿÿÿÿÿ

StatefulPartitionedCallStatefulPartitionedCallserving_default_flat_inputbn_dens1/moving_variancebn_dens1/gammabn_dens1/moving_meanbn_dens1/betadens1/kernel
dens1/biasbn_dens2/moving_variancebn_dens2/gammabn_dens2/moving_meanbn_dens2/betadens2/kernel
dens2/biasbn_dens3/moving_variancebn_dens3/gammabn_dens3/moving_meanbn_dens3/betadens3/kernel
dens3/biasbn_dens4/moving_variancebn_dens4/gammabn_dens4/moving_meanbn_dens4/betafinal/kernel
final/bias*$
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*:
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_293146
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
¡
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"bn_dens1/gamma/Read/ReadVariableOp!bn_dens1/beta/Read/ReadVariableOp(bn_dens1/moving_mean/Read/ReadVariableOp,bn_dens1/moving_variance/Read/ReadVariableOp dens1/kernel/Read/ReadVariableOpdens1/bias/Read/ReadVariableOp"bn_dens2/gamma/Read/ReadVariableOp!bn_dens2/beta/Read/ReadVariableOp(bn_dens2/moving_mean/Read/ReadVariableOp,bn_dens2/moving_variance/Read/ReadVariableOp dens2/kernel/Read/ReadVariableOpdens2/bias/Read/ReadVariableOp"bn_dens3/gamma/Read/ReadVariableOp!bn_dens3/beta/Read/ReadVariableOp(bn_dens3/moving_mean/Read/ReadVariableOp,bn_dens3/moving_variance/Read/ReadVariableOp dens3/kernel/Read/ReadVariableOpdens3/bias/Read/ReadVariableOp"bn_dens4/gamma/Read/ReadVariableOp!bn_dens4/beta/Read/ReadVariableOp(bn_dens4/moving_mean/Read/ReadVariableOp,bn_dens4/moving_variance/Read/ReadVariableOp final/kernel/Read/ReadVariableOpfinal/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp)Adam/bn_dens1/gamma/m/Read/ReadVariableOp(Adam/bn_dens1/beta/m/Read/ReadVariableOp'Adam/dens1/kernel/m/Read/ReadVariableOp%Adam/dens1/bias/m/Read/ReadVariableOp)Adam/bn_dens2/gamma/m/Read/ReadVariableOp(Adam/bn_dens2/beta/m/Read/ReadVariableOp'Adam/dens2/kernel/m/Read/ReadVariableOp%Adam/dens2/bias/m/Read/ReadVariableOp)Adam/bn_dens3/gamma/m/Read/ReadVariableOp(Adam/bn_dens3/beta/m/Read/ReadVariableOp'Adam/dens3/kernel/m/Read/ReadVariableOp%Adam/dens3/bias/m/Read/ReadVariableOp)Adam/bn_dens4/gamma/m/Read/ReadVariableOp(Adam/bn_dens4/beta/m/Read/ReadVariableOp'Adam/final/kernel/m/Read/ReadVariableOp%Adam/final/bias/m/Read/ReadVariableOp)Adam/bn_dens1/gamma/v/Read/ReadVariableOp(Adam/bn_dens1/beta/v/Read/ReadVariableOp'Adam/dens1/kernel/v/Read/ReadVariableOp%Adam/dens1/bias/v/Read/ReadVariableOp)Adam/bn_dens2/gamma/v/Read/ReadVariableOp(Adam/bn_dens2/beta/v/Read/ReadVariableOp'Adam/dens2/kernel/v/Read/ReadVariableOp%Adam/dens2/bias/v/Read/ReadVariableOp)Adam/bn_dens3/gamma/v/Read/ReadVariableOp(Adam/bn_dens3/beta/v/Read/ReadVariableOp'Adam/dens3/kernel/v/Read/ReadVariableOp%Adam/dens3/bias/v/Read/ReadVariableOp)Adam/bn_dens4/gamma/v/Read/ReadVariableOp(Adam/bn_dens4/beta/v/Read/ReadVariableOp'Adam/final/kernel/v/Read/ReadVariableOp%Adam/final/bias/v/Read/ReadVariableOpConst*N
TinG
E2C	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__traced_save_294133

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamebn_dens1/gammabn_dens1/betabn_dens1/moving_meanbn_dens1/moving_variancedens1/kernel
dens1/biasbn_dens2/gammabn_dens2/betabn_dens2/moving_meanbn_dens2/moving_variancedens2/kernel
dens2/biasbn_dens3/gammabn_dens3/betabn_dens3/moving_meanbn_dens3/moving_variancedens3/kernel
dens3/biasbn_dens4/gammabn_dens4/betabn_dens4/moving_meanbn_dens4/moving_variancefinal/kernel
final/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/bn_dens1/gamma/mAdam/bn_dens1/beta/mAdam/dens1/kernel/mAdam/dens1/bias/mAdam/bn_dens2/gamma/mAdam/bn_dens2/beta/mAdam/dens2/kernel/mAdam/dens2/bias/mAdam/bn_dens3/gamma/mAdam/bn_dens3/beta/mAdam/dens3/kernel/mAdam/dens3/bias/mAdam/bn_dens4/gamma/mAdam/bn_dens4/beta/mAdam/final/kernel/mAdam/final/bias/mAdam/bn_dens1/gamma/vAdam/bn_dens1/beta/vAdam/dens1/kernel/vAdam/dens1/bias/vAdam/bn_dens2/gamma/vAdam/bn_dens2/beta/vAdam/dens2/kernel/vAdam/dens2/bias/vAdam/bn_dens3/gamma/vAdam/bn_dens3/beta/vAdam/dens3/kernel/vAdam/dens3/bias/vAdam/bn_dens4/gamma/vAdam/bn_dens4/beta/vAdam/final/kernel/vAdam/final/bias/v*M
TinF
D2B*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__traced_restore_294338½ã
­

ó
A__inference_dens1_layer_call_and_return_conditional_losses_292561

inputs1
matmul_readvariableop_resource:	@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
è)
Ý
D__inference_bn_dens2_layer_call_and_return_conditional_losses_292124

inputs5
'assignmovingavg_readvariableop_resource:@7
)assignmovingavg_1_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@/
!batchnorm_readvariableop_resource:@
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:@2
moments/StopGradient¤
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices²
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay¤
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:@*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg/mul¿
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decayª
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_1/ReadVariableOp 
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_1/mulÉ
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
batchnorm/add_1
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
íæ
ò
H__inference_sequential_1_layer_call_and_return_conditional_losses_293504

inputs?
0bn_dens1_assignmovingavg_readvariableop_resource:	A
2bn_dens1_assignmovingavg_1_readvariableop_resource:	=
.bn_dens1_batchnorm_mul_readvariableop_resource:	9
*bn_dens1_batchnorm_readvariableop_resource:	7
$dens1_matmul_readvariableop_resource:	@3
%dens1_biasadd_readvariableop_resource:@>
0bn_dens2_assignmovingavg_readvariableop_resource:@@
2bn_dens2_assignmovingavg_1_readvariableop_resource:@<
.bn_dens2_batchnorm_mul_readvariableop_resource:@8
*bn_dens2_batchnorm_readvariableop_resource:@7
$dens2_matmul_readvariableop_resource:	@4
%dens2_biasadd_readvariableop_resource:	?
0bn_dens3_assignmovingavg_readvariableop_resource:	A
2bn_dens3_assignmovingavg_1_readvariableop_resource:	=
.bn_dens3_batchnorm_mul_readvariableop_resource:	9
*bn_dens3_batchnorm_readvariableop_resource:	8
$dens3_matmul_readvariableop_resource:
4
%dens3_biasadd_readvariableop_resource:	?
0bn_dens4_assignmovingavg_readvariableop_resource:	A
2bn_dens4_assignmovingavg_1_readvariableop_resource:	=
.bn_dens4_batchnorm_mul_readvariableop_resource:	9
*bn_dens4_batchnorm_readvariableop_resource:	7
$final_matmul_readvariableop_resource:	
3
%final_biasadd_readvariableop_resource:

identity¢bn_dens1/AssignMovingAvg¢'bn_dens1/AssignMovingAvg/ReadVariableOp¢bn_dens1/AssignMovingAvg_1¢)bn_dens1/AssignMovingAvg_1/ReadVariableOp¢!bn_dens1/batchnorm/ReadVariableOp¢%bn_dens1/batchnorm/mul/ReadVariableOp¢bn_dens2/AssignMovingAvg¢'bn_dens2/AssignMovingAvg/ReadVariableOp¢bn_dens2/AssignMovingAvg_1¢)bn_dens2/AssignMovingAvg_1/ReadVariableOp¢!bn_dens2/batchnorm/ReadVariableOp¢%bn_dens2/batchnorm/mul/ReadVariableOp¢bn_dens3/AssignMovingAvg¢'bn_dens3/AssignMovingAvg/ReadVariableOp¢bn_dens3/AssignMovingAvg_1¢)bn_dens3/AssignMovingAvg_1/ReadVariableOp¢!bn_dens3/batchnorm/ReadVariableOp¢%bn_dens3/batchnorm/mul/ReadVariableOp¢bn_dens4/AssignMovingAvg¢'bn_dens4/AssignMovingAvg/ReadVariableOp¢bn_dens4/AssignMovingAvg_1¢)bn_dens4/AssignMovingAvg_1/ReadVariableOp¢!bn_dens4/batchnorm/ReadVariableOp¢%bn_dens4/batchnorm/mul/ReadVariableOp¢dens1/BiasAdd/ReadVariableOp¢dens1/MatMul/ReadVariableOp¢dens2/BiasAdd/ReadVariableOp¢dens2/MatMul/ReadVariableOp¢dens3/BiasAdd/ReadVariableOp¢dens3/MatMul/ReadVariableOp¢final/BiasAdd/ReadVariableOp¢final/MatMul/ReadVariableOpi

flat/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  2

flat/Constw
flat/ReshapeReshapeinputsflat/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
flat/Reshape
'bn_dens1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2)
'bn_dens1/moments/mean/reduction_indicesº
bn_dens1/moments/meanMeanflat/Reshape:output:00bn_dens1/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
bn_dens1/moments/mean
bn_dens1/moments/StopGradientStopGradientbn_dens1/moments/mean:output:0*
T0*
_output_shapes
:	2
bn_dens1/moments/StopGradientÏ
"bn_dens1/moments/SquaredDifferenceSquaredDifferenceflat/Reshape:output:0&bn_dens1/moments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"bn_dens1/moments/SquaredDifference¤
+bn_dens1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2-
+bn_dens1/moments/variance/reduction_indices×
bn_dens1/moments/varianceMean&bn_dens1/moments/SquaredDifference:z:04bn_dens1/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
bn_dens1/moments/variance
bn_dens1/moments/SqueezeSqueezebn_dens1/moments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
bn_dens1/moments/Squeeze¤
bn_dens1/moments/Squeeze_1Squeeze"bn_dens1/moments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
bn_dens1/moments/Squeeze_1
bn_dens1/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2 
bn_dens1/AssignMovingAvg/decayÀ
'bn_dens1/AssignMovingAvg/ReadVariableOpReadVariableOp0bn_dens1_assignmovingavg_readvariableop_resource*
_output_shapes	
:*
dtype02)
'bn_dens1/AssignMovingAvg/ReadVariableOp½
bn_dens1/AssignMovingAvg/subSub/bn_dens1/AssignMovingAvg/ReadVariableOp:value:0!bn_dens1/moments/Squeeze:output:0*
T0*
_output_shapes	
:2
bn_dens1/AssignMovingAvg/sub´
bn_dens1/AssignMovingAvg/mulMul bn_dens1/AssignMovingAvg/sub:z:0'bn_dens1/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:2
bn_dens1/AssignMovingAvg/mulì
bn_dens1/AssignMovingAvgAssignSubVariableOp0bn_dens1_assignmovingavg_readvariableop_resource bn_dens1/AssignMovingAvg/mul:z:0(^bn_dens1/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
bn_dens1/AssignMovingAvg
 bn_dens1/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2"
 bn_dens1/AssignMovingAvg_1/decayÆ
)bn_dens1/AssignMovingAvg_1/ReadVariableOpReadVariableOp2bn_dens1_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:*
dtype02+
)bn_dens1/AssignMovingAvg_1/ReadVariableOpÅ
bn_dens1/AssignMovingAvg_1/subSub1bn_dens1/AssignMovingAvg_1/ReadVariableOp:value:0#bn_dens1/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:2 
bn_dens1/AssignMovingAvg_1/sub¼
bn_dens1/AssignMovingAvg_1/mulMul"bn_dens1/AssignMovingAvg_1/sub:z:0)bn_dens1/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:2 
bn_dens1/AssignMovingAvg_1/mulö
bn_dens1/AssignMovingAvg_1AssignSubVariableOp2bn_dens1_assignmovingavg_1_readvariableop_resource"bn_dens1/AssignMovingAvg_1/mul:z:0*^bn_dens1/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
bn_dens1/AssignMovingAvg_1y
bn_dens1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
bn_dens1/batchnorm/add/y§
bn_dens1/batchnorm/addAddV2#bn_dens1/moments/Squeeze_1:output:0!bn_dens1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
bn_dens1/batchnorm/add
bn_dens1/batchnorm/RsqrtRsqrtbn_dens1/batchnorm/add:z:0*
T0*
_output_shapes	
:2
bn_dens1/batchnorm/Rsqrtº
%bn_dens1/batchnorm/mul/ReadVariableOpReadVariableOp.bn_dens1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02'
%bn_dens1/batchnorm/mul/ReadVariableOpª
bn_dens1/batchnorm/mulMulbn_dens1/batchnorm/Rsqrt:y:0-bn_dens1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
bn_dens1/batchnorm/mul¡
bn_dens1/batchnorm/mul_1Mulflat/Reshape:output:0bn_dens1/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
bn_dens1/batchnorm/mul_1 
bn_dens1/batchnorm/mul_2Mul!bn_dens1/moments/Squeeze:output:0bn_dens1/batchnorm/mul:z:0*
T0*
_output_shapes	
:2
bn_dens1/batchnorm/mul_2®
!bn_dens1/batchnorm/ReadVariableOpReadVariableOp*bn_dens1_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02#
!bn_dens1/batchnorm/ReadVariableOp¦
bn_dens1/batchnorm/subSub)bn_dens1/batchnorm/ReadVariableOp:value:0bn_dens1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
bn_dens1/batchnorm/subª
bn_dens1/batchnorm/add_1AddV2bn_dens1/batchnorm/mul_1:z:0bn_dens1/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
bn_dens1/batchnorm/add_1 
dens1/MatMul/ReadVariableOpReadVariableOp$dens1_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
dens1/MatMul/ReadVariableOp
dens1/MatMulMatMulbn_dens1/batchnorm/add_1:z:0#dens1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dens1/MatMul
dens1/BiasAdd/ReadVariableOpReadVariableOp%dens1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
dens1/BiasAdd/ReadVariableOp
dens1/BiasAddBiasAdddens1/MatMul:product:0$dens1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dens1/BiasAddj

dens1/ReluReludens1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

dens1/Relu
'bn_dens2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2)
'bn_dens2/moments/mean/reduction_indices¼
bn_dens2/moments/meanMeandens1/Relu:activations:00bn_dens2/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2
bn_dens2/moments/mean
bn_dens2/moments/StopGradientStopGradientbn_dens2/moments/mean:output:0*
T0*
_output_shapes

:@2
bn_dens2/moments/StopGradientÑ
"bn_dens2/moments/SquaredDifferenceSquaredDifferencedens1/Relu:activations:0&bn_dens2/moments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2$
"bn_dens2/moments/SquaredDifference¤
+bn_dens2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2-
+bn_dens2/moments/variance/reduction_indicesÖ
bn_dens2/moments/varianceMean&bn_dens2/moments/SquaredDifference:z:04bn_dens2/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2
bn_dens2/moments/variance
bn_dens2/moments/SqueezeSqueezebn_dens2/moments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
bn_dens2/moments/Squeeze£
bn_dens2/moments/Squeeze_1Squeeze"bn_dens2/moments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
bn_dens2/moments/Squeeze_1
bn_dens2/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2 
bn_dens2/AssignMovingAvg/decay¿
'bn_dens2/AssignMovingAvg/ReadVariableOpReadVariableOp0bn_dens2_assignmovingavg_readvariableop_resource*
_output_shapes
:@*
dtype02)
'bn_dens2/AssignMovingAvg/ReadVariableOp¼
bn_dens2/AssignMovingAvg/subSub/bn_dens2/AssignMovingAvg/ReadVariableOp:value:0!bn_dens2/moments/Squeeze:output:0*
T0*
_output_shapes
:@2
bn_dens2/AssignMovingAvg/sub³
bn_dens2/AssignMovingAvg/mulMul bn_dens2/AssignMovingAvg/sub:z:0'bn_dens2/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:@2
bn_dens2/AssignMovingAvg/mulì
bn_dens2/AssignMovingAvgAssignSubVariableOp0bn_dens2_assignmovingavg_readvariableop_resource bn_dens2/AssignMovingAvg/mul:z:0(^bn_dens2/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
bn_dens2/AssignMovingAvg
 bn_dens2/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2"
 bn_dens2/AssignMovingAvg_1/decayÅ
)bn_dens2/AssignMovingAvg_1/ReadVariableOpReadVariableOp2bn_dens2_assignmovingavg_1_readvariableop_resource*
_output_shapes
:@*
dtype02+
)bn_dens2/AssignMovingAvg_1/ReadVariableOpÄ
bn_dens2/AssignMovingAvg_1/subSub1bn_dens2/AssignMovingAvg_1/ReadVariableOp:value:0#bn_dens2/moments/Squeeze_1:output:0*
T0*
_output_shapes
:@2 
bn_dens2/AssignMovingAvg_1/sub»
bn_dens2/AssignMovingAvg_1/mulMul"bn_dens2/AssignMovingAvg_1/sub:z:0)bn_dens2/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:@2 
bn_dens2/AssignMovingAvg_1/mulö
bn_dens2/AssignMovingAvg_1AssignSubVariableOp2bn_dens2_assignmovingavg_1_readvariableop_resource"bn_dens2/AssignMovingAvg_1/mul:z:0*^bn_dens2/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
bn_dens2/AssignMovingAvg_1y
bn_dens2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
bn_dens2/batchnorm/add/y¦
bn_dens2/batchnorm/addAddV2#bn_dens2/moments/Squeeze_1:output:0!bn_dens2/batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
bn_dens2/batchnorm/add~
bn_dens2/batchnorm/RsqrtRsqrtbn_dens2/batchnorm/add:z:0*
T0*
_output_shapes
:@2
bn_dens2/batchnorm/Rsqrt¹
%bn_dens2/batchnorm/mul/ReadVariableOpReadVariableOp.bn_dens2_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02'
%bn_dens2/batchnorm/mul/ReadVariableOp©
bn_dens2/batchnorm/mulMulbn_dens2/batchnorm/Rsqrt:y:0-bn_dens2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
bn_dens2/batchnorm/mul£
bn_dens2/batchnorm/mul_1Muldens1/Relu:activations:0bn_dens2/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
bn_dens2/batchnorm/mul_1
bn_dens2/batchnorm/mul_2Mul!bn_dens2/moments/Squeeze:output:0bn_dens2/batchnorm/mul:z:0*
T0*
_output_shapes
:@2
bn_dens2/batchnorm/mul_2­
!bn_dens2/batchnorm/ReadVariableOpReadVariableOp*bn_dens2_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02#
!bn_dens2/batchnorm/ReadVariableOp¥
bn_dens2/batchnorm/subSub)bn_dens2/batchnorm/ReadVariableOp:value:0bn_dens2/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
bn_dens2/batchnorm/sub©
bn_dens2/batchnorm/add_1AddV2bn_dens2/batchnorm/mul_1:z:0bn_dens2/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
bn_dens2/batchnorm/add_1 
dens2/MatMul/ReadVariableOpReadVariableOp$dens2_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
dens2/MatMul/ReadVariableOp
dens2/MatMulMatMulbn_dens2/batchnorm/add_1:z:0#dens2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dens2/MatMul
dens2/BiasAdd/ReadVariableOpReadVariableOp%dens2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
dens2/BiasAdd/ReadVariableOp
dens2/BiasAddBiasAdddens2/MatMul:product:0$dens2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dens2/BiasAddk

dens2/ReluReludens2/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

dens2/Relu
'bn_dens3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2)
'bn_dens3/moments/mean/reduction_indices½
bn_dens3/moments/meanMeandens2/Relu:activations:00bn_dens3/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
bn_dens3/moments/mean
bn_dens3/moments/StopGradientStopGradientbn_dens3/moments/mean:output:0*
T0*
_output_shapes
:	2
bn_dens3/moments/StopGradientÒ
"bn_dens3/moments/SquaredDifferenceSquaredDifferencedens2/Relu:activations:0&bn_dens3/moments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"bn_dens3/moments/SquaredDifference¤
+bn_dens3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2-
+bn_dens3/moments/variance/reduction_indices×
bn_dens3/moments/varianceMean&bn_dens3/moments/SquaredDifference:z:04bn_dens3/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
bn_dens3/moments/variance
bn_dens3/moments/SqueezeSqueezebn_dens3/moments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
bn_dens3/moments/Squeeze¤
bn_dens3/moments/Squeeze_1Squeeze"bn_dens3/moments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
bn_dens3/moments/Squeeze_1
bn_dens3/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2 
bn_dens3/AssignMovingAvg/decayÀ
'bn_dens3/AssignMovingAvg/ReadVariableOpReadVariableOp0bn_dens3_assignmovingavg_readvariableop_resource*
_output_shapes	
:*
dtype02)
'bn_dens3/AssignMovingAvg/ReadVariableOp½
bn_dens3/AssignMovingAvg/subSub/bn_dens3/AssignMovingAvg/ReadVariableOp:value:0!bn_dens3/moments/Squeeze:output:0*
T0*
_output_shapes	
:2
bn_dens3/AssignMovingAvg/sub´
bn_dens3/AssignMovingAvg/mulMul bn_dens3/AssignMovingAvg/sub:z:0'bn_dens3/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:2
bn_dens3/AssignMovingAvg/mulì
bn_dens3/AssignMovingAvgAssignSubVariableOp0bn_dens3_assignmovingavg_readvariableop_resource bn_dens3/AssignMovingAvg/mul:z:0(^bn_dens3/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
bn_dens3/AssignMovingAvg
 bn_dens3/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2"
 bn_dens3/AssignMovingAvg_1/decayÆ
)bn_dens3/AssignMovingAvg_1/ReadVariableOpReadVariableOp2bn_dens3_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:*
dtype02+
)bn_dens3/AssignMovingAvg_1/ReadVariableOpÅ
bn_dens3/AssignMovingAvg_1/subSub1bn_dens3/AssignMovingAvg_1/ReadVariableOp:value:0#bn_dens3/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:2 
bn_dens3/AssignMovingAvg_1/sub¼
bn_dens3/AssignMovingAvg_1/mulMul"bn_dens3/AssignMovingAvg_1/sub:z:0)bn_dens3/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:2 
bn_dens3/AssignMovingAvg_1/mulö
bn_dens3/AssignMovingAvg_1AssignSubVariableOp2bn_dens3_assignmovingavg_1_readvariableop_resource"bn_dens3/AssignMovingAvg_1/mul:z:0*^bn_dens3/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
bn_dens3/AssignMovingAvg_1y
bn_dens3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
bn_dens3/batchnorm/add/y§
bn_dens3/batchnorm/addAddV2#bn_dens3/moments/Squeeze_1:output:0!bn_dens3/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
bn_dens3/batchnorm/add
bn_dens3/batchnorm/RsqrtRsqrtbn_dens3/batchnorm/add:z:0*
T0*
_output_shapes	
:2
bn_dens3/batchnorm/Rsqrtº
%bn_dens3/batchnorm/mul/ReadVariableOpReadVariableOp.bn_dens3_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02'
%bn_dens3/batchnorm/mul/ReadVariableOpª
bn_dens3/batchnorm/mulMulbn_dens3/batchnorm/Rsqrt:y:0-bn_dens3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
bn_dens3/batchnorm/mul¤
bn_dens3/batchnorm/mul_1Muldens2/Relu:activations:0bn_dens3/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
bn_dens3/batchnorm/mul_1 
bn_dens3/batchnorm/mul_2Mul!bn_dens3/moments/Squeeze:output:0bn_dens3/batchnorm/mul:z:0*
T0*
_output_shapes	
:2
bn_dens3/batchnorm/mul_2®
!bn_dens3/batchnorm/ReadVariableOpReadVariableOp*bn_dens3_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02#
!bn_dens3/batchnorm/ReadVariableOp¦
bn_dens3/batchnorm/subSub)bn_dens3/batchnorm/ReadVariableOp:value:0bn_dens3/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
bn_dens3/batchnorm/subª
bn_dens3/batchnorm/add_1AddV2bn_dens3/batchnorm/mul_1:z:0bn_dens3/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
bn_dens3/batchnorm/add_1¡
dens3/MatMul/ReadVariableOpReadVariableOp$dens3_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
dens3/MatMul/ReadVariableOp
dens3/MatMulMatMulbn_dens3/batchnorm/add_1:z:0#dens3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dens3/MatMul
dens3/BiasAdd/ReadVariableOpReadVariableOp%dens3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
dens3/BiasAdd/ReadVariableOp
dens3/BiasAddBiasAdddens3/MatMul:product:0$dens3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dens3/BiasAddk

dens3/ReluReludens3/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

dens3/Relu
'bn_dens4/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2)
'bn_dens4/moments/mean/reduction_indices½
bn_dens4/moments/meanMeandens3/Relu:activations:00bn_dens4/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
bn_dens4/moments/mean
bn_dens4/moments/StopGradientStopGradientbn_dens4/moments/mean:output:0*
T0*
_output_shapes
:	2
bn_dens4/moments/StopGradientÒ
"bn_dens4/moments/SquaredDifferenceSquaredDifferencedens3/Relu:activations:0&bn_dens4/moments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"bn_dens4/moments/SquaredDifference¤
+bn_dens4/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2-
+bn_dens4/moments/variance/reduction_indices×
bn_dens4/moments/varianceMean&bn_dens4/moments/SquaredDifference:z:04bn_dens4/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
bn_dens4/moments/variance
bn_dens4/moments/SqueezeSqueezebn_dens4/moments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
bn_dens4/moments/Squeeze¤
bn_dens4/moments/Squeeze_1Squeeze"bn_dens4/moments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
bn_dens4/moments/Squeeze_1
bn_dens4/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2 
bn_dens4/AssignMovingAvg/decayÀ
'bn_dens4/AssignMovingAvg/ReadVariableOpReadVariableOp0bn_dens4_assignmovingavg_readvariableop_resource*
_output_shapes	
:*
dtype02)
'bn_dens4/AssignMovingAvg/ReadVariableOp½
bn_dens4/AssignMovingAvg/subSub/bn_dens4/AssignMovingAvg/ReadVariableOp:value:0!bn_dens4/moments/Squeeze:output:0*
T0*
_output_shapes	
:2
bn_dens4/AssignMovingAvg/sub´
bn_dens4/AssignMovingAvg/mulMul bn_dens4/AssignMovingAvg/sub:z:0'bn_dens4/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:2
bn_dens4/AssignMovingAvg/mulì
bn_dens4/AssignMovingAvgAssignSubVariableOp0bn_dens4_assignmovingavg_readvariableop_resource bn_dens4/AssignMovingAvg/mul:z:0(^bn_dens4/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
bn_dens4/AssignMovingAvg
 bn_dens4/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2"
 bn_dens4/AssignMovingAvg_1/decayÆ
)bn_dens4/AssignMovingAvg_1/ReadVariableOpReadVariableOp2bn_dens4_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:*
dtype02+
)bn_dens4/AssignMovingAvg_1/ReadVariableOpÅ
bn_dens4/AssignMovingAvg_1/subSub1bn_dens4/AssignMovingAvg_1/ReadVariableOp:value:0#bn_dens4/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:2 
bn_dens4/AssignMovingAvg_1/sub¼
bn_dens4/AssignMovingAvg_1/mulMul"bn_dens4/AssignMovingAvg_1/sub:z:0)bn_dens4/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:2 
bn_dens4/AssignMovingAvg_1/mulö
bn_dens4/AssignMovingAvg_1AssignSubVariableOp2bn_dens4_assignmovingavg_1_readvariableop_resource"bn_dens4/AssignMovingAvg_1/mul:z:0*^bn_dens4/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
bn_dens4/AssignMovingAvg_1y
bn_dens4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
bn_dens4/batchnorm/add/y§
bn_dens4/batchnorm/addAddV2#bn_dens4/moments/Squeeze_1:output:0!bn_dens4/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
bn_dens4/batchnorm/add
bn_dens4/batchnorm/RsqrtRsqrtbn_dens4/batchnorm/add:z:0*
T0*
_output_shapes	
:2
bn_dens4/batchnorm/Rsqrtº
%bn_dens4/batchnorm/mul/ReadVariableOpReadVariableOp.bn_dens4_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02'
%bn_dens4/batchnorm/mul/ReadVariableOpª
bn_dens4/batchnorm/mulMulbn_dens4/batchnorm/Rsqrt:y:0-bn_dens4/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
bn_dens4/batchnorm/mul¤
bn_dens4/batchnorm/mul_1Muldens3/Relu:activations:0bn_dens4/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
bn_dens4/batchnorm/mul_1 
bn_dens4/batchnorm/mul_2Mul!bn_dens4/moments/Squeeze:output:0bn_dens4/batchnorm/mul:z:0*
T0*
_output_shapes	
:2
bn_dens4/batchnorm/mul_2®
!bn_dens4/batchnorm/ReadVariableOpReadVariableOp*bn_dens4_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02#
!bn_dens4/batchnorm/ReadVariableOp¦
bn_dens4/batchnorm/subSub)bn_dens4/batchnorm/ReadVariableOp:value:0bn_dens4/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
bn_dens4/batchnorm/subª
bn_dens4/batchnorm/add_1AddV2bn_dens4/batchnorm/mul_1:z:0bn_dens4/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
bn_dens4/batchnorm/add_1 
final/MatMul/ReadVariableOpReadVariableOp$final_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype02
final/MatMul/ReadVariableOp
final/MatMulMatMulbn_dens4/batchnorm/add_1:z:0#final/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
final/MatMul
final/BiasAdd/ReadVariableOpReadVariableOp%final_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
final/BiasAdd/ReadVariableOp
final/BiasAddBiasAddfinal/MatMul:product:0$final/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
final/BiasAdds
final/SoftmaxSoftmaxfinal/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
final/SoftmaxÇ	
IdentityIdentityfinal/Softmax:softmax:0^bn_dens1/AssignMovingAvg(^bn_dens1/AssignMovingAvg/ReadVariableOp^bn_dens1/AssignMovingAvg_1*^bn_dens1/AssignMovingAvg_1/ReadVariableOp"^bn_dens1/batchnorm/ReadVariableOp&^bn_dens1/batchnorm/mul/ReadVariableOp^bn_dens2/AssignMovingAvg(^bn_dens2/AssignMovingAvg/ReadVariableOp^bn_dens2/AssignMovingAvg_1*^bn_dens2/AssignMovingAvg_1/ReadVariableOp"^bn_dens2/batchnorm/ReadVariableOp&^bn_dens2/batchnorm/mul/ReadVariableOp^bn_dens3/AssignMovingAvg(^bn_dens3/AssignMovingAvg/ReadVariableOp^bn_dens3/AssignMovingAvg_1*^bn_dens3/AssignMovingAvg_1/ReadVariableOp"^bn_dens3/batchnorm/ReadVariableOp&^bn_dens3/batchnorm/mul/ReadVariableOp^bn_dens4/AssignMovingAvg(^bn_dens4/AssignMovingAvg/ReadVariableOp^bn_dens4/AssignMovingAvg_1*^bn_dens4/AssignMovingAvg_1/ReadVariableOp"^bn_dens4/batchnorm/ReadVariableOp&^bn_dens4/batchnorm/mul/ReadVariableOp^dens1/BiasAdd/ReadVariableOp^dens1/MatMul/ReadVariableOp^dens2/BiasAdd/ReadVariableOp^dens2/MatMul/ReadVariableOp^dens3/BiasAdd/ReadVariableOp^dens3/MatMul/ReadVariableOp^final/BiasAdd/ReadVariableOp^final/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : 24
bn_dens1/AssignMovingAvgbn_dens1/AssignMovingAvg2R
'bn_dens1/AssignMovingAvg/ReadVariableOp'bn_dens1/AssignMovingAvg/ReadVariableOp28
bn_dens1/AssignMovingAvg_1bn_dens1/AssignMovingAvg_12V
)bn_dens1/AssignMovingAvg_1/ReadVariableOp)bn_dens1/AssignMovingAvg_1/ReadVariableOp2F
!bn_dens1/batchnorm/ReadVariableOp!bn_dens1/batchnorm/ReadVariableOp2N
%bn_dens1/batchnorm/mul/ReadVariableOp%bn_dens1/batchnorm/mul/ReadVariableOp24
bn_dens2/AssignMovingAvgbn_dens2/AssignMovingAvg2R
'bn_dens2/AssignMovingAvg/ReadVariableOp'bn_dens2/AssignMovingAvg/ReadVariableOp28
bn_dens2/AssignMovingAvg_1bn_dens2/AssignMovingAvg_12V
)bn_dens2/AssignMovingAvg_1/ReadVariableOp)bn_dens2/AssignMovingAvg_1/ReadVariableOp2F
!bn_dens2/batchnorm/ReadVariableOp!bn_dens2/batchnorm/ReadVariableOp2N
%bn_dens2/batchnorm/mul/ReadVariableOp%bn_dens2/batchnorm/mul/ReadVariableOp24
bn_dens3/AssignMovingAvgbn_dens3/AssignMovingAvg2R
'bn_dens3/AssignMovingAvg/ReadVariableOp'bn_dens3/AssignMovingAvg/ReadVariableOp28
bn_dens3/AssignMovingAvg_1bn_dens3/AssignMovingAvg_12V
)bn_dens3/AssignMovingAvg_1/ReadVariableOp)bn_dens3/AssignMovingAvg_1/ReadVariableOp2F
!bn_dens3/batchnorm/ReadVariableOp!bn_dens3/batchnorm/ReadVariableOp2N
%bn_dens3/batchnorm/mul/ReadVariableOp%bn_dens3/batchnorm/mul/ReadVariableOp24
bn_dens4/AssignMovingAvgbn_dens4/AssignMovingAvg2R
'bn_dens4/AssignMovingAvg/ReadVariableOp'bn_dens4/AssignMovingAvg/ReadVariableOp28
bn_dens4/AssignMovingAvg_1bn_dens4/AssignMovingAvg_12V
)bn_dens4/AssignMovingAvg_1/ReadVariableOp)bn_dens4/AssignMovingAvg_1/ReadVariableOp2F
!bn_dens4/batchnorm/ReadVariableOp!bn_dens4/batchnorm/ReadVariableOp2N
%bn_dens4/batchnorm/mul/ReadVariableOp%bn_dens4/batchnorm/mul/ReadVariableOp2<
dens1/BiasAdd/ReadVariableOpdens1/BiasAdd/ReadVariableOp2:
dens1/MatMul/ReadVariableOpdens1/MatMul/ReadVariableOp2<
dens2/BiasAdd/ReadVariableOpdens2/BiasAdd/ReadVariableOp2:
dens2/MatMul/ReadVariableOpdens2/MatMul/ReadVariableOp2<
dens3/BiasAdd/ReadVariableOpdens3/BiasAdd/ReadVariableOp2:
dens3/MatMul/ReadVariableOpdens3/MatMul/ReadVariableOp2<
final/BiasAdd/ReadVariableOpfinal/BiasAdd/ReadVariableOp2:
final/MatMul/ReadVariableOpfinal/MatMul/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
±

ô
A__inference_dens2_layer_call_and_return_conditional_losses_293715

inputs1
matmul_readvariableop_resource:	@.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
è)
Ý
D__inference_bn_dens2_layer_call_and_return_conditional_losses_293695

inputs5
'assignmovingavg_readvariableop_resource:@7
)assignmovingavg_1_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@/
!batchnorm_readvariableop_resource:@
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:@2
moments/StopGradient¤
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices²
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay¤
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:@*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg/mul¿
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decayª
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_1/ReadVariableOp 
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:@2
AssignMovingAvg_1/mulÉ
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
batchnorm/add_1
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ï
È
)__inference_bn_dens4_layer_call_fn_293828

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_bn_dens4_layer_call_and_return_conditional_losses_2923882
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
*
á
D__inference_bn_dens4_layer_call_and_return_conditional_losses_292448

inputs6
'assignmovingavg_readvariableop_resource:	8
)assignmovingavg_1_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	0
!batchnorm_readvariableop_resource:	
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	2
moments/StopGradient¥
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices³
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay¥
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/mul¿
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay«
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp¡
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/mulÉ
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
*
á
D__inference_bn_dens3_layer_call_and_return_conditional_losses_293795

inputs6
'assignmovingavg_readvariableop_resource:	8
)assignmovingavg_1_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	0
!batchnorm_readvariableop_resource:	
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	2
moments/StopGradient¥
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices³
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay¥
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/mul¿
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay«
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp¡
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/mulÉ
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
£
§
D__inference_bn_dens3_layer_call_and_return_conditional_losses_293761

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1Ü
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
í
È
)__inference_bn_dens4_layer_call_fn_293841

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_bn_dens4_layer_call_and_return_conditional_losses_2924482
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


&__inference_dens1_layer_call_fn_293604

inputs
unknown:	@
	unknown_0:@
identity¢StatefulPartitionedCallñ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dens1_layer_call_and_return_conditional_losses_2925612
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

£
D__inference_bn_dens2_layer_call_and_return_conditional_losses_292064

inputs/
!batchnorm_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@1
#batchnorm_readvariableop_1_resource:@1
#batchnorm_readvariableop_2_resource:@
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
batchnorm/add_1Û
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

£
D__inference_bn_dens2_layer_call_and_return_conditional_losses_293661

inputs/
!batchnorm_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@1
#batchnorm_readvariableop_1_resource:@1
#batchnorm_readvariableop_2_resource:@
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
batchnorm/add_1Û
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
µ

ó
A__inference_final_layer_call_and_return_conditional_losses_293915

inputs1
matmul_readvariableop_resource:	
-
biasadd_readvariableop_resource:

identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
£
§
D__inference_bn_dens4_layer_call_and_return_conditional_losses_293861

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1Ü
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
à
ð
-__inference_sequential_1_layer_call_fn_292963

flat_input
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
	unknown_3:	@
	unknown_4:@
	unknown_5:@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:	@

unknown_10:	

unknown_11:	

unknown_12:	

unknown_13:	

unknown_14:	

unknown_15:


unknown_16:	

unknown_17:	

unknown_18:	

unknown_19:	

unknown_20:	

unknown_21:	


unknown_22:

identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCall
flat_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_2928592
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
flat_input
í
È
)__inference_bn_dens3_layer_call_fn_293741

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_bn_dens3_layer_call_and_return_conditional_losses_2922862
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
£
§
D__inference_bn_dens4_layer_call_and_return_conditional_losses_292388

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1Ü
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
å
Ä
)__inference_bn_dens2_layer_call_fn_293641

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_bn_dens2_layer_call_and_return_conditional_losses_2921242
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs


&__inference_final_layer_call_fn_293904

inputs
unknown:	

	unknown_0:

identity¢StatefulPartitionedCallñ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_final_layer_call_and_return_conditional_losses_2926392
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ì0
æ
H__inference_sequential_1_layer_call_and_return_conditional_losses_292859

inputs
bn_dens1_292802:	
bn_dens1_292804:	
bn_dens1_292806:	
bn_dens1_292808:	
dens1_292811:	@
dens1_292813:@
bn_dens2_292816:@
bn_dens2_292818:@
bn_dens2_292820:@
bn_dens2_292822:@
dens2_292825:	@
dens2_292827:	
bn_dens3_292830:	
bn_dens3_292832:	
bn_dens3_292834:	
bn_dens3_292836:	 
dens3_292839:

dens3_292841:	
bn_dens4_292844:	
bn_dens4_292846:	
bn_dens4_292848:	
bn_dens4_292850:	
final_292853:	

final_292855:

identity¢ bn_dens1/StatefulPartitionedCall¢ bn_dens2/StatefulPartitionedCall¢ bn_dens3/StatefulPartitionedCall¢ bn_dens4/StatefulPartitionedCall¢dens1/StatefulPartitionedCall¢dens2/StatefulPartitionedCall¢dens3/StatefulPartitionedCall¢final/StatefulPartitionedCallÉ
flat/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_flat_layer_call_and_return_conditional_losses_2925392
flat/PartitionedCallÐ
 bn_dens1/StatefulPartitionedCallStatefulPartitionedCallflat/PartitionedCall:output:0bn_dens1_292802bn_dens1_292804bn_dens1_292806bn_dens1_292808*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_bn_dens1_layer_call_and_return_conditional_losses_2919622"
 bn_dens1/StatefulPartitionedCall¨
dens1/StatefulPartitionedCallStatefulPartitionedCall)bn_dens1/StatefulPartitionedCall:output:0dens1_292811dens1_292813*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dens1_layer_call_and_return_conditional_losses_2925612
dens1/StatefulPartitionedCallØ
 bn_dens2/StatefulPartitionedCallStatefulPartitionedCall&dens1/StatefulPartitionedCall:output:0bn_dens2_292816bn_dens2_292818bn_dens2_292820bn_dens2_292822*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_bn_dens2_layer_call_and_return_conditional_losses_2921242"
 bn_dens2/StatefulPartitionedCall©
dens2/StatefulPartitionedCallStatefulPartitionedCall)bn_dens2/StatefulPartitionedCall:output:0dens2_292825dens2_292827*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dens2_layer_call_and_return_conditional_losses_2925872
dens2/StatefulPartitionedCallÙ
 bn_dens3/StatefulPartitionedCallStatefulPartitionedCall&dens2/StatefulPartitionedCall:output:0bn_dens3_292830bn_dens3_292832bn_dens3_292834bn_dens3_292836*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_bn_dens3_layer_call_and_return_conditional_losses_2922862"
 bn_dens3/StatefulPartitionedCall©
dens3/StatefulPartitionedCallStatefulPartitionedCall)bn_dens3/StatefulPartitionedCall:output:0dens3_292839dens3_292841*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dens3_layer_call_and_return_conditional_losses_2926132
dens3/StatefulPartitionedCallÙ
 bn_dens4/StatefulPartitionedCallStatefulPartitionedCall&dens3/StatefulPartitionedCall:output:0bn_dens4_292844bn_dens4_292846bn_dens4_292848bn_dens4_292850*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_bn_dens4_layer_call_and_return_conditional_losses_2924482"
 bn_dens4/StatefulPartitionedCall¨
final/StatefulPartitionedCallStatefulPartitionedCall)bn_dens4/StatefulPartitionedCall:output:0final_292853final_292855*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_final_layer_call_and_return_conditional_losses_2926392
final/StatefulPartitionedCall
IdentityIdentity&final/StatefulPartitionedCall:output:0!^bn_dens1/StatefulPartitionedCall!^bn_dens2/StatefulPartitionedCall!^bn_dens3/StatefulPartitionedCall!^bn_dens4/StatefulPartitionedCall^dens1/StatefulPartitionedCall^dens2/StatefulPartitionedCall^dens3/StatefulPartitionedCall^final/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : 2D
 bn_dens1/StatefulPartitionedCall bn_dens1/StatefulPartitionedCall2D
 bn_dens2/StatefulPartitionedCall bn_dens2/StatefulPartitionedCall2D
 bn_dens3/StatefulPartitionedCall bn_dens3/StatefulPartitionedCall2D
 bn_dens4/StatefulPartitionedCall bn_dens4/StatefulPartitionedCall2>
dens1/StatefulPartitionedCalldens1/StatefulPartitionedCall2>
dens2/StatefulPartitionedCalldens2/StatefulPartitionedCall2>
dens3/StatefulPartitionedCalldens3/StatefulPartitionedCall2>
final/StatefulPartitionedCallfinal/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ô
ì
-__inference_sequential_1_layer_call_fn_293252

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
	unknown_3:	@
	unknown_4:@
	unknown_5:@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:	@

unknown_10:	

unknown_11:	

unknown_12:	

unknown_13:	

unknown_14:	

unknown_15:


unknown_16:	

unknown_17:	

unknown_18:	

unknown_19:	

unknown_20:	

unknown_21:	


unknown_22:

identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_2928592
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ï
È
)__inference_bn_dens3_layer_call_fn_293728

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_bn_dens3_layer_call_and_return_conditional_losses_2922262
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
è
ð
-__inference_sequential_1_layer_call_fn_292697

flat_input
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
	unknown_3:	@
	unknown_4:@
	unknown_5:@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:	@

unknown_10:	

unknown_11:	

unknown_12:	

unknown_13:	

unknown_14:	

unknown_15:


unknown_16:	

unknown_17:	

unknown_18:	

unknown_19:	

unknown_20:	

unknown_21:	


unknown_22:

identity¢StatefulPartitionedCall§
StatefulPartitionedCallStatefulPartitionedCall
flat_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*:
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_2926462
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
flat_input
µ

õ
A__inference_dens3_layer_call_and_return_conditional_losses_292613

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
â
\
@__inference_flat_layer_call_and_return_conditional_losses_293515

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
£
§
D__inference_bn_dens3_layer_call_and_return_conditional_losses_292226

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1Ü
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
î
Ó&
"__inference__traced_restore_294338
file_prefix.
assignvariableop_bn_dens1_gamma:	/
 assignvariableop_1_bn_dens1_beta:	6
'assignvariableop_2_bn_dens1_moving_mean:	:
+assignvariableop_3_bn_dens1_moving_variance:	2
assignvariableop_4_dens1_kernel:	@+
assignvariableop_5_dens1_bias:@/
!assignvariableop_6_bn_dens2_gamma:@.
 assignvariableop_7_bn_dens2_beta:@5
'assignvariableop_8_bn_dens2_moving_mean:@9
+assignvariableop_9_bn_dens2_moving_variance:@3
 assignvariableop_10_dens2_kernel:	@-
assignvariableop_11_dens2_bias:	1
"assignvariableop_12_bn_dens3_gamma:	0
!assignvariableop_13_bn_dens3_beta:	7
(assignvariableop_14_bn_dens3_moving_mean:	;
,assignvariableop_15_bn_dens3_moving_variance:	4
 assignvariableop_16_dens3_kernel:
-
assignvariableop_17_dens3_bias:	1
"assignvariableop_18_bn_dens4_gamma:	0
!assignvariableop_19_bn_dens4_beta:	7
(assignvariableop_20_bn_dens4_moving_mean:	;
,assignvariableop_21_bn_dens4_moving_variance:	3
 assignvariableop_22_final_kernel:	
,
assignvariableop_23_final_bias:
'
assignvariableop_24_adam_iter:	 )
assignvariableop_25_adam_beta_1: )
assignvariableop_26_adam_beta_2: (
assignvariableop_27_adam_decay: 0
&assignvariableop_28_adam_learning_rate: #
assignvariableop_29_total: #
assignvariableop_30_count: %
assignvariableop_31_total_1: %
assignvariableop_32_count_1: 8
)assignvariableop_33_adam_bn_dens1_gamma_m:	7
(assignvariableop_34_adam_bn_dens1_beta_m:	:
'assignvariableop_35_adam_dens1_kernel_m:	@3
%assignvariableop_36_adam_dens1_bias_m:@7
)assignvariableop_37_adam_bn_dens2_gamma_m:@6
(assignvariableop_38_adam_bn_dens2_beta_m:@:
'assignvariableop_39_adam_dens2_kernel_m:	@4
%assignvariableop_40_adam_dens2_bias_m:	8
)assignvariableop_41_adam_bn_dens3_gamma_m:	7
(assignvariableop_42_adam_bn_dens3_beta_m:	;
'assignvariableop_43_adam_dens3_kernel_m:
4
%assignvariableop_44_adam_dens3_bias_m:	8
)assignvariableop_45_adam_bn_dens4_gamma_m:	7
(assignvariableop_46_adam_bn_dens4_beta_m:	:
'assignvariableop_47_adam_final_kernel_m:	
3
%assignvariableop_48_adam_final_bias_m:
8
)assignvariableop_49_adam_bn_dens1_gamma_v:	7
(assignvariableop_50_adam_bn_dens1_beta_v:	:
'assignvariableop_51_adam_dens1_kernel_v:	@3
%assignvariableop_52_adam_dens1_bias_v:@7
)assignvariableop_53_adam_bn_dens2_gamma_v:@6
(assignvariableop_54_adam_bn_dens2_beta_v:@:
'assignvariableop_55_adam_dens2_kernel_v:	@4
%assignvariableop_56_adam_dens2_bias_v:	8
)assignvariableop_57_adam_bn_dens3_gamma_v:	7
(assignvariableop_58_adam_bn_dens3_beta_v:	;
'assignvariableop_59_adam_dens3_kernel_v:
4
%assignvariableop_60_adam_dens3_bias_v:	8
)assignvariableop_61_adam_bn_dens4_gamma_v:	7
(assignvariableop_62_adam_bn_dens4_beta_v:	:
'assignvariableop_63_adam_final_kernel_v:	
3
%assignvariableop_64_adam_final_bias_v:

identity_66¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_48¢AssignVariableOp_49¢AssignVariableOp_5¢AssignVariableOp_50¢AssignVariableOp_51¢AssignVariableOp_52¢AssignVariableOp_53¢AssignVariableOp_54¢AssignVariableOp_55¢AssignVariableOp_56¢AssignVariableOp_57¢AssignVariableOp_58¢AssignVariableOp_59¢AssignVariableOp_6¢AssignVariableOp_60¢AssignVariableOp_61¢AssignVariableOp_62¢AssignVariableOp_63¢AssignVariableOp_64¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9 $
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:B*
dtype0*¬#
value¢#B#BB5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:B*
dtype0*
valueBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesø
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*P
dtypesF
D2B	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOpassignvariableop_bn_dens1_gammaIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¥
AssignVariableOp_1AssignVariableOp assignvariableop_1_bn_dens1_betaIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2¬
AssignVariableOp_2AssignVariableOp'assignvariableop_2_bn_dens1_moving_meanIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3°
AssignVariableOp_3AssignVariableOp+assignvariableop_3_bn_dens1_moving_varianceIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4¤
AssignVariableOp_4AssignVariableOpassignvariableop_4_dens1_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5¢
AssignVariableOp_5AssignVariableOpassignvariableop_5_dens1_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6¦
AssignVariableOp_6AssignVariableOp!assignvariableop_6_bn_dens2_gammaIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7¥
AssignVariableOp_7AssignVariableOp assignvariableop_7_bn_dens2_betaIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8¬
AssignVariableOp_8AssignVariableOp'assignvariableop_8_bn_dens2_moving_meanIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9°
AssignVariableOp_9AssignVariableOp+assignvariableop_9_bn_dens2_moving_varianceIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10¨
AssignVariableOp_10AssignVariableOp assignvariableop_10_dens2_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11¦
AssignVariableOp_11AssignVariableOpassignvariableop_11_dens2_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12ª
AssignVariableOp_12AssignVariableOp"assignvariableop_12_bn_dens3_gammaIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13©
AssignVariableOp_13AssignVariableOp!assignvariableop_13_bn_dens3_betaIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14°
AssignVariableOp_14AssignVariableOp(assignvariableop_14_bn_dens3_moving_meanIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15´
AssignVariableOp_15AssignVariableOp,assignvariableop_15_bn_dens3_moving_varianceIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16¨
AssignVariableOp_16AssignVariableOp assignvariableop_16_dens3_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17¦
AssignVariableOp_17AssignVariableOpassignvariableop_17_dens3_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18ª
AssignVariableOp_18AssignVariableOp"assignvariableop_18_bn_dens4_gammaIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19©
AssignVariableOp_19AssignVariableOp!assignvariableop_19_bn_dens4_betaIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20°
AssignVariableOp_20AssignVariableOp(assignvariableop_20_bn_dens4_moving_meanIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21´
AssignVariableOp_21AssignVariableOp,assignvariableop_21_bn_dens4_moving_varianceIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22¨
AssignVariableOp_22AssignVariableOp assignvariableop_22_final_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23¦
AssignVariableOp_23AssignVariableOpassignvariableop_23_final_biasIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_24¥
AssignVariableOp_24AssignVariableOpassignvariableop_24_adam_iterIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25§
AssignVariableOp_25AssignVariableOpassignvariableop_25_adam_beta_1Identity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26§
AssignVariableOp_26AssignVariableOpassignvariableop_26_adam_beta_2Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27¦
AssignVariableOp_27AssignVariableOpassignvariableop_27_adam_decayIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28®
AssignVariableOp_28AssignVariableOp&assignvariableop_28_adam_learning_rateIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29¡
AssignVariableOp_29AssignVariableOpassignvariableop_29_totalIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30¡
AssignVariableOp_30AssignVariableOpassignvariableop_30_countIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31£
AssignVariableOp_31AssignVariableOpassignvariableop_31_total_1Identity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32£
AssignVariableOp_32AssignVariableOpassignvariableop_32_count_1Identity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33±
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_bn_dens1_gamma_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34°
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_bn_dens1_beta_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35¯
AssignVariableOp_35AssignVariableOp'assignvariableop_35_adam_dens1_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36­
AssignVariableOp_36AssignVariableOp%assignvariableop_36_adam_dens1_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37±
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_bn_dens2_gamma_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38°
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_bn_dens2_beta_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39¯
AssignVariableOp_39AssignVariableOp'assignvariableop_39_adam_dens2_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40­
AssignVariableOp_40AssignVariableOp%assignvariableop_40_adam_dens2_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41±
AssignVariableOp_41AssignVariableOp)assignvariableop_41_adam_bn_dens3_gamma_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42°
AssignVariableOp_42AssignVariableOp(assignvariableop_42_adam_bn_dens3_beta_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43¯
AssignVariableOp_43AssignVariableOp'assignvariableop_43_adam_dens3_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44­
AssignVariableOp_44AssignVariableOp%assignvariableop_44_adam_dens3_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45±
AssignVariableOp_45AssignVariableOp)assignvariableop_45_adam_bn_dens4_gamma_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46°
AssignVariableOp_46AssignVariableOp(assignvariableop_46_adam_bn_dens4_beta_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47¯
AssignVariableOp_47AssignVariableOp'assignvariableop_47_adam_final_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48­
AssignVariableOp_48AssignVariableOp%assignvariableop_48_adam_final_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49±
AssignVariableOp_49AssignVariableOp)assignvariableop_49_adam_bn_dens1_gamma_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50°
AssignVariableOp_50AssignVariableOp(assignvariableop_50_adam_bn_dens1_beta_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51¯
AssignVariableOp_51AssignVariableOp'assignvariableop_51_adam_dens1_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52­
AssignVariableOp_52AssignVariableOp%assignvariableop_52_adam_dens1_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53±
AssignVariableOp_53AssignVariableOp)assignvariableop_53_adam_bn_dens2_gamma_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54°
AssignVariableOp_54AssignVariableOp(assignvariableop_54_adam_bn_dens2_beta_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55¯
AssignVariableOp_55AssignVariableOp'assignvariableop_55_adam_dens2_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56­
AssignVariableOp_56AssignVariableOp%assignvariableop_56_adam_dens2_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57±
AssignVariableOp_57AssignVariableOp)assignvariableop_57_adam_bn_dens3_gamma_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58°
AssignVariableOp_58AssignVariableOp(assignvariableop_58_adam_bn_dens3_beta_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59¯
AssignVariableOp_59AssignVariableOp'assignvariableop_59_adam_dens3_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60­
AssignVariableOp_60AssignVariableOp%assignvariableop_60_adam_dens3_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61±
AssignVariableOp_61AssignVariableOp)assignvariableop_61_adam_bn_dens4_gamma_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62°
AssignVariableOp_62AssignVariableOp(assignvariableop_62_adam_bn_dens4_beta_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63¯
AssignVariableOp_63AssignVariableOp'assignvariableop_63_adam_final_kernel_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64­
AssignVariableOp_64AssignVariableOp%assignvariableop_64_adam_final_bias_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_649
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpô
Identity_65Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_65ç
Identity_66IdentityIdentity_65:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_66"#
identity_66Identity_66:output:0*
_input_shapes
: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ü
ì
-__inference_sequential_1_layer_call_fn_293199

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
	unknown_3:	@
	unknown_4:@
	unknown_5:@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:	@

unknown_10:	

unknown_11:	

unknown_12:	

unknown_13:	

unknown_14:	

unknown_15:


unknown_16:	

unknown_17:	

unknown_18:	

unknown_19:	

unknown_20:	

unknown_21:	


unknown_22:

identity¢StatefulPartitionedCall£
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*:
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_2926462
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


&__inference_dens3_layer_call_fn_293804

inputs
unknown:

	unknown_0:	
identity¢StatefulPartitionedCallò
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dens3_layer_call_and_return_conditional_losses_2926132
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


&__inference_dens2_layer_call_fn_293704

inputs
unknown:	@
	unknown_0:	
identity¢StatefulPartitionedCallò
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dens2_layer_call_and_return_conditional_losses_2925872
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
£
§
D__inference_bn_dens1_layer_call_and_return_conditional_losses_291902

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1Ü
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ô0
æ
H__inference_sequential_1_layer_call_and_return_conditional_losses_292646

inputs
bn_dens1_292541:	
bn_dens1_292543:	
bn_dens1_292545:	
bn_dens1_292547:	
dens1_292562:	@
dens1_292564:@
bn_dens2_292567:@
bn_dens2_292569:@
bn_dens2_292571:@
bn_dens2_292573:@
dens2_292588:	@
dens2_292590:	
bn_dens3_292593:	
bn_dens3_292595:	
bn_dens3_292597:	
bn_dens3_292599:	 
dens3_292614:

dens3_292616:	
bn_dens4_292619:	
bn_dens4_292621:	
bn_dens4_292623:	
bn_dens4_292625:	
final_292640:	

final_292642:

identity¢ bn_dens1/StatefulPartitionedCall¢ bn_dens2/StatefulPartitionedCall¢ bn_dens3/StatefulPartitionedCall¢ bn_dens4/StatefulPartitionedCall¢dens1/StatefulPartitionedCall¢dens2/StatefulPartitionedCall¢dens3/StatefulPartitionedCall¢final/StatefulPartitionedCallÉ
flat/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_flat_layer_call_and_return_conditional_losses_2925392
flat/PartitionedCallÒ
 bn_dens1/StatefulPartitionedCallStatefulPartitionedCallflat/PartitionedCall:output:0bn_dens1_292541bn_dens1_292543bn_dens1_292545bn_dens1_292547*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_bn_dens1_layer_call_and_return_conditional_losses_2919022"
 bn_dens1/StatefulPartitionedCall¨
dens1/StatefulPartitionedCallStatefulPartitionedCall)bn_dens1/StatefulPartitionedCall:output:0dens1_292562dens1_292564*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dens1_layer_call_and_return_conditional_losses_2925612
dens1/StatefulPartitionedCallÚ
 bn_dens2/StatefulPartitionedCallStatefulPartitionedCall&dens1/StatefulPartitionedCall:output:0bn_dens2_292567bn_dens2_292569bn_dens2_292571bn_dens2_292573*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_bn_dens2_layer_call_and_return_conditional_losses_2920642"
 bn_dens2/StatefulPartitionedCall©
dens2/StatefulPartitionedCallStatefulPartitionedCall)bn_dens2/StatefulPartitionedCall:output:0dens2_292588dens2_292590*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dens2_layer_call_and_return_conditional_losses_2925872
dens2/StatefulPartitionedCallÛ
 bn_dens3/StatefulPartitionedCallStatefulPartitionedCall&dens2/StatefulPartitionedCall:output:0bn_dens3_292593bn_dens3_292595bn_dens3_292597bn_dens3_292599*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_bn_dens3_layer_call_and_return_conditional_losses_2922262"
 bn_dens3/StatefulPartitionedCall©
dens3/StatefulPartitionedCallStatefulPartitionedCall)bn_dens3/StatefulPartitionedCall:output:0dens3_292614dens3_292616*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dens3_layer_call_and_return_conditional_losses_2926132
dens3/StatefulPartitionedCallÛ
 bn_dens4/StatefulPartitionedCallStatefulPartitionedCall&dens3/StatefulPartitionedCall:output:0bn_dens4_292619bn_dens4_292621bn_dens4_292623bn_dens4_292625*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_bn_dens4_layer_call_and_return_conditional_losses_2923882"
 bn_dens4/StatefulPartitionedCall¨
final/StatefulPartitionedCallStatefulPartitionedCall)bn_dens4/StatefulPartitionedCall:output:0final_292640final_292642*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_final_layer_call_and_return_conditional_losses_2926392
final/StatefulPartitionedCall
IdentityIdentity&final/StatefulPartitionedCall:output:0!^bn_dens1/StatefulPartitionedCall!^bn_dens2/StatefulPartitionedCall!^bn_dens3/StatefulPartitionedCall!^bn_dens4/StatefulPartitionedCall^dens1/StatefulPartitionedCall^dens2/StatefulPartitionedCall^dens3/StatefulPartitionedCall^final/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : 2D
 bn_dens1/StatefulPartitionedCall bn_dens1/StatefulPartitionedCall2D
 bn_dens2/StatefulPartitionedCall bn_dens2/StatefulPartitionedCall2D
 bn_dens3/StatefulPartitionedCall bn_dens3/StatefulPartitionedCall2D
 bn_dens4/StatefulPartitionedCall bn_dens4/StatefulPartitionedCall2>
dens1/StatefulPartitionedCalldens1/StatefulPartitionedCall2>
dens2/StatefulPartitionedCalldens2/StatefulPartitionedCall2>
dens3/StatefulPartitionedCalldens3/StatefulPartitionedCall2>
final/StatefulPartitionedCallfinal/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
µ

ó
A__inference_final_layer_call_and_return_conditional_losses_292639

inputs1
matmul_readvariableop_resource:	
-
biasadd_readvariableop_resource:

identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ï
È
)__inference_bn_dens1_layer_call_fn_293528

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_bn_dens1_layer_call_and_return_conditional_losses_2919022
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
­

ó
A__inference_dens1_layer_call_and_return_conditional_losses_293615

inputs1
matmul_readvariableop_resource:	@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
â
\
@__inference_flat_layer_call_and_return_conditional_losses_292539

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Å
Â
H__inference_sequential_1_layer_call_and_return_conditional_losses_293350

inputs9
*bn_dens1_batchnorm_readvariableop_resource:	=
.bn_dens1_batchnorm_mul_readvariableop_resource:	;
,bn_dens1_batchnorm_readvariableop_1_resource:	;
,bn_dens1_batchnorm_readvariableop_2_resource:	7
$dens1_matmul_readvariableop_resource:	@3
%dens1_biasadd_readvariableop_resource:@8
*bn_dens2_batchnorm_readvariableop_resource:@<
.bn_dens2_batchnorm_mul_readvariableop_resource:@:
,bn_dens2_batchnorm_readvariableop_1_resource:@:
,bn_dens2_batchnorm_readvariableop_2_resource:@7
$dens2_matmul_readvariableop_resource:	@4
%dens2_biasadd_readvariableop_resource:	9
*bn_dens3_batchnorm_readvariableop_resource:	=
.bn_dens3_batchnorm_mul_readvariableop_resource:	;
,bn_dens3_batchnorm_readvariableop_1_resource:	;
,bn_dens3_batchnorm_readvariableop_2_resource:	8
$dens3_matmul_readvariableop_resource:
4
%dens3_biasadd_readvariableop_resource:	9
*bn_dens4_batchnorm_readvariableop_resource:	=
.bn_dens4_batchnorm_mul_readvariableop_resource:	;
,bn_dens4_batchnorm_readvariableop_1_resource:	;
,bn_dens4_batchnorm_readvariableop_2_resource:	7
$final_matmul_readvariableop_resource:	
3
%final_biasadd_readvariableop_resource:

identity¢!bn_dens1/batchnorm/ReadVariableOp¢#bn_dens1/batchnorm/ReadVariableOp_1¢#bn_dens1/batchnorm/ReadVariableOp_2¢%bn_dens1/batchnorm/mul/ReadVariableOp¢!bn_dens2/batchnorm/ReadVariableOp¢#bn_dens2/batchnorm/ReadVariableOp_1¢#bn_dens2/batchnorm/ReadVariableOp_2¢%bn_dens2/batchnorm/mul/ReadVariableOp¢!bn_dens3/batchnorm/ReadVariableOp¢#bn_dens3/batchnorm/ReadVariableOp_1¢#bn_dens3/batchnorm/ReadVariableOp_2¢%bn_dens3/batchnorm/mul/ReadVariableOp¢!bn_dens4/batchnorm/ReadVariableOp¢#bn_dens4/batchnorm/ReadVariableOp_1¢#bn_dens4/batchnorm/ReadVariableOp_2¢%bn_dens4/batchnorm/mul/ReadVariableOp¢dens1/BiasAdd/ReadVariableOp¢dens1/MatMul/ReadVariableOp¢dens2/BiasAdd/ReadVariableOp¢dens2/MatMul/ReadVariableOp¢dens3/BiasAdd/ReadVariableOp¢dens3/MatMul/ReadVariableOp¢final/BiasAdd/ReadVariableOp¢final/MatMul/ReadVariableOpi

flat/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  2

flat/Constw
flat/ReshapeReshapeinputsflat/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
flat/Reshape®
!bn_dens1/batchnorm/ReadVariableOpReadVariableOp*bn_dens1_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02#
!bn_dens1/batchnorm/ReadVariableOpy
bn_dens1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
bn_dens1/batchnorm/add/y­
bn_dens1/batchnorm/addAddV2)bn_dens1/batchnorm/ReadVariableOp:value:0!bn_dens1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
bn_dens1/batchnorm/add
bn_dens1/batchnorm/RsqrtRsqrtbn_dens1/batchnorm/add:z:0*
T0*
_output_shapes	
:2
bn_dens1/batchnorm/Rsqrtº
%bn_dens1/batchnorm/mul/ReadVariableOpReadVariableOp.bn_dens1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02'
%bn_dens1/batchnorm/mul/ReadVariableOpª
bn_dens1/batchnorm/mulMulbn_dens1/batchnorm/Rsqrt:y:0-bn_dens1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
bn_dens1/batchnorm/mul¡
bn_dens1/batchnorm/mul_1Mulflat/Reshape:output:0bn_dens1/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
bn_dens1/batchnorm/mul_1´
#bn_dens1/batchnorm/ReadVariableOp_1ReadVariableOp,bn_dens1_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02%
#bn_dens1/batchnorm/ReadVariableOp_1ª
bn_dens1/batchnorm/mul_2Mul+bn_dens1/batchnorm/ReadVariableOp_1:value:0bn_dens1/batchnorm/mul:z:0*
T0*
_output_shapes	
:2
bn_dens1/batchnorm/mul_2´
#bn_dens1/batchnorm/ReadVariableOp_2ReadVariableOp,bn_dens1_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02%
#bn_dens1/batchnorm/ReadVariableOp_2¨
bn_dens1/batchnorm/subSub+bn_dens1/batchnorm/ReadVariableOp_2:value:0bn_dens1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
bn_dens1/batchnorm/subª
bn_dens1/batchnorm/add_1AddV2bn_dens1/batchnorm/mul_1:z:0bn_dens1/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
bn_dens1/batchnorm/add_1 
dens1/MatMul/ReadVariableOpReadVariableOp$dens1_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
dens1/MatMul/ReadVariableOp
dens1/MatMulMatMulbn_dens1/batchnorm/add_1:z:0#dens1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dens1/MatMul
dens1/BiasAdd/ReadVariableOpReadVariableOp%dens1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
dens1/BiasAdd/ReadVariableOp
dens1/BiasAddBiasAdddens1/MatMul:product:0$dens1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dens1/BiasAddj

dens1/ReluReludens1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

dens1/Relu­
!bn_dens2/batchnorm/ReadVariableOpReadVariableOp*bn_dens2_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02#
!bn_dens2/batchnorm/ReadVariableOpy
bn_dens2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
bn_dens2/batchnorm/add/y¬
bn_dens2/batchnorm/addAddV2)bn_dens2/batchnorm/ReadVariableOp:value:0!bn_dens2/batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
bn_dens2/batchnorm/add~
bn_dens2/batchnorm/RsqrtRsqrtbn_dens2/batchnorm/add:z:0*
T0*
_output_shapes
:@2
bn_dens2/batchnorm/Rsqrt¹
%bn_dens2/batchnorm/mul/ReadVariableOpReadVariableOp.bn_dens2_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02'
%bn_dens2/batchnorm/mul/ReadVariableOp©
bn_dens2/batchnorm/mulMulbn_dens2/batchnorm/Rsqrt:y:0-bn_dens2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
bn_dens2/batchnorm/mul£
bn_dens2/batchnorm/mul_1Muldens1/Relu:activations:0bn_dens2/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
bn_dens2/batchnorm/mul_1³
#bn_dens2/batchnorm/ReadVariableOp_1ReadVariableOp,bn_dens2_batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02%
#bn_dens2/batchnorm/ReadVariableOp_1©
bn_dens2/batchnorm/mul_2Mul+bn_dens2/batchnorm/ReadVariableOp_1:value:0bn_dens2/batchnorm/mul:z:0*
T0*
_output_shapes
:@2
bn_dens2/batchnorm/mul_2³
#bn_dens2/batchnorm/ReadVariableOp_2ReadVariableOp,bn_dens2_batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02%
#bn_dens2/batchnorm/ReadVariableOp_2§
bn_dens2/batchnorm/subSub+bn_dens2/batchnorm/ReadVariableOp_2:value:0bn_dens2/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
bn_dens2/batchnorm/sub©
bn_dens2/batchnorm/add_1AddV2bn_dens2/batchnorm/mul_1:z:0bn_dens2/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
bn_dens2/batchnorm/add_1 
dens2/MatMul/ReadVariableOpReadVariableOp$dens2_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
dens2/MatMul/ReadVariableOp
dens2/MatMulMatMulbn_dens2/batchnorm/add_1:z:0#dens2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dens2/MatMul
dens2/BiasAdd/ReadVariableOpReadVariableOp%dens2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
dens2/BiasAdd/ReadVariableOp
dens2/BiasAddBiasAdddens2/MatMul:product:0$dens2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dens2/BiasAddk

dens2/ReluReludens2/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

dens2/Relu®
!bn_dens3/batchnorm/ReadVariableOpReadVariableOp*bn_dens3_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02#
!bn_dens3/batchnorm/ReadVariableOpy
bn_dens3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
bn_dens3/batchnorm/add/y­
bn_dens3/batchnorm/addAddV2)bn_dens3/batchnorm/ReadVariableOp:value:0!bn_dens3/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
bn_dens3/batchnorm/add
bn_dens3/batchnorm/RsqrtRsqrtbn_dens3/batchnorm/add:z:0*
T0*
_output_shapes	
:2
bn_dens3/batchnorm/Rsqrtº
%bn_dens3/batchnorm/mul/ReadVariableOpReadVariableOp.bn_dens3_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02'
%bn_dens3/batchnorm/mul/ReadVariableOpª
bn_dens3/batchnorm/mulMulbn_dens3/batchnorm/Rsqrt:y:0-bn_dens3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
bn_dens3/batchnorm/mul¤
bn_dens3/batchnorm/mul_1Muldens2/Relu:activations:0bn_dens3/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
bn_dens3/batchnorm/mul_1´
#bn_dens3/batchnorm/ReadVariableOp_1ReadVariableOp,bn_dens3_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02%
#bn_dens3/batchnorm/ReadVariableOp_1ª
bn_dens3/batchnorm/mul_2Mul+bn_dens3/batchnorm/ReadVariableOp_1:value:0bn_dens3/batchnorm/mul:z:0*
T0*
_output_shapes	
:2
bn_dens3/batchnorm/mul_2´
#bn_dens3/batchnorm/ReadVariableOp_2ReadVariableOp,bn_dens3_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02%
#bn_dens3/batchnorm/ReadVariableOp_2¨
bn_dens3/batchnorm/subSub+bn_dens3/batchnorm/ReadVariableOp_2:value:0bn_dens3/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
bn_dens3/batchnorm/subª
bn_dens3/batchnorm/add_1AddV2bn_dens3/batchnorm/mul_1:z:0bn_dens3/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
bn_dens3/batchnorm/add_1¡
dens3/MatMul/ReadVariableOpReadVariableOp$dens3_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
dens3/MatMul/ReadVariableOp
dens3/MatMulMatMulbn_dens3/batchnorm/add_1:z:0#dens3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dens3/MatMul
dens3/BiasAdd/ReadVariableOpReadVariableOp%dens3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
dens3/BiasAdd/ReadVariableOp
dens3/BiasAddBiasAdddens3/MatMul:product:0$dens3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dens3/BiasAddk

dens3/ReluReludens3/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

dens3/Relu®
!bn_dens4/batchnorm/ReadVariableOpReadVariableOp*bn_dens4_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02#
!bn_dens4/batchnorm/ReadVariableOpy
bn_dens4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
bn_dens4/batchnorm/add/y­
bn_dens4/batchnorm/addAddV2)bn_dens4/batchnorm/ReadVariableOp:value:0!bn_dens4/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
bn_dens4/batchnorm/add
bn_dens4/batchnorm/RsqrtRsqrtbn_dens4/batchnorm/add:z:0*
T0*
_output_shapes	
:2
bn_dens4/batchnorm/Rsqrtº
%bn_dens4/batchnorm/mul/ReadVariableOpReadVariableOp.bn_dens4_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02'
%bn_dens4/batchnorm/mul/ReadVariableOpª
bn_dens4/batchnorm/mulMulbn_dens4/batchnorm/Rsqrt:y:0-bn_dens4/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
bn_dens4/batchnorm/mul¤
bn_dens4/batchnorm/mul_1Muldens3/Relu:activations:0bn_dens4/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
bn_dens4/batchnorm/mul_1´
#bn_dens4/batchnorm/ReadVariableOp_1ReadVariableOp,bn_dens4_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02%
#bn_dens4/batchnorm/ReadVariableOp_1ª
bn_dens4/batchnorm/mul_2Mul+bn_dens4/batchnorm/ReadVariableOp_1:value:0bn_dens4/batchnorm/mul:z:0*
T0*
_output_shapes	
:2
bn_dens4/batchnorm/mul_2´
#bn_dens4/batchnorm/ReadVariableOp_2ReadVariableOp,bn_dens4_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02%
#bn_dens4/batchnorm/ReadVariableOp_2¨
bn_dens4/batchnorm/subSub+bn_dens4/batchnorm/ReadVariableOp_2:value:0bn_dens4/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
bn_dens4/batchnorm/subª
bn_dens4/batchnorm/add_1AddV2bn_dens4/batchnorm/mul_1:z:0bn_dens4/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
bn_dens4/batchnorm/add_1 
final/MatMul/ReadVariableOpReadVariableOp$final_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype02
final/MatMul/ReadVariableOp
final/MatMulMatMulbn_dens4/batchnorm/add_1:z:0#final/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
final/MatMul
final/BiasAdd/ReadVariableOpReadVariableOp%final_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
final/BiasAdd/ReadVariableOp
final/BiasAddBiasAddfinal/MatMul:product:0$final/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
final/BiasAdds
final/SoftmaxSoftmaxfinal/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
final/Softmax¿
IdentityIdentityfinal/Softmax:softmax:0"^bn_dens1/batchnorm/ReadVariableOp$^bn_dens1/batchnorm/ReadVariableOp_1$^bn_dens1/batchnorm/ReadVariableOp_2&^bn_dens1/batchnorm/mul/ReadVariableOp"^bn_dens2/batchnorm/ReadVariableOp$^bn_dens2/batchnorm/ReadVariableOp_1$^bn_dens2/batchnorm/ReadVariableOp_2&^bn_dens2/batchnorm/mul/ReadVariableOp"^bn_dens3/batchnorm/ReadVariableOp$^bn_dens3/batchnorm/ReadVariableOp_1$^bn_dens3/batchnorm/ReadVariableOp_2&^bn_dens3/batchnorm/mul/ReadVariableOp"^bn_dens4/batchnorm/ReadVariableOp$^bn_dens4/batchnorm/ReadVariableOp_1$^bn_dens4/batchnorm/ReadVariableOp_2&^bn_dens4/batchnorm/mul/ReadVariableOp^dens1/BiasAdd/ReadVariableOp^dens1/MatMul/ReadVariableOp^dens2/BiasAdd/ReadVariableOp^dens2/MatMul/ReadVariableOp^dens3/BiasAdd/ReadVariableOp^dens3/MatMul/ReadVariableOp^final/BiasAdd/ReadVariableOp^final/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : 2F
!bn_dens1/batchnorm/ReadVariableOp!bn_dens1/batchnorm/ReadVariableOp2J
#bn_dens1/batchnorm/ReadVariableOp_1#bn_dens1/batchnorm/ReadVariableOp_12J
#bn_dens1/batchnorm/ReadVariableOp_2#bn_dens1/batchnorm/ReadVariableOp_22N
%bn_dens1/batchnorm/mul/ReadVariableOp%bn_dens1/batchnorm/mul/ReadVariableOp2F
!bn_dens2/batchnorm/ReadVariableOp!bn_dens2/batchnorm/ReadVariableOp2J
#bn_dens2/batchnorm/ReadVariableOp_1#bn_dens2/batchnorm/ReadVariableOp_12J
#bn_dens2/batchnorm/ReadVariableOp_2#bn_dens2/batchnorm/ReadVariableOp_22N
%bn_dens2/batchnorm/mul/ReadVariableOp%bn_dens2/batchnorm/mul/ReadVariableOp2F
!bn_dens3/batchnorm/ReadVariableOp!bn_dens3/batchnorm/ReadVariableOp2J
#bn_dens3/batchnorm/ReadVariableOp_1#bn_dens3/batchnorm/ReadVariableOp_12J
#bn_dens3/batchnorm/ReadVariableOp_2#bn_dens3/batchnorm/ReadVariableOp_22N
%bn_dens3/batchnorm/mul/ReadVariableOp%bn_dens3/batchnorm/mul/ReadVariableOp2F
!bn_dens4/batchnorm/ReadVariableOp!bn_dens4/batchnorm/ReadVariableOp2J
#bn_dens4/batchnorm/ReadVariableOp_1#bn_dens4/batchnorm/ReadVariableOp_12J
#bn_dens4/batchnorm/ReadVariableOp_2#bn_dens4/batchnorm/ReadVariableOp_22N
%bn_dens4/batchnorm/mul/ReadVariableOp%bn_dens4/batchnorm/mul/ReadVariableOp2<
dens1/BiasAdd/ReadVariableOpdens1/BiasAdd/ReadVariableOp2:
dens1/MatMul/ReadVariableOpdens1/MatMul/ReadVariableOp2<
dens2/BiasAdd/ReadVariableOpdens2/BiasAdd/ReadVariableOp2:
dens2/MatMul/ReadVariableOpdens2/MatMul/ReadVariableOp2<
dens3/BiasAdd/ReadVariableOpdens3/BiasAdd/ReadVariableOp2:
dens3/MatMul/ReadVariableOpdens3/MatMul/ReadVariableOp2<
final/BiasAdd/ReadVariableOpfinal/BiasAdd/ReadVariableOp2:
final/MatMul/ReadVariableOpfinal/MatMul/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
*
á
D__inference_bn_dens1_layer_call_and_return_conditional_losses_293595

inputs6
'assignmovingavg_readvariableop_resource:	8
)assignmovingavg_1_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	0
!batchnorm_readvariableop_resource:	
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	2
moments/StopGradient¥
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices³
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay¥
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/mul¿
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay«
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp¡
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/mulÉ
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ç
Ä
)__inference_bn_dens2_layer_call_fn_293628

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_bn_dens2_layer_call_and_return_conditional_losses_2920642
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
£
§
D__inference_bn_dens1_layer_call_and_return_conditional_losses_293561

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1Ü
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
µ

õ
A__inference_dens3_layer_call_and_return_conditional_losses_293815

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
í
È
)__inference_bn_dens1_layer_call_fn_293541

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_bn_dens1_layer_call_and_return_conditional_losses_2919622
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
1
ê
H__inference_sequential_1_layer_call_and_return_conditional_losses_293024

flat_input
bn_dens1_292967:	
bn_dens1_292969:	
bn_dens1_292971:	
bn_dens1_292973:	
dens1_292976:	@
dens1_292978:@
bn_dens2_292981:@
bn_dens2_292983:@
bn_dens2_292985:@
bn_dens2_292987:@
dens2_292990:	@
dens2_292992:	
bn_dens3_292995:	
bn_dens3_292997:	
bn_dens3_292999:	
bn_dens3_293001:	 
dens3_293004:

dens3_293006:	
bn_dens4_293009:	
bn_dens4_293011:	
bn_dens4_293013:	
bn_dens4_293015:	
final_293018:	

final_293020:

identity¢ bn_dens1/StatefulPartitionedCall¢ bn_dens2/StatefulPartitionedCall¢ bn_dens3/StatefulPartitionedCall¢ bn_dens4/StatefulPartitionedCall¢dens1/StatefulPartitionedCall¢dens2/StatefulPartitionedCall¢dens3/StatefulPartitionedCall¢final/StatefulPartitionedCallÍ
flat/PartitionedCallPartitionedCall
flat_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_flat_layer_call_and_return_conditional_losses_2925392
flat/PartitionedCallÒ
 bn_dens1/StatefulPartitionedCallStatefulPartitionedCallflat/PartitionedCall:output:0bn_dens1_292967bn_dens1_292969bn_dens1_292971bn_dens1_292973*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_bn_dens1_layer_call_and_return_conditional_losses_2919022"
 bn_dens1/StatefulPartitionedCall¨
dens1/StatefulPartitionedCallStatefulPartitionedCall)bn_dens1/StatefulPartitionedCall:output:0dens1_292976dens1_292978*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dens1_layer_call_and_return_conditional_losses_2925612
dens1/StatefulPartitionedCallÚ
 bn_dens2/StatefulPartitionedCallStatefulPartitionedCall&dens1/StatefulPartitionedCall:output:0bn_dens2_292981bn_dens2_292983bn_dens2_292985bn_dens2_292987*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_bn_dens2_layer_call_and_return_conditional_losses_2920642"
 bn_dens2/StatefulPartitionedCall©
dens2/StatefulPartitionedCallStatefulPartitionedCall)bn_dens2/StatefulPartitionedCall:output:0dens2_292990dens2_292992*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dens2_layer_call_and_return_conditional_losses_2925872
dens2/StatefulPartitionedCallÛ
 bn_dens3/StatefulPartitionedCallStatefulPartitionedCall&dens2/StatefulPartitionedCall:output:0bn_dens3_292995bn_dens3_292997bn_dens3_292999bn_dens3_293001*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_bn_dens3_layer_call_and_return_conditional_losses_2922262"
 bn_dens3/StatefulPartitionedCall©
dens3/StatefulPartitionedCallStatefulPartitionedCall)bn_dens3/StatefulPartitionedCall:output:0dens3_293004dens3_293006*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dens3_layer_call_and_return_conditional_losses_2926132
dens3/StatefulPartitionedCallÛ
 bn_dens4/StatefulPartitionedCallStatefulPartitionedCall&dens3/StatefulPartitionedCall:output:0bn_dens4_293009bn_dens4_293011bn_dens4_293013bn_dens4_293015*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_bn_dens4_layer_call_and_return_conditional_losses_2923882"
 bn_dens4/StatefulPartitionedCall¨
final/StatefulPartitionedCallStatefulPartitionedCall)bn_dens4/StatefulPartitionedCall:output:0final_293018final_293020*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_final_layer_call_and_return_conditional_losses_2926392
final/StatefulPartitionedCall
IdentityIdentity&final/StatefulPartitionedCall:output:0!^bn_dens1/StatefulPartitionedCall!^bn_dens2/StatefulPartitionedCall!^bn_dens3/StatefulPartitionedCall!^bn_dens4/StatefulPartitionedCall^dens1/StatefulPartitionedCall^dens2/StatefulPartitionedCall^dens3/StatefulPartitionedCall^final/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : 2D
 bn_dens1/StatefulPartitionedCall bn_dens1/StatefulPartitionedCall2D
 bn_dens2/StatefulPartitionedCall bn_dens2/StatefulPartitionedCall2D
 bn_dens3/StatefulPartitionedCall bn_dens3/StatefulPartitionedCall2D
 bn_dens4/StatefulPartitionedCall bn_dens4/StatefulPartitionedCall2>
dens1/StatefulPartitionedCalldens1/StatefulPartitionedCall2>
dens2/StatefulPartitionedCalldens2/StatefulPartitionedCall2>
dens3/StatefulPartitionedCalldens3/StatefulPartitionedCall2>
final/StatefulPartitionedCallfinal/StatefulPartitionedCall:[ W
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
flat_input
*
á
D__inference_bn_dens4_layer_call_and_return_conditional_losses_293895

inputs6
'assignmovingavg_readvariableop_resource:	8
)assignmovingavg_1_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	0
!batchnorm_readvariableop_resource:	
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	2
moments/StopGradient¥
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices³
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay¥
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/mul¿
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay«
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp¡
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/mulÉ
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Æ
A
%__inference_flat_layer_call_fn_293509

inputs
identity¿
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_flat_layer_call_and_return_conditional_losses_2925392
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
*
á
D__inference_bn_dens1_layer_call_and_return_conditional_losses_291962

inputs6
'assignmovingavg_readvariableop_resource:	8
)assignmovingavg_1_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	0
!batchnorm_readvariableop_resource:	
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	2
moments/StopGradient¥
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices³
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay¥
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/mul¿
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay«
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp¡
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/mulÉ
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ø0
ê
H__inference_sequential_1_layer_call_and_return_conditional_losses_293085

flat_input
bn_dens1_293028:	
bn_dens1_293030:	
bn_dens1_293032:	
bn_dens1_293034:	
dens1_293037:	@
dens1_293039:@
bn_dens2_293042:@
bn_dens2_293044:@
bn_dens2_293046:@
bn_dens2_293048:@
dens2_293051:	@
dens2_293053:	
bn_dens3_293056:	
bn_dens3_293058:	
bn_dens3_293060:	
bn_dens3_293062:	 
dens3_293065:

dens3_293067:	
bn_dens4_293070:	
bn_dens4_293072:	
bn_dens4_293074:	
bn_dens4_293076:	
final_293079:	

final_293081:

identity¢ bn_dens1/StatefulPartitionedCall¢ bn_dens2/StatefulPartitionedCall¢ bn_dens3/StatefulPartitionedCall¢ bn_dens4/StatefulPartitionedCall¢dens1/StatefulPartitionedCall¢dens2/StatefulPartitionedCall¢dens3/StatefulPartitionedCall¢final/StatefulPartitionedCallÍ
flat/PartitionedCallPartitionedCall
flat_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_flat_layer_call_and_return_conditional_losses_2925392
flat/PartitionedCallÐ
 bn_dens1/StatefulPartitionedCallStatefulPartitionedCallflat/PartitionedCall:output:0bn_dens1_293028bn_dens1_293030bn_dens1_293032bn_dens1_293034*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_bn_dens1_layer_call_and_return_conditional_losses_2919622"
 bn_dens1/StatefulPartitionedCall¨
dens1/StatefulPartitionedCallStatefulPartitionedCall)bn_dens1/StatefulPartitionedCall:output:0dens1_293037dens1_293039*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dens1_layer_call_and_return_conditional_losses_2925612
dens1/StatefulPartitionedCallØ
 bn_dens2/StatefulPartitionedCallStatefulPartitionedCall&dens1/StatefulPartitionedCall:output:0bn_dens2_293042bn_dens2_293044bn_dens2_293046bn_dens2_293048*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_bn_dens2_layer_call_and_return_conditional_losses_2921242"
 bn_dens2/StatefulPartitionedCall©
dens2/StatefulPartitionedCallStatefulPartitionedCall)bn_dens2/StatefulPartitionedCall:output:0dens2_293051dens2_293053*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dens2_layer_call_and_return_conditional_losses_2925872
dens2/StatefulPartitionedCallÙ
 bn_dens3/StatefulPartitionedCallStatefulPartitionedCall&dens2/StatefulPartitionedCall:output:0bn_dens3_293056bn_dens3_293058bn_dens3_293060bn_dens3_293062*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_bn_dens3_layer_call_and_return_conditional_losses_2922862"
 bn_dens3/StatefulPartitionedCall©
dens3/StatefulPartitionedCallStatefulPartitionedCall)bn_dens3/StatefulPartitionedCall:output:0dens3_293065dens3_293067*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dens3_layer_call_and_return_conditional_losses_2926132
dens3/StatefulPartitionedCallÙ
 bn_dens4/StatefulPartitionedCallStatefulPartitionedCall&dens3/StatefulPartitionedCall:output:0bn_dens4_293070bn_dens4_293072bn_dens4_293074bn_dens4_293076*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_bn_dens4_layer_call_and_return_conditional_losses_2924482"
 bn_dens4/StatefulPartitionedCall¨
final/StatefulPartitionedCallStatefulPartitionedCall)bn_dens4/StatefulPartitionedCall:output:0final_293079final_293081*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_final_layer_call_and_return_conditional_losses_2926392
final/StatefulPartitionedCall
IdentityIdentity&final/StatefulPartitionedCall:output:0!^bn_dens1/StatefulPartitionedCall!^bn_dens2/StatefulPartitionedCall!^bn_dens3/StatefulPartitionedCall!^bn_dens4/StatefulPartitionedCall^dens1/StatefulPartitionedCall^dens2/StatefulPartitionedCall^dens3/StatefulPartitionedCall^final/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : 2D
 bn_dens1/StatefulPartitionedCall bn_dens1/StatefulPartitionedCall2D
 bn_dens2/StatefulPartitionedCall bn_dens2/StatefulPartitionedCall2D
 bn_dens3/StatefulPartitionedCall bn_dens3/StatefulPartitionedCall2D
 bn_dens4/StatefulPartitionedCall bn_dens4/StatefulPartitionedCall2>
dens1/StatefulPartitionedCalldens1/StatefulPartitionedCall2>
dens2/StatefulPartitionedCalldens2/StatefulPartitionedCall2>
dens3/StatefulPartitionedCalldens3/StatefulPartitionedCall2>
final/StatefulPartitionedCallfinal/StatefulPartitionedCall:[ W
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
flat_input
±

ô
A__inference_dens2_layer_call_and_return_conditional_losses_292587

inputs1
matmul_readvariableop_resource:	@.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ñ|
ü
__inference__traced_save_294133
file_prefix-
)savev2_bn_dens1_gamma_read_readvariableop,
(savev2_bn_dens1_beta_read_readvariableop3
/savev2_bn_dens1_moving_mean_read_readvariableop7
3savev2_bn_dens1_moving_variance_read_readvariableop+
'savev2_dens1_kernel_read_readvariableop)
%savev2_dens1_bias_read_readvariableop-
)savev2_bn_dens2_gamma_read_readvariableop,
(savev2_bn_dens2_beta_read_readvariableop3
/savev2_bn_dens2_moving_mean_read_readvariableop7
3savev2_bn_dens2_moving_variance_read_readvariableop+
'savev2_dens2_kernel_read_readvariableop)
%savev2_dens2_bias_read_readvariableop-
)savev2_bn_dens3_gamma_read_readvariableop,
(savev2_bn_dens3_beta_read_readvariableop3
/savev2_bn_dens3_moving_mean_read_readvariableop7
3savev2_bn_dens3_moving_variance_read_readvariableop+
'savev2_dens3_kernel_read_readvariableop)
%savev2_dens3_bias_read_readvariableop-
)savev2_bn_dens4_gamma_read_readvariableop,
(savev2_bn_dens4_beta_read_readvariableop3
/savev2_bn_dens4_moving_mean_read_readvariableop7
3savev2_bn_dens4_moving_variance_read_readvariableop+
'savev2_final_kernel_read_readvariableop)
%savev2_final_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop4
0savev2_adam_bn_dens1_gamma_m_read_readvariableop3
/savev2_adam_bn_dens1_beta_m_read_readvariableop2
.savev2_adam_dens1_kernel_m_read_readvariableop0
,savev2_adam_dens1_bias_m_read_readvariableop4
0savev2_adam_bn_dens2_gamma_m_read_readvariableop3
/savev2_adam_bn_dens2_beta_m_read_readvariableop2
.savev2_adam_dens2_kernel_m_read_readvariableop0
,savev2_adam_dens2_bias_m_read_readvariableop4
0savev2_adam_bn_dens3_gamma_m_read_readvariableop3
/savev2_adam_bn_dens3_beta_m_read_readvariableop2
.savev2_adam_dens3_kernel_m_read_readvariableop0
,savev2_adam_dens3_bias_m_read_readvariableop4
0savev2_adam_bn_dens4_gamma_m_read_readvariableop3
/savev2_adam_bn_dens4_beta_m_read_readvariableop2
.savev2_adam_final_kernel_m_read_readvariableop0
,savev2_adam_final_bias_m_read_readvariableop4
0savev2_adam_bn_dens1_gamma_v_read_readvariableop3
/savev2_adam_bn_dens1_beta_v_read_readvariableop2
.savev2_adam_dens1_kernel_v_read_readvariableop0
,savev2_adam_dens1_bias_v_read_readvariableop4
0savev2_adam_bn_dens2_gamma_v_read_readvariableop3
/savev2_adam_bn_dens2_beta_v_read_readvariableop2
.savev2_adam_dens2_kernel_v_read_readvariableop0
,savev2_adam_dens2_bias_v_read_readvariableop4
0savev2_adam_bn_dens3_gamma_v_read_readvariableop3
/savev2_adam_bn_dens3_beta_v_read_readvariableop2
.savev2_adam_dens3_kernel_v_read_readvariableop0
,savev2_adam_dens3_bias_v_read_readvariableop4
0savev2_adam_bn_dens4_gamma_v_read_readvariableop3
/savev2_adam_bn_dens4_beta_v_read_readvariableop2
.savev2_adam_final_kernel_v_read_readvariableop0
,savev2_adam_final_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename$
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:B*
dtype0*¬#
value¢#B#BB5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:B*
dtype0*
valueBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_bn_dens1_gamma_read_readvariableop(savev2_bn_dens1_beta_read_readvariableop/savev2_bn_dens1_moving_mean_read_readvariableop3savev2_bn_dens1_moving_variance_read_readvariableop'savev2_dens1_kernel_read_readvariableop%savev2_dens1_bias_read_readvariableop)savev2_bn_dens2_gamma_read_readvariableop(savev2_bn_dens2_beta_read_readvariableop/savev2_bn_dens2_moving_mean_read_readvariableop3savev2_bn_dens2_moving_variance_read_readvariableop'savev2_dens2_kernel_read_readvariableop%savev2_dens2_bias_read_readvariableop)savev2_bn_dens3_gamma_read_readvariableop(savev2_bn_dens3_beta_read_readvariableop/savev2_bn_dens3_moving_mean_read_readvariableop3savev2_bn_dens3_moving_variance_read_readvariableop'savev2_dens3_kernel_read_readvariableop%savev2_dens3_bias_read_readvariableop)savev2_bn_dens4_gamma_read_readvariableop(savev2_bn_dens4_beta_read_readvariableop/savev2_bn_dens4_moving_mean_read_readvariableop3savev2_bn_dens4_moving_variance_read_readvariableop'savev2_final_kernel_read_readvariableop%savev2_final_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop0savev2_adam_bn_dens1_gamma_m_read_readvariableop/savev2_adam_bn_dens1_beta_m_read_readvariableop.savev2_adam_dens1_kernel_m_read_readvariableop,savev2_adam_dens1_bias_m_read_readvariableop0savev2_adam_bn_dens2_gamma_m_read_readvariableop/savev2_adam_bn_dens2_beta_m_read_readvariableop.savev2_adam_dens2_kernel_m_read_readvariableop,savev2_adam_dens2_bias_m_read_readvariableop0savev2_adam_bn_dens3_gamma_m_read_readvariableop/savev2_adam_bn_dens3_beta_m_read_readvariableop.savev2_adam_dens3_kernel_m_read_readvariableop,savev2_adam_dens3_bias_m_read_readvariableop0savev2_adam_bn_dens4_gamma_m_read_readvariableop/savev2_adam_bn_dens4_beta_m_read_readvariableop.savev2_adam_final_kernel_m_read_readvariableop,savev2_adam_final_bias_m_read_readvariableop0savev2_adam_bn_dens1_gamma_v_read_readvariableop/savev2_adam_bn_dens1_beta_v_read_readvariableop.savev2_adam_dens1_kernel_v_read_readvariableop,savev2_adam_dens1_bias_v_read_readvariableop0savev2_adam_bn_dens2_gamma_v_read_readvariableop/savev2_adam_bn_dens2_beta_v_read_readvariableop.savev2_adam_dens2_kernel_v_read_readvariableop,savev2_adam_dens2_bias_v_read_readvariableop0savev2_adam_bn_dens3_gamma_v_read_readvariableop/savev2_adam_bn_dens3_beta_v_read_readvariableop.savev2_adam_dens3_kernel_v_read_readvariableop,savev2_adam_dens3_bias_v_read_readvariableop0savev2_adam_bn_dens4_gamma_v_read_readvariableop/savev2_adam_bn_dens4_beta_v_read_readvariableop.savev2_adam_final_kernel_v_read_readvariableop,savev2_adam_final_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *P
dtypesF
D2B	2
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*Ø
_input_shapesÆ
Ã: :::::	@:@:@:@:@:@:	@::::::
::::::	
:
: : : : : : : : : :::	@:@:@:@:	@::::
::::	
:
:::	@:@:@:@:	@::::
::::	
:
: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::%!

_output_shapes
:	@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 	

_output_shapes
:@: 


_output_shapes
:@:%!

_output_shapes
:	@:!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::%!

_output_shapes
:	
: 

_output_shapes
:
:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :!"

_output_shapes	
::!#

_output_shapes	
::%$!

_output_shapes
:	@: %

_output_shapes
:@: &

_output_shapes
:@: '

_output_shapes
:@:%(!

_output_shapes
:	@:!)

_output_shapes	
::!*

_output_shapes	
::!+

_output_shapes	
::&,"
 
_output_shapes
:
:!-

_output_shapes	
::!.

_output_shapes	
::!/

_output_shapes	
::%0!

_output_shapes
:	
: 1

_output_shapes
:
:!2

_output_shapes	
::!3

_output_shapes	
::%4!

_output_shapes
:	@: 5

_output_shapes
:@: 6

_output_shapes
:@: 7

_output_shapes
:@:%8!

_output_shapes
:	@:!9

_output_shapes	
::!:

_output_shapes	
::!;

_output_shapes	
::&<"
 
_output_shapes
:
:!=

_output_shapes	
::!>

_output_shapes	
::!?

_output_shapes	
::%@!

_output_shapes
:	
: A

_output_shapes
:
:B

_output_shapes
: 
æ¥

!__inference__wrapped_model_291878

flat_inputF
7sequential_1_bn_dens1_batchnorm_readvariableop_resource:	J
;sequential_1_bn_dens1_batchnorm_mul_readvariableop_resource:	H
9sequential_1_bn_dens1_batchnorm_readvariableop_1_resource:	H
9sequential_1_bn_dens1_batchnorm_readvariableop_2_resource:	D
1sequential_1_dens1_matmul_readvariableop_resource:	@@
2sequential_1_dens1_biasadd_readvariableop_resource:@E
7sequential_1_bn_dens2_batchnorm_readvariableop_resource:@I
;sequential_1_bn_dens2_batchnorm_mul_readvariableop_resource:@G
9sequential_1_bn_dens2_batchnorm_readvariableop_1_resource:@G
9sequential_1_bn_dens2_batchnorm_readvariableop_2_resource:@D
1sequential_1_dens2_matmul_readvariableop_resource:	@A
2sequential_1_dens2_biasadd_readvariableop_resource:	F
7sequential_1_bn_dens3_batchnorm_readvariableop_resource:	J
;sequential_1_bn_dens3_batchnorm_mul_readvariableop_resource:	H
9sequential_1_bn_dens3_batchnorm_readvariableop_1_resource:	H
9sequential_1_bn_dens3_batchnorm_readvariableop_2_resource:	E
1sequential_1_dens3_matmul_readvariableop_resource:
A
2sequential_1_dens3_biasadd_readvariableop_resource:	F
7sequential_1_bn_dens4_batchnorm_readvariableop_resource:	J
;sequential_1_bn_dens4_batchnorm_mul_readvariableop_resource:	H
9sequential_1_bn_dens4_batchnorm_readvariableop_1_resource:	H
9sequential_1_bn_dens4_batchnorm_readvariableop_2_resource:	D
1sequential_1_final_matmul_readvariableop_resource:	
@
2sequential_1_final_biasadd_readvariableop_resource:

identity¢.sequential_1/bn_dens1/batchnorm/ReadVariableOp¢0sequential_1/bn_dens1/batchnorm/ReadVariableOp_1¢0sequential_1/bn_dens1/batchnorm/ReadVariableOp_2¢2sequential_1/bn_dens1/batchnorm/mul/ReadVariableOp¢.sequential_1/bn_dens2/batchnorm/ReadVariableOp¢0sequential_1/bn_dens2/batchnorm/ReadVariableOp_1¢0sequential_1/bn_dens2/batchnorm/ReadVariableOp_2¢2sequential_1/bn_dens2/batchnorm/mul/ReadVariableOp¢.sequential_1/bn_dens3/batchnorm/ReadVariableOp¢0sequential_1/bn_dens3/batchnorm/ReadVariableOp_1¢0sequential_1/bn_dens3/batchnorm/ReadVariableOp_2¢2sequential_1/bn_dens3/batchnorm/mul/ReadVariableOp¢.sequential_1/bn_dens4/batchnorm/ReadVariableOp¢0sequential_1/bn_dens4/batchnorm/ReadVariableOp_1¢0sequential_1/bn_dens4/batchnorm/ReadVariableOp_2¢2sequential_1/bn_dens4/batchnorm/mul/ReadVariableOp¢)sequential_1/dens1/BiasAdd/ReadVariableOp¢(sequential_1/dens1/MatMul/ReadVariableOp¢)sequential_1/dens2/BiasAdd/ReadVariableOp¢(sequential_1/dens2/MatMul/ReadVariableOp¢)sequential_1/dens3/BiasAdd/ReadVariableOp¢(sequential_1/dens3/MatMul/ReadVariableOp¢)sequential_1/final/BiasAdd/ReadVariableOp¢(sequential_1/final/MatMul/ReadVariableOp
sequential_1/flat/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  2
sequential_1/flat/Const¢
sequential_1/flat/ReshapeReshape
flat_input sequential_1/flat/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_1/flat/ReshapeÕ
.sequential_1/bn_dens1/batchnorm/ReadVariableOpReadVariableOp7sequential_1_bn_dens1_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype020
.sequential_1/bn_dens1/batchnorm/ReadVariableOp
%sequential_1/bn_dens1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2'
%sequential_1/bn_dens1/batchnorm/add/yá
#sequential_1/bn_dens1/batchnorm/addAddV26sequential_1/bn_dens1/batchnorm/ReadVariableOp:value:0.sequential_1/bn_dens1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2%
#sequential_1/bn_dens1/batchnorm/add¦
%sequential_1/bn_dens1/batchnorm/RsqrtRsqrt'sequential_1/bn_dens1/batchnorm/add:z:0*
T0*
_output_shapes	
:2'
%sequential_1/bn_dens1/batchnorm/Rsqrtá
2sequential_1/bn_dens1/batchnorm/mul/ReadVariableOpReadVariableOp;sequential_1_bn_dens1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype024
2sequential_1/bn_dens1/batchnorm/mul/ReadVariableOpÞ
#sequential_1/bn_dens1/batchnorm/mulMul)sequential_1/bn_dens1/batchnorm/Rsqrt:y:0:sequential_1/bn_dens1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2%
#sequential_1/bn_dens1/batchnorm/mulÕ
%sequential_1/bn_dens1/batchnorm/mul_1Mul"sequential_1/flat/Reshape:output:0'sequential_1/bn_dens1/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%sequential_1/bn_dens1/batchnorm/mul_1Û
0sequential_1/bn_dens1/batchnorm/ReadVariableOp_1ReadVariableOp9sequential_1_bn_dens1_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype022
0sequential_1/bn_dens1/batchnorm/ReadVariableOp_1Þ
%sequential_1/bn_dens1/batchnorm/mul_2Mul8sequential_1/bn_dens1/batchnorm/ReadVariableOp_1:value:0'sequential_1/bn_dens1/batchnorm/mul:z:0*
T0*
_output_shapes	
:2'
%sequential_1/bn_dens1/batchnorm/mul_2Û
0sequential_1/bn_dens1/batchnorm/ReadVariableOp_2ReadVariableOp9sequential_1_bn_dens1_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype022
0sequential_1/bn_dens1/batchnorm/ReadVariableOp_2Ü
#sequential_1/bn_dens1/batchnorm/subSub8sequential_1/bn_dens1/batchnorm/ReadVariableOp_2:value:0)sequential_1/bn_dens1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2%
#sequential_1/bn_dens1/batchnorm/subÞ
%sequential_1/bn_dens1/batchnorm/add_1AddV2)sequential_1/bn_dens1/batchnorm/mul_1:z:0'sequential_1/bn_dens1/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%sequential_1/bn_dens1/batchnorm/add_1Ç
(sequential_1/dens1/MatMul/ReadVariableOpReadVariableOp1sequential_1_dens1_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02*
(sequential_1/dens1/MatMul/ReadVariableOpÏ
sequential_1/dens1/MatMulMatMul)sequential_1/bn_dens1/batchnorm/add_1:z:00sequential_1/dens1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
sequential_1/dens1/MatMulÅ
)sequential_1/dens1/BiasAdd/ReadVariableOpReadVariableOp2sequential_1_dens1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)sequential_1/dens1/BiasAdd/ReadVariableOpÍ
sequential_1/dens1/BiasAddBiasAdd#sequential_1/dens1/MatMul:product:01sequential_1/dens1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
sequential_1/dens1/BiasAdd
sequential_1/dens1/ReluRelu#sequential_1/dens1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
sequential_1/dens1/ReluÔ
.sequential_1/bn_dens2/batchnorm/ReadVariableOpReadVariableOp7sequential_1_bn_dens2_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_1/bn_dens2/batchnorm/ReadVariableOp
%sequential_1/bn_dens2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2'
%sequential_1/bn_dens2/batchnorm/add/yà
#sequential_1/bn_dens2/batchnorm/addAddV26sequential_1/bn_dens2/batchnorm/ReadVariableOp:value:0.sequential_1/bn_dens2/batchnorm/add/y:output:0*
T0*
_output_shapes
:@2%
#sequential_1/bn_dens2/batchnorm/add¥
%sequential_1/bn_dens2/batchnorm/RsqrtRsqrt'sequential_1/bn_dens2/batchnorm/add:z:0*
T0*
_output_shapes
:@2'
%sequential_1/bn_dens2/batchnorm/Rsqrtà
2sequential_1/bn_dens2/batchnorm/mul/ReadVariableOpReadVariableOp;sequential_1_bn_dens2_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype024
2sequential_1/bn_dens2/batchnorm/mul/ReadVariableOpÝ
#sequential_1/bn_dens2/batchnorm/mulMul)sequential_1/bn_dens2/batchnorm/Rsqrt:y:0:sequential_1/bn_dens2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2%
#sequential_1/bn_dens2/batchnorm/mul×
%sequential_1/bn_dens2/batchnorm/mul_1Mul%sequential_1/dens1/Relu:activations:0'sequential_1/bn_dens2/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2'
%sequential_1/bn_dens2/batchnorm/mul_1Ú
0sequential_1/bn_dens2/batchnorm/ReadVariableOp_1ReadVariableOp9sequential_1_bn_dens2_batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype022
0sequential_1/bn_dens2/batchnorm/ReadVariableOp_1Ý
%sequential_1/bn_dens2/batchnorm/mul_2Mul8sequential_1/bn_dens2/batchnorm/ReadVariableOp_1:value:0'sequential_1/bn_dens2/batchnorm/mul:z:0*
T0*
_output_shapes
:@2'
%sequential_1/bn_dens2/batchnorm/mul_2Ú
0sequential_1/bn_dens2/batchnorm/ReadVariableOp_2ReadVariableOp9sequential_1_bn_dens2_batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype022
0sequential_1/bn_dens2/batchnorm/ReadVariableOp_2Û
#sequential_1/bn_dens2/batchnorm/subSub8sequential_1/bn_dens2/batchnorm/ReadVariableOp_2:value:0)sequential_1/bn_dens2/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2%
#sequential_1/bn_dens2/batchnorm/subÝ
%sequential_1/bn_dens2/batchnorm/add_1AddV2)sequential_1/bn_dens2/batchnorm/mul_1:z:0'sequential_1/bn_dens2/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2'
%sequential_1/bn_dens2/batchnorm/add_1Ç
(sequential_1/dens2/MatMul/ReadVariableOpReadVariableOp1sequential_1_dens2_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02*
(sequential_1/dens2/MatMul/ReadVariableOpÐ
sequential_1/dens2/MatMulMatMul)sequential_1/bn_dens2/batchnorm/add_1:z:00sequential_1/dens2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_1/dens2/MatMulÆ
)sequential_1/dens2/BiasAdd/ReadVariableOpReadVariableOp2sequential_1_dens2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02+
)sequential_1/dens2/BiasAdd/ReadVariableOpÎ
sequential_1/dens2/BiasAddBiasAdd#sequential_1/dens2/MatMul:product:01sequential_1/dens2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_1/dens2/BiasAdd
sequential_1/dens2/ReluRelu#sequential_1/dens2/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_1/dens2/ReluÕ
.sequential_1/bn_dens3/batchnorm/ReadVariableOpReadVariableOp7sequential_1_bn_dens3_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype020
.sequential_1/bn_dens3/batchnorm/ReadVariableOp
%sequential_1/bn_dens3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2'
%sequential_1/bn_dens3/batchnorm/add/yá
#sequential_1/bn_dens3/batchnorm/addAddV26sequential_1/bn_dens3/batchnorm/ReadVariableOp:value:0.sequential_1/bn_dens3/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2%
#sequential_1/bn_dens3/batchnorm/add¦
%sequential_1/bn_dens3/batchnorm/RsqrtRsqrt'sequential_1/bn_dens3/batchnorm/add:z:0*
T0*
_output_shapes	
:2'
%sequential_1/bn_dens3/batchnorm/Rsqrtá
2sequential_1/bn_dens3/batchnorm/mul/ReadVariableOpReadVariableOp;sequential_1_bn_dens3_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype024
2sequential_1/bn_dens3/batchnorm/mul/ReadVariableOpÞ
#sequential_1/bn_dens3/batchnorm/mulMul)sequential_1/bn_dens3/batchnorm/Rsqrt:y:0:sequential_1/bn_dens3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2%
#sequential_1/bn_dens3/batchnorm/mulØ
%sequential_1/bn_dens3/batchnorm/mul_1Mul%sequential_1/dens2/Relu:activations:0'sequential_1/bn_dens3/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%sequential_1/bn_dens3/batchnorm/mul_1Û
0sequential_1/bn_dens3/batchnorm/ReadVariableOp_1ReadVariableOp9sequential_1_bn_dens3_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype022
0sequential_1/bn_dens3/batchnorm/ReadVariableOp_1Þ
%sequential_1/bn_dens3/batchnorm/mul_2Mul8sequential_1/bn_dens3/batchnorm/ReadVariableOp_1:value:0'sequential_1/bn_dens3/batchnorm/mul:z:0*
T0*
_output_shapes	
:2'
%sequential_1/bn_dens3/batchnorm/mul_2Û
0sequential_1/bn_dens3/batchnorm/ReadVariableOp_2ReadVariableOp9sequential_1_bn_dens3_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype022
0sequential_1/bn_dens3/batchnorm/ReadVariableOp_2Ü
#sequential_1/bn_dens3/batchnorm/subSub8sequential_1/bn_dens3/batchnorm/ReadVariableOp_2:value:0)sequential_1/bn_dens3/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2%
#sequential_1/bn_dens3/batchnorm/subÞ
%sequential_1/bn_dens3/batchnorm/add_1AddV2)sequential_1/bn_dens3/batchnorm/mul_1:z:0'sequential_1/bn_dens3/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%sequential_1/bn_dens3/batchnorm/add_1È
(sequential_1/dens3/MatMul/ReadVariableOpReadVariableOp1sequential_1_dens3_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02*
(sequential_1/dens3/MatMul/ReadVariableOpÐ
sequential_1/dens3/MatMulMatMul)sequential_1/bn_dens3/batchnorm/add_1:z:00sequential_1/dens3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_1/dens3/MatMulÆ
)sequential_1/dens3/BiasAdd/ReadVariableOpReadVariableOp2sequential_1_dens3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02+
)sequential_1/dens3/BiasAdd/ReadVariableOpÎ
sequential_1/dens3/BiasAddBiasAdd#sequential_1/dens3/MatMul:product:01sequential_1/dens3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_1/dens3/BiasAdd
sequential_1/dens3/ReluRelu#sequential_1/dens3/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_1/dens3/ReluÕ
.sequential_1/bn_dens4/batchnorm/ReadVariableOpReadVariableOp7sequential_1_bn_dens4_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype020
.sequential_1/bn_dens4/batchnorm/ReadVariableOp
%sequential_1/bn_dens4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2'
%sequential_1/bn_dens4/batchnorm/add/yá
#sequential_1/bn_dens4/batchnorm/addAddV26sequential_1/bn_dens4/batchnorm/ReadVariableOp:value:0.sequential_1/bn_dens4/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2%
#sequential_1/bn_dens4/batchnorm/add¦
%sequential_1/bn_dens4/batchnorm/RsqrtRsqrt'sequential_1/bn_dens4/batchnorm/add:z:0*
T0*
_output_shapes	
:2'
%sequential_1/bn_dens4/batchnorm/Rsqrtá
2sequential_1/bn_dens4/batchnorm/mul/ReadVariableOpReadVariableOp;sequential_1_bn_dens4_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype024
2sequential_1/bn_dens4/batchnorm/mul/ReadVariableOpÞ
#sequential_1/bn_dens4/batchnorm/mulMul)sequential_1/bn_dens4/batchnorm/Rsqrt:y:0:sequential_1/bn_dens4/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2%
#sequential_1/bn_dens4/batchnorm/mulØ
%sequential_1/bn_dens4/batchnorm/mul_1Mul%sequential_1/dens3/Relu:activations:0'sequential_1/bn_dens4/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%sequential_1/bn_dens4/batchnorm/mul_1Û
0sequential_1/bn_dens4/batchnorm/ReadVariableOp_1ReadVariableOp9sequential_1_bn_dens4_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype022
0sequential_1/bn_dens4/batchnorm/ReadVariableOp_1Þ
%sequential_1/bn_dens4/batchnorm/mul_2Mul8sequential_1/bn_dens4/batchnorm/ReadVariableOp_1:value:0'sequential_1/bn_dens4/batchnorm/mul:z:0*
T0*
_output_shapes	
:2'
%sequential_1/bn_dens4/batchnorm/mul_2Û
0sequential_1/bn_dens4/batchnorm/ReadVariableOp_2ReadVariableOp9sequential_1_bn_dens4_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype022
0sequential_1/bn_dens4/batchnorm/ReadVariableOp_2Ü
#sequential_1/bn_dens4/batchnorm/subSub8sequential_1/bn_dens4/batchnorm/ReadVariableOp_2:value:0)sequential_1/bn_dens4/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2%
#sequential_1/bn_dens4/batchnorm/subÞ
%sequential_1/bn_dens4/batchnorm/add_1AddV2)sequential_1/bn_dens4/batchnorm/mul_1:z:0'sequential_1/bn_dens4/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%sequential_1/bn_dens4/batchnorm/add_1Ç
(sequential_1/final/MatMul/ReadVariableOpReadVariableOp1sequential_1_final_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype02*
(sequential_1/final/MatMul/ReadVariableOpÏ
sequential_1/final/MatMulMatMul)sequential_1/bn_dens4/batchnorm/add_1:z:00sequential_1/final/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
sequential_1/final/MatMulÅ
)sequential_1/final/BiasAdd/ReadVariableOpReadVariableOp2sequential_1_final_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02+
)sequential_1/final/BiasAdd/ReadVariableOpÍ
sequential_1/final/BiasAddBiasAdd#sequential_1/final/MatMul:product:01sequential_1/final/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
sequential_1/final/BiasAdd
sequential_1/final/SoftmaxSoftmax#sequential_1/final/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
sequential_1/final/Softmax

IdentityIdentity$sequential_1/final/Softmax:softmax:0/^sequential_1/bn_dens1/batchnorm/ReadVariableOp1^sequential_1/bn_dens1/batchnorm/ReadVariableOp_11^sequential_1/bn_dens1/batchnorm/ReadVariableOp_23^sequential_1/bn_dens1/batchnorm/mul/ReadVariableOp/^sequential_1/bn_dens2/batchnorm/ReadVariableOp1^sequential_1/bn_dens2/batchnorm/ReadVariableOp_11^sequential_1/bn_dens2/batchnorm/ReadVariableOp_23^sequential_1/bn_dens2/batchnorm/mul/ReadVariableOp/^sequential_1/bn_dens3/batchnorm/ReadVariableOp1^sequential_1/bn_dens3/batchnorm/ReadVariableOp_11^sequential_1/bn_dens3/batchnorm/ReadVariableOp_23^sequential_1/bn_dens3/batchnorm/mul/ReadVariableOp/^sequential_1/bn_dens4/batchnorm/ReadVariableOp1^sequential_1/bn_dens4/batchnorm/ReadVariableOp_11^sequential_1/bn_dens4/batchnorm/ReadVariableOp_23^sequential_1/bn_dens4/batchnorm/mul/ReadVariableOp*^sequential_1/dens1/BiasAdd/ReadVariableOp)^sequential_1/dens1/MatMul/ReadVariableOp*^sequential_1/dens2/BiasAdd/ReadVariableOp)^sequential_1/dens2/MatMul/ReadVariableOp*^sequential_1/dens3/BiasAdd/ReadVariableOp)^sequential_1/dens3/MatMul/ReadVariableOp*^sequential_1/final/BiasAdd/ReadVariableOp)^sequential_1/final/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : 2`
.sequential_1/bn_dens1/batchnorm/ReadVariableOp.sequential_1/bn_dens1/batchnorm/ReadVariableOp2d
0sequential_1/bn_dens1/batchnorm/ReadVariableOp_10sequential_1/bn_dens1/batchnorm/ReadVariableOp_12d
0sequential_1/bn_dens1/batchnorm/ReadVariableOp_20sequential_1/bn_dens1/batchnorm/ReadVariableOp_22h
2sequential_1/bn_dens1/batchnorm/mul/ReadVariableOp2sequential_1/bn_dens1/batchnorm/mul/ReadVariableOp2`
.sequential_1/bn_dens2/batchnorm/ReadVariableOp.sequential_1/bn_dens2/batchnorm/ReadVariableOp2d
0sequential_1/bn_dens2/batchnorm/ReadVariableOp_10sequential_1/bn_dens2/batchnorm/ReadVariableOp_12d
0sequential_1/bn_dens2/batchnorm/ReadVariableOp_20sequential_1/bn_dens2/batchnorm/ReadVariableOp_22h
2sequential_1/bn_dens2/batchnorm/mul/ReadVariableOp2sequential_1/bn_dens2/batchnorm/mul/ReadVariableOp2`
.sequential_1/bn_dens3/batchnorm/ReadVariableOp.sequential_1/bn_dens3/batchnorm/ReadVariableOp2d
0sequential_1/bn_dens3/batchnorm/ReadVariableOp_10sequential_1/bn_dens3/batchnorm/ReadVariableOp_12d
0sequential_1/bn_dens3/batchnorm/ReadVariableOp_20sequential_1/bn_dens3/batchnorm/ReadVariableOp_22h
2sequential_1/bn_dens3/batchnorm/mul/ReadVariableOp2sequential_1/bn_dens3/batchnorm/mul/ReadVariableOp2`
.sequential_1/bn_dens4/batchnorm/ReadVariableOp.sequential_1/bn_dens4/batchnorm/ReadVariableOp2d
0sequential_1/bn_dens4/batchnorm/ReadVariableOp_10sequential_1/bn_dens4/batchnorm/ReadVariableOp_12d
0sequential_1/bn_dens4/batchnorm/ReadVariableOp_20sequential_1/bn_dens4/batchnorm/ReadVariableOp_22h
2sequential_1/bn_dens4/batchnorm/mul/ReadVariableOp2sequential_1/bn_dens4/batchnorm/mul/ReadVariableOp2V
)sequential_1/dens1/BiasAdd/ReadVariableOp)sequential_1/dens1/BiasAdd/ReadVariableOp2T
(sequential_1/dens1/MatMul/ReadVariableOp(sequential_1/dens1/MatMul/ReadVariableOp2V
)sequential_1/dens2/BiasAdd/ReadVariableOp)sequential_1/dens2/BiasAdd/ReadVariableOp2T
(sequential_1/dens2/MatMul/ReadVariableOp(sequential_1/dens2/MatMul/ReadVariableOp2V
)sequential_1/dens3/BiasAdd/ReadVariableOp)sequential_1/dens3/BiasAdd/ReadVariableOp2T
(sequential_1/dens3/MatMul/ReadVariableOp(sequential_1/dens3/MatMul/ReadVariableOp2V
)sequential_1/final/BiasAdd/ReadVariableOp)sequential_1/final/BiasAdd/ReadVariableOp2T
(sequential_1/final/MatMul/ReadVariableOp(sequential_1/final/MatMul/ReadVariableOp:[ W
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
flat_input
*
á
D__inference_bn_dens3_layer_call_and_return_conditional_losses_292286

inputs6
'assignmovingavg_readvariableop_resource:	8
)assignmovingavg_1_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	0
!batchnorm_readvariableop_resource:	
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	2
moments/StopGradient¥
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices³
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay¥
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg/mul¿
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay«
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp¡
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:2
AssignMovingAvg_1/mulÉ
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¸
ç
$__inference_signature_wrapper_293146

flat_input
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
	unknown_3:	@
	unknown_4:@
	unknown_5:@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:	@

unknown_10:	

unknown_11:	

unknown_12:	

unknown_13:	

unknown_14:	

unknown_15:


unknown_16:	

unknown_17:	

unknown_18:	

unknown_19:	

unknown_20:	

unknown_21:	


unknown_22:

identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCall
flat_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*:
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_2918782
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
flat_input"ÌL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*¶
serving_default¢
I

flat_input;
serving_default_flat_input:0ÿÿÿÿÿÿÿÿÿ9
final0
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿ
tensorflow/serving/predict:ðÆ
R
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
layer_with_weights-6
layer-7
	layer_with_weights-7
	layer-8

	optimizer
regularization_losses
trainable_variables
	variables
	keras_api

signatures
²__call__
+³&call_and_return_all_conditional_losses
´_default_save_signature"ñM
_tf_keras_sequentialÒM{"name": "sequential_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "flat_input"}}, {"class_name": "Flatten", "config": {"name": "flat", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "BatchNormalization", "config": {"name": "bn_dens1", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dense", "config": {"name": "dens1", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "bn_dens2", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dense", "config": {"name": "dens2", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "bn_dens3", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dense", "config": {"name": "dens3", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "bn_dens4", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dense", "config": {"name": "final", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 1]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 28, 28, 1]}, "float32", "flat_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "flat_input"}}, {"class_name": "Flatten", "config": {"name": "flat", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "BatchNormalization", "config": {"name": "bn_dens1", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dense", "config": {"name": "dens1", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "bn_dens2", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dense", "config": {"name": "dens2", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "bn_dens3", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dense", "config": {"name": "dens3", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "bn_dens4", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dense", "config": {"name": "final", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": {"class_name": "SparseCategoricalCrossentropy", "config": {"reduction": "auto", "name": "sparse_categorical_crossentropy", "from_logits": false}}, "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
ß
regularization_losses
trainable_variables
	variables
	keras_api
µ__call__
+¶&call_and_return_all_conditional_losses"Î
_tf_keras_layer´{"name": "flat", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flat", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
	
axis
	gamma
beta
moving_mean
moving_variance
regularization_losses
trainable_variables
	variables
	keras_api
·__call__
+¸&call_and_return_all_conditional_losses"Æ
_tf_keras_layer¬{"name": "bn_dens1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "bn_dens1", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 784}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 784]}}
ð

kernel
bias
regularization_losses
 trainable_variables
!	variables
"	keras_api
¹__call__
+º&call_and_return_all_conditional_losses"É
_tf_keras_layer¯{"name": "dens1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dens1", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 784}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 784]}}
	
#axis
	$gamma
%beta
&moving_mean
'moving_variance
(regularization_losses
)trainable_variables
*	variables
+	keras_api
»__call__
+¼&call_and_return_all_conditional_losses"Ä
_tf_keras_layerª{"name": "bn_dens2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "bn_dens2", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
ï

,kernel
-bias
.regularization_losses
/trainable_variables
0	variables
1	keras_api
½__call__
+¾&call_and_return_all_conditional_losses"È
_tf_keras_layer®{"name": "dens2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dens2", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
	
2axis
	3gamma
4beta
5moving_mean
6moving_variance
7regularization_losses
8trainable_variables
9	variables
:	keras_api
¿__call__
+À&call_and_return_all_conditional_losses"Æ
_tf_keras_layer¬{"name": "bn_dens3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "bn_dens3", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
ñ

;kernel
<bias
=regularization_losses
>trainable_variables
?	variables
@	keras_api
Á__call__
+Â&call_and_return_all_conditional_losses"Ê
_tf_keras_layer°{"name": "dens3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dens3", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
	
Aaxis
	Bgamma
Cbeta
Dmoving_mean
Emoving_variance
Fregularization_losses
Gtrainable_variables
H	variables
I	keras_api
Ã__call__
+Ä&call_and_return_all_conditional_losses"Æ
_tf_keras_layer¬{"name": "bn_dens4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "bn_dens4", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
ó

Jkernel
Kbias
Lregularization_losses
Mtrainable_variables
N	variables
O	keras_api
Å__call__
+Æ&call_and_return_all_conditional_losses"Ì
_tf_keras_layer²{"name": "final", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "final", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}

Piter

Qbeta_1

Rbeta_2
	Sdecay
Tlearning_ratemmmm$m%m,m-m3m4m;m<mBmCmJm Km¡v¢v£v¤v¥$v¦%v§,v¨-v©3vª4v«;v¬<v­Bv®Cv¯Jv°Kv±"
	optimizer
 "
trackable_list_wrapper

0
1
2
3
$4
%5
,6
-7
38
49
;10
<11
B12
C13
J14
K15"
trackable_list_wrapper
Ö
0
1
2
3
4
5
$6
%7
&8
'9
,10
-11
312
413
514
615
;16
<17
B18
C19
D20
E21
J22
K23"
trackable_list_wrapper
Î
regularization_losses
trainable_variables
Ulayer_regularization_losses
Vlayer_metrics
Wnon_trainable_variables
Xmetrics

Ylayers
	variables
²__call__
´_default_save_signature
+³&call_and_return_all_conditional_losses
'³"call_and_return_conditional_losses"
_generic_user_object
-
Çserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
regularization_losses
trainable_variables
Zlayer_regularization_losses
[layer_metrics
\non_trainable_variables
]metrics

^layers
	variables
µ__call__
+¶&call_and_return_all_conditional_losses
'¶"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
:2bn_dens1/gamma
:2bn_dens1/beta
%:# (2bn_dens1/moving_mean
):' (2bn_dens1/moving_variance
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
°
regularization_losses
trainable_variables
_layer_regularization_losses
`layer_metrics
anon_trainable_variables
bmetrics

clayers
	variables
·__call__
+¸&call_and_return_all_conditional_losses
'¸"call_and_return_conditional_losses"
_generic_user_object
:	@2dens1/kernel
:@2
dens1/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
°
regularization_losses
 trainable_variables
dlayer_regularization_losses
elayer_metrics
fnon_trainable_variables
gmetrics

hlayers
!	variables
¹__call__
+º&call_and_return_all_conditional_losses
'º"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
:@2bn_dens2/gamma
:@2bn_dens2/beta
$:"@ (2bn_dens2/moving_mean
(:&@ (2bn_dens2/moving_variance
 "
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
<
$0
%1
&2
'3"
trackable_list_wrapper
°
(regularization_losses
)trainable_variables
ilayer_regularization_losses
jlayer_metrics
knon_trainable_variables
lmetrics

mlayers
*	variables
»__call__
+¼&call_and_return_all_conditional_losses
'¼"call_and_return_conditional_losses"
_generic_user_object
:	@2dens2/kernel
:2
dens2/bias
 "
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
°
.regularization_losses
/trainable_variables
nlayer_regularization_losses
olayer_metrics
pnon_trainable_variables
qmetrics

rlayers
0	variables
½__call__
+¾&call_and_return_all_conditional_losses
'¾"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
:2bn_dens3/gamma
:2bn_dens3/beta
%:# (2bn_dens3/moving_mean
):' (2bn_dens3/moving_variance
 "
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
<
30
41
52
63"
trackable_list_wrapper
°
7regularization_losses
8trainable_variables
slayer_regularization_losses
tlayer_metrics
unon_trainable_variables
vmetrics

wlayers
9	variables
¿__call__
+À&call_and_return_all_conditional_losses
'À"call_and_return_conditional_losses"
_generic_user_object
 :
2dens3/kernel
:2
dens3/bias
 "
trackable_list_wrapper
.
;0
<1"
trackable_list_wrapper
.
;0
<1"
trackable_list_wrapper
°
=regularization_losses
>trainable_variables
xlayer_regularization_losses
ylayer_metrics
znon_trainable_variables
{metrics

|layers
?	variables
Á__call__
+Â&call_and_return_all_conditional_losses
'Â"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
:2bn_dens4/gamma
:2bn_dens4/beta
%:# (2bn_dens4/moving_mean
):' (2bn_dens4/moving_variance
 "
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
<
B0
C1
D2
E3"
trackable_list_wrapper
²
Fregularization_losses
Gtrainable_variables
}layer_regularization_losses
~layer_metrics
non_trainable_variables
metrics
layers
H	variables
Ã__call__
+Ä&call_and_return_all_conditional_losses
'Ä"call_and_return_conditional_losses"
_generic_user_object
:	
2final/kernel
:
2
final/bias
 "
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
µ
Lregularization_losses
Mtrainable_variables
 layer_regularization_losses
layer_metrics
non_trainable_variables
metrics
layers
N	variables
Å__call__
+Æ&call_and_return_all_conditional_losses
'Æ"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
X
0
1
&2
'3
54
65
D6
E7"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
&0
'1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
50
61"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¿

total

count
	variables
	keras_api"
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}


total

count

_fn_kwargs
	variables
	keras_api"¿
_tf_keras_metric¤{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}}
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
": 2Adam/bn_dens1/gamma/m
!:2Adam/bn_dens1/beta/m
$:"	@2Adam/dens1/kernel/m
:@2Adam/dens1/bias/m
!:@2Adam/bn_dens2/gamma/m
 :@2Adam/bn_dens2/beta/m
$:"	@2Adam/dens2/kernel/m
:2Adam/dens2/bias/m
": 2Adam/bn_dens3/gamma/m
!:2Adam/bn_dens3/beta/m
%:#
2Adam/dens3/kernel/m
:2Adam/dens3/bias/m
": 2Adam/bn_dens4/gamma/m
!:2Adam/bn_dens4/beta/m
$:"	
2Adam/final/kernel/m
:
2Adam/final/bias/m
": 2Adam/bn_dens1/gamma/v
!:2Adam/bn_dens1/beta/v
$:"	@2Adam/dens1/kernel/v
:@2Adam/dens1/bias/v
!:@2Adam/bn_dens2/gamma/v
 :@2Adam/bn_dens2/beta/v
$:"	@2Adam/dens2/kernel/v
:2Adam/dens2/bias/v
": 2Adam/bn_dens3/gamma/v
!:2Adam/bn_dens3/beta/v
%:#
2Adam/dens3/kernel/v
:2Adam/dens3/bias/v
": 2Adam/bn_dens4/gamma/v
!:2Adam/bn_dens4/beta/v
$:"	
2Adam/final/kernel/v
:
2Adam/final/bias/v
2ÿ
-__inference_sequential_1_layer_call_fn_292697
-__inference_sequential_1_layer_call_fn_293199
-__inference_sequential_1_layer_call_fn_293252
-__inference_sequential_1_layer_call_fn_292963À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
î2ë
H__inference_sequential_1_layer_call_and_return_conditional_losses_293350
H__inference_sequential_1_layer_call_and_return_conditional_losses_293504
H__inference_sequential_1_layer_call_and_return_conditional_losses_293024
H__inference_sequential_1_layer_call_and_return_conditional_losses_293085À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ê2ç
!__inference__wrapped_model_291878Á
²
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *1¢.
,)

flat_inputÿÿÿÿÿÿÿÿÿ
Ï2Ì
%__inference_flat_layer_call_fn_293509¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ê2ç
@__inference_flat_layer_call_and_return_conditional_losses_293515¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
)__inference_bn_dens1_layer_call_fn_293528
)__inference_bn_dens1_layer_call_fn_293541´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Æ2Ã
D__inference_bn_dens1_layer_call_and_return_conditional_losses_293561
D__inference_bn_dens1_layer_call_and_return_conditional_losses_293595´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ð2Í
&__inference_dens1_layer_call_fn_293604¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ë2è
A__inference_dens1_layer_call_and_return_conditional_losses_293615¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
)__inference_bn_dens2_layer_call_fn_293628
)__inference_bn_dens2_layer_call_fn_293641´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Æ2Ã
D__inference_bn_dens2_layer_call_and_return_conditional_losses_293661
D__inference_bn_dens2_layer_call_and_return_conditional_losses_293695´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ð2Í
&__inference_dens2_layer_call_fn_293704¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ë2è
A__inference_dens2_layer_call_and_return_conditional_losses_293715¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
)__inference_bn_dens3_layer_call_fn_293728
)__inference_bn_dens3_layer_call_fn_293741´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Æ2Ã
D__inference_bn_dens3_layer_call_and_return_conditional_losses_293761
D__inference_bn_dens3_layer_call_and_return_conditional_losses_293795´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ð2Í
&__inference_dens3_layer_call_fn_293804¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ë2è
A__inference_dens3_layer_call_and_return_conditional_losses_293815¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
)__inference_bn_dens4_layer_call_fn_293828
)__inference_bn_dens4_layer_call_fn_293841´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Æ2Ã
D__inference_bn_dens4_layer_call_and_return_conditional_losses_293861
D__inference_bn_dens4_layer_call_and_return_conditional_losses_293895´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ð2Í
&__inference_final_layer_call_fn_293904¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ë2è
A__inference_final_layer_call_and_return_conditional_losses_293915¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÎBË
$__inference_signature_wrapper_293146
flat_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ¬
!__inference__wrapped_model_291878'$&%,-6354;<EBDCJK;¢8
1¢.
,)

flat_inputÿÿÿÿÿÿÿÿÿ
ª "-ª*
(
final
finalÿÿÿÿÿÿÿÿÿ
¬
D__inference_bn_dens1_layer_call_and_return_conditional_losses_293561d4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ¬
D__inference_bn_dens1_layer_call_and_return_conditional_losses_293595d4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
)__inference_bn_dens1_layer_call_fn_293528W4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ
)__inference_bn_dens1_layer_call_fn_293541W4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿª
D__inference_bn_dens2_layer_call_and_return_conditional_losses_293661b'$&%3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 ª
D__inference_bn_dens2_layer_call_and_return_conditional_losses_293695b&'$%3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 
)__inference_bn_dens2_layer_call_fn_293628U'$&%3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p 
ª "ÿÿÿÿÿÿÿÿÿ@
)__inference_bn_dens2_layer_call_fn_293641U&'$%3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p
ª "ÿÿÿÿÿÿÿÿÿ@¬
D__inference_bn_dens3_layer_call_and_return_conditional_losses_293761d63544¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ¬
D__inference_bn_dens3_layer_call_and_return_conditional_losses_293795d56344¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
)__inference_bn_dens3_layer_call_fn_293728W63544¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ
)__inference_bn_dens3_layer_call_fn_293741W56344¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ¬
D__inference_bn_dens4_layer_call_and_return_conditional_losses_293861dEBDC4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ¬
D__inference_bn_dens4_layer_call_and_return_conditional_losses_293895dDEBC4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
)__inference_bn_dens4_layer_call_fn_293828WEBDC4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ
)__inference_bn_dens4_layer_call_fn_293841WDEBC4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ¢
A__inference_dens1_layer_call_and_return_conditional_losses_293615]0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 z
&__inference_dens1_layer_call_fn_293604P0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ@¢
A__inference_dens2_layer_call_and_return_conditional_losses_293715],-/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 z
&__inference_dens2_layer_call_fn_293704P,-/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ£
A__inference_dens3_layer_call_and_return_conditional_losses_293815^;<0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 {
&__inference_dens3_layer_call_fn_293804Q;<0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¢
A__inference_final_layer_call_and_return_conditional_losses_293915]JK0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 z
&__inference_final_layer_call_fn_293904PJK0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ
¥
@__inference_flat_layer_call_and_return_conditional_losses_293515a7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 }
%__inference_flat_layer_call_fn_293509T7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿÓ
H__inference_sequential_1_layer_call_and_return_conditional_losses_293024'$&%,-6354;<EBDCJKC¢@
9¢6
,)

flat_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 Ó
H__inference_sequential_1_layer_call_and_return_conditional_losses_293085&'$%,-5634;<DEBCJKC¢@
9¢6
,)

flat_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 Ï
H__inference_sequential_1_layer_call_and_return_conditional_losses_293350'$&%,-6354;<EBDCJK?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 Ï
H__inference_sequential_1_layer_call_and_return_conditional_losses_293504&'$%,-5634;<DEBCJK?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 ª
-__inference_sequential_1_layer_call_fn_292697y'$&%,-6354;<EBDCJKC¢@
9¢6
,)

flat_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
ª
-__inference_sequential_1_layer_call_fn_292963y&'$%,-5634;<DEBCJKC¢@
9¢6
,)

flat_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
¦
-__inference_sequential_1_layer_call_fn_293199u'$&%,-6354;<EBDCJK?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
¦
-__inference_sequential_1_layer_call_fn_293252u&'$%,-5634;<DEBCJK?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
½
$__inference_signature_wrapper_293146'$&%,-6354;<EBDCJKI¢F
¢ 
?ª<
:

flat_input,)

flat_inputÿÿÿÿÿÿÿÿÿ"-ª*
(
final
finalÿÿÿÿÿÿÿÿÿ
