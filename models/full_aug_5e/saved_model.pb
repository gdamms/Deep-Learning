рд
МЁ
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
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
Ы
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

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
В
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
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
dtypetypeИ
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
Ѕ
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
executor_typestring И®
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
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68г§

В
conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_4/kernel
{
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*&
_output_shapes
: *
dtype0
r
conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_4/bias
k
!conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv2d_4/bias*
_output_shapes
: *
dtype0
В
conv2d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @* 
shared_nameconv2d_5/kernel
{
#conv2d_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_5/kernel*&
_output_shapes
: @*
dtype0
r
conv2d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_5/bias
k
!conv2d_5/bias/Read/ReadVariableOpReadVariableOpconv2d_5/bias*
_output_shapes
:@*
dtype0
Г
C2D_last/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А* 
shared_nameC2D_last/kernel
|
#C2D_last/kernel/Read/ReadVariableOpReadVariableOpC2D_last/kernel*'
_output_shapes
:@А*
dtype0
s
C2D_last/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameC2D_last/bias
l
!C2D_last/bias/Read/ReadVariableOpReadVariableOpC2D_last/bias*
_output_shapes	
:А*
dtype0
z
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
А(А*
shared_namedense_4/kernel
s
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel* 
_output_shapes
:
А(А*
dtype0
q
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namedense_4/bias
j
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes	
:А*
dtype0
y
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*
shared_namedense_5/kernel
r
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes
:	А*
dtype0
p
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_5/bias
i
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes
:*
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
Р
Adam/conv2d_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_4/kernel/m
Й
*Adam/conv2d_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_4/kernel/m*&
_output_shapes
: *
dtype0
А
Adam/conv2d_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d_4/bias/m
y
(Adam/conv2d_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_4/bias/m*
_output_shapes
: *
dtype0
Р
Adam/conv2d_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv2d_5/kernel/m
Й
*Adam/conv2d_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_5/kernel/m*&
_output_shapes
: @*
dtype0
А
Adam/conv2d_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_5/bias/m
y
(Adam/conv2d_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_5/bias/m*
_output_shapes
:@*
dtype0
С
Adam/C2D_last/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*'
shared_nameAdam/C2D_last/kernel/m
К
*Adam/C2D_last/kernel/m/Read/ReadVariableOpReadVariableOpAdam/C2D_last/kernel/m*'
_output_shapes
:@А*
dtype0
Б
Adam/C2D_last/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*%
shared_nameAdam/C2D_last/bias/m
z
(Adam/C2D_last/bias/m/Read/ReadVariableOpReadVariableOpAdam/C2D_last/bias/m*
_output_shapes	
:А*
dtype0
И
Adam/dense_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
А(А*&
shared_nameAdam/dense_4/kernel/m
Б
)Adam/dense_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/m* 
_output_shapes
:
А(А*
dtype0

Adam/dense_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*$
shared_nameAdam/dense_4/bias/m
x
'Adam/dense_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/m*
_output_shapes	
:А*
dtype0
З
Adam/dense_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*&
shared_nameAdam/dense_5/kernel/m
А
)Adam/dense_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/m*
_output_shapes
:	А*
dtype0
~
Adam/dense_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_5/bias/m
w
'Adam/dense_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/m*
_output_shapes
:*
dtype0
Р
Adam/conv2d_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_4/kernel/v
Й
*Adam/conv2d_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_4/kernel/v*&
_output_shapes
: *
dtype0
А
Adam/conv2d_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d_4/bias/v
y
(Adam/conv2d_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_4/bias/v*
_output_shapes
: *
dtype0
Р
Adam/conv2d_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv2d_5/kernel/v
Й
*Adam/conv2d_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_5/kernel/v*&
_output_shapes
: @*
dtype0
А
Adam/conv2d_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_5/bias/v
y
(Adam/conv2d_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_5/bias/v*
_output_shapes
:@*
dtype0
С
Adam/C2D_last/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*'
shared_nameAdam/C2D_last/kernel/v
К
*Adam/C2D_last/kernel/v/Read/ReadVariableOpReadVariableOpAdam/C2D_last/kernel/v*'
_output_shapes
:@А*
dtype0
Б
Adam/C2D_last/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*%
shared_nameAdam/C2D_last/bias/v
z
(Adam/C2D_last/bias/v/Read/ReadVariableOpReadVariableOpAdam/C2D_last/bias/v*
_output_shapes	
:А*
dtype0
И
Adam/dense_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
А(А*&
shared_nameAdam/dense_4/kernel/v
Б
)Adam/dense_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/v* 
_output_shapes
:
А(А*
dtype0

Adam/dense_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*$
shared_nameAdam/dense_4/bias/v
x
'Adam/dense_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/v*
_output_shapes	
:А*
dtype0
З
Adam/dense_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*&
shared_nameAdam/dense_5/kernel/v
А
)Adam/dense_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/v*
_output_shapes
:	А*
dtype0
~
Adam/dense_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_5/bias/v
w
'Adam/dense_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
ЦR
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*—Q
value«QBƒQ BљQ
√
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer-6
layer_with_weights-3
layer-7
	layer_with_weights-4
	layer-8

	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
¶

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
О
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses* 
¶

!kernel
"bias
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses*
О
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses* 
¶

/kernel
0bias
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses*
О
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses* 
О
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses* 
¶

Ckernel
Dbias
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses*
¶

Kkernel
Lbias
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses*
М
Siter

Tbeta_1

Ubeta_2
	Vdecay
Wlearning_ratemЪmЫ!mЬ"mЭ/mЮ0mЯCm†Dm°KmҐLm£v§v•!v¶"vІ/v®0v©Cv™DvЂKvђLv≠*
J
0
1
!2
"3
/4
05
C6
D7
K8
L9*
J
0
1
!2
"3
/4
05
C6
D7
K8
L9*

X0
Y1
Z2
[3* 
∞
\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

aserving_default* 
_Y
VARIABLE_VALUEconv2d_4/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_4/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
	
X0* 
У
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
С
gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses* 
* 
* 
_Y
VARIABLE_VALUEconv2d_5/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_5/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

!0
"1*

!0
"1*
	
Y0* 
У
lnon_trainable_variables

mlayers
nmetrics
olayer_regularization_losses
player_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses*
* 
* 
* 
* 
* 
С
qnon_trainable_variables

rlayers
smetrics
tlayer_regularization_losses
ulayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses* 
* 
* 
_Y
VARIABLE_VALUEC2D_last/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEC2D_last/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

/0
01*

/0
01*
	
Z0* 
У
vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
С
{non_trainable_variables

|layers
}metrics
~layer_regularization_losses
layer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
Ц
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses* 
* 
* 
^X
VARIABLE_VALUEdense_4/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_4/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

C0
D1*

C0
D1*
	
[0* 
Ш
Еnon_trainable_variables
Жlayers
Зmetrics
 Иlayer_regularization_losses
Йlayer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses*
* 
* 
^X
VARIABLE_VALUEdense_5/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_5/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

K0
L1*

K0
L1*
* 
Ш
Кnon_trainable_variables
Лlayers
Мmetrics
 Нlayer_regularization_losses
Оlayer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
C
0
1
2
3
4
5
6
7
	8*

П0
Р1*
* 
* 
* 
* 
* 
* 
	
X0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
	
Y0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
	
Z0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
	
[0* 
* 
* 
* 
* 
* 
* 
<

Сtotal

Тcount
У	variables
Ф	keras_api*
M

Хtotal

Цcount
Ч
_fn_kwargs
Ш	variables
Щ	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

С0
Т1*

У	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

Х0
Ц1*

Ш	variables*
В|
VARIABLE_VALUEAdam/conv2d_4/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_4/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/conv2d_5/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_5/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/C2D_last/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/C2D_last/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUEAdam/dense_4/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_4/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUEAdam/dense_5/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_5/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/conv2d_4/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_4/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/conv2d_5/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_5/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/C2D_last/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/C2D_last/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUEAdam/dense_4/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_4/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUEAdam/dense_5/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_5/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
К
serving_default_input_3Placeholder*/
_output_shapes
:€€€€€€€€€2d*
dtype0*$
shape:€€€€€€€€€2d
е
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_3conv2d_4/kernelconv2d_4/biasconv2d_5/kernelconv2d_5/biasC2D_last/kernelC2D_last/biasdense_4/kerneldense_4/biasdense_5/kerneldense_5/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *-
f(R&
$__inference_signature_wrapper_132725
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ц
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv2d_4/kernel/Read/ReadVariableOp!conv2d_4/bias/Read/ReadVariableOp#conv2d_5/kernel/Read/ReadVariableOp!conv2d_5/bias/Read/ReadVariableOp#C2D_last/kernel/Read/ReadVariableOp!C2D_last/bias/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOp"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/conv2d_4/kernel/m/Read/ReadVariableOp(Adam/conv2d_4/bias/m/Read/ReadVariableOp*Adam/conv2d_5/kernel/m/Read/ReadVariableOp(Adam/conv2d_5/bias/m/Read/ReadVariableOp*Adam/C2D_last/kernel/m/Read/ReadVariableOp(Adam/C2D_last/bias/m/Read/ReadVariableOp)Adam/dense_4/kernel/m/Read/ReadVariableOp'Adam/dense_4/bias/m/Read/ReadVariableOp)Adam/dense_5/kernel/m/Read/ReadVariableOp'Adam/dense_5/bias/m/Read/ReadVariableOp*Adam/conv2d_4/kernel/v/Read/ReadVariableOp(Adam/conv2d_4/bias/v/Read/ReadVariableOp*Adam/conv2d_5/kernel/v/Read/ReadVariableOp(Adam/conv2d_5/bias/v/Read/ReadVariableOp*Adam/C2D_last/kernel/v/Read/ReadVariableOp(Adam/C2D_last/bias/v/Read/ReadVariableOp)Adam/dense_4/kernel/v/Read/ReadVariableOp'Adam/dense_4/bias/v/Read/ReadVariableOp)Adam/dense_5/kernel/v/Read/ReadVariableOp'Adam/dense_5/bias/v/Read/ReadVariableOpConst*4
Tin-
+2)	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *(
f#R!
__inference__traced_save_133098
Е
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_4/kernelconv2d_4/biasconv2d_5/kernelconv2d_5/biasC2D_last/kernelC2D_last/biasdense_4/kerneldense_4/biasdense_5/kerneldense_5/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_4/kernel/mAdam/conv2d_4/bias/mAdam/conv2d_5/kernel/mAdam/conv2d_5/bias/mAdam/C2D_last/kernel/mAdam/C2D_last/bias/mAdam/dense_4/kernel/mAdam/dense_4/bias/mAdam/dense_5/kernel/mAdam/dense_5/bias/mAdam/conv2d_4/kernel/vAdam/conv2d_4/bias/vAdam/conv2d_5/kernel/vAdam/conv2d_5/bias/vAdam/C2D_last/kernel/vAdam/C2D_last/bias/vAdam/dense_4/kernel/vAdam/dense_4/bias/vAdam/dense_5/kernel/vAdam/dense_5/bias/v*3
Tin,
*2(*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *+
f&R$
"__inference__traced_restore_133225Тм
ќ

С
-__inference_sequential_2_layer_call_fn_132180
input_3!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А
	unknown_5:
А(А
	unknown_6:	А
	unknown_7:	А
	unknown_8:
identityИҐStatefulPartitionedCall…
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_132157o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:€€€€€€€€€2d: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:€€€€€€€€€2d
!
_user_specified_name	input_3
ї
L
0__inference_max_pooling2d_7_layer_call_fn_132804

inputs
identity№
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_131990Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
КU
ќ	
H__inference_sequential_2_layer_call_and_return_conditional_losses_132630

inputsA
'conv2d_4_conv2d_readvariableop_resource: 6
(conv2d_4_biasadd_readvariableop_resource: A
'conv2d_5_conv2d_readvariableop_resource: @6
(conv2d_5_biasadd_readvariableop_resource:@B
'c2d_last_conv2d_readvariableop_resource:@А7
(c2d_last_biasadd_readvariableop_resource:	А:
&dense_4_matmul_readvariableop_resource:
А(А6
'dense_4_biasadd_readvariableop_resource:	А9
&dense_5_matmul_readvariableop_resource:	А5
'dense_5_biasadd_readvariableop_resource:
identityИҐC2D_last/BiasAdd/ReadVariableOpҐC2D_last/Conv2D/ReadVariableOpҐ.C2D_last/kernel/Regularizer/Abs/ReadVariableOpҐconv2d_4/BiasAdd/ReadVariableOpҐconv2d_4/Conv2D/ReadVariableOpҐ.conv2d_4/kernel/Regularizer/Abs/ReadVariableOpҐconv2d_5/BiasAdd/ReadVariableOpҐconv2d_5/Conv2D/ReadVariableOpҐ.conv2d_5/kernel/Regularizer/Abs/ReadVariableOpҐdense_4/BiasAdd/ReadVariableOpҐdense_4/MatMul/ReadVariableOpҐ-dense_4/kernel/Regularizer/Abs/ReadVariableOpҐdense_5/BiasAdd/ReadVariableOpҐdense_5/MatMul/ReadVariableOpО
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ђ
conv2d_4/Conv2DConv2Dinputs&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€0b *
paddingVALID*
strides
Д
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ш
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€0b j
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€0b ђ
max_pooling2d_6/MaxPoolMaxPoolconv2d_4/Relu:activations:0*/
_output_shapes
:€€€€€€€€€1 *
ksize
*
paddingVALID*
strides
О
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0∆
conv2d_5/Conv2DConv2D max_pooling2d_6/MaxPool:output:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€/@*
paddingVALID*
strides
Д
conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ш
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€/@j
conv2d_5/ReluReluconv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€/@ђ
max_pooling2d_7/MaxPoolMaxPoolconv2d_5/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
П
C2D_last/Conv2D/ReadVariableOpReadVariableOp'c2d_last_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0«
C2D_last/Conv2DConv2D max_pooling2d_7/MaxPool:output:0&C2D_last/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€	А*
paddingVALID*
strides
Е
C2D_last/BiasAdd/ReadVariableOpReadVariableOp(c2d_last_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Щ
C2D_last/BiasAddBiasAddC2D_last/Conv2D:output:0'C2D_last/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€	Аk
C2D_last/ReluReluC2D_last/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€	А≠
max_pooling2d_8/MaxPoolMaxPoolC2D_last/Relu:activations:0*0
_output_shapes
:€€€€€€€€€
А*
ksize
*
paddingVALID*
strides
`
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Л
flatten_2/ReshapeReshape max_pooling2d_8/MaxPool:output:0flatten_2/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А(Ж
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource* 
_output_shapes
:
А(А*
dtype0О
dense_4/MatMulMatMulflatten_2/Reshape:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АГ
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0П
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аa
dense_4/ReluReludense_4/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€АЕ
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Н
dense_5/MatMulMatMuldense_4/Relu:activations:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€В
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€f
dense_5/SoftmaxSoftmaxdense_5/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ю
.conv2d_4/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0П
conv2d_4/kernel/Regularizer/AbsAbs6conv2d_4/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: z
!conv2d_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             Ш
conv2d_4/kernel/Regularizer/SumSum#conv2d_4/kernel/Regularizer/Abs:y:0*conv2d_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
„£<Э
conv2d_4/kernel/Regularizer/mulMul*conv2d_4/kernel/Regularizer/mul/x:output:0(conv2d_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Ю
.conv2d_5/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0П
conv2d_5/kernel/Regularizer/AbsAbs6conv2d_5/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: @z
!conv2d_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             Ш
conv2d_5/kernel/Regularizer/SumSum#conv2d_5/kernel/Regularizer/Abs:y:0*conv2d_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
„£<Э
conv2d_5/kernel/Regularizer/mulMul*conv2d_5/kernel/Regularizer/mul/x:output:0(conv2d_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Я
.C2D_last/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp'c2d_last_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Р
C2D_last/kernel/Regularizer/AbsAbs6C2D_last/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*'
_output_shapes
:@Аz
!C2D_last/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             Ш
C2D_last/kernel/Regularizer/SumSum#C2D_last/kernel/Regularizer/Abs:y:0*C2D_last/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!C2D_last/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
„£<Э
C2D_last/kernel/Regularizer/mulMul*C2D_last/kernel/Regularizer/mul/x:output:0(C2D_last/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Ц
-dense_4/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource* 
_output_shapes
:
А(А*
dtype0З
dense_4/kernel/Regularizer/AbsAbs5dense_4/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
А(Аq
 dense_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Х
dense_4/kernel/Regularizer/SumSum"dense_4/kernel/Regularizer/Abs:y:0)dense_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 dense_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
„£<Ъ
dense_4/kernel/Regularizer/mulMul)dense_4/kernel/Regularizer/mul/x:output:0'dense_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: h
IdentityIdentitydense_5/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€‘
NoOpNoOp ^C2D_last/BiasAdd/ReadVariableOp^C2D_last/Conv2D/ReadVariableOp/^C2D_last/kernel/Regularizer/Abs/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp/^conv2d_4/kernel/Regularizer/Abs/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp/^conv2d_5/kernel/Regularizer/Abs/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp.^dense_4/kernel/Regularizer/Abs/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:€€€€€€€€€2d: : : : : : : : : : 2B
C2D_last/BiasAdd/ReadVariableOpC2D_last/BiasAdd/ReadVariableOp2@
C2D_last/Conv2D/ReadVariableOpC2D_last/Conv2D/ReadVariableOp2`
.C2D_last/kernel/Regularizer/Abs/ReadVariableOp.C2D_last/kernel/Regularizer/Abs/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2`
.conv2d_4/kernel/Regularizer/Abs/ReadVariableOp.conv2d_4/kernel/Regularizer/Abs/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2`
.conv2d_5/kernel/Regularizer/Abs/ReadVariableOp.conv2d_5/kernel/Regularizer/Abs/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2^
-dense_4/kernel/Regularizer/Abs/ReadVariableOp-dense_4/kernel/Regularizer/Abs/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€2d
 
_user_specified_nameinputs
 
Ш
(__inference_dense_4_layer_call_fn_132877

inputs
unknown:
А(А
	unknown_0:	А
identityИҐStatefulPartitionedCall№
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_132109p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А(: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А(
 
_user_specified_nameinputs
К
Ђ
__inference_loss_fn_3_132958J
6dense_4_kernel_regularizer_abs_readvariableop_resource:
А(А
identityИҐ-dense_4/kernel/Regularizer/Abs/ReadVariableOp¶
-dense_4/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp6dense_4_kernel_regularizer_abs_readvariableop_resource* 
_output_shapes
:
А(А*
dtype0З
dense_4/kernel/Regularizer/AbsAbs5dense_4/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
А(Аq
 dense_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Х
dense_4/kernel/Regularizer/SumSum"dense_4/kernel/Regularizer/Abs:y:0)dense_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 dense_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
„£<Ъ
dense_4/kernel/Regularizer/mulMul)dense_4/kernel/Regularizer/mul/x:output:0'dense_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: `
IdentityIdentity"dense_4/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: v
NoOpNoOp.^dense_4/kernel/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2^
-dense_4/kernel/Regularizer/Abs/ReadVariableOp-dense_4/kernel/Regularizer/Abs/ReadVariableOp
ЙЬ
р
"__inference__traced_restore_133225
file_prefix:
 assignvariableop_conv2d_4_kernel: .
 assignvariableop_1_conv2d_4_bias: <
"assignvariableop_2_conv2d_5_kernel: @.
 assignvariableop_3_conv2d_5_bias:@=
"assignvariableop_4_c2d_last_kernel:@А/
 assignvariableop_5_c2d_last_bias:	А5
!assignvariableop_6_dense_4_kernel:
А(А.
assignvariableop_7_dense_4_bias:	А4
!assignvariableop_8_dense_5_kernel:	А-
assignvariableop_9_dense_5_bias:'
assignvariableop_10_adam_iter:	 )
assignvariableop_11_adam_beta_1: )
assignvariableop_12_adam_beta_2: (
assignvariableop_13_adam_decay: 0
&assignvariableop_14_adam_learning_rate: #
assignvariableop_15_total: #
assignvariableop_16_count: %
assignvariableop_17_total_1: %
assignvariableop_18_count_1: D
*assignvariableop_19_adam_conv2d_4_kernel_m: 6
(assignvariableop_20_adam_conv2d_4_bias_m: D
*assignvariableop_21_adam_conv2d_5_kernel_m: @6
(assignvariableop_22_adam_conv2d_5_bias_m:@E
*assignvariableop_23_adam_c2d_last_kernel_m:@А7
(assignvariableop_24_adam_c2d_last_bias_m:	А=
)assignvariableop_25_adam_dense_4_kernel_m:
А(А6
'assignvariableop_26_adam_dense_4_bias_m:	А<
)assignvariableop_27_adam_dense_5_kernel_m:	А5
'assignvariableop_28_adam_dense_5_bias_m:D
*assignvariableop_29_adam_conv2d_4_kernel_v: 6
(assignvariableop_30_adam_conv2d_4_bias_v: D
*assignvariableop_31_adam_conv2d_5_kernel_v: @6
(assignvariableop_32_adam_conv2d_5_bias_v:@E
*assignvariableop_33_adam_c2d_last_kernel_v:@А7
(assignvariableop_34_adam_c2d_last_bias_v:	А=
)assignvariableop_35_adam_dense_4_kernel_v:
А(А6
'assignvariableop_36_adam_dense_4_bias_v:	А<
)assignvariableop_37_adam_dense_5_kernel_v:	А5
'assignvariableop_38_adam_dense_5_bias_v:
identity_40ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_35ҐAssignVariableOp_36ҐAssignVariableOp_37ҐAssignVariableOp_38ҐAssignVariableOp_4ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9м
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*Т
valueИBЕ(B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHј
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B й
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ґ
_output_shapes£
†::::::::::::::::::::::::::::::::::::::::*6
dtypes,
*2(	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:Л
AssignVariableOpAssignVariableOp assignvariableop_conv2d_4_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv2d_4_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_5_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_5_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_4AssignVariableOp"assignvariableop_4_c2d_last_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_5AssignVariableOp assignvariableop_5_c2d_last_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_4_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_4_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_5_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_5_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:О
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_14AssignVariableOp&assignvariableop_14_adam_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_17AssignVariableOpassignvariableop_17_total_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_18AssignVariableOpassignvariableop_18_count_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_19AssignVariableOp*assignvariableop_19_adam_conv2d_4_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_20AssignVariableOp(assignvariableop_20_adam_conv2d_4_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_conv2d_5_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_conv2d_5_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_c2d_last_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_c2d_last_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_25AssignVariableOp)assignvariableop_25_adam_dense_4_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_26AssignVariableOp'assignvariableop_26_adam_dense_4_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_27AssignVariableOp)assignvariableop_27_adam_dense_5_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_28AssignVariableOp'assignvariableop_28_adam_dense_5_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_conv2d_4_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_conv2d_4_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_conv2d_5_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_conv2d_5_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_c2d_last_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_c2d_last_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_35AssignVariableOp)assignvariableop_35_adam_dense_4_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_36AssignVariableOp'assignvariableop_36_adam_dense_4_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_dense_5_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_38AssignVariableOp'assignvariableop_38_adam_dense_5_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ©
Identity_39Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_40IdentityIdentity_39:output:0^NoOp_1*
T0*
_output_shapes
: Ц
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_40Identity_40:output:0*c
_input_shapesR
P: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_38AssignVariableOp_382(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ґ
≥
__inference_loss_fn_1_132936Q
7conv2d_5_kernel_regularizer_abs_readvariableop_resource: @
identityИҐ.conv2d_5/kernel/Regularizer/Abs/ReadVariableOpЃ
.conv2d_5/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp7conv2d_5_kernel_regularizer_abs_readvariableop_resource*&
_output_shapes
: @*
dtype0П
conv2d_5/kernel/Regularizer/AbsAbs6conv2d_5/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: @z
!conv2d_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             Ш
conv2d_5/kernel/Regularizer/SumSum#conv2d_5/kernel/Regularizer/Abs:y:0*conv2d_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
„£<Э
conv2d_5/kernel/Regularizer/mulMul*conv2d_5/kernel/Regularizer/mul/x:output:0(conv2d_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentity#conv2d_5/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: w
NoOpNoOp/^conv2d_5/kernel/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2`
.conv2d_5/kernel/Regularizer/Abs/ReadVariableOp.conv2d_5/kernel/Regularizer/Abs/ReadVariableOp
£

х
C__inference_dense_5_layer_call_and_return_conditional_losses_132126

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
…
a
E__inference_flatten_2_layer_call_and_return_conditional_losses_132090

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€А(Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А("
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€
А:X T
0
_output_shapes
:€€€€€€€€€
А
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_132002

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_131990

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
≠G
Љ
H__inference_sequential_2_layer_call_and_return_conditional_losses_132482
input_3)
conv2d_4_132428: 
conv2d_4_132430: )
conv2d_5_132434: @
conv2d_5_132436:@*
c2d_last_132440:@А
c2d_last_132442:	А"
dense_4_132447:
А(А
dense_4_132449:	А!
dense_5_132452:	А
dense_5_132454:
identityИҐ C2D_last/StatefulPartitionedCallҐ.C2D_last/kernel/Regularizer/Abs/ReadVariableOpҐ conv2d_4/StatefulPartitionedCallҐ.conv2d_4/kernel/Regularizer/Abs/ReadVariableOpҐ conv2d_5/StatefulPartitionedCallҐ.conv2d_5/kernel/Regularizer/Abs/ReadVariableOpҐdense_4/StatefulPartitionedCallҐ-dense_4/kernel/Regularizer/Abs/ReadVariableOpҐdense_5/StatefulPartitionedCallь
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCallinput_3conv2d_4_132428conv2d_4_132430*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€0b *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_132029ф
max_pooling2d_6/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€1 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_131978Э
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_6/PartitionedCall:output:0conv2d_5_132434conv2d_5_132436*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€/@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_132053ф
max_pooling2d_7/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_131990Ю
 C2D_last/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_7/PartitionedCall:output:0c2d_last_132440c2d_last_132442*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€	А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_C2D_last_layer_call_and_return_conditional_losses_132077х
max_pooling2d_8/PartitionedCallPartitionedCall)C2D_last/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€
А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_132002а
flatten_2/PartitionedCallPartitionedCall(max_pooling2d_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А(* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_132090М
dense_4/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_4_132447dense_4_132449*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_132109С
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_132452dense_5_132454*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_132126Ж
.conv2d_4/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_4_132428*&
_output_shapes
: *
dtype0П
conv2d_4/kernel/Regularizer/AbsAbs6conv2d_4/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: z
!conv2d_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             Ш
conv2d_4/kernel/Regularizer/SumSum#conv2d_4/kernel/Regularizer/Abs:y:0*conv2d_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
„£<Э
conv2d_4/kernel/Regularizer/mulMul*conv2d_4/kernel/Regularizer/mul/x:output:0(conv2d_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Ж
.conv2d_5/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_5_132434*&
_output_shapes
: @*
dtype0П
conv2d_5/kernel/Regularizer/AbsAbs6conv2d_5/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: @z
!conv2d_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             Ш
conv2d_5/kernel/Regularizer/SumSum#conv2d_5/kernel/Regularizer/Abs:y:0*conv2d_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
„£<Э
conv2d_5/kernel/Regularizer/mulMul*conv2d_5/kernel/Regularizer/mul/x:output:0(conv2d_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: З
.C2D_last/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpc2d_last_132440*'
_output_shapes
:@А*
dtype0Р
C2D_last/kernel/Regularizer/AbsAbs6C2D_last/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*'
_output_shapes
:@Аz
!C2D_last/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             Ш
C2D_last/kernel/Regularizer/SumSum#C2D_last/kernel/Regularizer/Abs:y:0*C2D_last/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!C2D_last/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
„£<Э
C2D_last/kernel/Regularizer/mulMul*C2D_last/kernel/Regularizer/mul/x:output:0(C2D_last/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ~
-dense_4/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_4_132447* 
_output_shapes
:
А(А*
dtype0З
dense_4/kernel/Regularizer/AbsAbs5dense_4/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
А(Аq
 dense_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Х
dense_4/kernel/Regularizer/SumSum"dense_4/kernel/Regularizer/Abs:y:0)dense_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 dense_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
„£<Ъ
dense_4/kernel/Regularizer/mulMul)dense_4/kernel/Regularizer/mul/x:output:0'dense_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ґ
NoOpNoOp!^C2D_last/StatefulPartitionedCall/^C2D_last/kernel/Regularizer/Abs/ReadVariableOp!^conv2d_4/StatefulPartitionedCall/^conv2d_4/kernel/Regularizer/Abs/ReadVariableOp!^conv2d_5/StatefulPartitionedCall/^conv2d_5/kernel/Regularizer/Abs/ReadVariableOp ^dense_4/StatefulPartitionedCall.^dense_4/kernel/Regularizer/Abs/ReadVariableOp ^dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:€€€€€€€€€2d: : : : : : : : : : 2D
 C2D_last/StatefulPartitionedCall C2D_last/StatefulPartitionedCall2`
.C2D_last/kernel/Regularizer/Abs/ReadVariableOp.C2D_last/kernel/Regularizer/Abs/ReadVariableOp2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2`
.conv2d_4/kernel/Regularizer/Abs/ReadVariableOp.conv2d_4/kernel/Regularizer/Abs/ReadVariableOp2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2`
.conv2d_5/kernel/Regularizer/Abs/ReadVariableOp.conv2d_5/kernel/Regularizer/Abs/ReadVariableOp2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2^
-dense_4/kernel/Regularizer/Abs/ReadVariableOp-dense_4/kernel/Regularizer/Abs/ReadVariableOp2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:X T
/
_output_shapes
:€€€€€€€€€2d
!
_user_specified_name	input_3
Т
Ѓ
D__inference_conv2d_4_layer_call_and_return_conditional_losses_132757

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpҐ.conv2d_4/kernel/Regularizer/Abs/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€0b *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€0b X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€0b Х
.conv2d_4/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0П
conv2d_4/kernel/Regularizer/AbsAbs6conv2d_4/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: z
!conv2d_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             Ш
conv2d_4/kernel/Regularizer/SumSum#conv2d_4/kernel/Regularizer/Abs:y:0*conv2d_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
„£<Э
conv2d_4/kernel/Regularizer/mulMul*conv2d_4/kernel/Regularizer/mul/x:output:0(conv2d_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€0b ®
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp/^conv2d_4/kernel/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€2d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2`
.conv2d_4/kernel/Regularizer/Abs/ReadVariableOp.conv2d_4/kernel/Regularizer/Abs/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€2d
 
_user_specified_nameinputs
ќ

С
-__inference_sequential_2_layer_call_fn_132368
input_3!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А
	unknown_5:
А(А
	unknown_6:	А
	unknown_7:	А
	unknown_8:
identityИҐStatefulPartitionedCall…
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_132320o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:€€€€€€€€€2d: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:€€€€€€€€€2d
!
_user_specified_name	input_3
Ю

И
$__inference_signature_wrapper_132725
input_3!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А
	unknown_5:
А(А
	unknown_6:	А
	unknown_7:	А
	unknown_8:
identityИҐStatefulPartitionedCallҐ
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В **
f%R#
!__inference__wrapped_model_131969o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:€€€€€€€€€2d: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:€€€€€€€€€2d
!
_user_specified_name	input_3
КU
ќ	
H__inference_sequential_2_layer_call_and_return_conditional_losses_132698

inputsA
'conv2d_4_conv2d_readvariableop_resource: 6
(conv2d_4_biasadd_readvariableop_resource: A
'conv2d_5_conv2d_readvariableop_resource: @6
(conv2d_5_biasadd_readvariableop_resource:@B
'c2d_last_conv2d_readvariableop_resource:@А7
(c2d_last_biasadd_readvariableop_resource:	А:
&dense_4_matmul_readvariableop_resource:
А(А6
'dense_4_biasadd_readvariableop_resource:	А9
&dense_5_matmul_readvariableop_resource:	А5
'dense_5_biasadd_readvariableop_resource:
identityИҐC2D_last/BiasAdd/ReadVariableOpҐC2D_last/Conv2D/ReadVariableOpҐ.C2D_last/kernel/Regularizer/Abs/ReadVariableOpҐconv2d_4/BiasAdd/ReadVariableOpҐconv2d_4/Conv2D/ReadVariableOpҐ.conv2d_4/kernel/Regularizer/Abs/ReadVariableOpҐconv2d_5/BiasAdd/ReadVariableOpҐconv2d_5/Conv2D/ReadVariableOpҐ.conv2d_5/kernel/Regularizer/Abs/ReadVariableOpҐdense_4/BiasAdd/ReadVariableOpҐdense_4/MatMul/ReadVariableOpҐ-dense_4/kernel/Regularizer/Abs/ReadVariableOpҐdense_5/BiasAdd/ReadVariableOpҐdense_5/MatMul/ReadVariableOpО
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ђ
conv2d_4/Conv2DConv2Dinputs&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€0b *
paddingVALID*
strides
Д
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ш
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€0b j
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€0b ђ
max_pooling2d_6/MaxPoolMaxPoolconv2d_4/Relu:activations:0*/
_output_shapes
:€€€€€€€€€1 *
ksize
*
paddingVALID*
strides
О
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0∆
conv2d_5/Conv2DConv2D max_pooling2d_6/MaxPool:output:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€/@*
paddingVALID*
strides
Д
conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ш
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€/@j
conv2d_5/ReluReluconv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€/@ђ
max_pooling2d_7/MaxPoolMaxPoolconv2d_5/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
П
C2D_last/Conv2D/ReadVariableOpReadVariableOp'c2d_last_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0«
C2D_last/Conv2DConv2D max_pooling2d_7/MaxPool:output:0&C2D_last/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€	А*
paddingVALID*
strides
Е
C2D_last/BiasAdd/ReadVariableOpReadVariableOp(c2d_last_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Щ
C2D_last/BiasAddBiasAddC2D_last/Conv2D:output:0'C2D_last/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€	Аk
C2D_last/ReluReluC2D_last/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€	А≠
max_pooling2d_8/MaxPoolMaxPoolC2D_last/Relu:activations:0*0
_output_shapes
:€€€€€€€€€
А*
ksize
*
paddingVALID*
strides
`
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Л
flatten_2/ReshapeReshape max_pooling2d_8/MaxPool:output:0flatten_2/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А(Ж
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource* 
_output_shapes
:
А(А*
dtype0О
dense_4/MatMulMatMulflatten_2/Reshape:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АГ
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0П
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аa
dense_4/ReluReludense_4/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€АЕ
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Н
dense_5/MatMulMatMuldense_4/Relu:activations:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€В
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€f
dense_5/SoftmaxSoftmaxdense_5/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ю
.conv2d_4/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0П
conv2d_4/kernel/Regularizer/AbsAbs6conv2d_4/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: z
!conv2d_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             Ш
conv2d_4/kernel/Regularizer/SumSum#conv2d_4/kernel/Regularizer/Abs:y:0*conv2d_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
„£<Э
conv2d_4/kernel/Regularizer/mulMul*conv2d_4/kernel/Regularizer/mul/x:output:0(conv2d_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Ю
.conv2d_5/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0П
conv2d_5/kernel/Regularizer/AbsAbs6conv2d_5/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: @z
!conv2d_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             Ш
conv2d_5/kernel/Regularizer/SumSum#conv2d_5/kernel/Regularizer/Abs:y:0*conv2d_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
„£<Э
conv2d_5/kernel/Regularizer/mulMul*conv2d_5/kernel/Regularizer/mul/x:output:0(conv2d_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Я
.C2D_last/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp'c2d_last_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Р
C2D_last/kernel/Regularizer/AbsAbs6C2D_last/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*'
_output_shapes
:@Аz
!C2D_last/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             Ш
C2D_last/kernel/Regularizer/SumSum#C2D_last/kernel/Regularizer/Abs:y:0*C2D_last/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!C2D_last/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
„£<Э
C2D_last/kernel/Regularizer/mulMul*C2D_last/kernel/Regularizer/mul/x:output:0(C2D_last/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Ц
-dense_4/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource* 
_output_shapes
:
А(А*
dtype0З
dense_4/kernel/Regularizer/AbsAbs5dense_4/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
А(Аq
 dense_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Х
dense_4/kernel/Regularizer/SumSum"dense_4/kernel/Regularizer/Abs:y:0)dense_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 dense_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
„£<Ъ
dense_4/kernel/Regularizer/mulMul)dense_4/kernel/Regularizer/mul/x:output:0'dense_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: h
IdentityIdentitydense_5/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€‘
NoOpNoOp ^C2D_last/BiasAdd/ReadVariableOp^C2D_last/Conv2D/ReadVariableOp/^C2D_last/kernel/Regularizer/Abs/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp/^conv2d_4/kernel/Regularizer/Abs/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp/^conv2d_5/kernel/Regularizer/Abs/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp.^dense_4/kernel/Regularizer/Abs/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:€€€€€€€€€2d: : : : : : : : : : 2B
C2D_last/BiasAdd/ReadVariableOpC2D_last/BiasAdd/ReadVariableOp2@
C2D_last/Conv2D/ReadVariableOpC2D_last/Conv2D/ReadVariableOp2`
.C2D_last/kernel/Regularizer/Abs/ReadVariableOp.C2D_last/kernel/Regularizer/Abs/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2`
.conv2d_4/kernel/Regularizer/Abs/ReadVariableOp.conv2d_4/kernel/Regularizer/Abs/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2`
.conv2d_5/kernel/Regularizer/Abs/ReadVariableOp.conv2d_5/kernel/Regularizer/Abs/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2^
-dense_4/kernel/Regularizer/Abs/ReadVariableOp-dense_4/kernel/Regularizer/Abs/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€2d
 
_user_specified_nameinputs
≠G
Љ
H__inference_sequential_2_layer_call_and_return_conditional_losses_132425
input_3)
conv2d_4_132371: 
conv2d_4_132373: )
conv2d_5_132377: @
conv2d_5_132379:@*
c2d_last_132383:@А
c2d_last_132385:	А"
dense_4_132390:
А(А
dense_4_132392:	А!
dense_5_132395:	А
dense_5_132397:
identityИҐ C2D_last/StatefulPartitionedCallҐ.C2D_last/kernel/Regularizer/Abs/ReadVariableOpҐ conv2d_4/StatefulPartitionedCallҐ.conv2d_4/kernel/Regularizer/Abs/ReadVariableOpҐ conv2d_5/StatefulPartitionedCallҐ.conv2d_5/kernel/Regularizer/Abs/ReadVariableOpҐdense_4/StatefulPartitionedCallҐ-dense_4/kernel/Regularizer/Abs/ReadVariableOpҐdense_5/StatefulPartitionedCallь
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCallinput_3conv2d_4_132371conv2d_4_132373*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€0b *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_132029ф
max_pooling2d_6/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€1 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_131978Э
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_6/PartitionedCall:output:0conv2d_5_132377conv2d_5_132379*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€/@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_132053ф
max_pooling2d_7/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_131990Ю
 C2D_last/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_7/PartitionedCall:output:0c2d_last_132383c2d_last_132385*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€	А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_C2D_last_layer_call_and_return_conditional_losses_132077х
max_pooling2d_8/PartitionedCallPartitionedCall)C2D_last/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€
А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_132002а
flatten_2/PartitionedCallPartitionedCall(max_pooling2d_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А(* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_132090М
dense_4/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_4_132390dense_4_132392*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_132109С
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_132395dense_5_132397*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_132126Ж
.conv2d_4/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_4_132371*&
_output_shapes
: *
dtype0П
conv2d_4/kernel/Regularizer/AbsAbs6conv2d_4/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: z
!conv2d_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             Ш
conv2d_4/kernel/Regularizer/SumSum#conv2d_4/kernel/Regularizer/Abs:y:0*conv2d_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
„£<Э
conv2d_4/kernel/Regularizer/mulMul*conv2d_4/kernel/Regularizer/mul/x:output:0(conv2d_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Ж
.conv2d_5/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_5_132377*&
_output_shapes
: @*
dtype0П
conv2d_5/kernel/Regularizer/AbsAbs6conv2d_5/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: @z
!conv2d_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             Ш
conv2d_5/kernel/Regularizer/SumSum#conv2d_5/kernel/Regularizer/Abs:y:0*conv2d_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
„£<Э
conv2d_5/kernel/Regularizer/mulMul*conv2d_5/kernel/Regularizer/mul/x:output:0(conv2d_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: З
.C2D_last/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpc2d_last_132383*'
_output_shapes
:@А*
dtype0Р
C2D_last/kernel/Regularizer/AbsAbs6C2D_last/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*'
_output_shapes
:@Аz
!C2D_last/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             Ш
C2D_last/kernel/Regularizer/SumSum#C2D_last/kernel/Regularizer/Abs:y:0*C2D_last/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!C2D_last/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
„£<Э
C2D_last/kernel/Regularizer/mulMul*C2D_last/kernel/Regularizer/mul/x:output:0(C2D_last/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ~
-dense_4/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_4_132390* 
_output_shapes
:
А(А*
dtype0З
dense_4/kernel/Regularizer/AbsAbs5dense_4/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
А(Аq
 dense_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Х
dense_4/kernel/Regularizer/SumSum"dense_4/kernel/Regularizer/Abs:y:0)dense_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 dense_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
„£<Ъ
dense_4/kernel/Regularizer/mulMul)dense_4/kernel/Regularizer/mul/x:output:0'dense_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ґ
NoOpNoOp!^C2D_last/StatefulPartitionedCall/^C2D_last/kernel/Regularizer/Abs/ReadVariableOp!^conv2d_4/StatefulPartitionedCall/^conv2d_4/kernel/Regularizer/Abs/ReadVariableOp!^conv2d_5/StatefulPartitionedCall/^conv2d_5/kernel/Regularizer/Abs/ReadVariableOp ^dense_4/StatefulPartitionedCall.^dense_4/kernel/Regularizer/Abs/ReadVariableOp ^dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:€€€€€€€€€2d: : : : : : : : : : 2D
 C2D_last/StatefulPartitionedCall C2D_last/StatefulPartitionedCall2`
.C2D_last/kernel/Regularizer/Abs/ReadVariableOp.C2D_last/kernel/Regularizer/Abs/ReadVariableOp2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2`
.conv2d_4/kernel/Regularizer/Abs/ReadVariableOp.conv2d_4/kernel/Regularizer/Abs/ReadVariableOp2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2`
.conv2d_5/kernel/Regularizer/Abs/ReadVariableOp.conv2d_5/kernel/Regularizer/Abs/ReadVariableOp2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2^
-dense_4/kernel/Regularizer/Abs/ReadVariableOp-dense_4/kernel/Regularizer/Abs/ReadVariableOp2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:X T
/
_output_shapes
:€€€€€€€€€2d
!
_user_specified_name	input_3
…
a
E__inference_flatten_2_layer_call_and_return_conditional_losses_132862

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€А(Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А("
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€
А:X T
0
_output_shapes
:€€€€€€€€€
А
 
_user_specified_nameinputs
∆
Ц
(__inference_dense_5_layer_call_fn_132903

inputs
unknown:	А
	unknown_0:
identityИҐStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_132126o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ґ
F
*__inference_flatten_2_layer_call_fn_132856

inputs
identityі
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А(* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_132090a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€А("
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€
А:X T
0
_output_shapes
:€€€€€€€€€
А
 
_user_specified_nameinputs
с
†
)__inference_C2D_last_layer_call_fn_132824

inputs"
unknown:@А
	unknown_0:	А
identityИҐStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€	А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_C2D_last_layer_call_and_return_conditional_losses_132077x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€	А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Ћ

Р
-__inference_sequential_2_layer_call_fn_132537

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А
	unknown_5:
А(А
	unknown_6:	А
	unknown_7:	А
	unknown_8:
identityИҐStatefulPartitionedCall»
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_132157o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:€€€€€€€€€2d: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€2d
 
_user_specified_nameinputs
ґ
≥
__inference_loss_fn_0_132925Q
7conv2d_4_kernel_regularizer_abs_readvariableop_resource: 
identityИҐ.conv2d_4/kernel/Regularizer/Abs/ReadVariableOpЃ
.conv2d_4/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp7conv2d_4_kernel_regularizer_abs_readvariableop_resource*&
_output_shapes
: *
dtype0П
conv2d_4/kernel/Regularizer/AbsAbs6conv2d_4/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: z
!conv2d_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             Ш
conv2d_4/kernel/Regularizer/SumSum#conv2d_4/kernel/Regularizer/Abs:y:0*conv2d_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
„£<Э
conv2d_4/kernel/Regularizer/mulMul*conv2d_4/kernel/Regularizer/mul/x:output:0(conv2d_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentity#conv2d_4/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: w
NoOpNoOp/^conv2d_4/kernel/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2`
.conv2d_4/kernel/Regularizer/Abs/ReadVariableOp.conv2d_4/kernel/Regularizer/Abs/ReadVariableOp
є
і
__inference_loss_fn_2_132947R
7c2d_last_kernel_regularizer_abs_readvariableop_resource:@А
identityИҐ.C2D_last/kernel/Regularizer/Abs/ReadVariableOpѓ
.C2D_last/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp7c2d_last_kernel_regularizer_abs_readvariableop_resource*'
_output_shapes
:@А*
dtype0Р
C2D_last/kernel/Regularizer/AbsAbs6C2D_last/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*'
_output_shapes
:@Аz
!C2D_last/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             Ш
C2D_last/kernel/Regularizer/SumSum#C2D_last/kernel/Regularizer/Abs:y:0*C2D_last/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!C2D_last/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
„£<Э
C2D_last/kernel/Regularizer/mulMul*C2D_last/kernel/Regularizer/mul/x:output:0(C2D_last/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentity#C2D_last/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: w
NoOpNoOp/^C2D_last/kernel/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2`
.C2D_last/kernel/Regularizer/Abs/ReadVariableOp.C2D_last/kernel/Regularizer/Abs/ReadVariableOp
н
Ю
)__inference_conv2d_4_layer_call_fn_132740

inputs!
unknown: 
	unknown_0: 
identityИҐStatefulPartitionedCallд
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€0b *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_132029w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€0b `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€2d: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€2d
 
_user_specified_nameinputs
ї
L
0__inference_max_pooling2d_6_layer_call_fn_132762

inputs
identity№
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_131978Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ћ

Р
-__inference_sequential_2_layer_call_fn_132562

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А
	unknown_5:
А(А
	unknown_6:	А
	unknown_7:	А
	unknown_8:
identityИҐStatefulPartitionedCall»
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_132320o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:€€€€€€€€€2d: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€2d
 
_user_specified_nameinputs
™G
ї
H__inference_sequential_2_layer_call_and_return_conditional_losses_132157

inputs)
conv2d_4_132030: 
conv2d_4_132032: )
conv2d_5_132054: @
conv2d_5_132056:@*
c2d_last_132078:@А
c2d_last_132080:	А"
dense_4_132110:
А(А
dense_4_132112:	А!
dense_5_132127:	А
dense_5_132129:
identityИҐ C2D_last/StatefulPartitionedCallҐ.C2D_last/kernel/Regularizer/Abs/ReadVariableOpҐ conv2d_4/StatefulPartitionedCallҐ.conv2d_4/kernel/Regularizer/Abs/ReadVariableOpҐ conv2d_5/StatefulPartitionedCallҐ.conv2d_5/kernel/Regularizer/Abs/ReadVariableOpҐdense_4/StatefulPartitionedCallҐ-dense_4/kernel/Regularizer/Abs/ReadVariableOpҐdense_5/StatefulPartitionedCallы
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_4_132030conv2d_4_132032*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€0b *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_132029ф
max_pooling2d_6/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€1 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_131978Э
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_6/PartitionedCall:output:0conv2d_5_132054conv2d_5_132056*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€/@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_132053ф
max_pooling2d_7/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_131990Ю
 C2D_last/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_7/PartitionedCall:output:0c2d_last_132078c2d_last_132080*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€	А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_C2D_last_layer_call_and_return_conditional_losses_132077х
max_pooling2d_8/PartitionedCallPartitionedCall)C2D_last/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€
А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_132002а
flatten_2/PartitionedCallPartitionedCall(max_pooling2d_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А(* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_132090М
dense_4/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_4_132110dense_4_132112*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_132109С
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_132127dense_5_132129*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_132126Ж
.conv2d_4/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_4_132030*&
_output_shapes
: *
dtype0П
conv2d_4/kernel/Regularizer/AbsAbs6conv2d_4/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: z
!conv2d_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             Ш
conv2d_4/kernel/Regularizer/SumSum#conv2d_4/kernel/Regularizer/Abs:y:0*conv2d_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
„£<Э
conv2d_4/kernel/Regularizer/mulMul*conv2d_4/kernel/Regularizer/mul/x:output:0(conv2d_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Ж
.conv2d_5/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_5_132054*&
_output_shapes
: @*
dtype0П
conv2d_5/kernel/Regularizer/AbsAbs6conv2d_5/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: @z
!conv2d_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             Ш
conv2d_5/kernel/Regularizer/SumSum#conv2d_5/kernel/Regularizer/Abs:y:0*conv2d_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
„£<Э
conv2d_5/kernel/Regularizer/mulMul*conv2d_5/kernel/Regularizer/mul/x:output:0(conv2d_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: З
.C2D_last/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpc2d_last_132078*'
_output_shapes
:@А*
dtype0Р
C2D_last/kernel/Regularizer/AbsAbs6C2D_last/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*'
_output_shapes
:@Аz
!C2D_last/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             Ш
C2D_last/kernel/Regularizer/SumSum#C2D_last/kernel/Regularizer/Abs:y:0*C2D_last/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!C2D_last/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
„£<Э
C2D_last/kernel/Regularizer/mulMul*C2D_last/kernel/Regularizer/mul/x:output:0(C2D_last/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ~
-dense_4/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_4_132110* 
_output_shapes
:
А(А*
dtype0З
dense_4/kernel/Regularizer/AbsAbs5dense_4/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
А(Аq
 dense_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Х
dense_4/kernel/Regularizer/SumSum"dense_4/kernel/Regularizer/Abs:y:0)dense_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 dense_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
„£<Ъ
dense_4/kernel/Regularizer/mulMul)dense_4/kernel/Regularizer/mul/x:output:0'dense_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ґ
NoOpNoOp!^C2D_last/StatefulPartitionedCall/^C2D_last/kernel/Regularizer/Abs/ReadVariableOp!^conv2d_4/StatefulPartitionedCall/^conv2d_4/kernel/Regularizer/Abs/ReadVariableOp!^conv2d_5/StatefulPartitionedCall/^conv2d_5/kernel/Regularizer/Abs/ReadVariableOp ^dense_4/StatefulPartitionedCall.^dense_4/kernel/Regularizer/Abs/ReadVariableOp ^dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:€€€€€€€€€2d: : : : : : : : : : 2D
 C2D_last/StatefulPartitionedCall C2D_last/StatefulPartitionedCall2`
.C2D_last/kernel/Regularizer/Abs/ReadVariableOp.C2D_last/kernel/Regularizer/Abs/ReadVariableOp2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2`
.conv2d_4/kernel/Regularizer/Abs/ReadVariableOp.conv2d_4/kernel/Regularizer/Abs/ReadVariableOp2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2`
.conv2d_5/kernel/Regularizer/Abs/ReadVariableOp.conv2d_5/kernel/Regularizer/Abs/ReadVariableOp2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2^
-dense_4/kernel/Regularizer/Abs/ReadVariableOp-dense_4/kernel/Regularizer/Abs/ReadVariableOp2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€2d
 
_user_specified_nameinputs
Т
Ѓ
D__inference_conv2d_5_layer_call_and_return_conditional_losses_132053

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpҐ.conv2d_5/kernel/Regularizer/Abs/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€/@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€/@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€/@Х
.conv2d_5/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0П
conv2d_5/kernel/Regularizer/AbsAbs6conv2d_5/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: @z
!conv2d_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             Ш
conv2d_5/kernel/Regularizer/SumSum#conv2d_5/kernel/Regularizer/Abs:y:0*conv2d_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
„£<Э
conv2d_5/kernel/Regularizer/mulMul*conv2d_5/kernel/Regularizer/mul/x:output:0(conv2d_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€/@®
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp/^conv2d_5/kernel/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€1 : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2`
.conv2d_5/kernel/Regularizer/Abs/ReadVariableOp.conv2d_5/kernel/Regularizer/Abs/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€1 
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_132767

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ь
∞
D__inference_C2D_last_layer_call_and_return_conditional_losses_132841

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐ.C2D_last/kernel/Regularizer/Abs/ReadVariableOpҐConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€	А*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€	АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€	АЦ
.C2D_last/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Р
C2D_last/kernel/Regularizer/AbsAbs6C2D_last/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*'
_output_shapes
:@Аz
!C2D_last/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             Ш
C2D_last/kernel/Regularizer/SumSum#C2D_last/kernel/Regularizer/Abs:y:0*C2D_last/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!C2D_last/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
„£<Э
C2D_last/kernel/Regularizer/mulMul*C2D_last/kernel/Regularizer/mul/x:output:0(C2D_last/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€	А®
NoOpNoOp^BiasAdd/ReadVariableOp/^C2D_last/kernel/Regularizer/Abs/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2`
.C2D_last/kernel/Regularizer/Abs/ReadVariableOp.C2D_last/kernel/Regularizer/Abs/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ї
L
0__inference_max_pooling2d_8_layer_call_fn_132846

inputs
identity№
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_132002Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Т
Ѓ
D__inference_conv2d_4_layer_call_and_return_conditional_losses_132029

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpҐ.conv2d_4/kernel/Regularizer/Abs/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€0b *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€0b X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€0b Х
.conv2d_4/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0П
conv2d_4/kernel/Regularizer/AbsAbs6conv2d_4/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: z
!conv2d_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             Ш
conv2d_4/kernel/Regularizer/SumSum#conv2d_4/kernel/Regularizer/Abs:y:0*conv2d_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
„£<Э
conv2d_4/kernel/Regularizer/mulMul*conv2d_4/kernel/Regularizer/mul/x:output:0(conv2d_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€0b ®
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp/^conv2d_4/kernel/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€2d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2`
.conv2d_4/kernel/Regularizer/Abs/ReadVariableOp.conv2d_4/kernel/Regularizer/Abs/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€2d
 
_user_specified_nameinputs
Ь
∞
D__inference_C2D_last_layer_call_and_return_conditional_losses_132077

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐ.C2D_last/kernel/Regularizer/Abs/ReadVariableOpҐConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€	А*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€	АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€	АЦ
.C2D_last/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Р
C2D_last/kernel/Regularizer/AbsAbs6C2D_last/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*'
_output_shapes
:@Аz
!C2D_last/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             Ш
C2D_last/kernel/Regularizer/SumSum#C2D_last/kernel/Regularizer/Abs:y:0*C2D_last/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!C2D_last/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
„£<Э
C2D_last/kernel/Regularizer/mulMul*C2D_last/kernel/Regularizer/mul/x:output:0(C2D_last/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€	А®
NoOpNoOp^BiasAdd/ReadVariableOp/^C2D_last/kernel/Regularizer/Abs/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2`
.C2D_last/kernel/Regularizer/Abs/ReadVariableOp.C2D_last/kernel/Regularizer/Abs/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
£

х
C__inference_dense_5_layer_call_and_return_conditional_losses_132914

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
н
Ю
)__inference_conv2d_5_layer_call_fn_132782

inputs!
unknown: @
	unknown_0:@
identityИҐStatefulPartitionedCallд
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€/@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_132053w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€/@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€1 : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€1 
 
_user_specified_nameinputs
ћ@
й	
!__inference__wrapped_model_131969
input_3N
4sequential_2_conv2d_4_conv2d_readvariableop_resource: C
5sequential_2_conv2d_4_biasadd_readvariableop_resource: N
4sequential_2_conv2d_5_conv2d_readvariableop_resource: @C
5sequential_2_conv2d_5_biasadd_readvariableop_resource:@O
4sequential_2_c2d_last_conv2d_readvariableop_resource:@АD
5sequential_2_c2d_last_biasadd_readvariableop_resource:	АG
3sequential_2_dense_4_matmul_readvariableop_resource:
А(АC
4sequential_2_dense_4_biasadd_readvariableop_resource:	АF
3sequential_2_dense_5_matmul_readvariableop_resource:	АB
4sequential_2_dense_5_biasadd_readvariableop_resource:
identityИҐ,sequential_2/C2D_last/BiasAdd/ReadVariableOpҐ+sequential_2/C2D_last/Conv2D/ReadVariableOpҐ,sequential_2/conv2d_4/BiasAdd/ReadVariableOpҐ+sequential_2/conv2d_4/Conv2D/ReadVariableOpҐ,sequential_2/conv2d_5/BiasAdd/ReadVariableOpҐ+sequential_2/conv2d_5/Conv2D/ReadVariableOpҐ+sequential_2/dense_4/BiasAdd/ReadVariableOpҐ*sequential_2/dense_4/MatMul/ReadVariableOpҐ+sequential_2/dense_5/BiasAdd/ReadVariableOpҐ*sequential_2/dense_5/MatMul/ReadVariableOp®
+sequential_2/conv2d_4/Conv2D/ReadVariableOpReadVariableOp4sequential_2_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0«
sequential_2/conv2d_4/Conv2DConv2Dinput_33sequential_2/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€0b *
paddingVALID*
strides
Ю
,sequential_2/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0њ
sequential_2/conv2d_4/BiasAddBiasAdd%sequential_2/conv2d_4/Conv2D:output:04sequential_2/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€0b Д
sequential_2/conv2d_4/ReluRelu&sequential_2/conv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€0b ∆
$sequential_2/max_pooling2d_6/MaxPoolMaxPool(sequential_2/conv2d_4/Relu:activations:0*/
_output_shapes
:€€€€€€€€€1 *
ksize
*
paddingVALID*
strides
®
+sequential_2/conv2d_5/Conv2D/ReadVariableOpReadVariableOp4sequential_2_conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0н
sequential_2/conv2d_5/Conv2DConv2D-sequential_2/max_pooling2d_6/MaxPool:output:03sequential_2/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€/@*
paddingVALID*
strides
Ю
,sequential_2/conv2d_5/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0њ
sequential_2/conv2d_5/BiasAddBiasAdd%sequential_2/conv2d_5/Conv2D:output:04sequential_2/conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€/@Д
sequential_2/conv2d_5/ReluRelu&sequential_2/conv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€/@∆
$sequential_2/max_pooling2d_7/MaxPoolMaxPool(sequential_2/conv2d_5/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
©
+sequential_2/C2D_last/Conv2D/ReadVariableOpReadVariableOp4sequential_2_c2d_last_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0о
sequential_2/C2D_last/Conv2DConv2D-sequential_2/max_pooling2d_7/MaxPool:output:03sequential_2/C2D_last/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€	А*
paddingVALID*
strides
Я
,sequential_2/C2D_last/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_c2d_last_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0ј
sequential_2/C2D_last/BiasAddBiasAdd%sequential_2/C2D_last/Conv2D:output:04sequential_2/C2D_last/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€	АЕ
sequential_2/C2D_last/ReluRelu&sequential_2/C2D_last/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€	А«
$sequential_2/max_pooling2d_8/MaxPoolMaxPool(sequential_2/C2D_last/Relu:activations:0*0
_output_shapes
:€€€€€€€€€
А*
ksize
*
paddingVALID*
strides
m
sequential_2/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ≤
sequential_2/flatten_2/ReshapeReshape-sequential_2/max_pooling2d_8/MaxPool:output:0%sequential_2/flatten_2/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А(†
*sequential_2/dense_4/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_4_matmul_readvariableop_resource* 
_output_shapes
:
А(А*
dtype0µ
sequential_2/dense_4/MatMulMatMul'sequential_2/flatten_2/Reshape:output:02sequential_2/dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЭ
+sequential_2/dense_4/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0ґ
sequential_2/dense_4/BiasAddBiasAdd%sequential_2/dense_4/MatMul:product:03sequential_2/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А{
sequential_2/dense_4/ReluRelu%sequential_2/dense_4/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€АЯ
*sequential_2/dense_5/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_5_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0і
sequential_2/dense_5/MatMulMatMul'sequential_2/dense_4/Relu:activations:02sequential_2/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ь
+sequential_2/dense_5/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0µ
sequential_2/dense_5/BiasAddBiasAdd%sequential_2/dense_5/MatMul:product:03sequential_2/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€А
sequential_2/dense_5/SoftmaxSoftmax%sequential_2/dense_5/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€u
IdentityIdentity&sequential_2/dense_5/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€У
NoOpNoOp-^sequential_2/C2D_last/BiasAdd/ReadVariableOp,^sequential_2/C2D_last/Conv2D/ReadVariableOp-^sequential_2/conv2d_4/BiasAdd/ReadVariableOp,^sequential_2/conv2d_4/Conv2D/ReadVariableOp-^sequential_2/conv2d_5/BiasAdd/ReadVariableOp,^sequential_2/conv2d_5/Conv2D/ReadVariableOp,^sequential_2/dense_4/BiasAdd/ReadVariableOp+^sequential_2/dense_4/MatMul/ReadVariableOp,^sequential_2/dense_5/BiasAdd/ReadVariableOp+^sequential_2/dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:€€€€€€€€€2d: : : : : : : : : : 2\
,sequential_2/C2D_last/BiasAdd/ReadVariableOp,sequential_2/C2D_last/BiasAdd/ReadVariableOp2Z
+sequential_2/C2D_last/Conv2D/ReadVariableOp+sequential_2/C2D_last/Conv2D/ReadVariableOp2\
,sequential_2/conv2d_4/BiasAdd/ReadVariableOp,sequential_2/conv2d_4/BiasAdd/ReadVariableOp2Z
+sequential_2/conv2d_4/Conv2D/ReadVariableOp+sequential_2/conv2d_4/Conv2D/ReadVariableOp2\
,sequential_2/conv2d_5/BiasAdd/ReadVariableOp,sequential_2/conv2d_5/BiasAdd/ReadVariableOp2Z
+sequential_2/conv2d_5/Conv2D/ReadVariableOp+sequential_2/conv2d_5/Conv2D/ReadVariableOp2Z
+sequential_2/dense_4/BiasAdd/ReadVariableOp+sequential_2/dense_4/BiasAdd/ReadVariableOp2X
*sequential_2/dense_4/MatMul/ReadVariableOp*sequential_2/dense_4/MatMul/ReadVariableOp2Z
+sequential_2/dense_5/BiasAdd/ReadVariableOp+sequential_2/dense_5/BiasAdd/ReadVariableOp2X
*sequential_2/dense_5/MatMul/ReadVariableOp*sequential_2/dense_5/MatMul/ReadVariableOp:X T
/
_output_shapes
:€€€€€€€€€2d
!
_user_specified_name	input_3
∆Q
к
__inference__traced_save_133098
file_prefix.
*savev2_conv2d_4_kernel_read_readvariableop,
(savev2_conv2d_4_bias_read_readvariableop.
*savev2_conv2d_5_kernel_read_readvariableop,
(savev2_conv2d_5_bias_read_readvariableop.
*savev2_c2d_last_kernel_read_readvariableop,
(savev2_c2d_last_bias_read_readvariableop-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop-
)savev2_dense_5_kernel_read_readvariableop+
'savev2_dense_5_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_conv2d_4_kernel_m_read_readvariableop3
/savev2_adam_conv2d_4_bias_m_read_readvariableop5
1savev2_adam_conv2d_5_kernel_m_read_readvariableop3
/savev2_adam_conv2d_5_bias_m_read_readvariableop5
1savev2_adam_c2d_last_kernel_m_read_readvariableop3
/savev2_adam_c2d_last_bias_m_read_readvariableop4
0savev2_adam_dense_4_kernel_m_read_readvariableop2
.savev2_adam_dense_4_bias_m_read_readvariableop4
0savev2_adam_dense_5_kernel_m_read_readvariableop2
.savev2_adam_dense_5_bias_m_read_readvariableop5
1savev2_adam_conv2d_4_kernel_v_read_readvariableop3
/savev2_adam_conv2d_4_bias_v_read_readvariableop5
1savev2_adam_conv2d_5_kernel_v_read_readvariableop3
/savev2_adam_conv2d_5_bias_v_read_readvariableop5
1savev2_adam_c2d_last_kernel_v_read_readvariableop3
/savev2_adam_c2d_last_bias_v_read_readvariableop4
0savev2_adam_dense_4_kernel_v_read_readvariableop2
.savev2_adam_dense_4_bias_v_read_readvariableop4
0savev2_adam_dense_5_kernel_v_read_readvariableop2
.savev2_adam_dense_5_bias_v_read_readvariableop
savev2_const

identity_1ИҐMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partБ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: й
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*Т
valueИBЕ(B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHљ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B є
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv2d_4_kernel_read_readvariableop(savev2_conv2d_4_bias_read_readvariableop*savev2_conv2d_5_kernel_read_readvariableop(savev2_conv2d_5_bias_read_readvariableop*savev2_c2d_last_kernel_read_readvariableop(savev2_c2d_last_bias_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_conv2d_4_kernel_m_read_readvariableop/savev2_adam_conv2d_4_bias_m_read_readvariableop1savev2_adam_conv2d_5_kernel_m_read_readvariableop/savev2_adam_conv2d_5_bias_m_read_readvariableop1savev2_adam_c2d_last_kernel_m_read_readvariableop/savev2_adam_c2d_last_bias_m_read_readvariableop0savev2_adam_dense_4_kernel_m_read_readvariableop.savev2_adam_dense_4_bias_m_read_readvariableop0savev2_adam_dense_5_kernel_m_read_readvariableop.savev2_adam_dense_5_bias_m_read_readvariableop1savev2_adam_conv2d_4_kernel_v_read_readvariableop/savev2_adam_conv2d_4_bias_v_read_readvariableop1savev2_adam_conv2d_5_kernel_v_read_readvariableop/savev2_adam_conv2d_5_bias_v_read_readvariableop1savev2_adam_c2d_last_kernel_v_read_readvariableop/savev2_adam_c2d_last_bias_v_read_readvariableop0savev2_adam_dense_4_kernel_v_read_readvariableop.savev2_adam_dense_4_bias_v_read_readvariableop0savev2_adam_dense_5_kernel_v_read_readvariableop.savev2_adam_dense_5_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *6
dtypes,
*2(	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Л
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*х
_input_shapesг
а: : : : @:@:@А:А:
А(А:А:	А:: : : : : : : : : : : : @:@:@А:А:
А(А:А:	А:: : : @:@:@А:А:
А(А:А:	А:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:-)
'
_output_shapes
:@А:!

_output_shapes	
:А:&"
 
_output_shapes
:
А(А:!

_output_shapes	
:А:%	!

_output_shapes
:	А: 


_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:-)
'
_output_shapes
:@А:!

_output_shapes	
:А:&"
 
_output_shapes
:
А(А:!

_output_shapes	
:А:%!

_output_shapes
:	А: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :, (
&
_output_shapes
: @: !

_output_shapes
:@:-")
'
_output_shapes
:@А:!#

_output_shapes	
:А:&$"
 
_output_shapes
:
А(А:!%

_output_shapes	
:А:%&!

_output_shapes
:	А: '

_output_shapes
::(

_output_shapes
: 
У
g
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_132851

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
С
І
C__inference_dense_4_layer_call_and_return_conditional_losses_132894

inputs2
matmul_readvariableop_resource:
А(А.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐ-dense_4/kernel/Regularizer/Abs/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
А(А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€АО
-dense_4/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
А(А*
dtype0З
dense_4/kernel/Regularizer/AbsAbs5dense_4/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
А(Аq
 dense_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Х
dense_4/kernel/Regularizer/SumSum"dense_4/kernel/Regularizer/Abs:y:0)dense_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 dense_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
„£<Ъ
dense_4/kernel/Regularizer/mulMul)dense_4/kernel/Regularizer/mul/x:output:0'dense_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€АІ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp.^dense_4/kernel/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А(: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2^
-dense_4/kernel/Regularizer/Abs/ReadVariableOp-dense_4/kernel/Regularizer/Abs/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А(
 
_user_specified_nameinputs
С
І
C__inference_dense_4_layer_call_and_return_conditional_losses_132109

inputs2
matmul_readvariableop_resource:
А(А.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐ-dense_4/kernel/Regularizer/Abs/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
А(А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€АО
-dense_4/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
А(А*
dtype0З
dense_4/kernel/Regularizer/AbsAbs5dense_4/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
А(Аq
 dense_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Х
dense_4/kernel/Regularizer/SumSum"dense_4/kernel/Regularizer/Abs:y:0)dense_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 dense_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
„£<Ъ
dense_4/kernel/Regularizer/mulMul)dense_4/kernel/Regularizer/mul/x:output:0'dense_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€АІ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp.^dense_4/kernel/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А(: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2^
-dense_4/kernel/Regularizer/Abs/ReadVariableOp-dense_4/kernel/Regularizer/Abs/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А(
 
_user_specified_nameinputs
Т
Ѓ
D__inference_conv2d_5_layer_call_and_return_conditional_losses_132799

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpҐ.conv2d_5/kernel/Regularizer/Abs/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€/@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€/@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€/@Х
.conv2d_5/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0П
conv2d_5/kernel/Regularizer/AbsAbs6conv2d_5/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: @z
!conv2d_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             Ш
conv2d_5/kernel/Regularizer/SumSum#conv2d_5/kernel/Regularizer/Abs:y:0*conv2d_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
„£<Э
conv2d_5/kernel/Regularizer/mulMul*conv2d_5/kernel/Regularizer/mul/x:output:0(conv2d_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€/@®
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp/^conv2d_5/kernel/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€1 : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2`
.conv2d_5/kernel/Regularizer/Abs/ReadVariableOp.conv2d_5/kernel/Regularizer/Abs/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€1 
 
_user_specified_nameinputs
™G
ї
H__inference_sequential_2_layer_call_and_return_conditional_losses_132320

inputs)
conv2d_4_132266: 
conv2d_4_132268: )
conv2d_5_132272: @
conv2d_5_132274:@*
c2d_last_132278:@А
c2d_last_132280:	А"
dense_4_132285:
А(А
dense_4_132287:	А!
dense_5_132290:	А
dense_5_132292:
identityИҐ C2D_last/StatefulPartitionedCallҐ.C2D_last/kernel/Regularizer/Abs/ReadVariableOpҐ conv2d_4/StatefulPartitionedCallҐ.conv2d_4/kernel/Regularizer/Abs/ReadVariableOpҐ conv2d_5/StatefulPartitionedCallҐ.conv2d_5/kernel/Regularizer/Abs/ReadVariableOpҐdense_4/StatefulPartitionedCallҐ-dense_4/kernel/Regularizer/Abs/ReadVariableOpҐdense_5/StatefulPartitionedCallы
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_4_132266conv2d_4_132268*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€0b *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_132029ф
max_pooling2d_6/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€1 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_131978Э
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_6/PartitionedCall:output:0conv2d_5_132272conv2d_5_132274*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€/@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_132053ф
max_pooling2d_7/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_131990Ю
 C2D_last/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_7/PartitionedCall:output:0c2d_last_132278c2d_last_132280*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€	А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_C2D_last_layer_call_and_return_conditional_losses_132077х
max_pooling2d_8/PartitionedCallPartitionedCall)C2D_last/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€
А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_132002а
flatten_2/PartitionedCallPartitionedCall(max_pooling2d_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А(* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_132090М
dense_4/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_4_132285dense_4_132287*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_132109С
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_132290dense_5_132292*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_132126Ж
.conv2d_4/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_4_132266*&
_output_shapes
: *
dtype0П
conv2d_4/kernel/Regularizer/AbsAbs6conv2d_4/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: z
!conv2d_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             Ш
conv2d_4/kernel/Regularizer/SumSum#conv2d_4/kernel/Regularizer/Abs:y:0*conv2d_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
„£<Э
conv2d_4/kernel/Regularizer/mulMul*conv2d_4/kernel/Regularizer/mul/x:output:0(conv2d_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Ж
.conv2d_5/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_5_132272*&
_output_shapes
: @*
dtype0П
conv2d_5/kernel/Regularizer/AbsAbs6conv2d_5/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: @z
!conv2d_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             Ш
conv2d_5/kernel/Regularizer/SumSum#conv2d_5/kernel/Regularizer/Abs:y:0*conv2d_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
„£<Э
conv2d_5/kernel/Regularizer/mulMul*conv2d_5/kernel/Regularizer/mul/x:output:0(conv2d_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: З
.C2D_last/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpc2d_last_132278*'
_output_shapes
:@А*
dtype0Р
C2D_last/kernel/Regularizer/AbsAbs6C2D_last/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*'
_output_shapes
:@Аz
!C2D_last/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             Ш
C2D_last/kernel/Regularizer/SumSum#C2D_last/kernel/Regularizer/Abs:y:0*C2D_last/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!C2D_last/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
„£<Э
C2D_last/kernel/Regularizer/mulMul*C2D_last/kernel/Regularizer/mul/x:output:0(C2D_last/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ~
-dense_4/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_4_132285* 
_output_shapes
:
А(А*
dtype0З
dense_4/kernel/Regularizer/AbsAbs5dense_4/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
А(Аq
 dense_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Х
dense_4/kernel/Regularizer/SumSum"dense_4/kernel/Regularizer/Abs:y:0)dense_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 dense_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
„£<Ъ
dense_4/kernel/Regularizer/mulMul)dense_4/kernel/Regularizer/mul/x:output:0'dense_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ґ
NoOpNoOp!^C2D_last/StatefulPartitionedCall/^C2D_last/kernel/Regularizer/Abs/ReadVariableOp!^conv2d_4/StatefulPartitionedCall/^conv2d_4/kernel/Regularizer/Abs/ReadVariableOp!^conv2d_5/StatefulPartitionedCall/^conv2d_5/kernel/Regularizer/Abs/ReadVariableOp ^dense_4/StatefulPartitionedCall.^dense_4/kernel/Regularizer/Abs/ReadVariableOp ^dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:€€€€€€€€€2d: : : : : : : : : : 2D
 C2D_last/StatefulPartitionedCall C2D_last/StatefulPartitionedCall2`
.C2D_last/kernel/Regularizer/Abs/ReadVariableOp.C2D_last/kernel/Regularizer/Abs/ReadVariableOp2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2`
.conv2d_4/kernel/Regularizer/Abs/ReadVariableOp.conv2d_4/kernel/Regularizer/Abs/ReadVariableOp2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2`
.conv2d_5/kernel/Regularizer/Abs/ReadVariableOp.conv2d_5/kernel/Regularizer/Abs/ReadVariableOp2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2^
-dense_4/kernel/Regularizer/Abs/ReadVariableOp-dense_4/kernel/Regularizer/Abs/ReadVariableOp2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€2d
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_132809

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_131978

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs"џL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*≤
serving_defaultЮ
C
input_38
serving_default_input_3:0€€€€€€€€€2d;
dense_50
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:Т™
Ё
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer-6
layer_with_weights-3
layer-7
	layer_with_weights-4
	layer-8

	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
ї

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
•
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses"
_tf_keras_layer
ї

!kernel
"bias
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses"
_tf_keras_layer
•
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses"
_tf_keras_layer
ї

/kernel
0bias
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses"
_tf_keras_layer
•
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses"
_tf_keras_layer
•
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses"
_tf_keras_layer
ї

Ckernel
Dbias
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses"
_tf_keras_layer
ї

Kkernel
Lbias
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses"
_tf_keras_layer
Ы
Siter

Tbeta_1

Ubeta_2
	Vdecay
Wlearning_ratemЪmЫ!mЬ"mЭ/mЮ0mЯCm†Dm°KmҐLm£v§v•!v¶"vІ/v®0v©Cv™DvЂKvђLv≠"
	optimizer
f
0
1
!2
"3
/4
05
C6
D7
K8
L9"
trackable_list_wrapper
f
0
1
!2
"3
/4
05
C6
D7
K8
L9"
trackable_list_wrapper
<
X0
Y1
Z2
[3"
trackable_list_wrapper
 
\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
В2€
-__inference_sequential_2_layer_call_fn_132180
-__inference_sequential_2_layer_call_fn_132537
-__inference_sequential_2_layer_call_fn_132562
-__inference_sequential_2_layer_call_fn_132368ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
о2л
H__inference_sequential_2_layer_call_and_return_conditional_losses_132630
H__inference_sequential_2_layer_call_and_return_conditional_losses_132698
H__inference_sequential_2_layer_call_and_return_conditional_losses_132425
H__inference_sequential_2_layer_call_and_return_conditional_losses_132482ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ћB…
!__inference__wrapped_model_131969input_3"Ш
С≤Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
,
aserving_default"
signature_map
):' 2conv2d_4/kernel
: 2conv2d_4/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
'
X0"
trackable_list_wrapper
≠
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
”2–
)__inference_conv2d_4_layer_call_fn_132740Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
о2л
D__inference_conv2d_4_layer_call_and_return_conditional_losses_132757Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≠
gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
Џ2„
0__inference_max_pooling2d_6_layer_call_fn_132762Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
х2т
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_132767Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
):' @2conv2d_5/kernel
:@2conv2d_5/bias
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
'
Y0"
trackable_list_wrapper
≠
lnon_trainable_variables

mlayers
nmetrics
olayer_regularization_losses
player_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
”2–
)__inference_conv2d_5_layer_call_fn_132782Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
о2л
D__inference_conv2d_5_layer_call_and_return_conditional_losses_132799Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≠
qnon_trainable_variables

rlayers
smetrics
tlayer_regularization_losses
ulayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
Џ2„
0__inference_max_pooling2d_7_layer_call_fn_132804Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
х2т
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_132809Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
*:(@А2C2D_last/kernel
:А2C2D_last/bias
.
/0
01"
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
'
Z0"
trackable_list_wrapper
≠
vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses"
_generic_user_object
”2–
)__inference_C2D_last_layer_call_fn_132824Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
о2л
D__inference_C2D_last_layer_call_and_return_conditional_losses_132841Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≠
{non_trainable_variables

|layers
}metrics
~layer_regularization_losses
layer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses"
_generic_user_object
Џ2„
0__inference_max_pooling2d_8_layer_call_fn_132846Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
х2т
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_132851Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses"
_generic_user_object
‘2—
*__inference_flatten_2_layer_call_fn_132856Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
п2м
E__inference_flatten_2_layer_call_and_return_conditional_losses_132862Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
": 
А(А2dense_4/kernel
:А2dense_4/bias
.
C0
D1"
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
'
[0"
trackable_list_wrapper
≤
Еnon_trainable_variables
Жlayers
Зmetrics
 Иlayer_regularization_losses
Йlayer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
“2ѕ
(__inference_dense_4_layer_call_fn_132877Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
н2к
C__inference_dense_4_layer_call_and_return_conditional_losses_132894Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
!:	А2dense_5/kernel
:2dense_5/bias
.
K0
L1"
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Кnon_trainable_variables
Лlayers
Мmetrics
 Нlayer_regularization_losses
Оlayer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
“2ѕ
(__inference_dense_5_layer_call_fn_132903Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
н2к
C__inference_dense_5_layer_call_and_return_conditional_losses_132914Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
≥2∞
__inference_loss_fn_0_132925П
З≤Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ 
≥2∞
__inference_loss_fn_1_132936П
З≤Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ 
≥2∞
__inference_loss_fn_2_132947П
З≤Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ 
≥2∞
__inference_loss_fn_3_132958П
З≤Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ 
 "
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
0
П0
Р1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЋB»
$__inference_signature_wrapper_132725input_3"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
X0"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
Y0"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
Z0"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
[0"
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
R

Сtotal

Тcount
У	variables
Ф	keras_api"
_tf_keras_metric
c

Хtotal

Цcount
Ч
_fn_kwargs
Ш	variables
Щ	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
С0
Т1"
trackable_list_wrapper
.
У	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
Х0
Ц1"
trackable_list_wrapper
.
Ш	variables"
_generic_user_object
.:, 2Adam/conv2d_4/kernel/m
 : 2Adam/conv2d_4/bias/m
.:, @2Adam/conv2d_5/kernel/m
 :@2Adam/conv2d_5/bias/m
/:-@А2Adam/C2D_last/kernel/m
!:А2Adam/C2D_last/bias/m
':%
А(А2Adam/dense_4/kernel/m
 :А2Adam/dense_4/bias/m
&:$	А2Adam/dense_5/kernel/m
:2Adam/dense_5/bias/m
.:, 2Adam/conv2d_4/kernel/v
 : 2Adam/conv2d_4/bias/v
.:, @2Adam/conv2d_5/kernel/v
 :@2Adam/conv2d_5/bias/v
/:-@А2Adam/C2D_last/kernel/v
!:А2Adam/C2D_last/bias/v
':%
А(А2Adam/dense_4/kernel/v
 :А2Adam/dense_4/bias/v
&:$	А2Adam/dense_5/kernel/v
:2Adam/dense_5/bias/vµ
D__inference_C2D_last_layer_call_and_return_conditional_losses_132841m/07Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ ".Ґ+
$К!
0€€€€€€€€€	А
Ъ Н
)__inference_C2D_last_layer_call_fn_132824`/07Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ "!К€€€€€€€€€	АЮ
!__inference__wrapped_model_131969y
!"/0CDKL8Ґ5
.Ґ+
)К&
input_3€€€€€€€€€2d
™ "1™.
,
dense_5!К
dense_5€€€€€€€€€і
D__inference_conv2d_4_layer_call_and_return_conditional_losses_132757l7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€2d
™ "-Ґ*
#К 
0€€€€€€€€€0b 
Ъ М
)__inference_conv2d_4_layer_call_fn_132740_7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€2d
™ " К€€€€€€€€€0b і
D__inference_conv2d_5_layer_call_and_return_conditional_losses_132799l!"7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€1 
™ "-Ґ*
#К 
0€€€€€€€€€/@
Ъ М
)__inference_conv2d_5_layer_call_fn_132782_!"7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€1 
™ " К€€€€€€€€€/@•
C__inference_dense_4_layer_call_and_return_conditional_losses_132894^CD0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А(
™ "&Ґ#
К
0€€€€€€€€€А
Ъ }
(__inference_dense_4_layer_call_fn_132877QCD0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А(
™ "К€€€€€€€€€А§
C__inference_dense_5_layer_call_and_return_conditional_losses_132914]KL0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "%Ґ"
К
0€€€€€€€€€
Ъ |
(__inference_dense_5_layer_call_fn_132903PKL0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "К€€€€€€€€€Ђ
E__inference_flatten_2_layer_call_and_return_conditional_losses_132862b8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€
А
™ "&Ґ#
К
0€€€€€€€€€А(
Ъ Г
*__inference_flatten_2_layer_call_fn_132856U8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€
А
™ "К€€€€€€€€€А(;
__inference_loss_fn_0_132925Ґ

Ґ 
™ "К ;
__inference_loss_fn_1_132936!Ґ

Ґ 
™ "К ;
__inference_loss_fn_2_132947/Ґ

Ґ 
™ "К ;
__inference_loss_fn_3_132958CҐ

Ґ 
™ "К о
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_132767ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ∆
0__inference_max_pooling2d_6_layer_call_fn_132762СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€о
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_132809ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ∆
0__inference_max_pooling2d_7_layer_call_fn_132804СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€о
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_132851ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ∆
0__inference_max_pooling2d_8_layer_call_fn_132846СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Ѕ
H__inference_sequential_2_layer_call_and_return_conditional_losses_132425u
!"/0CDKL@Ґ=
6Ґ3
)К&
input_3€€€€€€€€€2d
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ Ѕ
H__inference_sequential_2_layer_call_and_return_conditional_losses_132482u
!"/0CDKL@Ґ=
6Ґ3
)К&
input_3€€€€€€€€€2d
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ ј
H__inference_sequential_2_layer_call_and_return_conditional_losses_132630t
!"/0CDKL?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€2d
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ ј
H__inference_sequential_2_layer_call_and_return_conditional_losses_132698t
!"/0CDKL?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€2d
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ Щ
-__inference_sequential_2_layer_call_fn_132180h
!"/0CDKL@Ґ=
6Ґ3
)К&
input_3€€€€€€€€€2d
p 

 
™ "К€€€€€€€€€Щ
-__inference_sequential_2_layer_call_fn_132368h
!"/0CDKL@Ґ=
6Ґ3
)К&
input_3€€€€€€€€€2d
p

 
™ "К€€€€€€€€€Ш
-__inference_sequential_2_layer_call_fn_132537g
!"/0CDKL?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€2d
p 

 
™ "К€€€€€€€€€Ш
-__inference_sequential_2_layer_call_fn_132562g
!"/0CDKL?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€2d
p

 
™ "К€€€€€€€€€≠
$__inference_signature_wrapper_132725Д
!"/0CDKLCҐ@
Ґ 
9™6
4
input_3)К&
input_3€€€€€€€€€2d"1™.
,
dense_5!К
dense_5€€€€€€€€€