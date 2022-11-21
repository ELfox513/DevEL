.class public Lnet/bytebuddy/jar/asm/TypeReference;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CAST:I = 0x47

.field public static final CLASS_EXTENDS:I = 0x10

.field public static final CLASS_TYPE_PARAMETER:I = 0x0

.field public static final CLASS_TYPE_PARAMETER_BOUND:I = 0x11

.field public static final CONSTRUCTOR_INVOCATION_TYPE_ARGUMENT:I = 0x48

.field public static final CONSTRUCTOR_REFERENCE:I = 0x45

.field public static final CONSTRUCTOR_REFERENCE_TYPE_ARGUMENT:I = 0x4a

.field public static final EXCEPTION_PARAMETER:I = 0x42

.field public static final FIELD:I = 0x13

.field public static final INSTANCEOF:I = 0x43

.field public static final LOCAL_VARIABLE:I = 0x40

.field public static final METHOD_FORMAL_PARAMETER:I = 0x16

.field public static final METHOD_INVOCATION_TYPE_ARGUMENT:I = 0x49

.field public static final METHOD_RECEIVER:I = 0x15

.field public static final METHOD_REFERENCE:I = 0x46

.field public static final METHOD_REFERENCE_TYPE_ARGUMENT:I = 0x4b

.field public static final METHOD_RETURN:I = 0x14

.field public static final METHOD_TYPE_PARAMETER:I = 0x1

.field public static final METHOD_TYPE_PARAMETER_BOUND:I = 0x12

.field public static final NEW:I = 0x44

.field public static final RESOURCE_VARIABLE:I = 0x41

.field public static final THROWS:I = 0x17


# instance fields
.field private final targetTypeAndInfo:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/bytebuddy/jar/asm/TypeReference;->targetTypeAndInfo:I

    return-void
.end method

.method public static a(ILnet/bytebuddy/jar/asm/ByteVector;)V
    .locals 2

    ushr-int/lit8 v0, p0, 0x18

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_0
    invoke-virtual {p1, p0}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_0

    :pswitch_2
    const v1, 0xffff00

    and-int/2addr p0, v1

    shr-int/lit8 p0, p0, 0x8

    invoke-virtual {p1, v0, p0}, Lnet/bytebuddy/jar/asm/ByteVector;->d(II)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_0

    :cond_0
    :pswitch_3
    ushr-int/lit8 p0, p0, 0x10

    invoke-virtual {p1, p0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x42
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static newExceptionReference(I)Lnet/bytebuddy/jar/asm/TypeReference;
    .locals 2

    new-instance v0, Lnet/bytebuddy/jar/asm/TypeReference;

    shl-int/lit8 p0, p0, 0x8

    const/high16 v1, 0x17000000

    or-int/2addr p0, v1

    invoke-direct {v0, p0}, Lnet/bytebuddy/jar/asm/TypeReference;-><init>(I)V

    return-object v0
.end method

.method public static newFormalParameterReference(I)Lnet/bytebuddy/jar/asm/TypeReference;
    .locals 2

    new-instance v0, Lnet/bytebuddy/jar/asm/TypeReference;

    shl-int/lit8 p0, p0, 0x10

    const/high16 v1, 0x16000000

    or-int/2addr p0, v1

    invoke-direct {v0, p0}, Lnet/bytebuddy/jar/asm/TypeReference;-><init>(I)V

    return-object v0
.end method

.method public static newSuperTypeReference(I)Lnet/bytebuddy/jar/asm/TypeReference;
    .locals 2

    new-instance v0, Lnet/bytebuddy/jar/asm/TypeReference;

    const v1, 0xffff

    and-int/2addr p0, v1

    shl-int/lit8 p0, p0, 0x8

    const/high16 v1, 0x10000000

    or-int/2addr p0, v1

    invoke-direct {v0, p0}, Lnet/bytebuddy/jar/asm/TypeReference;-><init>(I)V

    return-object v0
.end method

.method public static newTryCatchReference(I)Lnet/bytebuddy/jar/asm/TypeReference;
    .locals 2

    new-instance v0, Lnet/bytebuddy/jar/asm/TypeReference;

    shl-int/lit8 p0, p0, 0x8

    const/high16 v1, 0x42000000    # 32.0f

    or-int/2addr p0, v1

    invoke-direct {v0, p0}, Lnet/bytebuddy/jar/asm/TypeReference;-><init>(I)V

    return-object v0
.end method

.method public static newTypeArgumentReference(II)Lnet/bytebuddy/jar/asm/TypeReference;
    .locals 1

    new-instance v0, Lnet/bytebuddy/jar/asm/TypeReference;

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, p1

    invoke-direct {v0, p0}, Lnet/bytebuddy/jar/asm/TypeReference;-><init>(I)V

    return-object v0
.end method

.method public static newTypeParameterBoundReference(III)Lnet/bytebuddy/jar/asm/TypeReference;
    .locals 1

    new-instance v0, Lnet/bytebuddy/jar/asm/TypeReference;

    shl-int/lit8 p0, p0, 0x18

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x8

    or-int/2addr p0, p1

    invoke-direct {v0, p0}, Lnet/bytebuddy/jar/asm/TypeReference;-><init>(I)V

    return-object v0
.end method

.method public static newTypeParameterReference(II)Lnet/bytebuddy/jar/asm/TypeReference;
    .locals 1

    new-instance v0, Lnet/bytebuddy/jar/asm/TypeReference;

    shl-int/lit8 p0, p0, 0x18

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    invoke-direct {v0, p0}, Lnet/bytebuddy/jar/asm/TypeReference;-><init>(I)V

    return-object v0
.end method

.method public static newTypeReference(I)Lnet/bytebuddy/jar/asm/TypeReference;
    .locals 1

    new-instance v0, Lnet/bytebuddy/jar/asm/TypeReference;

    shl-int/lit8 p0, p0, 0x18

    invoke-direct {v0, p0}, Lnet/bytebuddy/jar/asm/TypeReference;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public getExceptionIndex()I
    .locals 2

    iget v0, p0, Lnet/bytebuddy/jar/asm/TypeReference;->targetTypeAndInfo:I

    const v1, 0xffff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getFormalParameterIndex()I
    .locals 2

    iget v0, p0, Lnet/bytebuddy/jar/asm/TypeReference;->targetTypeAndInfo:I

    const/high16 v1, 0xff0000

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public getSort()I
    .locals 1

    iget v0, p0, Lnet/bytebuddy/jar/asm/TypeReference;->targetTypeAndInfo:I

    ushr-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public getSuperTypeIndex()I
    .locals 2

    iget v0, p0, Lnet/bytebuddy/jar/asm/TypeReference;->targetTypeAndInfo:I

    const v1, 0xffff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    return v0
.end method

.method public getTryCatchBlockIndex()I
    .locals 2

    iget v0, p0, Lnet/bytebuddy/jar/asm/TypeReference;->targetTypeAndInfo:I

    const v1, 0xffff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getTypeArgumentIndex()I
    .locals 1

    iget v0, p0, Lnet/bytebuddy/jar/asm/TypeReference;->targetTypeAndInfo:I

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getTypeParameterBoundIndex()I
    .locals 2

    iget v0, p0, Lnet/bytebuddy/jar/asm/TypeReference;->targetTypeAndInfo:I

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getTypeParameterIndex()I
    .locals 2

    iget v0, p0, Lnet/bytebuddy/jar/asm/TypeReference;->targetTypeAndInfo:I

    const/high16 v1, 0xff0000

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lnet/bytebuddy/jar/asm/TypeReference;->targetTypeAndInfo:I

    return v0
.end method
