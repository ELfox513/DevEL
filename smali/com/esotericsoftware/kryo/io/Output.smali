.class public Lcom/esotericsoftware/kryo/io/Output;
.super Ljava/io/OutputStream;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;
.implements Lcom/esotericsoftware/kryo/util/Pool$Poolable;


# instance fields
.field public buffer:[B

.field public capacity:I

.field public maxCapacity:I

.field public outputStream:Ljava/io/OutputStream;

.field public position:I

.field public total:J

.field public varEncoding:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/io/Output;->varEncoding:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1, p1}, Lcom/esotericsoftware/kryo/io/Output;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/io/Output;->varEncoding:Z

    const/4 v0, -0x1

    if-le p1, p2, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bufferSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " cannot be greater than maxBufferSize: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-lt p2, v0, :cond_3

    iput p1, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    if-ne p2, v0, :cond_2

    const p2, 0x7ffffff7

    :cond_2
    iput p2, p0, Lcom/esotericsoftware/kryo/io/Output;->maxCapacity:I

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    return-void

    :cond_3
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

    invoke-direct {p0, v0, v0}, Lcom/esotericsoftware/kryo/io/Output;-><init>(II)V

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

    invoke-direct {p0, p2, p2}, Lcom/esotericsoftware/kryo/io/Output;-><init>(II)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/Output;->outputStream:Ljava/io/OutputStream;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "outputStream cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([B)V
    .locals 1

    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/esotericsoftware/kryo/io/Output;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/io/Output;->varEncoding:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/io/Output;->setBuffer([BI)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "buffer cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static varIntLength(IZ)I
    .locals 0

    if-nez p1, :cond_0

    shl-int/lit8 p1, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, p1

    :cond_0
    ushr-int/lit8 p1, p0, 0x7

    if-nez p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    ushr-int/lit8 p1, p0, 0xe

    if-nez p1, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    ushr-int/lit8 p1, p0, 0x15

    if-nez p1, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    ushr-int/lit8 p0, p0, 0x1c

    if-nez p0, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    const/4 p0, 0x5

    return p0
.end method

.method public static varLongLength(JZ)I
    .locals 6

    const/4 v0, 0x1

    if-nez p2, :cond_0

    shl-long v1, p0, v0

    const/16 p2, 0x3f

    shr-long/2addr p0, p2

    xor-long/2addr p0, v1

    :cond_0
    const/4 p2, 0x7

    ushr-long v1, p0, p2

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    return v0

    :cond_1
    const/16 v0, 0xe

    ushr-long v0, p0, v0

    cmp-long v2, v0, v3

    if-nez v2, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/16 v0, 0x15

    ushr-long v0, p0, v0

    cmp-long v2, v0, v3

    if-nez v2, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    const/16 v0, 0x1c

    ushr-long v0, p0, v0

    cmp-long v2, v0, v3

    if-nez v2, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    const/16 v0, 0x23

    ushr-long v0, p0, v0

    cmp-long v2, v0, v3

    if-nez v2, :cond_5

    const/4 p0, 0x5

    return p0

    :cond_5
    const/16 v0, 0x2a

    ushr-long v0, p0, v0

    cmp-long v2, v0, v3

    if-nez v2, :cond_6

    const/4 p0, 0x6

    return p0

    :cond_6
    const/16 v0, 0x31

    ushr-long v0, p0, v0

    cmp-long v2, v0, v3

    if-nez v2, :cond_7

    return p2

    :cond_7
    const/16 p2, 0x38

    ushr-long/2addr p0, p2

    cmp-long p2, p0, v3

    if-nez p2, :cond_8

    const/16 p0, 0x8

    return p0

    :cond_8
    const/16 p0, 0x9

    return p0
.end method


# virtual methods
.method public final c(Ljava/lang/String;I)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    sub-int/2addr v2, v3

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_0
    if-ge v0, p2, :cond_3

    add-int v3, v0, v2

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    invoke-virtual {p1, v0, v3, v1, v4}, Ljava/lang/String;->getBytes(II[BI)V

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    sub-int v0, p2, v3

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    return-void
.end method

.method public close()V
    .locals 1

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Output;->flush()V

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

.method public final d(Ljava/lang/String;II)V
    .locals 5

    :goto_0
    if-ge p3, p2, :cond_4

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    if-ne v0, v1, :cond_0

    sub-int v0, p2, p3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    :cond_0
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_1

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    goto :goto_1

    :cond_1
    const/16 v1, 0x7ff

    if-le v0, v1, :cond_2

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    shr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0xf

    or-int/lit16 v3, v3, 0xe0

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v4, v0, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    aput-byte v0, v1, v3

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    shr-int/lit8 v4, v0, 0x6

    and-int/lit8 v4, v4, 0x1f

    or-int/lit16 v4, v4, 0xc0

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    if-ne v3, v1, :cond_3

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    :cond_3
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public flush()V
    .locals 6

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->outputStream:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-wide v0, p0, Lcom/esotericsoftware/kryo/io/Output;->total:J

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    int-to-long v4, v2

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/esotericsoftware/kryo/io/Output;->total:J

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getBuffer()[B
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    return-object v0
.end method

.method public getMaxCapacity()I
    .locals 1

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->maxCapacity:I

    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->outputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getVariableLengthEncoding()Z
    .locals 1

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/io/Output;->varEncoding:Z

    return v0
.end method

.method public intLength(IZ)I
    .locals 1

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/io/Output;->varEncoding:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/esotericsoftware/kryo/io/Output;->varIntLength(IZ)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x4

    return p1
.end method

.method public longLength(IZ)I
    .locals 2

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/io/Output;->varEncoding:Z

    if-eqz v0, :cond_0

    int-to-long v0, p1

    invoke-static {v0, v1, p2}, Lcom/esotericsoftware/kryo/io/Output;->varLongLength(JZ)I

    move-result p1

    return p1

    :cond_0
    const/16 p1, 0x8

    return p1
.end method

.method public position()I
    .locals 1

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    return v0
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
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Output;->flush()V

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

    sub-int v3, v0, v2

    if-lt v3, p1, :cond_4

    new-array p1, v0, [B

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    return v4
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/esotericsoftware/kryo/io/Output;->total:J

    return-void
.end method

.method public setBuffer([B)V
    .locals 1

    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/esotericsoftware/kryo/io/Output;->setBuffer([BI)V

    return-void
.end method

.method public setBuffer([BI)V
    .locals 3

    if-eqz p1, :cond_4

    array-length v0, p1

    const/4 v1, -0x1

    if-le v0, p2, :cond_1

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buffer has length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " cannot be greater than maxBufferSize: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-lt p2, v1, :cond_3

    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    if-ne p2, v1, :cond_2

    const p2, 0x7ffffff7

    :cond_2
    iput p2, p0, Lcom/esotericsoftware/kryo/io/Output;->maxCapacity:I

    array-length p1, p1

    iput p1, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/esotericsoftware/kryo/io/Output;->total:J

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/Output;->outputStream:Ljava/io/OutputStream;

    return-void

    :cond_3
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

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "buffer cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/Output;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Output;->reset()V

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    return-void
.end method

.method public setVariableLengthEncoding(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/io/Output;->varEncoding:Z

    return-void
.end method

.method public toBytes()[B
    .locals 4

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    new-array v1, v0, [B

    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public total()J
    .locals 4

    iget-wide v0, p0, Lcom/esotericsoftware/kryo/io/Output;->total:J

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public write(I)V
    .locals 3

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method

.method public write([B)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeBytes([BII)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bytes cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([BII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/io/Output;->writeBytes([BII)V

    return-void
.end method

.method public writeAscii(Ljava/lang/String;)V
    .locals 6

    const/16 v0, 0x80

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(I)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    iget v5, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    sub-int/2addr v4, v5

    if-ge v4, v1, :cond_1

    invoke-virtual {p0, p1, v1}, Lcom/esotericsoftware/kryo/io/Output;->c(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    invoke-virtual {p1, v2, v1, v4, v5}, Ljava/lang/String;->getBytes(II[BI)V

    iget p1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    :goto_0
    iget-object p1, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    sub-int/2addr v1, v3

    aget-byte v2, p1, v1

    or-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    return-void

    :cond_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v3, v1, 0x1

    const/16 v4, -0x7e

    aput-byte v4, v0, v1

    add-int/lit8 v1, v3, 0x1

    iput v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    int-to-byte p1, p1

    aput-byte p1, v0, v3

    return-void

    :cond_3
    const/16 p1, 0x81

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(I)V

    return-void
.end method

.method public writeBoolean(Z)V
    .locals 3

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public writeBooleans([ZII)V
    .locals 3

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    if-lt v0, p3, :cond_1

    invoke-virtual {p0, p3}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    aget-boolean v2, p1, p2

    aput-byte v2, v0, v1

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    goto :goto_2

    :cond_1
    add-int/2addr p3, p2

    :goto_1
    if-ge p2, p3, :cond_2

    aget-boolean v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

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

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public writeByte(I)V
    .locals 3

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method

.method public writeBytes([B)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeBytes([BII)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bytes cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeBytes([BII)V
    .locals 3

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    sub-int/2addr v0, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    sub-int/2addr p3, v0

    if-nez p3, :cond_0

    return-void

    :cond_0
    add-int/2addr p2, v0

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

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
    .locals 3

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v1, v0, 0x2

    iput v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    int-to-byte v2, p1

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    aput-byte p1, v1, v0

    return-void
.end method

.method public writeChars([CII)V
    .locals 4

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    shl-int/lit8 v1, p3, 0x1

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    aget-char v2, p1, p2

    int-to-byte v3, v2

    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    goto :goto_2

    :cond_1
    add-int/2addr p3, p2

    :goto_1
    if-ge p2, p3, :cond_2

    aget-char v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeChar(C)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public writeDouble(D)V
    .locals 6

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v3, v2, 0x8

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    long-to-int v3, p1

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v3, v2, 0x1

    ushr-long v4, p1, v0

    long-to-int v0, v4

    int-to-byte v0, v0

    aput-byte v0, v1, v3

    add-int/lit8 v0, v2, 0x2

    const/16 v3, 0x10

    ushr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x3

    const/16 v3, 0x18

    ushr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x4

    const/16 v3, 0x20

    ushr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x5

    const/16 v3, 0x28

    ushr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x6

    const/16 v3, 0x30

    ushr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v1, v0

    add-int/lit8 v2, v2, 0x7

    const/16 v0, 0x38

    ushr-long/2addr p1, v0

    long-to-int p2, p1

    int-to-byte p1, p2

    aput-byte p1, v1, v2

    return-void
.end method

.method public writeDoubles([DII)V
    .locals 7

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    shl-int/lit8 v1, p3, 0x3

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    aget-wide v2, p1, p2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    long-to-int v4, v2

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    add-int/lit8 v4, v1, 0x1

    const/16 v5, 0x8

    ushr-long v5, v2, v5

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, v0, v4

    add-int/lit8 v4, v1, 0x2

    const/16 v5, 0x10

    ushr-long v5, v2, v5

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, v0, v4

    add-int/lit8 v4, v1, 0x3

    const/16 v5, 0x18

    ushr-long v5, v2, v5

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, v0, v4

    add-int/lit8 v4, v1, 0x4

    const/16 v5, 0x20

    ushr-long v5, v2, v5

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, v0, v4

    add-int/lit8 v4, v1, 0x5

    const/16 v5, 0x28

    ushr-long v5, v2, v5

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, v0, v4

    add-int/lit8 v4, v1, 0x6

    const/16 v5, 0x30

    ushr-long v5, v2, v5

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, v0, v4

    add-int/lit8 v4, v1, 0x7

    const/16 v5, 0x38

    ushr-long/2addr v2, v5

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, v4

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v1, v1, 0x8

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    goto :goto_2

    :cond_1
    add-int/2addr p3, p2

    :goto_1
    if-ge p2, p3, :cond_2

    aget-wide v0, p1, p2

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeDouble(D)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public writeFloat(F)V
    .locals 4

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x4

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x2

    shr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x3

    shr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method

.method public writeFloats([FII)V
    .locals 5

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    shl-int/lit8 v1, p3, 0x2

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    aget v2, p1, p2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    int-to-byte v3, v2

    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x1

    shr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v3, v1, 0x2

    shr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v3, v1, 0x3

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    goto :goto_2

    :cond_1
    add-int/2addr p3, p2

    :goto_1
    if-ge p2, p3, :cond_2

    aget v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public writeInt(IZ)I
    .locals 1

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/io/Output;->varEncoding:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    const/4 p1, 0x4

    return p1
.end method

.method public writeInt(I)V
    .locals 4

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x4

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x2

    shr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x3

    shr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method

.method public writeInts([III)V
    .locals 5

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    shl-int/lit8 v1, p3, 0x2

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    aget v2, p1, p2

    int-to-byte v3, v2

    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x1

    shr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v3, v1, 0x2

    shr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v3, v1, 0x3

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    goto :goto_2

    :cond_1
    add-int/2addr p3, p2

    :goto_1
    if-ge p2, p3, :cond_2

    aget v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public writeInts([IIIZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/io/Output;->varEncoding:Z

    if-eqz v0, :cond_0

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_1

    aget v0, p1, p2

    invoke-virtual {p0, v0, p4}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/io/Output;->writeInts([III)V

    :cond_1
    return-void
.end method

.method public writeLong(JZ)I
    .locals 1

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/io/Output;->varEncoding:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/io/Output;->writeVarLong(JZ)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/io/Output;->writeLong(J)V

    const/16 p1, 0x8

    return p1
.end method

.method public writeLong(J)V
    .locals 6

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v3, v2, 0x8

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    long-to-int v3, p1

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v3, v2, 0x1

    ushr-long v4, p1, v0

    long-to-int v0, v4

    int-to-byte v0, v0

    aput-byte v0, v1, v3

    add-int/lit8 v0, v2, 0x2

    const/16 v3, 0x10

    ushr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x3

    const/16 v3, 0x18

    ushr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x4

    const/16 v3, 0x20

    ushr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x5

    const/16 v3, 0x28

    ushr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x6

    const/16 v3, 0x30

    ushr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v1, v0

    add-int/lit8 v2, v2, 0x7

    const/16 v0, 0x38

    ushr-long/2addr p1, v0

    long-to-int p2, p1

    int-to-byte p1, p2

    aput-byte p1, v1, v2

    return-void
.end method

.method public writeLongs([JII)V
    .locals 7

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    shl-int/lit8 v1, p3, 0x3

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    aget-wide v2, p1, p2

    long-to-int v4, v2

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    add-int/lit8 v4, v1, 0x1

    const/16 v5, 0x8

    ushr-long v5, v2, v5

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, v0, v4

    add-int/lit8 v4, v1, 0x2

    const/16 v5, 0x10

    ushr-long v5, v2, v5

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, v0, v4

    add-int/lit8 v4, v1, 0x3

    const/16 v5, 0x18

    ushr-long v5, v2, v5

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, v0, v4

    add-int/lit8 v4, v1, 0x4

    const/16 v5, 0x20

    ushr-long v5, v2, v5

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, v0, v4

    add-int/lit8 v4, v1, 0x5

    const/16 v5, 0x28

    ushr-long v5, v2, v5

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, v0, v4

    add-int/lit8 v4, v1, 0x6

    const/16 v5, 0x30

    ushr-long v5, v2, v5

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, v0, v4

    add-int/lit8 v4, v1, 0x7

    const/16 v5, 0x38

    ushr-long/2addr v2, v5

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, v4

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v1, v1, 0x8

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    goto :goto_2

    :cond_1
    add-int/2addr p3, p2

    :goto_1
    if-ge p2, p3, :cond_2

    aget-wide v0, p1, p2

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeLong(J)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public writeLongs([JIIZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/io/Output;->varEncoding:Z

    if-eqz v0, :cond_0

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_1

    aget-wide v0, p1, p2

    invoke-virtual {p0, v0, v1, p4}, Lcom/esotericsoftware/kryo/io/Output;->writeVarLong(JZ)I

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/io/Output;->writeLongs([JII)V

    :cond_1
    return-void
.end method

.method public writeShort(I)V
    .locals 3

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v1, v0, 0x2

    iput v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    int-to-byte v2, p1

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    aput-byte p1, v1, v0

    return-void
.end method

.method public writeShorts([SII)V
    .locals 4

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    shl-int/lit8 v1, p3, 0x1

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    aget-short v2, p1, p2

    int-to-byte v3, v2

    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    goto :goto_2

    :cond_1
    add-int/2addr p3, p2

    :goto_1
    if-ge p2, p3, :cond_2

    aget-short v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeShort(I)V

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

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(I)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    const/16 p1, 0x81

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(I)V

    return-void

    :cond_1
    const/16 v2, 0x7f

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v1, v4, :cond_5

    const/16 v5, 0x20

    if-gt v1, v5, :cond_5

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_3

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-le v6, v2, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    iget v5, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    sub-int/2addr v2, v5

    if-ge v2, v1, :cond_4

    invoke-virtual {p0, p1, v1}, Lcom/esotericsoftware/kryo/io/Output;->c(Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    invoke-virtual {p1, v3, v1, v2, v5}, Ljava/lang/String;->getBytes(II[BI)V

    iget p1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    :goto_1
    iget-object p1, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    sub-int/2addr v1, v4

    aget-byte v2, p1, v1

    or-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    return-void

    :cond_5
    :goto_2
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v4, v0, v4}, Lcom/esotericsoftware/kryo/io/Output;->writeVarIntFlag(ZIZ)I

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    sub-int/2addr v0, v4

    if-lt v0, v1, :cond_8

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    :goto_3
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-le v5, v2, :cond_6

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    goto :goto_4

    :cond_6
    add-int/lit8 v6, v4, 0x1

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v3, v3, 0x1

    if-ne v3, v1, :cond_7

    iput v6, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    return-void

    :cond_7
    move v4, v6

    goto :goto_3

    :cond_8
    :goto_4
    if-ge v3, v1, :cond_9

    invoke-virtual {p0, p1, v1, v3}, Lcom/esotericsoftware/kryo/io/Output;->d(Ljava/lang/String;II)V

    :cond_9
    return-void
.end method

.method public writeVarDouble(DDZ)I
    .locals 0

    mul-double p1, p1, p3

    double-to-long p1, p1

    invoke-virtual {p0, p1, p2, p5}, Lcom/esotericsoftware/kryo/io/Output;->writeVarLong(JZ)I

    move-result p1

    return p1
.end method

.method public writeVarFloat(FFZ)I
    .locals 0

    mul-float p1, p1, p2

    float-to-int p1, p1

    invoke-virtual {p0, p1, p3}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    move-result p1

    return p1
.end method

.method public writeVarInt(IZ)I
    .locals 7

    if-nez p2, :cond_0

    shl-int/lit8 p2, p1, 0x1

    shr-int/lit8 p1, p1, 0x1f

    xor-int/2addr p1, p2

    :cond_0
    ushr-int/lit8 p2, p1, 0x7

    const/4 v0, 0x1

    if-nez p2, :cond_2

    iget p2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    if-ne p2, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    :cond_1
    iget-object p2, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    int-to-byte p1, p1

    aput-byte p1, p2, v1

    return v0

    :cond_2
    ushr-int/lit8 v1, p1, 0xe

    const/4 v2, 0x2

    if-nez v1, :cond_3

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v3, v1, 0x2

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    and-int/lit8 p1, p1, 0x7f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    aput-byte p1, v3, v1

    add-int/2addr v1, v0

    int-to-byte p1, p2

    aput-byte p1, v3, v1

    return v2

    :cond_3
    ushr-int/lit8 v0, p1, 0x15

    const/4 v3, 0x3

    if-nez v0, :cond_4

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v4, v0, 0x3

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    and-int/lit8 p1, p1, 0x7f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    aput-byte p1, v4, v0

    add-int/lit8 p1, v0, 0x1

    or-int/lit16 p2, p2, 0x80

    int-to-byte p2, p2

    aput-byte p2, v4, p1

    add-int/2addr v0, v2

    int-to-byte p1, v1

    aput-byte p1, v4, v0

    return v3

    :cond_4
    ushr-int/lit8 v2, p1, 0x1c

    const/4 v4, 0x4

    if-nez v2, :cond_5

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v5, v2, 0x4

    iput v5, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget-object v5, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    and-int/lit8 p1, p1, 0x7f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    aput-byte p1, v5, v2

    add-int/lit8 p1, v2, 0x1

    or-int/lit16 p2, p2, 0x80

    int-to-byte p2, p2

    aput-byte p2, v5, p1

    add-int/lit8 p1, v2, 0x2

    or-int/lit16 p2, v1, 0x80

    int-to-byte p2, p2

    aput-byte p2, v5, p1

    add-int/2addr v2, v3

    int-to-byte p1, v0

    aput-byte p1, v5, v2

    return v4

    :cond_5
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget v5, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v6, v5, 0x5

    iput v6, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget-object v6, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    and-int/lit8 p1, p1, 0x7f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    aput-byte p1, v6, v5

    add-int/lit8 p1, v5, 0x1

    or-int/lit16 p2, p2, 0x80

    int-to-byte p2, p2

    aput-byte p2, v6, p1

    add-int/lit8 p1, v5, 0x2

    or-int/lit16 p2, v1, 0x80

    int-to-byte p2, p2

    aput-byte p2, v6, p1

    add-int/lit8 p1, v5, 0x3

    or-int/lit16 p2, v0, 0x80

    int-to-byte p2, p2

    aput-byte p2, v6, p1

    add-int/2addr v5, v4

    int-to-byte p1, v2

    aput-byte p1, v6, v5

    return v3
.end method

.method public writeVarIntFlag(ZIZ)I
    .locals 8

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

    const/4 v1, 0x1

    if-nez p3, :cond_3

    iget p2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget p3, p0, Lcom/esotericsoftware/kryo/io/Output;->capacity:I

    if-ne p2, p3, :cond_2

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    :cond_2
    iget-object p2, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget p3, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    int-to-byte p1, p1

    aput-byte p1, p2, p3

    return v1

    :cond_3
    ushr-int/lit8 v2, p2, 0xd

    const/4 v3, 0x2

    if-nez v2, :cond_4

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget p2, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v0, p2, 0x2

    iput v0, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    or-int/lit8 p1, p1, 0x40

    int-to-byte p1, p1

    aput-byte p1, v0, p2

    add-int/2addr p2, v1

    int-to-byte p1, p3

    aput-byte p1, v0, p2

    return v3

    :cond_4
    ushr-int/lit8 v1, p2, 0x14

    const/4 v4, 0x3

    if-nez v1, :cond_5

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget-object p2, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v5, v1, 0x3

    iput v5, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    or-int/lit8 p1, p1, 0x40

    int-to-byte p1, p1

    aput-byte p1, p2, v1

    add-int/lit8 p1, v1, 0x1

    or-int/2addr p3, v0

    int-to-byte p3, p3

    aput-byte p3, p2, p1

    add-int/2addr v1, v3

    int-to-byte p1, v2

    aput-byte p1, p2, v1

    return v4

    :cond_5
    ushr-int/lit8 p2, p2, 0x1b

    const/4 v3, 0x4

    if-nez p2, :cond_6

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget-object p2, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v5, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v6, v5, 0x4

    iput v6, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    or-int/lit8 p1, p1, 0x40

    int-to-byte p1, p1

    aput-byte p1, p2, v5

    add-int/lit8 p1, v5, 0x1

    or-int/2addr p3, v0

    int-to-byte p3, p3

    aput-byte p3, p2, p1

    add-int/lit8 p1, v5, 0x2

    or-int/lit16 p3, v2, 0x80

    int-to-byte p3, p3

    aput-byte p3, p2, p1

    add-int/2addr v5, v4

    int-to-byte p1, v1

    aput-byte p1, p2, v5

    return v3

    :cond_6
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget-object v5, p0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v6, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v7, v6, 0x5

    iput v7, p0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    or-int/lit8 p1, p1, 0x40

    int-to-byte p1, p1

    aput-byte p1, v5, v6

    add-int/lit8 p1, v6, 0x1

    or-int/2addr p3, v0

    int-to-byte p3, p3

    aput-byte p3, v5, p1

    add-int/lit8 p1, v6, 0x2

    or-int/lit16 p3, v2, 0x80

    int-to-byte p3, p3

    aput-byte p3, v5, p1

    add-int/lit8 p1, v6, 0x3

    or-int/lit16 p3, v1, 0x80

    int-to-byte p3, p3

    aput-byte p3, v5, p1

    add-int/2addr v6, v3

    int-to-byte p1, p2

    aput-byte p1, v5, v6

    return v4
.end method

.method public writeVarLong(JZ)I
    .locals 26

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

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    :cond_1
    iget-object v4, v0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    iget v5, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v4, v5

    return v1

    :cond_2
    const/16 v9, 0xe

    ushr-long v9, v2, v9

    const-wide/16 v11, 0x7f

    const/4 v13, 0x2

    const-wide/16 v14, 0x80

    cmp-long v16, v9, v7

    if-nez v16, :cond_3

    invoke-virtual {v0, v13}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget v4, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v7, v4, 0x2

    iput v7, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget-object v7, v0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    and-long/2addr v2, v11

    or-long/2addr v2, v14

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v7, v4

    add-int/2addr v4, v1

    long-to-int v1, v5

    int-to-byte v1, v1

    aput-byte v1, v7, v4

    return v13

    :cond_3
    const/16 v1, 0x15

    move-wide/from16 p2, v5

    ushr-long v4, v2, v1

    const/4 v1, 0x3

    cmp-long v6, v4, v7

    if-nez v6, :cond_4

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget v4, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v5, v4, 0x3

    iput v5, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget-object v5, v0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    and-long/2addr v2, v11

    or-long/2addr v2, v14

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v5, v4

    add-int/lit8 v2, v4, 0x1

    move-wide/from16 v16, p2

    or-long v6, v16, v14

    long-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, v5, v2

    add-int/2addr v4, v13

    long-to-int v2, v9

    int-to-byte v2, v2

    aput-byte v2, v5, v4

    return v1

    :cond_4
    move-wide/from16 v16, p2

    const/16 v6, 0x1c

    ushr-long v14, v2, v6

    const/4 v6, 0x4

    cmp-long v13, v14, v7

    if-nez v13, :cond_5

    invoke-virtual {v0, v6}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget v7, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v8, v7, 0x4

    iput v8, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget-object v8, v0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    and-long/2addr v2, v11

    const-wide/16 v11, 0x80

    or-long/2addr v2, v11

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v8, v7

    add-int/lit8 v2, v7, 0x1

    or-long v13, v16, v11

    long-to-int v3, v13

    int-to-byte v3, v3

    aput-byte v3, v8, v2

    add-int/lit8 v2, v7, 0x2

    or-long/2addr v9, v11

    long-to-int v3, v9

    int-to-byte v3, v3

    aput-byte v3, v8, v2

    add-int/2addr v7, v1

    long-to-int v1, v4

    int-to-byte v1, v1

    aput-byte v1, v8, v7

    return v6

    :cond_5
    const/16 v1, 0x23

    ushr-long v11, v2, v1

    const/4 v1, 0x5

    cmp-long v13, v11, v7

    if-nez v13, :cond_6

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget v7, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v8, v7, 0x5

    iput v8, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget-object v8, v0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    const-wide/16 v11, 0x7f

    and-long/2addr v2, v11

    const-wide/16 v11, 0x80

    or-long/2addr v2, v11

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v8, v7

    add-int/lit8 v2, v7, 0x1

    move v13, v7

    or-long v6, v16, v11

    long-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, v8, v2

    add-int/lit8 v7, v13, 0x2

    or-long v2, v9, v11

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v8, v7

    add-int/lit8 v7, v13, 0x3

    or-long v2, v4, v11

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v8, v7

    const/4 v2, 0x4

    add-int/lit8 v7, v13, 0x4

    long-to-int v2, v14

    int-to-byte v2, v2

    aput-byte v2, v8, v7

    return v1

    :cond_6
    const/16 v6, 0x2a

    move-wide/from16 v20, v11

    ushr-long v11, v2, v6

    const/4 v6, 0x6

    cmp-long v13, v11, v7

    if-nez v13, :cond_7

    invoke-virtual {v0, v6}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget v7, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v8, v7, 0x6

    iput v8, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget-object v8, v0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    const-wide/16 v11, 0x7f

    and-long/2addr v2, v11

    const-wide/16 v11, 0x80

    or-long/2addr v2, v11

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v8, v7

    add-int/lit8 v2, v7, 0x1

    move/from16 v18, v7

    or-long v6, v16, v11

    long-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, v8, v2

    add-int/lit8 v7, v18, 0x2

    or-long v2, v9, v11

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v8, v7

    add-int/lit8 v7, v18, 0x3

    or-long v2, v4, v11

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v8, v7

    add-int/lit8 v7, v18, 0x4

    or-long v2, v14, v11

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v8, v7

    add-int/lit8 v7, v18, 0x5

    move-wide/from16 v1, v20

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, v8, v7

    const/4 v1, 0x6

    return v1

    :cond_7
    const/16 v1, 0x31

    move-wide/from16 v22, v14

    ushr-long v13, v2, v1

    cmp-long v1, v13, v7

    if-nez v1, :cond_8

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget v1, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v7, v1, 0x7

    iput v7, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget-object v7, v0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    const-wide/16 v13, 0x7f

    and-long/2addr v2, v13

    const-wide/16 v13, 0x80

    or-long/2addr v2, v13

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v7, v1

    add-int/lit8 v2, v1, 0x1

    move-object v8, v7

    or-long v6, v16, v13

    long-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, v8, v2

    add-int/lit8 v2, v1, 0x2

    or-long v6, v9, v13

    long-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, v8, v2

    add-int/lit8 v2, v1, 0x3

    or-long/2addr v4, v13

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, v8, v2

    add-int/lit8 v2, v1, 0x4

    or-long v3, v22, v13

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v8, v2

    add-int/lit8 v2, v1, 0x5

    or-long v3, v20, v13

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v8, v2

    const/4 v2, 0x6

    add-int/2addr v1, v2

    long-to-int v2, v11

    int-to-byte v2, v2

    aput-byte v2, v8, v1

    const/4 v1, 0x7

    return v1

    :cond_8
    const/16 v1, 0x38

    move-wide/from16 v24, v13

    ushr-long v13, v2, v1

    const/16 v1, 0x8

    cmp-long v6, v13, v7

    if-nez v6, :cond_9

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget v6, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v7, v6, 0x8

    iput v7, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget-object v7, v0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    const-wide/16 v13, 0x7f

    and-long/2addr v2, v13

    const-wide/16 v13, 0x80

    or-long/2addr v2, v13

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v7, v6

    add-int/lit8 v2, v6, 0x1

    move/from16 p2, v2

    or-long v1, v16, v13

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, v7, p2

    add-int/lit8 v1, v6, 0x2

    or-long v2, v9, v13

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v7, v1

    add-int/lit8 v1, v6, 0x3

    or-long v2, v4, v13

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v7, v1

    add-int/lit8 v1, v6, 0x4

    or-long v2, v22, v13

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v7, v1

    add-int/lit8 v1, v6, 0x5

    or-long v2, v20, v13

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v7, v1

    add-int/lit8 v1, v6, 0x6

    or-long v2, v11, v13

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v7, v1

    const/4 v1, 0x7

    add-int/2addr v6, v1

    move-wide/from16 v1, v24

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, v7, v6

    const/16 v1, 0x8

    return v1

    :cond_9
    move-wide/from16 v6, v24

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->require(I)Z

    iget v15, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    add-int/lit8 v8, v15, 0x9

    iput v8, v0, Lcom/esotericsoftware/kryo/io/Output;->position:I

    iget-object v8, v0, Lcom/esotericsoftware/kryo/io/Output;->buffer:[B

    const-wide/16 v18, 0x7f

    and-long v2, v2, v18

    const-wide/16 v18, 0x80

    or-long v2, v2, v18

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v8, v15

    add-int/lit8 v2, v15, 0x1

    move/from16 p3, v2

    or-long v1, v16, v18

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, v8, p3

    add-int/lit8 v1, v15, 0x2

    or-long v2, v9, v18

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v8, v1

    add-int/lit8 v1, v15, 0x3

    or-long v2, v4, v18

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v8, v1

    add-int/lit8 v1, v15, 0x4

    or-long v2, v22, v18

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v8, v1

    add-int/lit8 v1, v15, 0x5

    or-long v2, v20, v18

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v8, v1

    add-int/lit8 v1, v15, 0x6

    or-long v2, v11, v18

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v8, v1

    add-int/lit8 v1, v15, 0x7

    or-long v2, v6, v18

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v8, v1

    const/16 v1, 0x8

    add-int/2addr v15, v1

    long-to-int v1, v13

    int-to-byte v1, v1

    aput-byte v1, v8, v15

    const/16 v1, 0x9

    return v1
.end method
