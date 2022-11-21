.class public Lcom/esotericsoftware/asm/TypePath;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ARRAY_ELEMENT:I = 0x0

.field public static final INNER_TYPE:I = 0x1

.field public static final TYPE_ARGUMENT:I = 0x3

.field public static final WILDCARD_BOUND:I = 0x2


# instance fields
.field public a:[B

.field public b:I


# direct methods
.method public constructor <init>([BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/esotericsoftware/asm/TypePath;->a:[B

    iput p2, p0, Lcom/esotericsoftware/asm/TypePath;->b:I

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/esotericsoftware/asm/TypePath;
    .locals 8

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Lcom/esotericsoftware/asm/ByteVector;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/asm/ByteVector;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/asm/ByteVector;->putByte(I)Lcom/esotericsoftware/asm/ByteVector;

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    if-ge v3, v0, :cond_7

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x5b

    if-ne v3, v6, :cond_1

    invoke-virtual {v1, v2, v2}, Lcom/esotericsoftware/asm/ByteVector;->a(II)Lcom/esotericsoftware/asm/ByteVector;

    goto :goto_2

    :cond_1
    const/16 v6, 0x2e

    if-ne v3, v6, :cond_2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/esotericsoftware/asm/ByteVector;->a(II)Lcom/esotericsoftware/asm/ByteVector;

    goto :goto_2

    :cond_2
    const/16 v6, 0x2a

    if-ne v3, v6, :cond_3

    invoke-virtual {v1, v4, v2}, Lcom/esotericsoftware/asm/ByteVector;->a(II)Lcom/esotericsoftware/asm/ByteVector;

    goto :goto_2

    :cond_3
    const/16 v4, 0x30

    if-lt v3, v4, :cond_6

    const/16 v6, 0x39

    if-gt v3, v6, :cond_6

    add-int/lit8 v3, v3, -0x30

    :goto_1
    if-ge v5, v0, :cond_4

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v4, :cond_4

    if-gt v7, v6, :cond_4

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v7

    sub-int/2addr v3, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    if-ge v5, v0, :cond_5

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x3b

    if-ne v4, v6, :cond_5

    add-int/lit8 v5, v5, 0x1

    :cond_5
    const/4 v4, 0x3

    invoke-virtual {v1, v4, v3}, Lcom/esotericsoftware/asm/ByteVector;->a(II)Lcom/esotericsoftware/asm/ByteVector;

    :cond_6
    :goto_2
    move v3, v5

    goto :goto_0

    :cond_7
    iget-object p0, v1, Lcom/esotericsoftware/asm/ByteVector;->a:[B

    iget v0, v1, Lcom/esotericsoftware/asm/ByteVector;->b:I

    div-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, p0, v2

    new-instance v0, Lcom/esotericsoftware/asm/TypePath;

    invoke-direct {v0, p0, v2}, Lcom/esotericsoftware/asm/TypePath;-><init>([BI)V

    return-object v0

    :cond_8
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getLength()I
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/asm/TypePath;->a:[B

    iget v1, p0, Lcom/esotericsoftware/asm/TypePath;->b:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public getStep(I)I
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/asm/TypePath;->a:[B

    iget v1, p0, Lcom/esotericsoftware/asm/TypePath;->b:I

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    aget-byte p1, v0, v1

    return p1
.end method

.method public getStepArgument(I)I
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/asm/TypePath;->a:[B

    iget v1, p0, Lcom/esotericsoftware/asm/TypePath;->b:I

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x2

    aget-byte p1, v0, v1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/esotericsoftware/asm/TypePath;->getLength()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    mul-int/lit8 v2, v0, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/asm/TypePath;->getStep(I)I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    const/16 v3, 0x5f

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v2}, Lcom/esotericsoftware/asm/TypePath;->getStepArgument(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v3, 0x3b

    goto :goto_1

    :cond_1
    const/16 v3, 0x2a

    goto :goto_1

    :cond_2
    const/16 v3, 0x2e

    goto :goto_1

    :cond_3
    const/16 v3, 0x5b

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
