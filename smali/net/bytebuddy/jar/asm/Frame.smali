.class Lnet/bytebuddy/jar/asm/Frame;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ARRAY_OF:I = 0x4000000

.field private static final BOOLEAN:I = 0x400009

.field private static final BYTE:I = 0x40000a

.field private static final CHAR:I = 0x40000b

.field private static final CONSTANT_KIND:I = 0x400000

.field private static final DIM_MASK:I = -0x4000000

.field private static final DIM_SHIFT:I = 0x1a

.field private static final DIM_SIZE:I = 0x6

.field private static final DOUBLE:I = 0x400003

.field private static final ELEMENT_OF:I = -0x4000000

.field private static final FLAGS_SHIFT:I = 0x14

.field private static final FLAGS_SIZE:I = 0x2

.field private static final FLOAT:I = 0x400002

.field private static final INTEGER:I = 0x400001

.field private static final ITEM_ASM_BOOLEAN:I = 0x9

.field private static final ITEM_ASM_BYTE:I = 0xa

.field private static final ITEM_ASM_CHAR:I = 0xb

.field private static final ITEM_ASM_SHORT:I = 0xc

.field private static final KIND_MASK:I = 0x3c00000

.field private static final KIND_SHIFT:I = 0x16

.field private static final KIND_SIZE:I = 0x4

.field private static final LOCAL_KIND:I = 0x1000000

.field private static final LONG:I = 0x400004

.field private static final NULL:I = 0x400005

.field private static final REFERENCE_KIND:I = 0x800000

.field private static final SHORT:I = 0x40000c

.field private static final STACK_KIND:I = 0x1400000

.field private static final TOP:I = 0x400000

.field private static final TOP_IF_LONG_OR_DOUBLE_FLAG:I = 0x100000

.field private static final UNINITIALIZED_KIND:I = 0xc00000

.field private static final UNINITIALIZED_THIS:I = 0x400006

.field private static final VALUE_MASK:I = 0xfffff

.field private static final VALUE_SIZE:I = 0x14


# instance fields
.field public a:Lnet/bytebuddy/jar/asm/Label;

.field private initializationCount:I

