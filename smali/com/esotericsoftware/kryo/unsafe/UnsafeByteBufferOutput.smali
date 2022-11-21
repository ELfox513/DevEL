.class public Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;
.super Lcom/esotericsoftware/kryo/io/ByteBufferOutput;
.source "SourceFile"


# instance fields
.field public b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;-><init>(I)V

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->h()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;-><init>(II)V

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->h()V

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->newDirectBuffer(JI)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->h()V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->h()V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;-><init>(Ljava/io/OutputStream;I)V

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->h()V

    return-void
.end method

.method private g(Ljava/nio/Buffer;I)V
    .locals 0

    invoke-virtual {p1, p2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->dispose(Ljava/nio/ByteBuffer;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->b:J

    return-void
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    check-cast v0, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v0}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->b:J

    return-void
.end method

.method public require(I)Z
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-super {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    move-result p1

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    if-eq v1, v0, :cond_0

    invoke-static {v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->dispose(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->h()V

    :cond_0
    return p1
.end method

.method public setBuffer(Ljava/nio/ByteBuffer;I)V
    .locals 1

    instance-of v0, p1, Lsun/nio/ch/DirectBuffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    if-eq p1, v0, :cond_0

    invoke-static {v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->dispose(Ljava/nio/ByteBuffer;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->setBuffer(Ljava/nio/ByteBuffer;I)V

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->h()V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "buffer must be direct."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(I)V
    .locals 5

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->require(I)Z

    :cond_0
    sget-object v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->b:J

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    int-to-byte p1, p1

    invoke-virtual {v0, v1, v2, p1}, Lsun/misc/Unsafe;->putByte(JB)V

    iget-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    invoke-direct {p0, p1, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->g(Ljava/nio/Buffer;I)V

    return-void
.end method

.method public writeBoolean(Z)V
    .locals 5

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->require(I)Z

    :cond_0
    sget-object v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->b:J

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2, p1}, Lsun/misc/Unsafe;->putByte(JB)V

    iget-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    invoke-direct {p0, p1, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->g(Ljava/nio/Buffer;I)V

    return-void
.end method

.method public writeBooleans([ZII)V
    .locals 1

    sget-wide p2, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->booleanArrayBaseOffset:J

    array-length v0, p1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->writeBytes(Ljava/lang/Object;JI)V

    return-void
.end method

.method public writeByte(B)V
    .locals 5

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->require(I)Z

    :cond_0
    sget-object v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->b:J

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2, p1}, Lsun/misc/Unsafe;->putByte(JB)V

    iget-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    invoke-direct {p0, p1, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->g(Ljava/nio/Buffer;I)V

    return-void
.end method

.method public writeByte(I)V
    .locals 5

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->require(I)Z

    :cond_0
    sget-object v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->b:J

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    int-to-byte p1, p1

    invoke-virtual {v0, v1, v2, p1}, Lsun/misc/Unsafe;->putByte(JB)V

    iget-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    invoke-direct {p0, p1, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->g(Ljava/nio/Buffer;I)V

    return-void
.end method

.method public writeBytes(Ljava/lang/Object;JI)V
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    iget v2, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    sub-int/2addr v1, v2

    move/from16 v2, p4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    move-wide/from16 v11, p2

    move v13, v1

    move v1, v2

    :goto_0
    sget-object v2, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    const/4 v6, 0x0

    iget-wide v3, v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->b:J

    iget v5, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    int-to-long v7, v5

    add-long/2addr v7, v3

    int-to-long v14, v13

    move-object/from16 v3, p1

    move-wide v4, v11

    move-wide v9, v14

    invoke-virtual/range {v2 .. v10}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    iget v2, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr v2, v13

    iput v2, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    sub-int/2addr v1, v13

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {v0, v1, v2}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->g(Ljava/nio/Buffer;I)V

    return-void

    :cond_0
    add-long/2addr v11, v14

    iget v2, v0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-virtual {v0, v13}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->require(I)Z

    goto :goto_0
.end method

.method public writeBytes([BII)V
    .locals 4

    sget-wide v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->byteArrayBaseOffset:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->writeBytes(Ljava/lang/Object;JI)V

    return-void
.end method

.method public writeChar(C)V
    .locals 6

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->require(I)Z

    sget-object v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-wide v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->b:J

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3, p1}, Lsun/misc/Unsafe;->putChar(JC)V

    iget p1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, p1}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->g(Ljava/nio/Buffer;I)V

    return-void
.end method

.method public writeChars([CII)V
    .locals 1

    sget-wide p2, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->charArrayBaseOffset:J

    array-length v0, p1

    shl-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->writeBytes(Ljava/lang/Object;JI)V

    return-void
.end method

.method public writeDouble(D)V
    .locals 6

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->require(I)Z

    sget-object v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-wide v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->b:J

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3, p1, p2}, Lsun/misc/Unsafe;->putDouble(JD)V

    iget p1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget-object p2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, p2, p1}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->g(Ljava/nio/Buffer;I)V

    return-void
.end method

.method public writeDoubles([DII)V
    .locals 1

    sget-wide p2, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->doubleArrayBaseOffset:J

    array-length v0, p1

    shl-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->writeBytes(Ljava/lang/Object;JI)V

    return-void
.end method

.method public writeFloat(F)V
    .locals 6

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->require(I)Z

    sget-object v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-wide v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->b:J

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3, p1}, Lsun/misc/Unsafe;->putFloat(JF)V

    iget p1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, p1}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->g(Ljava/nio/Buffer;I)V

    return-void
.end method

.method public writeFloats([FII)V
    .locals 1

    sget-wide p2, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->floatArrayBaseOffset:J

    array-length v0, p1

    shl-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->writeBytes(Ljava/lang/Object;JI)V

    return-void
.end method

.method public writeInt(I)V
    .locals 6

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->require(I)Z

    sget-object v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-wide v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->b:J

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3, p1}, Lsun/misc/Unsafe;->putInt(JI)V

    iget p1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, p1}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->g(Ljava/nio/Buffer;I)V

    return-void
.end method

.method public writeInts([III)V
    .locals 1

    sget-wide p2, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->intArrayBaseOffset:J

    array-length v0, p1

    shl-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->writeBytes(Ljava/lang/Object;JI)V

    return-void
.end method

.method public writeLong(J)V
    .locals 6

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->require(I)Z

    sget-object v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-wide v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->b:J

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3, p1, p2}, Lsun/misc/Unsafe;->putLong(JJ)V

    iget p1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget-object p2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, p2, p1}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->g(Ljava/nio/Buffer;I)V

    return-void
.end method

.method public writeLongs([JII)V
    .locals 1

    sget-wide p2, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->longArrayBaseOffset:J

    array-length v0, p1

    shl-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->writeBytes(Ljava/lang/Object;JI)V

    return-void
.end method

.method public writeShort(I)V
    .locals 6

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->require(I)Z

    sget-object v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-wide v2, p0, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->b:J

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    int-to-short p1, p1

    invoke-virtual {v1, v2, v3, p1}, Lsun/misc/Unsafe;->putShort(JS)V

    iget p1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, p1}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->g(Ljava/nio/Buffer;I)V

    return-void
.end method

.method public writeShorts([SII)V
    .locals 1

    sget-wide p2, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->shortArrayBaseOffset:J

    array-length v0, p1

    shl-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/esotericsoftware/kryo/unsafe/UnsafeByteBufferOutput;->writeBytes(Ljava/lang/Object;JI)V

    return-void
.end method
