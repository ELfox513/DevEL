.class final Lnet/bytebuddy/jar/asm/SymbolTable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/jar/asm/SymbolTable$Entry;
    }
.end annotation


# instance fields
.field public final a:Lnet/bytebuddy/jar/asm/ClassWriter;

.field private bootstrapMethodCount:I

.field private bootstrapMethods:Lnet/bytebuddy/jar/asm/ByteVector;

.field private className:Ljava/lang/String;

.field private constantPool:Lnet/bytebuddy/jar/asm/ByteVector;

.field private constantPoolCount:I

.field private entries:[Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

.field private entryCount:I

.field private majorVersion:I

.field private final sourceClassReader:Lnet/bytebuddy/jar/asm/ClassReader;

.field private typeCount:I

.field private typeTable:[Lnet/bytebuddy/jar/asm/SymbolTable$Entry;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/jar/asm/ClassWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->a:Lnet/bytebuddy/jar/asm/ClassWriter;

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->sourceClassReader:Lnet/bytebuddy/jar/asm/ClassReader;

    const/16 p1, 0x100

    new-array p1, p1, [Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->entries:[Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    const/4 p1, 0x1

    iput p1, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPoolCount:I

    new-instance p1, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {p1}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPool:Lnet/bytebuddy/jar/asm/ByteVector;

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/jar/asm/ClassWriter;Lnet/bytebuddy/jar/asm/ClassReader;)V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->a:Lnet/bytebuddy/jar/asm/ClassWriter;

    iput-object p2, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->sourceClassReader:Lnet/bytebuddy/jar/asm/ClassReader;

    iget-object p1, p2, Lnet/bytebuddy/jar/asm/ClassReader;->a:[B

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->getItem(I)I

    move-result v1

    sub-int/2addr v1, v0

    iget v2, p2, Lnet/bytebuddy/jar/asm/ClassReader;->header:I

    sub-int/2addr v2, v1

    invoke-virtual {p2}, Lnet/bytebuddy/jar/asm/ClassReader;->getItemCount()I

    move-result v3

    iput v3, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPoolCount:I

    new-instance v3, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v3, v2}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>(I)V

    iput-object v3, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPool:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v3, p1, v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPoolCount:I

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    iput-object v1, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->entries:[Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    invoke-virtual {p2}, Lnet/bytebuddy/jar/asm/ClassReader;->getMaxStringLength()I

    move-result v1

    new-array v1, v1, [C

    const/4 v3, 0x0

    const/4 v10, 0x1

    :goto_0
    iget v4, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPoolCount:I

    if-ge v10, v4, :cond_2

    invoke-virtual {p2, v10}, Lnet/bytebuddy/jar/asm/ClassReader;->getItem(I)I

    move-result v4

    add-int/lit8 v5, v4, -0x1

    aget-byte v11, p1, v5

    packed-switch v11, :pswitch_data_0

    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_1
    add-int/lit8 v3, v4, 0x2

    invoke-virtual {p2, v3}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    invoke-virtual {p2, v3}, Lnet/bytebuddy/jar/asm/ClassReader;->getItem(I)I

    move-result v3

    invoke-virtual {p2, v3, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v7

    add-int/2addr v3, v2

    invoke-virtual {p2, v3, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v4}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v9

    move-object v4, p0

    move v5, v11

    move v6, v10

    invoke-direct/range {v4 .. v9}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantDynamicOrInvokeDynamicReference(IILjava/lang/String;Ljava/lang/String;I)V

    const/4 v3, 0x1

    goto/16 :goto_1

    :pswitch_2
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p2, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    invoke-virtual {p2, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->getItem(I)I

    move-result v5

    add-int/lit8 v6, v5, 0x2

    invoke-virtual {p2, v6}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    invoke-virtual {p2, v6}, Lnet/bytebuddy/jar/asm/ClassReader;->getItem(I)I

    move-result v6

    invoke-virtual {p2, v4}, Lnet/bytebuddy/jar/asm/ClassReader;->readByte(I)I

    move-result v7

    invoke-virtual {p2, v5, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v6, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v9

    add-int/2addr v6, v2

    invoke-virtual {p2, v6, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v12

    move-object v4, p0

    move v5, v10

    move v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v12

    invoke-direct/range {v4 .. v9}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantMethodHandle(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p2, v4, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p2, v4, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v10, v5, v4}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantNameAndType(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_4
    add-int/lit8 v5, v4, 0x2

    invoke-virtual {p2, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    invoke-virtual {p2, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->getItem(I)I

    move-result v5

    invoke-virtual {p2, v4, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v5, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v8

    add-int/2addr v5, v2

    invoke-virtual {p2, v5, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v9

    move-object v4, p0

    move v5, v10

    move v6, v11

    invoke-direct/range {v4 .. v9}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantMemberReference(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_5
    invoke-virtual {p2, v4, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v10, v11, v4}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8Reference(IILjava/lang/String;)V

    goto :goto_1

    :pswitch_6
    invoke-virtual {p2, v4}, Lnet/bytebuddy/jar/asm/ClassReader;->readLong(I)J

    move-result-wide v4

    invoke-direct {p0, v10, v11, v4, v5}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantLongOrDouble(IIJ)V

    goto :goto_1

    :pswitch_7
    invoke-virtual {p2, v4}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v4

    invoke-direct {p0, v10, v11, v4}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantIntegerOrFloat(III)V

    goto :goto_1

    :pswitch_8
    invoke-virtual {p2, v10, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->b(I[C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v10, v4}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(ILjava/lang/String;)V

    :goto_1
    const/4 v4, 0x5

    if-eq v11, v4, :cond_1

    const/4 v4, 0x6

    if-ne v11, v4, :cond_0

    goto :goto_2

    :cond_0
    const/4 v4, 0x1

    goto :goto_3

    :cond_1
    :goto_2
    const/4 v4, 0x2

    :goto_3
    add-int/2addr v10, v4

    goto/16 :goto_0

    :cond_2
    if-eqz v3, :cond_3

    invoke-direct {p0, p2, v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->copyBootstrapMethods(Lnet/bytebuddy/jar/asm/ClassReader;[C)V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private add(Lnet/bytebuddy/jar/asm/SymbolTable$Entry;)V
    .locals 3

    iget v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->entryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->entryCount:I

    iget v0, p1, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->h:I

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->entries:[Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    array-length v2, v1

    rem-int/2addr v0, v2

    aget-object v2, v1, v0

    iput-object v2, p1, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->i:Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    aput-object p1, v1, v0

    return-void
.end method

.method private addBootstrapMethod(III)Lnet/bytebuddy/jar/asm/Symbol;
    .locals 8

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->bootstrapMethods:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->a:[B

    invoke-direct {p0, p3}, Lnet/bytebuddy/jar/asm/SymbolTable;->get(I)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    iget v2, v1, Lnet/bytebuddy/jar/asm/Symbol;->b:I

    const/16 v3, 0x40

    if-ne v2, v3, :cond_2

    iget v2, v1, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->h:I

    if-ne v2, p3, :cond_2

    iget-wide v2, v1, Lnet/bytebuddy/jar/asm/Symbol;->f:J

    long-to-int v3, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, p2, :cond_1

    add-int v5, p1, v4

    aget-byte v5, v0, v5

    add-int v6, v3, v4

    aget-byte v6, v0, v6

    if-eq v5, v6, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_2

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->bootstrapMethods:Lnet/bytebuddy/jar/asm/ByteVector;

    iput p1, p2, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    return-object v1

    :cond_2
    iget-object v1, v1, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->i:Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    goto :goto_0

    :cond_3
    new-instance p2, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    iget v3, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->bootstrapMethodCount:I

    add-int/lit8 v0, v3, 0x1

    iput v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->bootstrapMethodCount:I

    const/16 v4, 0x40

    int-to-long v5, p1

    move-object v2, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;-><init>(IIJI)V

    invoke-direct {p0, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->put(Lnet/bytebuddy/jar/asm/SymbolTable$Entry;)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    move-result-object p1

    return-object p1
.end method

.method private addConstantDynamicOrInvokeDynamicReference(ILjava/lang/String;Ljava/lang/String;I)Lnet/bytebuddy/jar/asm/Symbol;
    .locals 10

    invoke-static {p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/SymbolTable;->hash(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v8

    invoke-direct {p0, v8}, Lnet/bytebuddy/jar/asm/SymbolTable;->get(I)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iget v1, v0, Lnet/bytebuddy/jar/asm/Symbol;->b:I

    if-ne v1, p1, :cond_0

    iget v1, v0, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->h:I

    if-ne v1, v8, :cond_0

    iget-wide v1, v0, Lnet/bytebuddy/jar/asm/Symbol;->f:J

    int-to-long v3, p4

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/Symbol;->d:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/Symbol;->e:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, v0, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->i:Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPool:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {p0, p2, p3}, Lnet/bytebuddy/jar/asm/SymbolTable;->o(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p1, p4, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->e(III)Lnet/bytebuddy/jar/asm/ByteVector;

    new-instance v9, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    iget v1, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPoolCount:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPoolCount:I

    const/4 v3, 0x0

    int-to-long v6, p4

    move-object v0, v9

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v8}, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-direct {p0, v9}, Lnet/bytebuddy/jar/asm/SymbolTable;->put(Lnet/bytebuddy/jar/asm/SymbolTable$Entry;)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    move-result-object p1

    return-object p1
.end method

.method private addConstantDynamicOrInvokeDynamicReference(IILjava/lang/String;Ljava/lang/String;I)V
    .locals 10

    invoke-static {p1, p3, p4, p5}, Lnet/bytebuddy/jar/asm/SymbolTable;->hash(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v8

    new-instance v9, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    int-to-long v6, p5

    const/4 v3, 0x0

    move-object v0, v9

    move v1, p2

    move v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v8}, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-direct {p0, v9}, Lnet/bytebuddy/jar/asm/SymbolTable;->add(Lnet/bytebuddy/jar/asm/SymbolTable$Entry;)V

    return-void
.end method

.method private addConstantIntegerOrFloat(II)Lnet/bytebuddy/jar/asm/Symbol;
    .locals 7

    invoke-static {p1, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->hash(II)I

    move-result v5

    invoke-direct {p0, v5}, Lnet/bytebuddy/jar/asm/SymbolTable;->get(I)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iget v1, v0, Lnet/bytebuddy/jar/asm/Symbol;->b:I

    if-ne v1, p1, :cond_0

    iget v1, v0, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->h:I

    if-ne v1, v5, :cond_0

    iget-wide v1, v0, Lnet/bytebuddy/jar/asm/Symbol;->f:J

    int-to-long v3, p2

    cmp-long v6, v1, v3

    if-nez v6, :cond_0

    return-object v0

    :cond_0
    iget-object v0, v0, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->i:Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPool:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    new-instance v6, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    iget v1, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPoolCount:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPoolCount:I

    int-to-long v3, p2

    move-object v0, v6

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;-><init>(IIJI)V

    invoke-direct {p0, v6}, Lnet/bytebuddy/jar/asm/SymbolTable;->put(Lnet/bytebuddy/jar/asm/SymbolTable$Entry;)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    move-result-object p1

    return-object p1
.end method

.method private addConstantIntegerOrFloat(III)V
    .locals 7

    new-instance v6, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    int-to-long v3, p3

    invoke-static {p2, p3}, Lnet/bytebuddy/jar/asm/SymbolTable;->hash(II)I

    move-result v5

    move-object v0, v6

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;-><init>(IIJI)V

    invoke-direct {p0, v6}, Lnet/bytebuddy/jar/asm/SymbolTable;->add(Lnet/bytebuddy/jar/asm/SymbolTable$Entry;)V

    return-void
.end method

.method private addConstantLongOrDouble(IJ)Lnet/bytebuddy/jar/asm/Symbol;
    .locals 7

    invoke-static {p1, p2, p3}, Lnet/bytebuddy/jar/asm/SymbolTable;->hash(IJ)I

    move-result v5

    invoke-direct {p0, v5}, Lnet/bytebuddy/jar/asm/SymbolTable;->get(I)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iget v1, v0, Lnet/bytebuddy/jar/asm/Symbol;->b:I

    if-ne v1, p1, :cond_0

    iget v1, v0, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->h:I

    if-ne v1, v5, :cond_0

    iget-wide v1, v0, Lnet/bytebuddy/jar/asm/Symbol;->f:J

    cmp-long v3, v1, p2

    if-nez v3, :cond_0

    return-object v0

    :cond_0
    iget-object v0, v0, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->i:Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    goto :goto_0

    :cond_1
    iget v1, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPoolCount:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPool:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lnet/bytebuddy/jar/asm/ByteVector;->putLong(J)Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPoolCount:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPoolCount:I

    new-instance v6, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    move-object v0, v6

    move v2, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;-><init>(IIJI)V

    invoke-direct {p0, v6}, Lnet/bytebuddy/jar/asm/SymbolTable;->put(Lnet/bytebuddy/jar/asm/SymbolTable$Entry;)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    move-result-object p1

    return-object p1
.end method

.method private addConstantLongOrDouble(IIJ)V
    .locals 7

    new-instance v6, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    invoke-static {p2, p3, p4}, Lnet/bytebuddy/jar/asm/SymbolTable;->hash(IJ)I

    move-result v5

    move-object v0, v6

    move v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;-><init>(IIJI)V

    invoke-direct {p0, v6}, Lnet/bytebuddy/jar/asm/SymbolTable;->add(Lnet/bytebuddy/jar/asm/SymbolTable$Entry;)V

    return-void
.end method

.method private addConstantMemberReference(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;
    .locals 10

    invoke-static {p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/SymbolTable;->hash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-direct {p0, v8}, Lnet/bytebuddy/jar/asm/SymbolTable;->get(I)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iget v1, v0, Lnet/bytebuddy/jar/asm/Symbol;->b:I

    if-ne v1, p1, :cond_0

    iget v1, v0, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->h:I

    if-ne v1, v8, :cond_0

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/Symbol;->c:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/Symbol;->d:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/Symbol;->e:Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, v0, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->i:Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPool:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {p0, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->c(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v1

    iget v1, v1, Lnet/bytebuddy/jar/asm/Symbol;->a:I

    invoke-virtual {p0, p3, p4}, Lnet/bytebuddy/jar/asm/SymbolTable;->o(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->e(III)Lnet/bytebuddy/jar/asm/ByteVector;

    new-instance v9, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    iget v1, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPoolCount:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPoolCount:I

    const-wide/16 v6, 0x0

    move-object v0, v9

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v8}, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-direct {p0, v9}, Lnet/bytebuddy/jar/asm/SymbolTable;->put(Lnet/bytebuddy/jar/asm/SymbolTable$Entry;)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    move-result-object p1

    return-object p1
.end method

.method private addConstantMemberReference(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    new-instance v9, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    invoke-static {p2, p3, p4, p5}, Lnet/bytebuddy/jar/asm/SymbolTable;->hash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    const-wide/16 v6, 0x0

    move-object v0, v9

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v8}, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-direct {p0, v9}, Lnet/bytebuddy/jar/asm/SymbolTable;->add(Lnet/bytebuddy/jar/asm/SymbolTable$Entry;)V

    return-void
.end method

.method private addConstantMethodHandle(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/16 v0, 0xf

    invoke-static {v0, p3, p4, p5, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->hash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    new-instance v0, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    int-to-long v7, p2

    const/16 v3, 0xf

    move-object v1, v0

    move v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v9}, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-direct {p0, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->add(Lnet/bytebuddy/jar/asm/SymbolTable$Entry;)V

    return-void
.end method

.method private addConstantNameAndType(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    new-instance v6, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    const/16 v0, 0xc

    invoke-static {v0, p2, p3}, Lnet/bytebuddy/jar/asm/SymbolTable;->hash(ILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    const/16 v2, 0xc

    move-object v0, v6

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;-><init>(IILjava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v6}, Lnet/bytebuddy/jar/asm/SymbolTable;->add(Lnet/bytebuddy/jar/asm/SymbolTable$Entry;)V

    return-void
.end method

.method private addConstantUtf8(ILjava/lang/String;)V
    .locals 3

    new-instance v0, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    const/4 v1, 0x1

    invoke-static {v1, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->hash(ILjava/lang/String;)I

    move-result v2

    invoke-direct {v0, p1, v1, p2, v2}, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;-><init>(IILjava/lang/String;I)V

    invoke-direct {p0, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->add(Lnet/bytebuddy/jar/asm/SymbolTable$Entry;)V

    return-void
.end method

.method private addConstantUtf8Reference(ILjava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;
    .locals 4

    invoke-static {p1, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->hash(ILjava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->get(I)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    iget v2, v1, Lnet/bytebuddy/jar/asm/Symbol;->b:I

    if-ne v2, p1, :cond_0

    iget v2, v1, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->h:I

    if-ne v2, v0, :cond_0

    iget-object v2, v1, Lnet/bytebuddy/jar/asm/Symbol;->e:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    iget-object v1, v1, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->i:Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPool:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {p0, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->r(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->d(II)Lnet/bytebuddy/jar/asm/ByteVector;

    new-instance v1, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    iget v2, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPoolCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPoolCount:I

    invoke-direct {v1, v2, p1, p2, v0}, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;-><init>(IILjava/lang/String;I)V

    invoke-direct {p0, v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->put(Lnet/bytebuddy/jar/asm/SymbolTable$Entry;)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    move-result-object p1

    return-object p1
.end method

.method private addConstantUtf8Reference(IILjava/lang/String;)V
    .locals 2

    new-instance v0, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    invoke-static {p2, p3}, Lnet/bytebuddy/jar/asm/SymbolTable;->hash(ILjava/lang/String;)I

    move-result v1

    invoke-direct {v0, p1, p2, p3, v1}, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;-><init>(IILjava/lang/String;I)V

    invoke-direct {p0, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->add(Lnet/bytebuddy/jar/asm/SymbolTable$Entry;)V

    return-void
.end method

.method private addTypeInternal(Lnet/bytebuddy/jar/asm/SymbolTable$Entry;)I
    .locals 4

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->typeTable:[Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    if-nez v0, :cond_0

    const/16 v0, 0x10

    new-array v0, v0, [Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->typeTable:[Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    :cond_0
    iget v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->typeCount:I

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->typeTable:[Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    array-length v2, v1

    if-ne v0, v2, :cond_1

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->typeTable:[Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->typeTable:[Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    iget v1, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->typeCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->typeCount:I

    aput-object p1, v0, v1

    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->put(Lnet/bytebuddy/jar/asm/SymbolTable$Entry;)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    move-result-object p1

    iget p1, p1, Lnet/bytebuddy/jar/asm/Symbol;->a:I

    return p1
.end method

.method private copyBootstrapMethods(Lnet/bytebuddy/jar/asm/ClassReader;[C)V
    .locals 10

    iget-object v0, p1, Lnet/bytebuddy/jar/asm/ClassReader;->a:[B

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/ClassReader;->a()I

    move-result v1

    add-int/lit8 v2, v1, -0x2

    invoke-virtual {p1, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    :goto_0
    if-lez v2, :cond_1

    invoke-virtual {p1, v1, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    const-string v4, "BootstrapMethods"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v1, 0x6

    invoke-virtual {p1, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    iput v2, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->bootstrapMethodCount:I

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p1, v3}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget v2, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->bootstrapMethodCount:I

    if-lez v2, :cond_3

    add-int/lit8 v2, v1, 0x8

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    new-instance v3, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v3, v1}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>(I)V

    iput-object v3, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->bootstrapMethods:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v3, v0, v2, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    const/4 v0, 0x0

    move v1, v2

    :goto_2
    iget v3, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->bootstrapMethodCount:I

    if-ge v0, v3, :cond_3

    sub-int v3, v1, v2

    invoke-virtual {p1, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v4, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_3
    add-int/lit8 v6, v5, -0x1

    if-lez v5, :cond_2

    invoke-virtual {p1, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v5, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    xor-int/2addr v4, v5

    move v5, v6

    goto :goto_3

    :cond_2
    new-instance v9, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    const/16 v5, 0x40

    int-to-long v6, v3

    const v3, 0x7fffffff

    and-int v8, v4, v3

    move-object v3, v9

    move v4, v0

    invoke-direct/range {v3 .. v8}, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;-><init>(IIJI)V

    invoke-direct {p0, v9}, Lnet/bytebuddy/jar/asm/SymbolTable;->add(Lnet/bytebuddy/jar/asm/SymbolTable$Entry;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private get(I)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->entries:[Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    array-length v1, v0

    rem-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private static hash(II)I
    .locals 0

    add-int/2addr p0, p1

    const p1, 0x7fffffff

    and-int/2addr p0, p1

    return p0
.end method

.method private static hash(IJ)I
    .locals 1

    long-to-int v0, p1

    add-int/2addr p0, v0

    const/16 v0, 0x20

    ushr-long/2addr p1, v0

    long-to-int p2, p1

    add-int/2addr p0, p2

    const p1, 0x7fffffff

    and-int/2addr p0, p1

    return p0
.end method

.method private static hash(ILjava/lang/String;)I
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    add-int/2addr p0, p1

    const p1, 0x7fffffff

    and-int/2addr p0, p1

    return p0
.end method

.method private static hash(ILjava/lang/String;I)I
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    add-int/2addr p0, p1

    add-int/2addr p0, p2

    const p1, 0x7fffffff

    and-int/2addr p0, p1

    return p0
.end method

.method private static hash(ILjava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    mul-int p1, p1, p2

    add-int/2addr p0, p1

    const p1, 0x7fffffff

    and-int/2addr p0, p1

    return p0
.end method

.method private static hash(ILjava/lang/String;Ljava/lang/String;I)I
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    mul-int p1, p1, p2

    add-int/lit8 p3, p3, 0x1

    mul-int p1, p1, p3

    add-int/2addr p0, p1

    const p1, 0x7fffffff

    and-int/2addr p0, p1

    return p0
.end method

.method private static hash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    mul-int p1, p1, p2

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p2

    mul-int p1, p1, p2

    add-int/2addr p0, p1

    const p1, 0x7fffffff

    and-int/2addr p0, p1

    return p0
.end method

.method private static hash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    mul-int p1, p1, p2

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p2

    mul-int p1, p1, p2

    mul-int p1, p1, p4

    add-int/2addr p0, p1

    const p1, 0x7fffffff

    and-int/2addr p0, p1

    return p0
.end method

.method private put(Lnet/bytebuddy/jar/asm/SymbolTable$Entry;)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;
    .locals 7

    iget v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->entryCount:I

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->entries:[Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    if-le v0, v2, :cond_2

    array-length v0, v1

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    new-array v2, v1, [Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->entries:[Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    aget-object v3, v3, v0

    :goto_1
    if-eqz v3, :cond_0

    iget v4, v3, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->h:I

    rem-int/2addr v4, v1

    iget-object v5, v3, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->i:Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    aget-object v6, v2, v4

    iput-object v6, v3, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->i:Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    aput-object v3, v2, v4

    move-object v3, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->entries:[Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    :cond_2
    iget v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->entryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->entryCount:I

    iget v0, p1, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->h:I

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->entries:[Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    array-length v2, v1

    rem-int/2addr v0, v2

    aget-object v2, v1, v0

    iput-object v2, p1, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->i:Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    aput-object p1, v1, v0

    return-object p1
.end method


# virtual methods
.method public A()Lnet/bytebuddy/jar/asm/ClassReader;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->sourceClassReader:Lnet/bytebuddy/jar/asm/ClassReader;

    return-object v0
.end method

.method public B(I)Lnet/bytebuddy/jar/asm/Symbol;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->typeTable:[Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public C(Lnet/bytebuddy/jar/asm/ByteVector;)V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->bootstrapMethods:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v0, :cond_0

    const-string v0, "BootstrapMethods"

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->r(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->bootstrapMethods:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p1

    iget v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->bootstrapMethodCount:I

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->bootstrapMethods:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/ByteVector;->a:[B

    const/4 v2, 0x0

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    invoke-virtual {p1, v1, v2, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_0
    return-void
.end method

.method public D(Lnet/bytebuddy/jar/asm/ByteVector;)V
    .locals 3

    iget v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPoolCount:I

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPool:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/ByteVector;->a:[B

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    return-void
.end method

.method public E(ILjava/lang/String;)I
    .locals 0

    iput p1, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->majorVersion:I

    iput-object p2, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->className:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->c(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lnet/bytebuddy/jar/asm/Symbol;->a:I

    return p1
.end method

.method public varargs a(Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/Symbol;
    .locals 11

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->bootstrapMethods:Lnet/bytebuddy/jar/asm/ByteVector;

    if-nez v0, :cond_0

    new-instance v0, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->bootstrapMethods:Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_0
    array-length v1, p2

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, p2, v4

    invoke-virtual {p0, v5}, Lnet/bytebuddy/jar/asm/SymbolTable;->b(Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v5

    iget v5, v5, Lnet/bytebuddy/jar/asm/Symbol;->a:I

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget v4, v0, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Handle;->getTag()I

    move-result v6

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Handle;->getOwner()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Handle;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Handle;->getDesc()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Handle;->isInterface()Z

    move-result v10

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lnet/bytebuddy/jar/asm/SymbolTable;->k(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v5

    iget v5, v5, Lnet/bytebuddy/jar/asm/Symbol;->a:I

    invoke-virtual {v0, v5}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_2

    aget v6, v2, v5

    invoke-virtual {v0, v6}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    sub-int/2addr v0, v4

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Handle;->hashCode()I

    move-result p1

    array-length v1, p2

    :goto_2
    if-ge v3, v1, :cond_3

    aget-object v2, p2, v3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr p1, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    const p2, 0x7fffffff

    and-int/2addr p1, p2

    invoke-direct {p0, v4, v0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addBootstrapMethod(III)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/Symbol;
    .locals 6

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->h(I)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->h(I)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->h(I)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    return-object p1

    :cond_2
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->h(I)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    return-object p1

    :cond_3
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->h(I)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    return-object p1

    :cond_4
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_5

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->g(F)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    return-object p1

    :cond_5
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_6

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->j(J)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    return-object p1

    :cond_6
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_7

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->d(D)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    return-object p1

    :cond_7
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_8

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->q(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    return-object p1

    :cond_8
    instance-of v0, p1, Lnet/bytebuddy/jar/asm/Type;

    if-eqz v0, :cond_b

    check-cast p1, Lnet/bytebuddy/jar/asm/Type;

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getSort()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_9

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->c(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    return-object p1

    :cond_9
    const/16 v1, 0xb

    if-ne v0, v1, :cond_a

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->l(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    return-object p1

    :cond_a
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->c(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    return-object p1

    :cond_b
    instance-of v0, p1, Lnet/bytebuddy/jar/asm/Handle;

    if-eqz v0, :cond_c

    check-cast p1, Lnet/bytebuddy/jar/asm/Handle;

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Handle;->getTag()I

    move-result v1

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Handle;->getOwner()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Handle;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Handle;->getDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Handle;->isInterface()Z

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/SymbolTable;->k(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    return-object p1

    :cond_c
    instance-of v0, p1, Lnet/bytebuddy/jar/asm/ConstantDynamic;

    if-eqz v0, :cond_d

    check-cast p1, Lnet/bytebuddy/jar/asm/ConstantDynamic;

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/ConstantDynamic;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/ConstantDynamic;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/ConstantDynamic;->getBootstrapMethod()Lnet/bytebuddy/jar/asm/Handle;

    move-result-object v2

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/ConstantDynamic;->a()[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->e(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    return-object p1

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8Reference(ILjava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    return-object p1
.end method

.method public d(D)Lnet/bytebuddy/jar/asm/Symbol;
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantLongOrDouble(IJ)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    return-object p1
.end method

.method public varargs e(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/Symbol;
    .locals 0

    invoke-virtual {p0, p3, p4}, Lnet/bytebuddy/jar/asm/SymbolTable;->a(Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p3

    iget p3, p3, Lnet/bytebuddy/jar/asm/Symbol;->a:I

    const/16 p4, 0x11

    invoke-direct {p0, p4, p1, p2, p3}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantDynamicOrInvokeDynamicReference(ILjava/lang/String;Ljava/lang/String;I)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;
    .locals 1

    const/16 v0, 0x9

    invoke-direct {p0, v0, p1, p2, p3}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantMemberReference(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    move-result-object p1

    return-object p1
.end method

.method public g(F)Lnet/bytebuddy/jar/asm/Symbol;
    .locals 1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantIntegerOrFloat(II)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    return-object p1
.end method

.method public h(I)Lnet/bytebuddy/jar/asm/Symbol;
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantIntegerOrFloat(II)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    return-object p1
.end method

.method public varargs i(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/Symbol;
    .locals 0

    invoke-virtual {p0, p3, p4}, Lnet/bytebuddy/jar/asm/SymbolTable;->a(Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p3

    iget p3, p3, Lnet/bytebuddy/jar/asm/Symbol;->a:I

    const/16 p4, 0x12

    invoke-direct {p0, p4, p1, p2, p3}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantDynamicOrInvokeDynamicReference(ILjava/lang/String;Ljava/lang/String;I)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    return-object p1
.end method

.method public j(J)Lnet/bytebuddy/jar/asm/Symbol;
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantLongOrDouble(IJ)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    return-object p1
.end method

.method public k(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/Symbol;
    .locals 10

    const/16 v0, 0xf

    invoke-static {v0, p2, p3, p4, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->hash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    invoke-direct {p0, v9}, Lnet/bytebuddy/jar/asm/SymbolTable;->get(I)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    iget v2, v1, Lnet/bytebuddy/jar/asm/Symbol;->b:I

    if-ne v2, v0, :cond_0

    iget v2, v1, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->h:I

    if-ne v2, v9, :cond_0

    iget-wide v2, v1, Lnet/bytebuddy/jar/asm/Symbol;->f:J

    int-to-long v4, p1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    iget-object v2, v1, Lnet/bytebuddy/jar/asm/Symbol;->c:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lnet/bytebuddy/jar/asm/Symbol;->d:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lnet/bytebuddy/jar/asm/Symbol;->e:Ljava/lang/String;

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    iget-object v1, v1, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->i:Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    if-gt p1, v1, :cond_2

    iget-object p5, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPool:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {p0, p2, p3, p4}, Lnet/bytebuddy/jar/asm/SymbolTable;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v1

    iget v1, v1, Lnet/bytebuddy/jar/asm/Symbol;->a:I

    invoke-virtual {p5, v0, p1, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->c(III)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPool:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {p0, p2, p3, p4, p5}, Lnet/bytebuddy/jar/asm/SymbolTable;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p5

    iget p5, p5, Lnet/bytebuddy/jar/asm/Symbol;->a:I

    invoke-virtual {v1, v0, p1, p5}, Lnet/bytebuddy/jar/asm/ByteVector;->c(III)Lnet/bytebuddy/jar/asm/ByteVector;

    :goto_1
    new-instance p5, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    iget v2, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPoolCount:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPoolCount:I

    const/16 v3, 0xf

    int-to-long v7, p1

    move-object v1, p5

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v9}, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-direct {p0, p5}, Lnet/bytebuddy/jar/asm/SymbolTable;->put(Lnet/bytebuddy/jar/asm/SymbolTable$Entry;)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    move-result-object p1

    return-object p1
.end method

.method public l(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8Reference(ILjava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    return-object p1
.end method

.method public m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/Symbol;
    .locals 0

    if-eqz p4, :cond_0

    const/16 p4, 0xb

    goto :goto_0

    :cond_0
    const/16 p4, 0xa

    :goto_0
    invoke-direct {p0, p4, p1, p2, p3}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantMemberReference(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    move-result-object p1

    return-object p1
.end method

.method public n(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;
    .locals 1

    const/16 v0, 0x13

    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8Reference(ILjava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    return-object p1
.end method

.method public o(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    const/16 v0, 0xc

    invoke-static {v0, p1, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->hash(ILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-direct {p0, v6}, Lnet/bytebuddy/jar/asm/SymbolTable;->get(I)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    iget v2, v1, Lnet/bytebuddy/jar/asm/Symbol;->b:I

    if-ne v2, v0, :cond_0

    iget v2, v1, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->h:I

    if-ne v2, v6, :cond_0

    iget-object v2, v1, Lnet/bytebuddy/jar/asm/Symbol;->d:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lnet/bytebuddy/jar/asm/Symbol;->e:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget p1, v1, Lnet/bytebuddy/jar/asm/Symbol;->a:I

    return p1

    :cond_0
    iget-object v1, v1, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->i:Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPool:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->r(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->r(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->e(III)Lnet/bytebuddy/jar/asm/ByteVector;

    new-instance v0, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    iget v2, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPoolCount:I

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPoolCount:I

    const/16 v3, 0xc

    move-object v1, v0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;-><init>(IILjava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->put(Lnet/bytebuddy/jar/asm/SymbolTable$Entry;)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    move-result-object p1

    iget p1, p1, Lnet/bytebuddy/jar/asm/Symbol;->a:I

    return p1
.end method

.method public p(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;
    .locals 1

    const/16 v0, 0x14

    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8Reference(ILjava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    return-object p1
.end method

.method public q(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8Reference(ILjava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    return-object p1
.end method

.method public r(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x1

    invoke-static {v0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->hash(ILjava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->get(I)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    iget v3, v2, Lnet/bytebuddy/jar/asm/Symbol;->b:I

    if-ne v3, v0, :cond_0

    iget v3, v2, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->h:I

    if-ne v3, v1, :cond_0

    iget-object v3, v2, Lnet/bytebuddy/jar/asm/Symbol;->e:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget p1, v2, Lnet/bytebuddy/jar/asm/Symbol;->a:I

    return p1

    :cond_0
    iget-object v2, v2, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->i:Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPool:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v2, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putUTF8(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/ByteVector;

    new-instance v2, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    iget v3, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPoolCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPoolCount:I

    invoke-direct {v2, v3, v0, p1, v1}, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;-><init>(IILjava/lang/String;I)V

    invoke-direct {p0, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->put(Lnet/bytebuddy/jar/asm/SymbolTable$Entry;)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    move-result-object p1

    iget p1, p1, Lnet/bytebuddy/jar/asm/Symbol;->a:I

    return p1
.end method

.method public s(II)I
    .locals 9

    const/16 v0, 0x20

    if-ge p1, p2, :cond_0

    int-to-long v1, p1

    int-to-long v3, p2

    goto :goto_0

    :cond_0
    int-to-long v1, p2

    int-to-long v3, p1

    :goto_0
    shl-long/2addr v3, v0

    or-long/2addr v1, v3

    move-wide v6, v1

    add-int v0, p1, p2

    const/16 v1, 0x82

    invoke-static {v1, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->hash(II)I

    move-result v8

    invoke-direct {p0, v8}, Lnet/bytebuddy/jar/asm/SymbolTable;->get(I)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    iget v2, v0, Lnet/bytebuddy/jar/asm/Symbol;->b:I

    if-ne v2, v1, :cond_1

    iget v2, v0, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->h:I

    if-ne v2, v8, :cond_1

    iget-wide v2, v0, Lnet/bytebuddy/jar/asm/Symbol;->f:J

    cmp-long v4, v2, v6

    if-nez v4, :cond_1

    iget p1, v0, Lnet/bytebuddy/jar/asm/Symbol;->g:I

    return p1

    :cond_1
    iget-object v0, v0, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->i:Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->typeTable:[Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    aget-object p1, v0, p1

    iget-object p1, p1, Lnet/bytebuddy/jar/asm/Symbol;->e:Ljava/lang/String;

    aget-object p2, v0, p2

    iget-object p2, p2, Lnet/bytebuddy/jar/asm/Symbol;->e:Ljava/lang/String;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->a:Lnet/bytebuddy/jar/asm/ClassWriter;

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/ClassWriter;->getCommonSuperClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->t(Ljava/lang/String;)I

    move-result p1

    new-instance p2, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    iget v4, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->typeCount:I

    const/16 v5, 0x82

    move-object v3, p2

    invoke-direct/range {v3 .. v8}, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;-><init>(IIJI)V

    invoke-direct {p0, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->put(Lnet/bytebuddy/jar/asm/SymbolTable$Entry;)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    move-result-object p2

    iput p1, p2, Lnet/bytebuddy/jar/asm/Symbol;->g:I

    return p1
.end method

.method public t(Ljava/lang/String;)I
    .locals 4

    const/16 v0, 0x80

    invoke-static {v0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->hash(ILjava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->get(I)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    iget v3, v2, Lnet/bytebuddy/jar/asm/Symbol;->b:I

    if-ne v3, v0, :cond_0

    iget v3, v2, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->h:I

    if-ne v3, v1, :cond_0

    iget-object v3, v2, Lnet/bytebuddy/jar/asm/Symbol;->e:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget p1, v2, Lnet/bytebuddy/jar/asm/Symbol;->a:I

    return p1

    :cond_0
    iget-object v2, v2, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->i:Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    goto :goto_0

    :cond_1
    new-instance v2, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    iget v3, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->typeCount:I

    invoke-direct {v2, v3, v0, p1, v1}, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;-><init>(IILjava/lang/String;I)V

    invoke-direct {p0, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addTypeInternal(Lnet/bytebuddy/jar/asm/SymbolTable$Entry;)I

    move-result p1

    return p1
.end method

.method public u(Ljava/lang/String;I)I
    .locals 8

    const/16 v0, 0x81

    invoke-static {v0, p1, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->hash(ILjava/lang/String;I)I

    move-result v7

    invoke-direct {p0, v7}, Lnet/bytebuddy/jar/asm/SymbolTable;->get(I)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    iget v2, v1, Lnet/bytebuddy/jar/asm/Symbol;->b:I

    if-ne v2, v0, :cond_0

    iget v2, v1, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->h:I

    if-ne v2, v7, :cond_0

    iget-wide v2, v1, Lnet/bytebuddy/jar/asm/Symbol;->f:J

    int-to-long v4, p2

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    iget-object v2, v1, Lnet/bytebuddy/jar/asm/Symbol;->e:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget p1, v1, Lnet/bytebuddy/jar/asm/Symbol;->a:I

    return p1

    :cond_0
    iget-object v1, v1, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->i:Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    goto :goto_0

    :cond_1
    new-instance v0, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    iget v2, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->typeCount:I

    const/16 v3, 0x81

    int-to-long v5, p2

    move-object v1, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;-><init>(IILjava/lang/String;JI)V

    invoke-direct {p0, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->addTypeInternal(Lnet/bytebuddy/jar/asm/SymbolTable$Entry;)I

    move-result p1

    return p1
.end method

.method public v()I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->bootstrapMethods:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v0, :cond_0

    const-string v0, "BootstrapMethods"

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->r(Ljava/lang/String;)I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->bootstrapMethods:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    add-int/lit8 v0, v0, 0x8

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->className:Ljava/lang/String;

    return-object v0
.end method

.method public x()I
    .locals 1

    iget v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPoolCount:I

    return v0
.end method

.method public y()I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPool:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    return v0
.end method

.method public z()I
    .locals 1

    iget v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->majorVersion:I

    return v0
.end method
