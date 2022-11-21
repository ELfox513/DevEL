.class public Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;
.super Lcom/esotericsoftware/kryo/io/ByteBufferInput;
.source "SourceFile"


# instance fields
.field public d:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;-><init>(I)V

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->o()V

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->newDirectBuffer(JI)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->o()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->o()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;-><init>(Ljava/io/InputStream;I)V

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->o()V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->o()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;-><init>([B)V

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->o()V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;-><init>([BII)V

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->o()V

    return-void
.end method

.method private n(Ljava/nio/Buffer;I)V
    .locals 0

    invoke-virtual {p1, p2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public final o()V
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    check-cast v0, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v0}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->d:J

    return-void
.end method

.method public read()I
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->optional(I)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    sget-object v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->d:J

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    invoke-direct {p0, v1, v2}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->n(Ljava/nio/Buffer;I)V

    return v0
.end method

.method public readBoolean()Z
    .locals 7

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    :cond_0
    sget-object v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-wide v3, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->d:J

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v5, v1, 0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    int-to-long v5, v1

    add-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->n(Ljava/nio/Buffer;I)V

    return v2
.end method

.method public readBooleans(I)[Z
    .locals 3

    new-array v0, p1, [Z

    sget-wide v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->booleanArrayBaseOffset:J

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->readBytes(Ljava/lang/Object;JI)V

    return-object v0
.end method

.method public readByte()B
    .locals 5

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    :cond_0
    sget-object v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->d:J

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v0

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    invoke-direct {p0, v1, v2}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->n(Ljava/nio/Buffer;I)V

    return v0
.end method

.method public readByteUnsigned()I
    .locals 5

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    :cond_0
    sget-object v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->d:J

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    invoke-direct {p0, v1, v2}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->n(Ljava/nio/Buffer;I)V

    return v0
.end method

.method public readBytes(Ljava/lang/Object;JI)V
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget v2, v0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int/2addr v1, v2

    move/from16 v2, p4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    move-wide/from16 v11, p2

    move v13, v1

    move v1, v2

    :goto_0
    sget-object v2, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    const/4 v3, 0x0

    iget-wide v4, v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->d:J

    iget v6, v0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    int-to-long v14, v13

    move-object/from16 v6, p1

    move-wide v7, v11

    move-wide v9, v14

    invoke-virtual/range {v2 .. v10}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    iget v2, v0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/2addr v2, v13

    iput v2, v0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int/2addr v1, v13

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {v0, v1, v2}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->n(Ljava/nio/Buffer;I)V

    return-void

    :cond_0
    add-long/2addr v11, v14

    iget v2, v0, Lcom/esotericsoftware/kryo/io/Input;->capacity:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-virtual {v0, v13}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    goto :goto_0
.end method

.method public readBytes([BII)V
    .locals 4

    sget-wide v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->byteArrayBaseOffset:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->readBytes(Ljava/lang/Object;JI)V

    return-void
.end method

.method public readChar()C
    .locals 6

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    sget-object v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-wide v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->d:J

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lsun/misc/Unsafe;->getChar(J)C

    move-result v1

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, v2}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->n(Ljava/nio/Buffer;I)V

    return v1
.end method

.method public readChars(I)[C
    .locals 3

    new-array v0, p1, [C

    sget-wide v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->charArrayBaseOffset:J

    shl-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->readBytes(Ljava/lang/Object;JI)V

    return-object v0
.end method

.method public readDouble()D
    .locals 6

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    sget-object v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-wide v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->d:J

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lsun/misc/Unsafe;->getDouble(J)D

    move-result-wide v1

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, v3}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->n(Ljava/nio/Buffer;I)V

    return-wide v1
.end method

.method public readDoubles(I)[D
    .locals 3

    new-array v0, p1, [D

    sget-wide v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->doubleArrayBaseOffset:J

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->readBytes(Ljava/lang/Object;JI)V

    return-object v0
.end method

.method public readFloat()F
    .locals 6

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    sget-object v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-wide v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->d:J

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lsun/misc/Unsafe;->getFloat(J)F

    move-result v1

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, v2}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->n(Ljava/nio/Buffer;I)V

    return v1
.end method

.method public readFloats(I)[F
    .locals 3

    new-array v0, p1, [F

    sget-wide v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->floatArrayBaseOffset:J

    shl-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->readBytes(Ljava/lang/Object;JI)V

    return-object v0
.end method

.method public readInt()I
    .locals 6

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    sget-object v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-wide v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->d:J

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lsun/misc/Unsafe;->getInt(J)I

    move-result v1

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, v2}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->n(Ljava/nio/Buffer;I)V

    return v1
.end method

.method public readInts(I)[I
    .locals 3

    new-array v0, p1, [I

    sget-wide v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->intArrayBaseOffset:J

    shl-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->readBytes(Ljava/lang/Object;JI)V

    return-object v0
.end method

.method public readLong()J
    .locals 6

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    sget-object v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-wide v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->d:J

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide v1

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, v3}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->n(Ljava/nio/Buffer;I)V

    return-wide v1
.end method

.method public readLongs(I)[J
    .locals 3

    new-array v0, p1, [J

    sget-wide v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->longArrayBaseOffset:J

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->readBytes(Ljava/lang/Object;JI)V

    return-object v0
.end method

.method public readShort()S
    .locals 6

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->require(I)I

    sget-object v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-wide v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->d:J

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lsun/misc/Unsafe;->getShort(J)S

    move-result v1

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, v2}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->n(Ljava/nio/Buffer;I)V

    return v1
.end method

.method public readShorts(I)[S
    .locals 3

    new-array v0, p1, [S

    sget-wide v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->shortArrayBaseOffset:J

    shl-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->readBytes(Ljava/lang/Object;JI)V

    return-object v0
.end method

.method public setBuffer(Ljava/nio/ByteBuffer;)V
    .locals 1

    instance-of v0, p1, Lsun/nio/ch/DirectBuffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->byteBuffer:Ljava/nio/ByteBuffer;

    if-eq p1, v0, :cond_0

    invoke-static {v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->dispose(Ljava/nio/ByteBuffer;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->setBuffer(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferInput;->o()V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "buffer must be direct."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