.field private initializations:[I

.field private inputLocals:[I

.field private inputStack:[I

.field private outputLocals:[I

.field private outputStack:[I

.field private outputStackStart:S

.field private outputStackTop:S


# direct methods
.method public constructor <init>(Lnet/bytebuddy/jar/asm/Label;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/Frame;->a:Lnet/bytebuddy/jar/asm/Label;

    return-void
.end method

.method private addInitializedType(I)V
    .locals 4

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->initializations:[I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->initializations:[I

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->initializations:[I

    array-length v0, v0

    iget v1, p0, Lnet/bytebuddy/jar/asm/Frame;->initializationCount:I

    if-lt v1, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v0, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [I

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/Frame;->initializations:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lnet/bytebuddy/jar/asm/Frame;->initializations:[I

    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->initializations:[I

    iget v1, p0, Lnet/bytebuddy/jar/asm/Frame;->initializationCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/bytebuddy/jar/asm/Frame;->initializationCount:I

    aput p1, v0, v1

    return-void
.end method

.method public static d(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/Object;)I
    .locals 2

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/high16 p0, 0x400000

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    or-int/2addr p0, p1

    return p0

    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lnet/bytebuddy/jar/asm/Type;->getObjectType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object p1

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lnet/bytebuddy/jar/asm/Frame;->getAbstractTypeFromDescriptor(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_1
    const/high16 v0, 0xc00000

    check-cast p1, Lnet/bytebuddy/jar/asm/Label;

    iget p1, p1, Lnet/bytebuddy/jar/asm/Label;->b:I

    const-string v1, ""

    invoke-virtual {p0, v1, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->u(Ljava/lang/String;I)I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public static e(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->t(Ljava/lang/String;)I

    move-result p0

    const/high16 p1, 0x800000

    or-int/2addr p0, p1

    return p0
.end method

.method private static getAbstractTypeFromDescriptor(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;I)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v3, 0x400002

    const/16 v4, 0x46

    if-eq v2, v4, :cond_c

    const/high16 v5, 0x800000

    const/16 v6, 0x4c

    if-eq v2, v6, :cond_b

    const v7, 0x400001

    const/16 v8, 0x53

    if-eq v2, v8, :cond_a

    const/16 v9, 0x56

    if-eq v2, v9, :cond_9

    const/16 v9, 0x49

    if-eq v2, v9, :cond_a

    const v10, 0x400004

    const/16 v11, 0x4a

    if-eq v2, v11, :cond_8

    const/16 v12, 0x5a

    if-eq v2, v12, :cond_a

    const v13, 0x400003

    const/16 v14, 0x5b

    if-eq v2, v14, :cond_0

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    return v13

    :cond_0
    add-int/lit8 v2, p2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-ne v15, v14, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-eq v14, v4, :cond_7

    if-eq v14, v6, :cond_6

    if-eq v14, v8, :cond_5

    if-eq v14, v12, :cond_4

    if-eq v14, v9, :cond_3

    if-eq v14, v11, :cond_2

    packed-switch v14, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_1
    const v3, 0x400003

    goto :goto_1

    :pswitch_2
    const v3, 0x40000b

    goto :goto_1

    :pswitch_3
    const v3, 0x40000a

    goto :goto_1

    :cond_2
    const v3, 0x400004

    goto :goto_1

    :cond_3
    const v3, 0x400001

    goto :goto_1

    :cond_4
    const v3, 0x400009

    goto :goto_1

    :cond_5
    const v3, 0x40000c

    goto :goto_1

    :cond_6
    add-int/lit8 v3, v2, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->t(Ljava/lang/String;)I

    move-result v0

    or-int v3, v0, v5

    :cond_7
    :goto_1
    sub-int v2, v2, p2

    shl-int/lit8 v0, v2, 0x1a

    or-int/2addr v0, v3

    return v0

    :cond_8
    return v10

    :cond_9
    const/4 v0, 0x0

    return v0

    :cond_a
    :pswitch_4
    return v7

    :cond_b
    add-int/lit8 v2, p2, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->t(Ljava/lang/String;)I

    move-result v0

    or-int/2addr v0, v5

    return v0

    :cond_c
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_4
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x42
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getConcreteOutputType(II)I
    .locals 8

    const/high16 v0, -0x4000000

    and-int/2addr v0, p1

    const/high16 v1, 0x3c00000

    and-int/2addr v1, p1

    const v2, 0x400003

    const/high16 v3, 0x400000

    const v4, 0x400004

    const/high16 v5, 0x100000

    const v6, 0xfffff

    const/high16 v7, 0x1000000

    if-ne v1, v7, :cond_2

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    and-int v1, p1, v6

    aget p2, p2, v1

    add-int/2addr v0, p2

    and-int/2addr p1, v5

    if-eqz p1, :cond_0

    if-eq v0, v4, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v0

    :cond_1
    :goto_0
    return v3

    :cond_2
    const/high16 v7, 0x1400000

    if-ne v1, v7, :cond_5

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    and-int/2addr v6, p1

    sub-int/2addr p2, v6

    aget p2, v1, p2

    add-int/2addr v0, p2

    and-int/2addr p1, v5

    if-eqz p1, :cond_3

    if-eq v0, v4, :cond_4

    if-ne v0, v2, :cond_3

    goto :goto_1

    :cond_3
    move v3, v0

    :cond_4
    :goto_1
    return v3

    :cond_5
    return p1
.end method

.method private getInitializedType(Lnet/bytebuddy/jar/asm/SymbolTable;I)I
    .locals 8

    const v0, 0x400006

    if-eq p2, v0, :cond_0

    const/high16 v1, -0x400000

    and-int/2addr v1, p2

    const/high16 v2, 0xc00000

    if-ne v1, v2, :cond_5

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lnet/bytebuddy/jar/asm/Frame;->initializationCount:I

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/Frame;->initializations:[I

    aget v2, v2, v1

    const/high16 v3, -0x4000000

    and-int/2addr v3, v2

    const/high16 v4, 0x3c00000

    and-int/2addr v4, v2

    const v5, 0xfffff

    and-int v6, v2, v5

    const/high16 v7, 0x1000000

    if-ne v4, v7, :cond_1

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    aget v2, v2, v6

    :goto_1
    add-int/2addr v2, v3

    goto :goto_2

    :cond_1
    const/high16 v7, 0x1400000

    if-ne v4, v7, :cond_2

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    array-length v4, v2

    sub-int/2addr v4, v6

    aget v2, v2, v4

    goto :goto_1

    :cond_2
    :goto_2
    if-ne p2, v2, :cond_4

    const/high16 v1, 0x800000

    if-ne p2, v0, :cond_3

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->w()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->t(Ljava/lang/String;)I

    move-result p1

    :goto_3
    or-int/2addr p1, v1

    return p1

    :cond_3
    and-int/2addr p2, v5

    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->B(I)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p2

    iget-object p2, p2, Lnet/bytebuddy/jar/asm/Symbol;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->t(Ljava/lang/String;)I

    move-result p1

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return p2
.end method

.method private getLocal(I)I
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputLocals:[I

    const/high16 v1, 0x1000000

    if-eqz v0, :cond_2

    array-length v2, v0

    if-lt p1, v2, :cond_0

    goto :goto_0

    :cond_0
    aget v2, v0, p1

    if-nez v2, :cond_1

    or-int v2, p1, v1

    aput v2, v0, p1

    :cond_1
    return v2

    :cond_2
    :goto_0
    or-int/2addr p1, v1

    return p1
.end method

.method public static h(Lnet/bytebuddy/jar/asm/SymbolTable;ILnet/bytebuddy/jar/asm/ByteVector;)V
    .locals 7

    const/high16 v0, -0x4000000

    and-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x1a

    const/4 v1, 0x7

    const/high16 v2, 0x800000

    const/high16 v3, 0x3c00000

    const v4, 0xfffff

    if-nez v0, :cond_3

    and-int v0, p1, v4

    and-int/2addr p1, v3

    const/high16 v3, 0x400000

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    const/high16 v1, 0xc00000

    if-ne p1, v1, :cond_0

    const/16 p1, 0x8

    invoke-virtual {p2, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->B(I)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p0

    iget-wide v0, p0, Lnet/bytebuddy/jar/asm/Symbol;->f:J

    long-to-int p0, v0

    invoke-virtual {p1, p0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto/16 :goto_2

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    invoke-virtual {p2, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->B(I)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p2

    iget-object p2, p2, Lnet/bytebuddy/jar/asm/Symbol;->e:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->c(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p0

    iget p0, p0, Lnet/bytebuddy/jar/asm/Symbol;->a:I

    invoke-virtual {p1, p0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p2, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto/16 :goto_2

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    add-int/lit8 v6, v0, -0x1

    if-lez v0, :cond_4

    const/16 v0, 0x5b

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v6

    goto :goto_0

    :cond_4
    and-int v0, p1, v3

    if-ne v0, v2, :cond_5

    const/16 v0, 0x4c

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/2addr p1, v4

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->B(I)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    iget-object p1, p1, Lnet/bytebuddy/jar/asm/Symbol;->e:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3b

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    and-int/2addr p1, v4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    const/4 v0, 0x3

    if-eq p1, v0, :cond_7

    const/4 v0, 0x4

    if-eq p1, v0, :cond_6

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_0
    const/16 p1, 0x53

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_1
    const/16 p1, 0x43

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_2
    const/16 p1, 0x42

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_3
    const/16 p1, 0x5a

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    const/16 p1, 0x4a

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    const/16 p1, 0x44

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_8
    const/16 p1, 0x46

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_9
    const/16 p1, 0x49

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p2, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->c(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p0

    iget p0, p0, Lnet/bytebuddy/jar/asm/Symbol;->a:I

    invoke-virtual {p1, p0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static merge(Lnet/bytebuddy/jar/asm/SymbolTable;I[II)Z
    .locals 11

    aget v0, p2, p3

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    const v2, 0x3ffffff

    and-int/2addr v2, p1

    const v3, 0x400005

    if-ne v2, v3, :cond_2

    if-ne v0, v3, :cond_1

    return v1

    :cond_1
    const p1, 0x400005

    :cond_2
    const/4 v2, 0x1

    if-nez v0, :cond_3

    aput p1, p2, p3

    return v2

    :cond_3
    const/high16 v4, -0x4000000

    and-int v5, v0, v4

    const/high16 v6, 0x400000

    const/high16 v7, 0x3c00000

    const/high16 v8, 0x800000

    if-nez v5, :cond_7

    and-int v9, v0, v7

    if-ne v9, v8, :cond_4

    goto :goto_1

    :cond_4
    if-ne v0, v3, :cond_e

    and-int p0, p1, v4

    if-nez p0, :cond_6

    and-int p0, p1, v7

    if-ne p0, v8, :cond_5

    goto :goto_0

    :cond_5
    const/high16 p1, 0x400000

    :cond_6
    :goto_0
    move v6, p1

    goto :goto_3

    :cond_7
    :goto_1
    if-ne p1, v3, :cond_8

    return v1

    :cond_8
    const/high16 v3, -0x400000

    and-int v9, p1, v3

    and-int/2addr v3, v0

    const-string v10, "java/lang/Object"

    if-ne v9, v3, :cond_a

    and-int v3, v0, v7

    if-ne v3, v8, :cond_9

    and-int v3, p1, v4

    or-int/2addr v3, v8

    const v4, 0xfffff

    and-int/2addr p1, v4

    and-int/2addr v4, v0

    invoke-virtual {p0, p1, v4}, Lnet/bytebuddy/jar/asm/SymbolTable;->s(II)I

    move-result p0

    or-int v6, v3, p0

    goto :goto_3

    :cond_9
    and-int/2addr p1, v4

    add-int/2addr p1, v4

    or-int/2addr p1, v8

    invoke-virtual {p0, v10}, Lnet/bytebuddy/jar/asm/SymbolTable;->t(Ljava/lang/String;)I

    move-result p0

    :goto_2
    or-int v6, p1, p0

    goto :goto_3

    :cond_a
    and-int v3, p1, v4

    if-nez v3, :cond_b

    and-int v9, p1, v7

    if-ne v9, v8, :cond_e

    :cond_b
    if-eqz v3, :cond_c

    and-int/2addr p1, v7

    if-eq p1, v8, :cond_c

    add-int/2addr v3, v4

    :cond_c
    if-eqz v5, :cond_d

    and-int p1, v0, v7

    if-eq p1, v8, :cond_d

    add-int/2addr v5, v4

    :cond_d
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result p1

    or-int/2addr p1, v8

    invoke-virtual {p0, v10}, Lnet/bytebuddy/jar/asm/SymbolTable;->t(Ljava/lang/String;)I

    move-result p0

    goto :goto_2

    :cond_e
    :goto_3
    if-eq v6, v0, :cond_f

    aput v6, p2, p3

    return v2

    :cond_f
    return v1
.end method

.method private pop()I
    .locals 2

    iget-short v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStackTop:S

    if-lez v0, :cond_0

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStack:[I

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    iput-short v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStackTop:S

    aget v0, v1, v0

    return v0

    :cond_0
    const/high16 v0, 0x1400000

    iget-short v1, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStackStart:S

    add-int/lit8 v1, v1, -0x1

    int-to-short v1, v1

    iput-short v1, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStackStart:S

    neg-int v1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private pop(I)V
    .locals 2

    iget-short v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStackTop:S

    if-lt v0, p1, :cond_0

    sub-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStackTop:S

    goto :goto_0

    :cond_0
    iget-short v1, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStackStart:S

    sub-int/2addr p1, v0

    sub-int/2addr v1, p1

    int-to-short p1, v1

    iput-short p1, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStackStart:S

    const/4 p1, 0x0

    iput-short p1, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStackTop:S

    :goto_0
    return-void
.end method

.method private pop(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/16 v3, 0x28

    if-ne v0, v3, :cond_0

    invoke-static {p1}, Lnet/bytebuddy/jar/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result p1

    shr-int/2addr p1, v2

    sub-int/2addr p1, v1

    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    goto :goto_1

    :cond_0
    const/16 p1, 0x4a

    if-eq v0, p1, :cond_2

    const/16 p1, 0x44

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct {p0, v2}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    :goto_1
    return-void
.end method

.method private push(I)V
    .locals 4

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStack:[I

    if-nez v0, :cond_0

    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStack:[I

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStack:[I

    array-length v0, v0

    iget-short v1, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStackTop:S

    if-lt v1, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v0, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [I

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStack:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStack:[I

    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStack:[I

    iget-short v1, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStackTop:S

    add-int/lit8 v2, v1, 0x1

    int-to-short v2, v2

    iput-short v2, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStackTop:S

    aput p1, v0, v1

    iget-short p1, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStackStart:S

    add-int/2addr p1, v2

    int-to-short p1, p1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->a:Lnet/bytebuddy/jar/asm/Label;

    iget-short v1, v0, Lnet/bytebuddy/jar/asm/Label;->e:S

    if-le p1, v1, :cond_2

    iput-short p1, v0, Lnet/bytebuddy/jar/asm/Label;->e:S

    :cond_2
    return-void
.end method

.method private push(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_0

    invoke-static {p2}, Lnet/bytebuddy/jar/asm/Type;->a(Ljava/lang/String;)I

    move-result v0

    :cond_0
    invoke-static {p1, p2, v0}, Lnet/bytebuddy/jar/asm/Frame;->getAbstractTypeFromDescriptor(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    const p2, 0x400004

    if-eq p1, p2, :cond_1

    const p2, 0x400003

    if-ne p1, p2, :cond_2

    :cond_1
    const/high16 p1, 0x400000

    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    :cond_2
    return-void
.end method

.method private setLocal(II)V
    .locals 4

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputLocals:[I

    if-nez v0, :cond_0

    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputLocals:[I

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputLocals:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    add-int/lit8 v1, p1, 0x1

    mul-int/lit8 v2, v0, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [I

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/Frame;->outputLocals:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lnet/bytebuddy/jar/asm/Frame;->outputLocals:[I

    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputLocals:[I

    aput p2, v0, p1

    return-void
.end method


# virtual methods
.method public final a(Lnet/bytebuddy/jar/asm/MethodWriter;)V
    .locals 13

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    :goto_1
    array-length v5, v0

    const v6, 0x400003

    const/4 v7, 0x2

    const v8, 0x400004

    const/4 v9, 0x1

    if-ge v2, v5, :cond_3

    aget v5, v0, v2

    if-eq v5, v8, :cond_1

    if-ne v5, v6, :cond_0

    goto :goto_2

    :cond_0
    const/4 v7, 0x1

    :cond_1
    :goto_2
    add-int/2addr v2, v7

    const/high16 v6, 0x400000

    if-ne v5, v6, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_3
    array-length v10, v2

    if-ge v4, v10, :cond_6

    aget v10, v2, v4

    if-eq v10, v8, :cond_5

    if-ne v10, v6, :cond_4

    goto :goto_4

    :cond_4
    const/4 v10, 0x1

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v10, 0x2

    :goto_5
    add-int/2addr v4, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    iget-object v4, p0, Lnet/bytebuddy/jar/asm/Frame;->a:Lnet/bytebuddy/jar/asm/Label;

    iget v4, v4, Lnet/bytebuddy/jar/asm/Label;->b:I

    invoke-virtual {p1, v4, v3, v5}, Lnet/bytebuddy/jar/asm/MethodWriter;->j(III)I

    move-result v4

    const/4 v10, 0x0

    :goto_6
    add-int/lit8 v11, v3, -0x1

    if-lez v3, :cond_9

    aget v3, v0, v10

    if-eq v3, v8, :cond_8

    if-ne v3, v6, :cond_7

    goto :goto_7

    :cond_7
    const/4 v12, 0x1

    goto :goto_8

    :cond_8
    :goto_7
    const/4 v12, 0x2

    :goto_8
    add-int/2addr v10, v12

    add-int/lit8 v12, v4, 0x1

    invoke-virtual {p1, v4, v3}, Lnet/bytebuddy/jar/asm/MethodWriter;->h(II)V

    move v3, v11

    move v4, v12

    goto :goto_6

    :cond_9
    :goto_9
    add-int/lit8 v0, v5, -0x1

    if-lez v5, :cond_c

    aget v3, v2, v1

    if-eq v3, v8, :cond_b

    if-ne v3, v6, :cond_a

    goto :goto_a

    :cond_a
    const/4 v5, 0x1

    goto :goto_b

    :cond_b
    :goto_a
    const/4 v5, 0x2

    :goto_b
    add-int/2addr v1, v5

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1, v4, v3}, Lnet/bytebuddy/jar/asm/MethodWriter;->h(II)V

    move v4, v5

    move v5, v0

    goto :goto_9

    :cond_c
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/MethodWriter;->i()V

    return-void
.end method

.method public final b(Lnet/bytebuddy/jar/asm/Frame;)V
    .locals 1

    iget-object v0, p1, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    iget-object v0, p1, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    const/4 v0, 0x0

    iput-short v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStackStart:S

    iget-object v0, p1, Lnet/bytebuddy/jar/asm/Frame;->outputLocals:[I

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputLocals:[I

    iget-object v0, p1, Lnet/bytebuddy/jar/asm/Frame;->outputStack:[I

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStack:[I

    iget-short v0, p1, Lnet/bytebuddy/jar/asm/Frame;->outputStackTop:S

    iput-short v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStackTop:S

    iget v0, p1, Lnet/bytebuddy/jar/asm/Frame;->initializationCount:I

    iput v0, p0, Lnet/bytebuddy/jar/asm/Frame;->initializationCount:I

    iget-object p1, p1, Lnet/bytebuddy/jar/asm/Frame;->initializations:[I

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/Frame;->initializations:[I

    return-void
.end method

.method public c(IILnet/bytebuddy/jar/asm/Symbol;Lnet/bytebuddy/jar/asm/SymbolTable;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const v6, 0x400002

    const/high16 v7, 0x800000

    const v8, 0x400001

    const v9, 0x400003

    const v10, 0x400004

    const/high16 v11, 0x400000

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    const/high16 v12, 0x1400000

    const/high16 v14, 0x1000000

    const/high16 v15, 0x3c00000

    const/4 v13, 0x1

    packed-switch v1, :pswitch_data_2

    const/4 v12, 0x3

    const/16 v14, 0x5b

    const/4 v15, 0x0

    const/4 v5, 0x4

    packed-switch v1, :pswitch_data_3

    packed-switch v1, :pswitch_data_4

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :pswitch_0
    invoke-direct {v0, v2}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    iget-object v1, v3, Lnet/bytebuddy/jar/asm/Symbol;->e:Ljava/lang/String;

    invoke-direct {v0, v4, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_1
    iget-object v1, v3, Lnet/bytebuddy/jar/asm/Symbol;->e:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v14, :cond_0

    invoke-direct {v0, v4, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_0
    invoke-virtual {v4, v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->t(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v7

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    :pswitch_2
    iget-object v1, v3, Lnet/bytebuddy/jar/asm/Symbol;->e:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v14, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_1
    const/high16 v2, 0x4800000

    invoke-virtual {v4, v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->t(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v2

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    packed-switch v2, :pswitch_data_5

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :pswitch_4
    const v1, 0x4400004

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    :pswitch_5
    const v1, 0x4400001

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    :pswitch_6
    const v1, 0x440000c

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    :pswitch_7
    const v1, 0x440000a

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    :pswitch_8
    const v1, 0x4400003

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    :pswitch_9
    const v1, 0x4400002

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    :pswitch_a
    const v1, 0x440000b

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    :pswitch_b
    const v1, 0x4400009

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    :pswitch_c
    const/high16 v1, 0xc00000

    iget-object v3, v3, Lnet/bytebuddy/jar/asm/Symbol;->e:Ljava/lang/String;

    invoke-virtual {v4, v3, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->u(Ljava/lang/String;I)I

    move-result v2

    or-int/2addr v1, v2

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    :pswitch_d
    iget-object v1, v3, Lnet/bytebuddy/jar/asm/Symbol;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->pop(Ljava/lang/String;)V

    iget-object v1, v3, Lnet/bytebuddy/jar/asm/Symbol;->e:Ljava/lang/String;

    invoke-direct {v0, v4, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_e
    iget-object v2, v3, Lnet/bytebuddy/jar/asm/Symbol;->e:Ljava/lang/String;

    invoke-direct {v0, v2}, Lnet/bytebuddy/jar/asm/Frame;->pop(Ljava/lang/String;)V

    const/16 v2, 0xb8

    if-eq v1, v2, :cond_2

    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v2

    const/16 v5, 0xb7

    if-ne v1, v5, :cond_2

    iget-object v1, v3, Lnet/bytebuddy/jar/asm/Symbol;->d:Ljava/lang/String;

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x3c

    if-ne v1, v5, :cond_2

    invoke-direct {v0, v2}, Lnet/bytebuddy/jar/asm/Frame;->addInitializedType(I)V

    :cond_2
    iget-object v1, v3, Lnet/bytebuddy/jar/asm/Symbol;->e:Ljava/lang/String;

    invoke-direct {v0, v4, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_f
    iget-object v1, v3, Lnet/bytebuddy/jar/asm/Symbol;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->pop(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    goto/16 :goto_7

    :pswitch_10
    invoke-direct {v0, v13}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    iget-object v1, v3, Lnet/bytebuddy/jar/asm/Symbol;->e:Ljava/lang/String;

    invoke-direct {v0, v4, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_11
    iget-object v1, v3, Lnet/bytebuddy/jar/asm/Symbol;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->pop(Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_12
    iget-object v1, v3, Lnet/bytebuddy/jar/asm/Symbol;->e:Ljava/lang/String;

    invoke-direct {v0, v4, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "JSR/RET are not supported with computeFrames option"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_14
    invoke-direct {v0, v5}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    invoke-direct {v0, v8}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    :pswitch_15
    const/4 v1, 0x2

    goto/16 :goto_5

    :pswitch_16
    invoke-direct {v0, v13}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    invoke-direct {v0, v8}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    :pswitch_17
    const/4 v1, 0x2

    goto/16 :goto_3

    :pswitch_18
    invoke-direct {v0, v13}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    invoke-direct {v0, v9}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    invoke-direct {v0, v11}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    :pswitch_19
    invoke-direct {v0, v13}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    invoke-direct {v0, v6}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    :pswitch_1a
    invoke-direct {v0, v13}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    invoke-direct {v0, v10}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    invoke-direct {v0, v11}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    :pswitch_1b
    invoke-direct {v0, v2, v8}, Lnet/bytebuddy/jar/asm/Frame;->setLocal(II)V

    goto/16 :goto_7

    :pswitch_1c
    invoke-direct {v0, v12}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    invoke-direct {v0, v10}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    invoke-direct {v0, v11}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    :pswitch_1d
    invoke-direct {v0, v5}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    invoke-direct {v0, v9}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    invoke-direct {v0, v11}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    :pswitch_1e
    const/4 v1, 0x2

    goto/16 :goto_4

    :pswitch_1f
    invoke-direct {v0, v5}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    invoke-direct {v0, v10}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    invoke-direct {v0, v11}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    :pswitch_20
    const/4 v1, 0x2

    goto/16 :goto_6

    :pswitch_21
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v2

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    invoke-direct {v0, v2}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    :pswitch_22
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v2

    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v3

    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v4

    invoke-direct {v0, v2}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    invoke-direct {v0, v4}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    invoke-direct {v0, v3}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    invoke-direct {v0, v2}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    :pswitch_23
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v2

    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v3

    invoke-direct {v0, v2}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    invoke-direct {v0, v3}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    invoke-direct {v0, v2}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    :pswitch_24
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v2

    invoke-direct {v0, v2}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    invoke-direct {v0, v2}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    :pswitch_25
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v2

    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v3

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    invoke-direct {v0, v3}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    invoke-direct {v0, v2}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    :pswitch_26
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v2

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    invoke-direct {v0, v2}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    :pswitch_27
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    :pswitch_28
    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    goto/16 :goto_7

    :pswitch_29
    invoke-direct {v0, v13}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    goto/16 :goto_7

    :pswitch_2a
    invoke-direct {v0, v5}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    goto/16 :goto_7

    :pswitch_2b
    invoke-direct {v0, v12}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    goto/16 :goto_7

    :pswitch_2c
    invoke-direct {v0, v13}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/jar/asm/Frame;->setLocal(II)V

    add-int/lit8 v1, v2, 0x1

    invoke-direct {v0, v1, v11}, Lnet/bytebuddy/jar/asm/Frame;->setLocal(II)V

    if-lez v2, :cond_a

    add-int/lit8 v1, v2, -0x1

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->getLocal(I)I

    move-result v2

    if-eq v2, v10, :cond_5

    if-ne v2, v9, :cond_3

    goto :goto_0

    :cond_3
    and-int v3, v2, v15

    if-eq v3, v14, :cond_4

    if-ne v3, v12, :cond_a

    :cond_4
    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/jar/asm/Frame;->setLocal(II)V

    goto/16 :goto_7

    :cond_5
    :goto_0
    invoke-direct {v0, v1, v11}, Lnet/bytebuddy/jar/asm/Frame;->setLocal(II)V

    goto/16 :goto_7

    :pswitch_2d
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/jar/asm/Frame;->setLocal(II)V

    if-lez v2, :cond_a

    add-int/lit8 v1, v2, -0x1

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->getLocal(I)I

    move-result v2

    if-eq v2, v10, :cond_8

    if-ne v2, v9, :cond_6

    goto :goto_1

    :cond_6
    and-int v3, v2, v15

    if-eq v3, v14, :cond_7

    if-ne v3, v12, :cond_a

    :cond_7
    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/jar/asm/Frame;->setLocal(II)V

    goto/16 :goto_7

    :cond_8
    :goto_1
    invoke-direct {v0, v1, v11}, Lnet/bytebuddy/jar/asm/Frame;->setLocal(II)V

    goto/16 :goto_7

    :pswitch_2e
    invoke-direct {v0, v13}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v1

    const v2, 0x400005

    if-ne v1, v2, :cond_9

    goto :goto_2

    :cond_9
    const/high16 v2, -0x4000000

    add-int/2addr v1, v2

    :goto_2
    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    :goto_3
    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    invoke-direct {v0, v9}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    invoke-direct {v0, v11}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    :goto_4
    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    invoke-direct {v0, v6}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    :goto_5
    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    invoke-direct {v0, v10}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    invoke-direct {v0, v11}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    :goto_6
    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    invoke-direct {v0, v8}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    :pswitch_2f
    invoke-direct {v0, v2}, Lnet/bytebuddy/jar/asm/Frame;->getLocal(I)I

    move-result v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    :pswitch_30
    iget v1, v3, Lnet/bytebuddy/jar/asm/Symbol;->b:I

    packed-switch v1, :pswitch_data_6

    packed-switch v1, :pswitch_data_7

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :pswitch_31
    iget-object v1, v3, Lnet/bytebuddy/jar/asm/Symbol;->e:Ljava/lang/String;

    invoke-direct {v0, v4, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;)V

    goto :goto_7

    :pswitch_32
    const-string v1, "java/lang/invoke/MethodType"

    invoke-virtual {v4, v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->t(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v7

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto :goto_7

    :pswitch_33
    const-string v1, "java/lang/invoke/MethodHandle"

    invoke-virtual {v4, v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->t(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v7

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto :goto_7

    :pswitch_34
    const-string v1, "java/lang/String"

    invoke-virtual {v4, v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->t(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v7

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto :goto_7

    :pswitch_35
    const-string v1, "java/lang/Class"

    invoke-virtual {v4, v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->t(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v7

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto :goto_7

    :pswitch_36
    invoke-direct {v0, v9}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    invoke-direct {v0, v11}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto :goto_7

    :pswitch_37
    invoke-direct {v0, v10}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    invoke-direct {v0, v11}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto :goto_7

    :pswitch_38
    invoke-direct {v0, v6}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto :goto_7

    :pswitch_39
    invoke-direct {v0, v8}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto :goto_7

    :pswitch_3a
    invoke-direct {v0, v9}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    invoke-direct {v0, v11}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto :goto_7

    :pswitch_3b
    invoke-direct {v0, v6}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto :goto_7

    :pswitch_3c
    invoke-direct {v0, v10}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    invoke-direct {v0, v11}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto :goto_7

    :pswitch_3d
    invoke-direct {v0, v8}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto :goto_7

    :pswitch_3e
    const v1, 0x400005

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    :cond_a
    :goto_7
    :pswitch_3f
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3c
        :pswitch_3c
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3a
        :pswitch_3a
        :pswitch_3d
        :pswitch_3d
        :pswitch_30
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_2f
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2e
        :pswitch_20
        :pswitch_15
        :pswitch_1e
        :pswitch_17
        :pswitch_2e
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_2d
        :pswitch_2c
        :pswitch_2d
        :pswitch_2c
        :pswitch_2d
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4f
        :pswitch_2b
        :pswitch_2a
        :pswitch_2b
        :pswitch_2a
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_20
        :pswitch_1c
        :pswitch_20
        :pswitch_1c
        :pswitch_20
        :pswitch_1c
        :pswitch_20
        :pswitch_1f
        :pswitch_20
        :pswitch_1f
        :pswitch_20
        :pswitch_1f
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_20
        :pswitch_1e
        :pswitch_17
        :pswitch_16
        :pswitch_1a
        :pswitch_18
        :pswitch_20
        :pswitch_15
        :pswitch_1e
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_14
        :pswitch_20
        :pswitch_20
        :pswitch_14
        :pswitch_14
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_3f
        :pswitch_13
        :pswitch_13
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_28
        :pswitch_29
        :pswitch_28
        :pswitch_29
        :pswitch_3f
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_3
        :pswitch_2
        :pswitch_16
        :pswitch_29
        :pswitch_1
        :pswitch_16
        :pswitch_29
        :pswitch_29
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xc5
        :pswitch_0
        :pswitch_29
        :pswitch_29
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x4
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x3
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0xf
        :pswitch_33
        :pswitch_32
        :pswitch_31
    .end packed-switch
.end method

.method public final f()I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    array-length v0, v0

    return v0
.end method

.method public final g(Lnet/bytebuddy/jar/asm/SymbolTable;Lnet/bytebuddy/jar/asm/Frame;I)Z
    .locals 8

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    array-length v0, v0

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    array-length v1, v1

    iget-object v2, p2, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    new-array v2, v0, [I

    iput-object v2, p2, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_4

    iget-object v6, p0, Lnet/bytebuddy/jar/asm/Frame;->outputLocals:[I

    if-eqz v6, :cond_2

    array-length v7, v6

    if-ge v5, v7, :cond_2

    aget v6, v6, v5

    if-nez v6, :cond_1

    iget-object v6, p0, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    aget v6, v6, v5

    goto :goto_2

    :cond_1
    invoke-direct {p0, v6, v1}, Lnet/bytebuddy/jar/asm/Frame;->getConcreteOutputType(II)I

    move-result v6

    goto :goto_2

    :cond_2
    iget-object v6, p0, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    aget v6, v6, v5

    :goto_2
    iget-object v7, p0, Lnet/bytebuddy/jar/asm/Frame;->initializations:[I

    if-eqz v7, :cond_3

    invoke-direct {p0, p1, v6}, Lnet/bytebuddy/jar/asm/Frame;->getInitializedType(Lnet/bytebuddy/jar/asm/SymbolTable;I)I

    move-result v6

    :cond_3
    iget-object v7, p2, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    invoke-static {p1, v6, v7, v5}, Lnet/bytebuddy/jar/asm/Frame;->merge(Lnet/bytebuddy/jar/asm/SymbolTable;I[II)Z

    move-result v6

    or-int/2addr v2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    if-lez p3, :cond_7

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_5

    iget-object v5, p0, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    aget v5, v5, v1

    iget-object v6, p2, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    invoke-static {p1, v5, v6, v1}, Lnet/bytebuddy/jar/asm/Frame;->merge(Lnet/bytebuddy/jar/asm/SymbolTable;I[II)Z

    move-result v5

    or-int/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    iget-object v0, p2, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    if-nez v0, :cond_6

    new-array v0, v4, [I

    iput-object v0, p2, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    goto :goto_4

    :cond_6
    move v4, v2

    :goto_4
    iget-object p2, p2, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    invoke-static {p1, p3, p2, v3}, Lnet/bytebuddy/jar/asm/Frame;->merge(Lnet/bytebuddy/jar/asm/SymbolTable;I[II)Z

    move-result p1

    or-int/2addr p1, v4

    return p1

    :cond_7
    iget-object p3, p0, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    array-length p3, p3

    iget-short v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStackStart:S

    add-int/2addr p3, v0

    iget-object v0, p2, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    if-nez v0, :cond_8

    iget-short v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStackTop:S

    add-int/2addr v0, p3

    new-array v0, v0, [I

    iput-object v0, p2, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    goto :goto_5

    :cond_8
    move v4, v2

    :goto_5
    const/4 v0, 0x0

    :goto_6
    if-ge v0, p3, :cond_a

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    aget v2, v2, v0

    iget-object v5, p0, Lnet/bytebuddy/jar/asm/Frame;->initializations:[I

    if-eqz v5, :cond_9

    invoke-direct {p0, p1, v2}, Lnet/bytebuddy/jar/asm/Frame;->getInitializedType(Lnet/bytebuddy/jar/asm/SymbolTable;I)I

    move-result v2

    :cond_9
    iget-object v5, p2, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    invoke-static {p1, v2, v5, v0}, Lnet/bytebuddy/jar/asm/Frame;->merge(Lnet/bytebuddy/jar/asm/SymbolTable;I[II)Z

    move-result v2

    or-int/2addr v4, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_a
    :goto_7
    iget-short v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStackTop:S

    if-ge v3, v0, :cond_c

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStack:[I

    aget v0, v0, v3

    invoke-direct {p0, v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->getConcreteOutputType(II)I

    move-result v0

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/Frame;->initializations:[I

    if-eqz v2, :cond_b

    invoke-direct {p0, p1, v0}, Lnet/bytebuddy/jar/asm/Frame;->getInitializedType(Lnet/bytebuddy/jar/asm/SymbolTable;I)I

    move-result v0

    :cond_b
    iget-object v2, p2, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    add-int v5, p3, v3

    invoke-static {p1, v0, v2, v5}, Lnet/bytebuddy/jar/asm/Frame;->merge(Lnet/bytebuddy/jar/asm/SymbolTable;I[II)Z

    move-result v0

    or-int/2addr v4, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_c
    return v4
.end method

.method public final i(Lnet/bytebuddy/jar/asm/SymbolTable;I[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/high16 v3, 0x400000

    if-ge v1, p2, :cond_2

    iget-object v4, p0, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    add-int/lit8 v5, v2, 0x1

    aget-object v6, p3, v1

    invoke-static {p1, v6}, Lnet/bytebuddy/jar/asm/Frame;->d(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/Object;)I

    move-result v6

    aput v6, v4, v2

    aget-object v2, p3, v1

    sget-object v4, Lnet/bytebuddy/jar/asm/Opcodes;->LONG:Ljava/lang/Integer;

    if-eq v2, v4, :cond_1

    sget-object v4, Lnet/bytebuddy/jar/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    if-ne v2, v4, :cond_0

    goto :goto_1

    :cond_0
    move v2, v5

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    add-int/lit8 v4, v5, 0x1

    aput v3, v2, v5

    move v2, v4

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_3
    iget-object p2, p0, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    array-length p3, p2

    if-ge v2, p3, :cond_3

    add-int/lit8 p3, v2, 0x1

    aput v3, p2, v2

    move v2, p3

    goto :goto_3

    :cond_3
    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_4
    if-ge p2, p4, :cond_6

    aget-object v1, p5, p2

    sget-object v2, Lnet/bytebuddy/jar/asm/Opcodes;->LONG:Ljava/lang/Integer;

    if-eq v1, v2, :cond_4

    sget-object v2, Lnet/bytebuddy/jar/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    if-ne v1, v2, :cond_5

    :cond_4
    add-int/lit8 p3, p3, 0x1

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_6
    add-int/2addr p3, p4

    new-array p2, p3, [I

    iput-object p2, p0, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_5
    if-ge p2, p4, :cond_9

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    add-int/lit8 v2, p3, 0x1

    aget-object v4, p5, p2

    invoke-static {p1, v4}, Lnet/bytebuddy/jar/asm/Frame;->d(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/Object;)I

    move-result v4

    aput v4, v1, p3

    aget-object p3, p5, p2

    sget-object v1, Lnet/bytebuddy/jar/asm/Opcodes;->LONG:Ljava/lang/Integer;

    if-eq p3, v1, :cond_8

    sget-object v1, Lnet/bytebuddy/jar/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    if-ne p3, v1, :cond_7

    goto :goto_6

    :cond_7
    move p3, v2

    goto :goto_7

    :cond_8
    :goto_6
    iget-object p3, p0, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    add-int/lit8 v1, v2, 0x1

    aput v3, p3, v2

    move p3, v1

    :goto_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_9
    iput-short v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStackTop:S

    iput v0, p0, Lnet/bytebuddy/jar/asm/Frame;->initializationCount:I

    return-void
.end method

.method public final j(Lnet/bytebuddy/jar/asm/SymbolTable;ILjava/lang/String;I)V
    .locals 7

    new-array v0, p4, [I

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    const/4 v1, 0x0

    new-array v2, v1, [I

    iput-object v2, p0, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    and-int/lit8 v2, p2, 0x8

    const/4 v3, 0x1

    if-nez v2, :cond_1

    const/high16 v2, 0x40000

    and-int/2addr p2, v2

    if-nez p2, :cond_0

    const/high16 p2, 0x800000

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->t(Ljava/lang/String;)I

    move-result v2

    or-int/2addr p2, v2

    aput p2, v0, v1

    goto :goto_0

    :cond_0
    const p2, 0x400006

    aput p2, v0, v1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-static {p3}, Lnet/bytebuddy/jar/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lnet/bytebuddy/jar/asm/Type;

    move-result-object p2

    array-length p3, p2

    const/4 v0, 0x0

    :goto_1
    const/high16 v2, 0x400000

    if-ge v0, p3, :cond_4

    aget-object v4, p2, v0

    invoke-virtual {v4}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4, v1}, Lnet/bytebuddy/jar/asm/Frame;->getAbstractTypeFromDescriptor(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;I)I

    move-result v4

    iget-object v5, p0, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    add-int/lit8 v6, v3, 0x1

    aput v4, v5, v3

    const v3, 0x400004

    if-eq v4, v3, :cond_3

    const v3, 0x400003

    if-ne v4, v3, :cond_2

    goto :goto_2

    :cond_2
    move v3, v6

    goto :goto_3

    :cond_3
    :goto_2
    add-int/lit8 v3, v6, 0x1

    aput v2, v5, v6

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    :goto_4
    if-ge v3, p4, :cond_5

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    add-int/lit8 p2, v3, 0x1

    aput v2, p1, v3

    move v3, p2

    goto :goto_4

    :cond_5
    return-void
.end method
