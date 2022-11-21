.class public Lcom/prineside/kryo/FixedOutput;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:J

.field public d:I

.field public k:I

.field public p:[B

.field public q:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1, p1}, Lcom/prineside/kryo/FixedOutput;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, -0x1

    if-lt p2, v0, :cond_1

    iput p1, p0, Lcom/prineside/kryo/FixedOutput;->k:I

    if-ne p2, v0, :cond_0

    const p2, 0x7fffffff

    :cond_0
    iput p2, p0, Lcom/prineside/kryo/FixedOutput;->a:I

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/prineside/kryo/FixedOutput;->p:[B

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

    invoke-direct {p0, v0, v0}, Lcom/prineside/kryo/FixedOutput;-><init>(II)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/prineside/kryo/FixedOutput;->q:Ljava/io/OutputStream;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "outputStream cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0

    invoke-direct {p0, p2, p2}, Lcom/prineside/kryo/FixedOutput;-><init>(II)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/prineside/kryo/FixedOutput;->q:Ljava/io/OutputStream;

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

    invoke-direct {p0, p1, v0}, Lcom/prineside/kryo/FixedOutput;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/prineside/kryo/FixedOutput;->setBuffer([BI)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "buffer cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static intLength(IZ)I
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

.method public static longLength(JZ)I
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
.method public c(I)Z
    .locals 5

    iget v0, p0, Lcom/prineside/kryo/FixedOutput;->k:I

    iget v1, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-lt v0, p1, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/prineside/kryo/FixedOutput;->a:I

    const-string v2, ", required: "

    if-gt p1, v0, :cond_5

    invoke-virtual {p0}, Lcom/prineside/kryo/FixedOutput;->flush()V

    :goto_0
    iget v0, p0, Lcom/prineside/kryo/FixedOutput;->k:I

    iget v3, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    sub-int v3, v0, v3

    const/4 v4, 0x1

    if-ge v3, p1, :cond_4

    iget v3, p0, Lcom/prineside/kryo/FixedOutput;->a:I

    if-eq v0, v3, :cond_3

    if-nez v0, :cond_1

    iput v4, p0, Lcom/prineside/kryo/FixedOutput;->k:I

    :cond_1
    iget v0, p0, Lcom/prineside/kryo/FixedOutput;->k:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/prineside/kryo/FixedOutput;->k:I

    if-gez v0, :cond_2

    iget v0, p0, Lcom/prineside/kryo/FixedOutput;->a:I

    iput v0, p0, Lcom/prineside/kryo/FixedOutput;->k:I

    :cond_2
    iget v0, p0, Lcom/prineside/kryo/FixedOutput;->k:I

    new-array v0, v0, [B

    iget-object v3, p0, Lcom/prineside/kryo/FixedOutput;->p:[B

    iget v4, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    invoke-static {v3, v1, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/prineside/kryo/FixedOutput;->p:[B

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Buffer overflow. Available: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/prineside/kryo/FixedOutput;->k:I

    iget v4, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return v4

    :cond_5
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Buffer overflow. Max capacity: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/prineside/kryo/FixedOutput;->a:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/prineside/kryo/FixedOutput;->b:J

    return-void
.end method

.method public close()V
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/kryo/FixedOutput;->flush()V

    iget-object v0, p0, Lcom/prineside/kryo/FixedOutput;->q:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/String;I)V
    .locals 5

    iget-object v0, p0, Lcom/prineside/kryo/FixedOutput;->p:[B

    iget v1, p0, Lcom/prineside/kryo/FixedOutput;->k:I

    iget v2, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    sub-int/2addr v1, v2

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_1

    add-int v3, v2, v1

    iget v4, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    invoke-virtual {p1, v2, v3, v0, v4}, Ljava/lang/String;->getBytes(II[BI)V

    iget v2, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    sub-int v1, p2, v3

    iget v2, p0, Lcom/prineside/kryo/FixedOutput;->k:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/prineside/kryo/FixedOutput;->c(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/prineside/kryo/FixedOutput;->p:[B

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final e(Ljava/lang/CharSequence;II)V
    .locals 5

    :goto_0
    if-ge p3, p2, :cond_3

    iget v0, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    iget v1, p0, Lcom/prineside/kryo/FixedOutput;->k:I

    if-ne v0, v1, :cond_0

    sub-int v0, p2, p3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/prineside/kryo/FixedOutput;->c(I)Z

    :cond_0
    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_1

    iget-object v1, p0, Lcom/prineside/kryo/FixedOutput;->p:[B

    iget v2, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    goto :goto_1

    :cond_1
    const/16 v1, 0x7ff

    if-le v0, v1, :cond_2

    iget-object v1, p0, Lcom/prineside/kryo/FixedOutput;->p:[B

    iget v2, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    shr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0xf

    or-int/lit16 v3, v3, 0xe0

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/prineside/kryo/FixedOutput;->c(I)Z

    iget-object v1, p0, Lcom/prineside/kryo/FixedOutput;->p:[B

    iget v2, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v4, v0, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    aput-byte v0, v1, v3

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/prineside/kryo/FixedOutput;->p:[B

    iget v2, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    shr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x1f

    or-int/lit16 v3, v3, 0xc0

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/prineside/kryo/FixedOutput;->c(I)Z

    iget-object v1, p0, Lcom/prineside/kryo/FixedOutput;->p:[B

    iget v2, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final f(I)V
    .locals 7

    ushr-int/lit8 v0, p1, 0x6

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/prineside/kryo/FixedOutput;->c(I)Z

    iget-object v0, p0, Lcom/prineside/kryo/FixedOutput;->p:[B

    iget v1, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    goto/16 :goto_0

    :cond_0
    ushr-int/lit8 v1, p1, 0xd

    if-nez v1, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/prineside/kryo/FixedOutput;->c(I)Z

    iget-object v1, p0, Lcom/prineside/kryo/FixedOutput;->p:[B

    iget v2, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    add-int/lit8 v3, v2, 0x1

    or-int/lit8 p1, p1, 0x40

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    add-int/lit8 p1, v3, 0x1

    iput p1, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    int-to-byte p1, v0

    aput-byte p1, v1, v3

    goto/16 :goto_0

    :cond_1
    ushr-int/lit8 v2, p1, 0x14

    if-nez v2, :cond_2

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/prineside/kryo/FixedOutput;->c(I)Z

    iget-object v2, p0, Lcom/prineside/kryo/FixedOutput;->p:[B

    iget v3, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    add-int/lit8 v4, v3, 0x1

    or-int/lit8 p1, p1, 0x40

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    aput-byte p1, v2, v3

    add-int/lit8 p1, v4, 0x1

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    aput-byte v0, v2, v4

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    int-to-byte v0, v1

    aput-byte v0, v2, p1

    goto :goto_0

    :cond_2
    ushr-int/lit8 v3, p1, 0x1b

    if-nez v3, :cond_3

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/prineside/kryo/FixedOutput;->c(I)Z

    iget-object v3, p0, Lcom/prineside/kryo/FixedOutput;->p:[B

    iget v4, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    add-int/lit8 v5, v4, 0x1

    or-int/lit8 p1, p1, 0x40

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    aput-byte p1, v3, v4

    add-int/lit8 p1, v5, 0x1

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    aput-byte v0, v3, v5

    add-int/lit8 v0, p1, 0x1

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, v3, p1

    add-int/lit8 p1, v0, 0x1

    iput p1, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    int-to-byte p1, v2

    aput-byte p1, v3, v0

    goto :goto_0

    :cond_3
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Lcom/prineside/kryo/FixedOutput;->c(I)Z

    iget-object v4, p0, Lcom/prineside/kryo/FixedOutput;->p:[B

    iget v5, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    add-int/lit8 v6, v5, 0x1

    or-int/lit8 p1, p1, 0x40

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    aput-byte p1, v4, v5

    add-int/lit8 p1, v6, 0x1

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    aput-byte v0, v4, v6

    add-int/lit8 v0, p1, 0x1

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, v4, p1

    add-int/lit8 p1, v0, 0x1

    or-int/lit16 v1, v2, 0x80

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    int-to-byte v0, v3

    aput-byte v0, v4, p1

    :goto_0
    return-void
.end method

.method public flush()V
    .locals 6

    iget-object v0, p0, Lcom/prineside/kryo/FixedOutput;->q:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/prineside/kryo/FixedOutput;->p:[B

    iget v2, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-wide v0, p0, Lcom/prineside/kryo/FixedOutput;->b:J

    iget v2, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    int-to-long v4, v2

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/prineside/kryo/FixedOutput;->b:J

    iput v3, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getBuffer()[B
    .locals 1

    iget-object v0, p0, Lcom/prineside/kryo/FixedOutput;->p:[B

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lcom/prineside/kryo/FixedOutput;->q:Ljava/io/OutputStream;

    return-object v0
.end method

.method public final position()I
    .locals 1

    iget v0, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    return v0
.end method

.method public setBuffer([B)V
    .locals 1

    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/prineside/kryo/FixedOutput;->setBuffer([BI)V

    return-void
.end method

.method public setBuffer([BI)V
    .locals 2

    if-eqz p1, :cond_2

    const/4 v0, -0x1

    if-lt p2, v0, :cond_1

    iput-object p1, p0, Lcom/prineside/kryo/FixedOutput;->p:[B

    if-ne p2, v0, :cond_0

    const p2, 0x7fffffff

    :cond_0
    iput p2, p0, Lcom/prineside/kryo/FixedOutput;->a:I

    array-length p1, p1

    iput p1, p0, Lcom/prineside/kryo/FixedOutput;->k:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/prineside/kryo/FixedOutput;->b:J

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/prineside/kryo/FixedOutput;->q:Ljava/io/OutputStream;

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

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 2

    iput-object p1, p0, Lcom/prineside/kryo/FixedOutput;->q:Ljava/io/OutputStream;

    const/4 p1, 0x0

    iput p1, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/prineside/kryo/FixedOutput;->b:J

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    return-void
.end method

.method public toBytes()[B
    .locals 4

    iget v0, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    new-array v1, v0, [B

    iget-object v2, p0, Lcom/prineside/kryo/FixedOutput;->p:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public final total()J
    .locals 4

    iget-wide v0, p0, Lcom/prineside/kryo/FixedOutput;->b:J

    iget v2, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public write(I)V
    .locals 3

    iget v0, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    iget v1, p0, Lcom/prineside/kryo/FixedOutput;->k:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/prineside/kryo/FixedOutput;->c(I)Z

    :cond_0
    iget-object v0, p0, Lcom/prineside/kryo/FixedOutput;->p:[B

    iget v1, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method

.method public write([B)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/prineside/kryo/FixedOutput;->writeBytes([BII)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bytes cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([BII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/prineside/kryo/FixedOutput;->writeBytes([BII)V

    return-void
.end method

.method public writeAscii(Ljava/lang/String;)V
    .locals 6

    const/16 v0, 0x80

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/prineside/kryo/FixedOutput;->writeByte(I)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    iget v4, p0, Lcom/prineside/kryo/FixedOutput;->k:I

    iget v5, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    sub-int/2addr v4, v5

    if-ge v4, v1, :cond_1

    invoke-virtual {p0, p1, v1}, Lcom/prineside/kryo/FixedOutput;->d(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/prineside/kryo/FixedOutput;->p:[B

    invoke-virtual {p1, v2, v1, v4, v5}, Ljava/lang/String;->getBytes(II[BI)V

    iget p1, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    :goto_0
    iget-object p1, p0, Lcom/prineside/kryo/FixedOutput;->p:[B

    iget v1, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    sub-int/2addr v1, v3

    aget-byte v2, p1, v1

    or-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    return-void

    :cond_2
    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Lcom/prineside/kryo/FixedOutput;->writeByte(I)V

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p0, p1}, Lcom/prineside/kryo/FixedOutput;->writeByte(I)V

    return-void

    :cond_3
    const/16 p1, 0x81

    invoke-virtual {p0, p1}, Lcom/prineside/kryo/FixedOutput;->writeByte(I)V

    return-void
.end method

.method public writeBoolean(Z)V
    .locals 3

    iget v0, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    iget v1, p0, Lcom/prineside/kryo/FixedOutput;->k:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/prineside/kryo/FixedOutput;->c(I)Z

    :cond_0
    iget-object v0, p0, Lcom/prineside/kryo/FixedOutput;->p:[B

    iget v1, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method

.method public writeByte(B)V
    .locals 3

    iget v0, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    iget v1, p0, Lcom/prineside/kryo/FixedOutput;->k:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/prineside/kryo/FixedOutput;->c(I)Z

    :cond_0
    iget-object v0, p0, Lcom/prineside/kryo/FixedOutput;->p:[B

    iget v1, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public writeByte(I)V
    .locals 3

    iget v0, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    iget v1, p0, Lcom/prineside/kryo/FixedOutput;->k:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/prineside/kryo/FixedOutput;->c(I)Z

    :cond_0
    iget-object v0, p0, Lcom/prineside/kryo/FixedOutput;->p:[B

    iget v1, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method

.method public writeBytes([B)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/prineside/kryo/FixedOutput;->writeBytes([BII)V

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

    iget v0, p0, Lcom/prineside/kryo/FixedOutput;->k:I

    iget v1, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    sub-int/2addr v0, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/prineside/kryo/FixedOutput;->p:[B

    iget v2, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    sub-int/2addr p3, v0

    if-nez p3, :cond_0

    return-void

    :cond_0
    add-int/2addr p2, v0

    iget v0, p0, Lcom/prineside/kryo/FixedOutput;->k:I

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/prineside/kryo/FixedOutput;->c(I)Z

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
    .locals 4

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/prineside/kryo/FixedOutput;->c(I)Z

    iget-object v0, p0, Lcom/prineside/kryo/FixedOutput;->p:[B

    iget v1, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    add-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    return-void
.end method

.method public writeChars([C)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-char v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/prineside/kryo/FixedOutput;->writeChar(C)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeDouble(DDZ)I
    .locals 0

    mul-double p1, p1, p3

    double-to-long p1, p1

    invoke-virtual {p0, p1, p2, p5}, Lcom/prineside/kryo/FixedOutput;->writeLong(JZ)I

    move-result p1

    return p1
.end method

.method public writeDouble(D)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/prineside/kryo/FixedOutput;->writeLong(J)V

    return-void
.end method

.method public writeDoubles([D)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Lcom/prineside/kryo/FixedOutput;->writeDouble(D)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeFloat(FFZ)I
    .locals 0

    mul-float p1, p1, p2

    float-to-int p1, p1

    invoke-virtual {p0, p1, p3}, Lcom/prineside/kryo/FixedOutput;->writeInt(IZ)I

    move-result p1

    return p1
.end method

.method public writeFloat(F)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/prineside/kryo/FixedOutput;->writeInt(I)V

    return-void
.end method

.method public writeFloats([F)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/prineside/kryo/FixedOutput;->writeFloat(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeInt(IZ)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/prineside/kryo/FixedOutput;->writeVarInt(IZ)I

    move-result p1

    return p1
.end method

.method public writeInt(I)V
    .locals 4

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/prineside/kryo/FixedOutput;->c(I)Z

    iget-object v0, p0, Lcom/prineside/kryo/FixedOutput;->p:[B

    iget v1, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v3, p1, 0x18

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    shr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    return-void
.end method

.method public writeInts([I)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/prineside/kryo/FixedOutput;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeInts([IZ)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    invoke-virtual {p0, v2, p2}, Lcom/prineside/kryo/FixedOutput;->writeInt(IZ)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeLong(JZ)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/prineside/kryo/FixedOutput;->writeVarLong(JZ)I

    move-result p1

    return p1
.end method

.method public writeLong(J)V
    .locals 6

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/prineside/kryo/FixedOutput;->c(I)Z

    iget-object v1, p0, Lcom/prineside/kryo/FixedOutput;->p:[B

    iget v2, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x38

    ushr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    const/16 v4, 0x30

    ushr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x28

    ushr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    const/16 v4, 0x20

    ushr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x18

    ushr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    const/16 v4, 0x10

    ushr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    ushr-long v4, p1, v0

    long-to-int v0, v4

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    add-int/lit8 v0, v3, 0x1

    iput v0, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    long-to-int p2, p1

    int-to-byte p1, p2

    aput-byte p1, v1, v3

    return-void
.end method

.method public writeLongs([J)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Lcom/prineside/kryo/FixedOutput;->writeLong(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeLongs([JZ)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3, p2}, Lcom/prineside/kryo/FixedOutput;->writeLong(JZ)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeShort(I)V
    .locals 4

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/prineside/kryo/FixedOutput;->c(I)Z

    iget-object v0, p0, Lcom/prineside/kryo/FixedOutput;->p:[B

    iget v1, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    add-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    return-void
.end method

.method public writeShorts([S)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-short v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/prineside/kryo/FixedOutput;->writeShort(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeString(Ljava/lang/CharSequence;)V
    .locals 6

    if-nez p1, :cond_0

    const/16 p1, 0x80

    invoke-virtual {p0, p1}, Lcom/prineside/kryo/FixedOutput;->writeByte(I)V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/16 p1, 0x81

    invoke-virtual {p0, p1}, Lcom/prineside/kryo/FixedOutput;->writeByte(I)V

    return-void

    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/prineside/kryo/FixedOutput;->f(I)V

    const/4 v1, 0x0

    iget v2, p0, Lcom/prineside/kryo/FixedOutput;->k:I

    iget v3, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    sub-int/2addr v2, v3

    if-lt v2, v0, :cond_4

    iget-object v2, p0, Lcom/prineside/kryo/FixedOutput;->p:[B

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x7f

    if-le v4, v5, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v3, 0x1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    move v3, v5

    goto :goto_0

    :cond_3
    :goto_1
    iput v3, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    :cond_4
    if-ge v1, v0, :cond_5

    invoke-virtual {p0, p1, v0, v1}, Lcom/prineside/kryo/FixedOutput;->e(Ljava/lang/CharSequence;II)V

    :cond_5
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 7

    const/16 v0, 0x80

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/prineside/kryo/FixedOutput;->writeByte(I)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    const/16 p1, 0x81

    invoke-virtual {p0, p1}, Lcom/prineside/kryo/FixedOutput;->writeByte(I)V

    return-void

    :cond_1
    const/16 v2, 0x7f

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v1, v4, :cond_4

    const/16 v5, 0x40

    if-ge v1, v5, :cond_4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_3

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-le v6, v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_6

    iget v2, p0, Lcom/prineside/kryo/FixedOutput;->k:I

    iget v5, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    sub-int/2addr v2, v5

    if-ge v2, v1, :cond_5

    invoke-virtual {p0, p1, v1}, Lcom/prineside/kryo/FixedOutput;->d(Ljava/lang/String;I)V

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lcom/prineside/kryo/FixedOutput;->p:[B

    invoke-virtual {p1, v3, v1, v2, v5}, Ljava/lang/String;->getBytes(II[BI)V

    iget p1, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    :goto_3
    iget-object p1, p0, Lcom/prineside/kryo/FixedOutput;->p:[B

    iget v1, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    sub-int/2addr v1, v4

    aget-byte v2, p1, v1

    or-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    goto :goto_6

    :cond_6
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Lcom/prineside/kryo/FixedOutput;->f(I)V

    iget v0, p0, Lcom/prineside/kryo/FixedOutput;->k:I

    iget v4, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    sub-int/2addr v0, v4

    if-lt v0, v1, :cond_9

    iget-object v0, p0, Lcom/prineside/kryo/FixedOutput;->p:[B

    :goto_4
    if-ge v3, v1, :cond_8

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-le v5, v2, :cond_7

    goto :goto_5

    :cond_7
    add-int/lit8 v6, v4, 0x1

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_4

    :cond_8
    :goto_5
    iput v4, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    :cond_9
    if-ge v3, v1, :cond_a

    invoke-virtual {p0, p1, v1, v3}, Lcom/prineside/kryo/FixedOutput;->e(Ljava/lang/CharSequence;II)V

    :cond_a
    :goto_6
    return-void
.end method

.method public writeVarInt(IZ)I
    .locals 7

    if-nez p2, :cond_0

    shl-int/lit8 p2, p1, 0x1

    shr-int/lit8 p1, p1, 0x1f

    xor-int/2addr p1, p2

    :cond_0
    ushr-int/lit8 p2, p1, 0x7

    if-nez p2, :cond_1

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/prineside/kryo/FixedOutput;->c(I)Z

    iget-object v0, p0, Lcom/prineside/kryo/FixedOutput;->p:[B

    iget v1, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return p2

    :cond_1
    ushr-int/lit8 v0, p1, 0xe

    if-nez v0, :cond_2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/prineside/kryo/FixedOutput;->c(I)Z

    iget-object v1, p0, Lcom/prineside/kryo/FixedOutput;->p:[B

    iget v2, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    add-int/lit8 v3, v2, 0x1

    and-int/lit8 p1, p1, 0x7f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    add-int/lit8 p1, v3, 0x1

    iput p1, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    int-to-byte p1, p2

    aput-byte p1, v1, v3

    return v0

    :cond_2
    ushr-int/lit8 v1, p1, 0x15

    if-nez v1, :cond_3

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/prineside/kryo/FixedOutput;->c(I)Z

    iget-object v2, p0, Lcom/prineside/kryo/FixedOutput;->p:[B

    iget v3, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    add-int/lit8 v4, v3, 0x1

    and-int/lit8 p1, p1, 0x7f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    aput-byte p1, v2, v3

    add-int/lit8 p1, v4, 0x1

    or-int/lit16 p2, p2, 0x80

    int-to-byte p2, p2

    aput-byte p2, v2, v4

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    int-to-byte p2, v0

    aput-byte p2, v2, p1

    return v1

    :cond_3
    ushr-int/lit8 v2, p1, 0x1c

    if-nez v2, :cond_4

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/prineside/kryo/FixedOutput;->c(I)Z

    iget-object v3, p0, Lcom/prineside/kryo/FixedOutput;->p:[B

    iget v4, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    add-int/lit8 v5, v4, 0x1

    and-int/lit8 p1, p1, 0x7f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    aput-byte p1, v3, v4

    add-int/lit8 p1, v5, 0x1

    or-int/lit16 p2, p2, 0x80

    int-to-byte p2, p2

    aput-byte p2, v3, v5

    add-int/lit8 p2, p1, 0x1

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    aput-byte v0, v3, p1

    add-int/lit8 p1, p2, 0x1

    iput p1, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    int-to-byte p1, v1

    aput-byte p1, v3, p2

    return v2

    :cond_4
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/prineside/kryo/FixedOutput;->c(I)Z

    iget-object v4, p0, Lcom/prineside/kryo/FixedOutput;->p:[B

    iget v5, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    add-int/lit8 v6, v5, 0x1

    and-int/lit8 p1, p1, 0x7f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    aput-byte p1, v4, v5

    add-int/lit8 p1, v6, 0x1

    or-int/lit16 p2, p2, 0x80

    int-to-byte p2, p2

    aput-byte p2, v4, v6

    add-int/lit8 p2, p1, 0x1

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    aput-byte v0, v4, p1

    add-int/lit8 p1, p2, 0x1

    or-int/lit16 v0, v1, 0x80

    int-to-byte v0, v0

    aput-byte v0, v4, p2

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/prineside/kryo/FixedOutput;->d:I

    int-to-byte p2, v2

    aput-byte p2, v4, p1

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

    if-nez v9, :cond_1

    invoke-virtual {v0, v1}, Lcom/prineside/kryo/FixedOutput;->c(I)Z

    iget-object v4, v0, Lcom/prineside/kryo/FixedOutput;->p:[B

    iget v5, v0, Lcom/prineside/kryo/FixedOutput;->d:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v0, Lcom/prineside/kryo/FixedOutput;->d:I

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v4, v5

    return v1

    :cond_1
    const/16 v1, 0xe

    ushr-long v9, v2, v1

    const-wide/16 v11, 0x7f

    const-wide/16 v13, 0x80

    cmp-long v1, v9, v7

    if-nez v1, :cond_2

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/prineside/kryo/FixedOutput;->c(I)Z

    iget-object v4, v0, Lcom/prineside/kryo/FixedOutput;->p:[B

    iget v7, v0, Lcom/prineside/kryo/FixedOutput;->d:I

    add-int/lit8 v8, v7, 0x1

    and-long/2addr v2, v11

    or-long/2addr v2, v13

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v4, v7

    add-int/lit8 v2, v8, 0x1

    iput v2, v0, Lcom/prineside/kryo/FixedOutput;->d:I

    long-to-int v2, v5

    int-to-byte v2, v2

    aput-byte v2, v4, v8

    return v1

    :cond_2
    const/16 v1, 0x15

    move-wide/from16 p2, v5

    ushr-long v4, v2, v1

    cmp-long v1, v4, v7

    if-nez v1, :cond_3

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/prineside/kryo/FixedOutput;->c(I)Z

    iget-object v4, v0, Lcom/prineside/kryo/FixedOutput;->p:[B

    iget v5, v0, Lcom/prineside/kryo/FixedOutput;->d:I

    add-int/lit8 v6, v5, 0x1

    and-long/2addr v2, v11

    or-long/2addr v2, v13

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v4, v5

    add-int/lit8 v2, v6, 0x1

    move-wide/from16 v15, p2

    or-long v7, v15, v13

    long-to-int v3, v7

    int-to-byte v3, v3

    aput-byte v3, v4, v6

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/prineside/kryo/FixedOutput;->d:I

    long-to-int v3, v9

    int-to-byte v3, v3

    aput-byte v3, v4, v2

    return v1

    :cond_3
    move-wide/from16 v15, p2

    const/16 v1, 0x1c

    ushr-long v13, v2, v1

    cmp-long v1, v13, v7

    if-nez v1, :cond_4

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/prineside/kryo/FixedOutput;->c(I)Z

    iget-object v6, v0, Lcom/prineside/kryo/FixedOutput;->p:[B

    iget v7, v0, Lcom/prineside/kryo/FixedOutput;->d:I

    add-int/lit8 v8, v7, 0x1

    and-long/2addr v2, v11

    const-wide/16 v11, 0x80

    or-long/2addr v2, v11

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v6, v7

    add-int/lit8 v2, v8, 0x1

    or-long v13, v15, v11

    long-to-int v3, v13

    int-to-byte v3, v3

    aput-byte v3, v6, v8

    add-int/lit8 v3, v2, 0x1

    or-long v7, v9, v11

    long-to-int v8, v7

    int-to-byte v7, v8

    aput-byte v7, v6, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, v0, Lcom/prineside/kryo/FixedOutput;->d:I

    long-to-int v2, v4

    int-to-byte v2, v2

    aput-byte v2, v6, v3

    return v1

    :cond_4
    const/16 v1, 0x23

    ushr-long v11, v2, v1

    cmp-long v1, v11, v7

    if-nez v1, :cond_5

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/prineside/kryo/FixedOutput;->c(I)Z

    iget-object v6, v0, Lcom/prineside/kryo/FixedOutput;->p:[B

    iget v7, v0, Lcom/prineside/kryo/FixedOutput;->d:I

    add-int/lit8 v8, v7, 0x1

    const-wide/16 v11, 0x7f

    and-long/2addr v2, v11

    const-wide/16 v11, 0x80

    or-long/2addr v2, v11

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v6, v7

    add-int/lit8 v2, v8, 0x1

    move/from16 p2, v2

    or-long v1, v15, v11

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, v6, v8

    add-int/lit8 v2, p2, 0x1

    or-long v7, v9, v11

    long-to-int v1, v7

    int-to-byte v1, v1

    aput-byte v1, v6, p2

    add-int/lit8 v1, v2, 0x1

    or-long/2addr v4, v11

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, v6, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/prineside/kryo/FixedOutput;->d:I

    long-to-int v2, v13

    int-to-byte v2, v2

    aput-byte v2, v6, v1

    const/4 v1, 0x5

    return v1

    :cond_5
    const/16 v1, 0x2a

    move-wide/from16 v19, v11

    ushr-long v11, v2, v1

    cmp-long v1, v11, v7

    if-nez v1, :cond_6

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/prineside/kryo/FixedOutput;->c(I)Z

    iget-object v6, v0, Lcom/prineside/kryo/FixedOutput;->p:[B

    iget v7, v0, Lcom/prineside/kryo/FixedOutput;->d:I

    add-int/lit8 v8, v7, 0x1

    const-wide/16 v11, 0x7f

    and-long/2addr v2, v11

    const-wide/16 v11, 0x80

    or-long/2addr v2, v11

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v6, v7

    add-int/lit8 v2, v8, 0x1

    move/from16 p2, v2

    or-long v1, v15, v11

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, v6, v8

    add-int/lit8 v2, p2, 0x1

    or-long v7, v9, v11

    long-to-int v1, v7

    int-to-byte v1, v1

    aput-byte v1, v6, p2

    add-int/lit8 v1, v2, 0x1

    or-long/2addr v4, v11

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, v6, v2

    add-int/lit8 v2, v1, 0x1

    or-long v3, v13, v11

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v6, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, v0, Lcom/prineside/kryo/FixedOutput;->d:I

    move-wide/from16 v3, v19

    long-to-int v1, v3

    int-to-byte v1, v1

    aput-byte v1, v6, v2

    const/4 v1, 0x6

    return v1

    :cond_6
    const/16 v1, 0x31

    move-wide/from16 v21, v11

    ushr-long v11, v2, v1

    cmp-long v1, v11, v7

    if-nez v1, :cond_7

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/prineside/kryo/FixedOutput;->c(I)Z

    iget-object v1, v0, Lcom/prineside/kryo/FixedOutput;->p:[B

    iget v6, v0, Lcom/prineside/kryo/FixedOutput;->d:I

    add-int/lit8 v7, v6, 0x1

    const-wide/16 v11, 0x7f

    and-long/2addr v2, v11

    const-wide/16 v11, 0x80

    or-long/2addr v2, v11

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v1, v6

    add-int/lit8 v2, v7, 0x1

    move-wide/from16 v23, v13

    or-long v13, v15, v11

    long-to-int v3, v13

    int-to-byte v3, v3

    aput-byte v3, v1, v7

    add-int/lit8 v3, v2, 0x1

    or-long v6, v9, v11

    long-to-int v7, v6

    int-to-byte v6, v7

    aput-byte v6, v1, v2

    add-int/lit8 v2, v3, 0x1

    or-long/2addr v4, v11

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    or-long v4, v23, v11

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    or-long v4, v19, v11

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/prineside/kryo/FixedOutput;->d:I

    move-wide/from16 v13, v21

    long-to-int v3, v13

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v1, 0x7

    return v1

    :cond_7
    move-wide/from16 v23, v13

    move-wide/from16 v13, v21

    const/16 v1, 0x38

    move-wide/from16 v21, v11

    ushr-long v11, v2, v1

    cmp-long v1, v11, v7

    if-nez v1, :cond_8

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/prineside/kryo/FixedOutput;->c(I)Z

    iget-object v6, v0, Lcom/prineside/kryo/FixedOutput;->p:[B

    iget v7, v0, Lcom/prineside/kryo/FixedOutput;->d:I

    add-int/lit8 v8, v7, 0x1

    const-wide/16 v11, 0x7f

    and-long/2addr v2, v11

    const-wide/16 v11, 0x80

    or-long/2addr v2, v11

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v6, v7

    add-int/lit8 v2, v8, 0x1

    move/from16 p2, v2

    or-long v1, v15, v11

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, v6, v8

    add-int/lit8 v2, p2, 0x1

    or-long v7, v9, v11

    long-to-int v1, v7

    int-to-byte v1, v1

    aput-byte v1, v6, p2

    add-int/lit8 v1, v2, 0x1

    or-long/2addr v4, v11

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, v6, v2

    add-int/lit8 v2, v1, 0x1

    or-long v3, v23, v11

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v6, v1

    add-int/lit8 v1, v2, 0x1

    or-long v3, v19, v11

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v6, v2

    add-int/lit8 v2, v1, 0x1

    or-long v3, v13, v11

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v6, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, v0, Lcom/prineside/kryo/FixedOutput;->d:I

    move-wide/from16 v7, v21

    long-to-int v1, v7

    int-to-byte v1, v1

    aput-byte v1, v6, v2

    const/16 v1, 0x8

    return v1

    :cond_8
    move-wide/from16 v7, v21

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/prineside/kryo/FixedOutput;->c(I)Z

    iget-object v6, v0, Lcom/prineside/kryo/FixedOutput;->p:[B

    iget v1, v0, Lcom/prineside/kryo/FixedOutput;->d:I

    add-int/lit8 v21, v1, 0x1

    const-wide/16 v17, 0x7f

    and-long v2, v2, v17

    const-wide/16 v17, 0x80

    or-long v2, v2, v17

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v6, v1

    add-int/lit8 v1, v21, 0x1

    or-long v2, v15, v17

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v6, v21

    add-int/lit8 v2, v1, 0x1

    or-long v9, v9, v17

    long-to-int v3, v9

    int-to-byte v3, v3

    aput-byte v3, v6, v1

    add-int/lit8 v1, v2, 0x1

    or-long v4, v4, v17

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, v6, v2

    add-int/lit8 v2, v1, 0x1

    or-long v3, v23, v17

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v6, v1

    add-int/lit8 v1, v2, 0x1

    or-long v3, v19, v17

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v6, v2

    add-int/lit8 v2, v1, 0x1

    or-long v3, v13, v17

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v6, v1

    add-int/lit8 v1, v2, 0x1

    or-long v3, v7, v17

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v6, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/prineside/kryo/FixedOutput;->d:I

    long-to-int v2, v11

    int-to-byte v2, v2

    aput-byte v2, v6, v1

    const/16 v1, 0x9

    return v1
.end method
