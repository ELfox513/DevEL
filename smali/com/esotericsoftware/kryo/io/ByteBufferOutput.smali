.class public Lcom/esotericsoftware/kryo/io/ByteBufferOutput;
.super Lcom/esotericsoftware/kryo/io/Output;
.source "SourceFile"


# static fields
.field public static final a:Ljava/nio/ByteOrder;


# instance fields
.field public byteBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sput-object v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->a:Ljava/nio/ByteOrder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/Output;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/Output;-><init>()V

    const/4 v0, -0x1

    if-lt p2, v0, :cond_1

    iput p1, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    if-ne p2, v0, :cond_0

    const p2, 0x7ffffff7

    :cond_0
    iput p2, p0, Lcom/esotericsoftware/kryo/io/Output;->maxCapacity:I

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maxBufferSize cannot be < -1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    const/16 v0, 0x1000

    invoke-direct {p0, v0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;-><init>(II)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/Output;->outputStream:Ljava/io/OutputStream;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "outputStream cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0

    invoke-direct {p0, p2, p2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;-><init>(II)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/Output;->outputStream:Ljava/io/OutputStream;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "outputStream cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/Output;-><init>()V

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->setBuffer(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 0

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/Output;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->setBuffer(Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method private c(Ljava/lang/String;I)V
    .locals 6

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    sub-int/2addr v1, v2

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p2, :cond_1

    new-array v4, p2, [B

    add-int v5, v3, v1

    invoke-virtual {p1, v3, v5, v4, v2}, Ljava/lang/String;->getBytes(II[BI)V

    invoke-virtual {v0, v4, v2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    sub-int v1, p2, v5

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    return-void
.end method

.method private d(Ljava/lang/String;II)V
    .locals 4

    :goto_0
    if-ge p3, p2, :cond_4

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    if-ne v0, v1, :cond_0

    sub-int v0, p2, p3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    :cond_0
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x7f

    if-gt v0, v2, :cond_1

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_1
    const/16 v2, 0x7ff

    if-le v0, v2, :cond_2

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    shr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0xf

    or-int/lit16 v2, v2, 0xe0

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    shr-int/lit8 v2, v0, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    shr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x1f

    or-int/lit16 v3, v3, 0xc0

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    if-ne v2, v3, :cond_3

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    :cond_3
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->flush()V

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->outputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final e(Ljava/nio/Buffer;)I
    .locals 0

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p1

    return p1
.end method

.method public final f(Ljava/nio/Buffer;I)V
    .locals 0

    invoke-virtual {p1, p2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method

.method public flush()V
    .locals 5

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->outputStream:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->g(Ljava/nio/Buffer;I)V

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v1, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->g(Ljava/nio/Buffer;I)V

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Output;->outputStream:Ljava/io/OutputStream;

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-wide v0, p0, Lcom/esotericsoftware/kryo/io/Output;->total:J

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    int-to-long v3, v3

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/esotericsoftware/kryo/io/Output;->total:J

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final g(Ljava/nio/Buffer;I)V
    .locals 0

    invoke-virtual {p1, p2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public getBuffer()[B
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This buffer does not used a byte[], see #getByteBuffer()."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->outputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public require(I)Z
    .locals 5

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-lt v0, p1, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->flush()V

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    sub-int v3, v0, v2

    const/4 v4, 0x1

    if-lt v3, p1, :cond_1

    return v4

    :cond_1
    iget v3, p0, Lcom/esotericsoftware/kryo/io/Output;->maxCapacity:I

    sub-int v2, v3, v2

    if-le p1, v2, :cond_3

    const-string v0, ", required: "

    if-le p1, v3, :cond_2

    new-instance v1, Lcom/esotericsoftware/kryo/io/KryoBufferOverflowException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Buffer overflow. Max capacity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Output;->maxCapacity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/esotericsoftware/kryo/io/KryoBufferOverflowException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Lcom/esotericsoftware/kryo/io/KryoBufferOverflowException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Buffer overflow. Available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Output;->maxCapacity:I

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/esotericsoftware/kryo/io/KryoBufferOverflowException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    if-nez v0, :cond_4

    const/16 v0, 0x10

    iput v0, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    :cond_4
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    mul-int/lit8 v0, v0, 0x2

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->maxCapacity:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    sub-int/2addr v0, v2

    if-lt v0, p1, :cond_4

    iget-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result p1

    if-nez p1, :cond_5

    iget p1, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    goto :goto_0

    :cond_5
    iget p1, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->g(Ljava/nio/Buffer;I)V

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->f(Ljava/nio/Buffer;I)V

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    return v4
.end method

.method public reset()V
    .locals 2

    invoke-super {p0}, Lcom/esotericsoftware/kryo/io/Output;->reset()V

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->g(Ljava/nio/Buffer;I)V

    return-void
.end method

.method public setBuffer(Ljava/nio/ByteBuffer;)V
    .locals 1

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->setBuffer(Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method public setBuffer(Ljava/nio/ByteBuffer;I)V
    .locals 2

    if-eqz p1, :cond_2

    const/4 v0, -0x1

    if-lt p2, v0, :cond_1

    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    if-ne p2, v0, :cond_0

    const p2, 0x7ffffff7

    :cond_0
    iput p2, p0, Lcom/esotericsoftware/kryo/io/Output;->maxCapacity:I

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result p2

    iput p2, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p1

    iput p1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/esotericsoftware/kryo/io/Output;->total:J

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/Output;->outputStream:Ljava/io/OutputStream;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maxBufferSize cannot be < -1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "buffer cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBuffer([B)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This buffer does not used a byte[], see #setByteBuffer(ByteBuffer)."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBuffer([BI)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This buffer does not used a byte[], see #setByteBuffer(ByteBuffer)."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBuffer([BII)V
    .locals 1

    array-length v0, p1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    const/4 p2, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->g(Ljava/nio/Buffer;I)V

    array-length p1, p1

    invoke-virtual {p0, v0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->f(Ljava/nio/Buffer;I)V

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->setBuffer(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public setPosition(I)V
    .locals 1

    iput p1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->g(Ljava/nio/Buffer;I)V

    return-void
.end method

.method public toBytes()[B
    .locals 4

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->g(Ljava/nio/Buffer;I)V

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    invoke-virtual {v1, v0, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public write(I)V
    .locals 3

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget p1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    return-void
.end method

.method public write([B)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeBytes([BII)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bytes cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([BII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeBytes([BII)V

    return-void
.end method

.method public writeAscii(Ljava/lang/String;)V
    .locals 6

    const/16 v0, 0x80

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeByte(I)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    const/16 p1, 0x81

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeByte(I)V

    return-void

    :cond_1
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    sub-int/2addr v2, v3

    if-ge v2, v1, :cond_2

    invoke-direct {p0, p1, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->c(Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget p1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    :goto_1
    iget-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, -0x1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    or-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-virtual {p1, v2, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writeBoolean(Z)V
    .locals 3

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget p1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    return-void
.end method

.method public writeBooleans([ZII)V
    .locals 2

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    if-lt v0, p3, :cond_1

    invoke-virtual {p0, p3}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    aget-boolean v1, p1, p2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->e(Ljava/nio/Buffer;)I

    move-result p1

    iput p1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    goto :goto_2

    :cond_1
    add-int/2addr p3, p2

    :goto_1
    if-ge p2, p3, :cond_2

    aget-boolean v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeBoolean(Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public writeByte(B)V
    .locals 3

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget p1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    return-void
.end method

.method public writeByte(I)V
    .locals 3

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget p1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    return-void
.end method

.method public writeBytes([B)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeBytes([BII)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bytes cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeBytes([BII)V
    .locals 2

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    sub-int/2addr v0, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    sub-int/2addr p3, v0

    if-nez p3, :cond_0

    return-void

    :cond_0
    add-int/2addr p2, v0

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bytes cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public writeChar(C)V
    .locals 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    ushr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writeChars([CII)V
    .locals 3

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    shl-int/lit8 v1, p3, 0x1

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    aget-char v0, p1, p2

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    int-to-byte v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    ushr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->e(Ljava/nio/Buffer;)I

    move-result p1

    iput p1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    goto :goto_2

    :cond_1
    add-int/2addr p3, p2

    :goto_1
    if-ge p2, p3, :cond_2

    aget-char v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeChar(C)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public writeDouble(D)V
    .locals 4

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    long-to-int v2, p1

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    ushr-long v2, p1, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v0, 0x10

    ushr-long v2, p1, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v0, 0x18

    ushr-long v2, p1, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v0, 0x20

    ushr-long v2, p1, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v0, 0x28

    ushr-long v2, p1, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v0, 0x30

    ushr-long v2, p1, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v0, 0x38

    ushr-long/2addr p1, v0

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writeDoubles([DII)V
    .locals 5

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    shl-int/lit8 v1, p3, 0x3

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    aget-wide v1, p1, p2

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    long-to-int v3, v1

    int-to-byte v3, v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v3, 0x8

    ushr-long v3, v1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v3, 0x10

    ushr-long v3, v1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v3, 0x18

    ushr-long v3, v1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v3, 0x28

    ushr-long v3, v1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v3, 0x30

    ushr-long v3, v1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v3, 0x38

    ushr-long/2addr v1, v3

    long-to-int v2, v1

    int-to-byte v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->e(Ljava/nio/Buffer;)I

    move-result p1

    iput p1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    goto :goto_2

    :cond_1
    add-int/2addr p3, p2

    :goto_1
    if-ge p2, p3, :cond_2

    aget-wide v0, p1, p2

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeDouble(D)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public writeFloat(F)V
    .locals 3

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    int-to-byte v0, p1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writeFloats([FII)V
    .locals 3

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    shl-int/lit8 v1, p3, 0x2

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    aget v1, p1, p2

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    int-to-byte v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v2, v1, 0x8

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->e(Ljava/nio/Buffer;)I

    move-result p1

    iput p1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    goto :goto_2

    :cond_1
    add-int/2addr p3, p2

    :goto_1
    if-ge p2, p3, :cond_2

    aget v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeFloat(F)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public writeInt(I)V
    .locals 2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writeInts([III)V
    .locals 3

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    shl-int/lit8 v1, p3, 0x2

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    aget v1, p1, p2

    int-to-byte v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v2, v1, 0x8

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->e(Ljava/nio/Buffer;)I

    move-result p1

    iput p1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    goto :goto_2

    :cond_1
    add-int/2addr p3, p2

    :goto_1
    if-ge p2, p3, :cond_2

    aget v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeInt(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public writeLong(J)V
    .locals 4

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    long-to-int v2, p1

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    ushr-long v2, p1, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v0, 0x10

    ushr-long v2, p1, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v0, 0x18

    ushr-long v2, p1, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v0, 0x20

    ushr-long v2, p1, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v0, 0x28

    ushr-long v2, p1, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v0, 0x30

    ushr-long v2, p1, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v0, 0x38

    ushr-long/2addr p1, v0

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writeLongs([JII)V
    .locals 5

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    shl-int/lit8 v1, p3, 0x3

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    aget-wide v1, p1, p2

    long-to-int v3, v1

    int-to-byte v3, v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v3, 0x8

    ushr-long v3, v1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v3, 0x10

    ushr-long v3, v1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v3, 0x18

    ushr-long v3, v1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v3, 0x28

    ushr-long v3, v1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v3, 0x30

    ushr-long v3, v1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v3, 0x38

    ushr-long/2addr v1, v3

    long-to-int v2, v1

    int-to-byte v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->e(Ljava/nio/Buffer;)I

    move-result p1

    iput p1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    goto :goto_2

    :cond_1
    add-int/2addr p3, p2

    :goto_1
    if-ge p2, p3, :cond_2

    aget-wide v0, p1, p2

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeLong(J)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public writeShort(I)V
    .locals 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    ushr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writeShorts([SII)V
    .locals 3

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    shl-int/lit8 v1, p3, 0x1

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    aget-short v0, p1, p2

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    int-to-byte v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    ushr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->e(Ljava/nio/Buffer;)I

    move-result p1

    iput p1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    goto :goto_2

    :cond_1
    add-int/2addr p3, p2

    :goto_1
    if-ge p2, p3, :cond_2

    aget-short v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeShort(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 7

    const/16 v0, 0x80

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeByte(I)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    const/16 p1, 0x81

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeByte(I)V

    return-void

    :cond_1
    const/16 v2, 0x7f

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v1, v4, :cond_6

    const/16 v5, 0x20

    if-gt v1, v5, :cond_6

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_3

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-le v6, v2, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    iget v5, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    sub-int/2addr v2, v5

    if-ge v2, v1, :cond_4

    invoke-direct {p0, p1, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->c(Ljava/lang/String;I)V

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    :goto_1
    if-ge v3, v2, :cond_5

    iget-object v5, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-byte v6, v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    iget p1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    :goto_2
    iget-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, -0x1

    sub-int/2addr v1, v4

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    or-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-virtual {p1, v2, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return-void

    :cond_6
    :goto_3
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v4, v0, v4}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeVarIntFlag(ZIZ)I

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    sub-int/2addr v0, v4

    if-lt v0, v1, :cond_9

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    :cond_7
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-le v4, v2, :cond_8

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->e(Ljava/nio/Buffer;)I

    move-result v0

    iput v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    goto :goto_4

    :cond_8
    int-to-byte v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v3, 0x1

    if-ne v3, v1, :cond_7

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->e(Ljava/nio/Buffer;)I

    move-result p1

    iput p1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    return-void

    :cond_9
    :goto_4
    if-ge v3, v1, :cond_a

    invoke-direct {p0, p1, v1, v3}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->d(Ljava/lang/String;II)V

    :cond_a
    return-void
.end method

.method public writeVarInt(IZ)I
    .locals 5

    if-nez p2, :cond_0

    shl-int/lit8 p2, p1, 0x1

    shr-int/lit8 p1, p1, 0x1f

    xor-int/2addr p1, p2

    :cond_0
    ushr-int/lit8 p2, p1, 0x7

    if-nez p2, :cond_2

    iget p2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    const/4 v1, 0x1

    if-ne p2, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    :cond_1
    iget p2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget-object p2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    int-to-byte p1, p1

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return v1

    :cond_2
    ushr-int/lit8 v0, p1, 0xe

    if-nez v0, :cond_3

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    and-int/lit8 p1, p1, 0x7f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return v0

    :cond_3
    ushr-int/lit8 v1, p1, 0x15

    if-nez v1, :cond_4

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    and-int/lit8 p1, p1, 0x7f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-int/lit16 p1, p2, 0x80

    int-to-byte p1, p1

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte p1, v0

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return v1

    :cond_4
    ushr-int/lit8 v2, p1, 0x1c

    if-nez v2, :cond_5

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    and-int/lit8 p1, p1, 0x7f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-int/lit16 p1, p2, 0x80

    int-to-byte p1, p1

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-int/lit16 p1, v0, 0x80

    int-to-byte p1, p1

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte p1, v1

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return v2

    :cond_5
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    and-int/lit8 p1, p1, 0x7f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-int/lit16 p1, p2, 0x80

    int-to-byte p1, p1

    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-int/lit16 p1, v0, 0x80

    int-to-byte p1, p1

    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-int/lit16 p1, v1, 0x80

    int-to-byte p1, p1

    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte p1, v2

    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return v3
.end method

.method public writeVarIntFlag(ZIZ)I
    .locals 5

    if-nez p3, :cond_0

    shl-int/lit8 p3, p2, 0x1

    shr-int/lit8 p2, p2, 0x1f

    xor-int/2addr p2, p3

    :cond_0
    and-int/lit8 p3, p2, 0x3f

    const/16 v0, 0x80

    if-eqz p1, :cond_1

    const/16 p1, 0x80

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, p3

    ushr-int/lit8 p3, p2, 0x6

    if-nez p3, :cond_3

    iget p2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget p3, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    const/4 v0, 0x1

    if-ne p2, p3, :cond_2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    :cond_2
    iget-object p2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    int-to-byte p1, p1

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget p1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    return v0

    :cond_3
    ushr-int/lit8 v1, p2, 0xd

    if-nez v1, :cond_4

    const/4 p2, 0x2

    invoke-virtual {p0, p2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    or-int/lit8 p1, p1, 0x40

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    int-to-byte p3, p3

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return p2

    :cond_4
    ushr-int/lit8 v2, p2, 0x14

    if-nez v2, :cond_5

    const/4 p2, 0x3

    invoke-virtual {p0, p2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr v2, p2

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    or-int/lit8 p1, p1, 0x40

    int-to-byte p1, p1

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-int/lit16 p1, p3, 0x80

    int-to-byte p1, p1

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte p1, v1

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return p2

    :cond_5
    ushr-int/lit8 p2, p2, 0x1b

    if-nez p2, :cond_6

    const/4 p2, 0x4

    invoke-virtual {p0, p2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr v3, p2

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    or-int/lit8 p1, p1, 0x40

    int-to-byte p1, p1

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-int/lit16 p1, p3, 0x80

    int-to-byte p1, p1

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-int/lit16 p1, v1, 0x80

    int-to-byte p1, p1

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte p1, v2

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return p2

    :cond_6
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    or-int/lit8 p1, p1, 0x40

    int-to-byte p1, p1

    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-int/lit16 p1, p3, 0x80

    int-to-byte p1, p1

    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-int/lit16 p1, v1, 0x80

    int-to-byte p1, p1

    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-int/lit16 p1, v2, 0x80

    int-to-byte p1, p1

    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte p1, p2

    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return v3
.end method

.method public writeVarLong(JZ)I
    .locals 25

    move-object/from16 v0, p0

    const/4 v1, 0x1

    if-nez p3, :cond_0

    shl-long v2, p1, v1

    const/16 v4, 0x3f

    shr-long v4, p1, v4

    xor-long/2addr v2, v4

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p1

    :goto_0
    const/4 v4, 0x7

    ushr-long v5, v2, v4

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_2

    iget v4, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget v5, v0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    if-ne v4, v5, :cond_1

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    :cond_1
    iget v4, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr v4, v1

    iput v4, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget-object v4, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return v1

    :cond_2
    const/16 v1, 0xe

    ushr-long v9, v2, v1

    const-wide/16 v11, 0x7f

    const-wide/16 v13, 0x80

    cmp-long v1, v9, v7

    if-nez v1, :cond_3

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    iget v4, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr v4, v1

    iput v4, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget-object v4, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    and-long/2addr v2, v11

    or-long/2addr v2, v13

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v2, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    long-to-int v3, v5

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return v1

    :cond_3
    const/16 v1, 0x15

    move-wide/from16 p2, v5

    ushr-long v4, v2, v1

    cmp-long v1, v4, v7

    if-nez v1, :cond_4

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    iget v4, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr v4, v1

    iput v4, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget-object v4, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    and-long/2addr v2, v11

    or-long/2addr v2, v13

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-wide/from16 v15, p2

    or-long v2, v15, v13

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    long-to-int v2, v9

    int-to-byte v2, v2

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return v1

    :cond_4
    move-wide/from16 v15, p2

    const/16 v1, 0x1c

    ushr-long v13, v2, v1

    cmp-long v1, v13, v7

    if-nez v1, :cond_5

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    iget v6, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr v6, v1

    iput v6, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget-object v6, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    and-long/2addr v2, v11

    const-wide/16 v7, 0x80

    or-long/2addr v2, v7

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-long v2, v15, v7

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-long v2, v9, v7

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    long-to-int v2, v4

    int-to-byte v2, v2

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return v1

    :cond_5
    const/16 v1, 0x23

    ushr-long v11, v2, v1

    cmp-long v1, v11, v7

    if-nez v1, :cond_6

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    iget v6, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr v6, v1

    iput v6, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget-object v6, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    const-wide/16 v7, 0x7f

    and-long/2addr v2, v7

    const-wide/16 v7, 0x80

    or-long/2addr v2, v7

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-long v2, v15, v7

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-long v2, v9, v7

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-long v2, v4, v7

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    long-to-int v2, v13

    int-to-byte v2, v2

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return v1

    :cond_6
    const/16 v1, 0x2a

    move-wide/from16 v19, v11

    ushr-long v11, v2, v1

    cmp-long v1, v11, v7

    if-nez v1, :cond_7

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    iget v6, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr v6, v1

    iput v6, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget-object v6, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    const-wide/16 v7, 0x7f

    and-long/2addr v2, v7

    const-wide/16 v7, 0x80

    or-long/2addr v2, v7

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-long v2, v15, v7

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-long v2, v9, v7

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-long v2, v4, v7

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-long v2, v13, v7

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-wide/from16 v2, v19

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return v1

    :cond_7
    const/16 v1, 0x31

    move-wide/from16 v21, v11

    ushr-long v11, v2, v1

    cmp-long v1, v11, v7

    if-nez v1, :cond_8

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    iget v6, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr v6, v1

    iput v6, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget-object v1, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    const-wide/16 v6, 0x7f

    and-long/2addr v2, v6

    const-wide/16 v6, 0x80

    or-long/2addr v2, v6

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-long v2, v15, v6

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-long v2, v9, v6

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-long v2, v4, v6

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-long v2, v13, v6

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-long v2, v19, v6

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-wide/from16 v2, v21

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v1, 0x7

    return v1

    :cond_8
    const/16 v1, 0x38

    move-wide/from16 v23, v11

    ushr-long v11, v2, v1

    cmp-long v1, v11, v7

    if-nez v1, :cond_9

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    iget v6, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr v6, v1

    iput v6, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget-object v6, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    const-wide/16 v7, 0x7f

    and-long/2addr v2, v7

    const-wide/16 v7, 0x80

    or-long/2addr v2, v7

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-long v2, v15, v7

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-long v2, v9, v7

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-long v2, v4, v7

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-long v2, v13, v7

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-long v2, v19, v7

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-long v2, v21, v7

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-wide/from16 v7, v23

    long-to-int v2, v7

    int-to-byte v2, v2

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return v1

    :cond_9
    move-wide/from16 v7, v23

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->require(I)Z

    iget v6, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr v6, v1

    iput v6, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget-object v6, v0, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->byteBuffer:Ljava/nio/ByteBuffer;

    const-wide/16 v17, 0x7f

    and-long v2, v2, v17

    const-wide/16 v17, 0x80

    or-long v2, v2, v17

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-long v2, v15, v17

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-long v2, v9, v17

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-long v2, v4, v17

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-long v2, v13, v17

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-long v2, v19, v17

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-long v2, v21, v17

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    or-long v2, v7, v17

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    long-to-int v2, v11

    int-to-byte v2, v2

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return v1
.end method
