.class public Lcom/badlogic/gdx/utils/LittleEndianInputStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"

# interfaces
.implements Ljava/io/DataInput;


# instance fields
.field public a:Ljava/io/DataInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LittleEndianInputStream;->a:Ljava/io/DataInputStream;

    return-void
.end method


# virtual methods
.method public readBoolean()Z
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/LittleEndianInputStream;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    return v0
.end method

.method public readByte()B
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/LittleEndianInputStream;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    return v0
.end method

.method public readChar()C
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/LittleEndianInputStream;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readChar()C

    move-result v0

    return v0
.end method

.method public readDouble()D
    .locals 2

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/LittleEndianInputStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/LittleEndianInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/LittleEndianInputStream;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->readFully([B)V

    return-void
.end method

.method public readFully([BII)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/LittleEndianInputStream;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->readFully([BII)V

    return-void
.end method

.method public readInt()I
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x3

    const/4 v2, 0x3

    :goto_0
    if-ltz v2, :cond_0

    iget-object v3, p0, Lcom/badlogic/gdx/utils/LittleEndianInputStream;->a:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    aget v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    const/4 v3, 0x1

    aget v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const/4 v3, 0x2

    aget v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    aget v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    return v0
.end method

.method public final readLine()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/LittleEndianInputStream;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readLong()J
    .locals 8

    const/16 v0, 0x8

    new-array v1, v0, [I

    const/4 v2, 0x7

    const/4 v3, 0x7

    :goto_0
    if-ltz v3, :cond_0

    iget-object v4, p0, Lcom/badlogic/gdx/utils/LittleEndianInputStream;->a:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    aget v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    const/16 v5, 0x38

    shl-long/2addr v3, v5

    const/4 v5, 0x1

    aget v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    const/16 v7, 0x30

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    const/4 v5, 0x2

    aget v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    const/16 v7, 0x28

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    const/4 v5, 0x3

    aget v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    const/16 v7, 0x20

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    const/4 v5, 0x4

    aget v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    const/16 v7, 0x18

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    const/4 v5, 0x5

    aget v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    const/16 v7, 0x10

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    const/4 v5, 0x6

    aget v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    aget v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    or-long/2addr v0, v3

    return-wide v0
.end method

.method public readShort()S
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/utils/LittleEndianInputStream;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/LittleEndianInputStream;->a:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public readUTF()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/LittleEndianInputStream;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUnsignedByte()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/LittleEndianInputStream;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    return v0
.end method

.method public readUnsignedShort()I
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/utils/LittleEndianInputStream;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/LittleEndianInputStream;->a:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public skipBytes(I)I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/LittleEndianInputStream;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result p1

    return p1
.end method
