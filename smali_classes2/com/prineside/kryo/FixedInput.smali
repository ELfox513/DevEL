.class public Lcom/prineside/kryo/FixedInput;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public a:[B

.field public b:I

.field public d:I

.field public k:I

.field public p:J

.field public q:[C

.field public r:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/prineside/kryo/FixedInput;->q:[C

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/prineside/kryo/FixedInput;->q:[C

    iput p1, p0, Lcom/prineside/kryo/FixedInput;->d:I

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/prineside/kryo/FixedInput;->a:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Lcom/prineside/kryo/FixedInput;-><init>(I)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/prineside/kryo/FixedInput;->r:Ljava/io/InputStream;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "inputStream cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/prineside/kryo/FixedInput;-><init>(I)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/prineside/kryo/FixedInput;->r:Ljava/io/InputStream;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "inputStream cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/prineside/kryo/FixedInput;->q:[C

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/prineside/kryo/FixedInput;->setBuffer([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/prineside/kryo/FixedInput;->q:[C

    invoke-virtual {p0, p1, p2, p3}, Lcom/prineside/kryo/FixedInput;->setBuffer([BII)V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    iget v0, p0, Lcom/prineside/kryo/FixedInput;->k:I

    iget v1, p0, Lcom/prineside/kryo/FixedInput;->b:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/prineside/kryo/FixedInput;->r:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public c([BII)I
    .locals 1

    iget-object v0, p0, Lcom/prineside/kryo/FixedInput;->r:Ljava/io/InputStream;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {p2, p1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public canReadInt()Z
    .locals 6

    iget v0, p0, Lcom/prineside/kryo/FixedInput;->k:I

    iget v1, p0, Lcom/prineside/kryo/FixedInput;->b:I

    sub-int/2addr v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0, v1}, Lcom/prineside/kryo/FixedInput;->d(I)I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    return v1

    :cond_1
    iget v0, p0, Lcom/prineside/kryo/FixedInput;->b:I

    iget-object v3, p0, Lcom/prineside/kryo/FixedInput;->a:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_2

    return v2

    :cond_2
    iget v0, p0, Lcom/prineside/kryo/FixedInput;->k:I

    if-ne v4, v0, :cond_3

    return v1

    :cond_3
    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_4

    return v2

    :cond_4
    if-ne v5, v0, :cond_5

    return v1

    :cond_5
    add-int/lit8 v4, v5, 0x1

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_6

    return v2

    :cond_6
    if-ne v4, v0, :cond_7

    return v1

    :cond_7
    add-int/lit8 v5, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_8

    return v2

    :cond_8
    if-ne v5, v0, :cond_9

    return v1

    :cond_9
    return v2
.end method

.method public canReadLong()Z
    .locals 6

    iget v0, p0, Lcom/prineside/kryo/FixedInput;->k:I

    iget v1, p0, Lcom/prineside/kryo/FixedInput;->b:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x9

    if-lt v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/prineside/kryo/FixedInput;->d(I)I

    move-result v0

    const/4 v2, 0x0

    if-gtz v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Lcom/prineside/kryo/FixedInput;->b:I

    iget-object v3, p0, Lcom/prineside/kryo/FixedInput;->a:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget v0, p0, Lcom/prineside/kryo/FixedInput;->k:I

    if-ne v4, v0, :cond_3

    return v2

    :cond_3
    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_4

    return v1

    :cond_4
    if-ne v5, v0, :cond_5

    return v2

    :cond_5
    add-int/lit8 v4, v5, 0x1

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_6

    return v1

    :cond_6
    if-ne v4, v0, :cond_7

    return v2

    :cond_7
    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_8

    return v1

    :cond_8
    if-ne v5, v0, :cond_9

    return v2

    :cond_9
    add-int/lit8 v4, v5, 0x1

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_a

    return v1

    :cond_a
    if-ne v4, v0, :cond_b

    return v2

    :cond_b
    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_c

    return v1

    :cond_c
    if-ne v5, v0, :cond_d

    return v2

    :cond_d
    add-int/lit8 v4, v5, 0x1

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_e

    return v1

    :cond_e
    if-ne v4, v0, :cond_f

    return v2

    :cond_f
    add-int/lit8 v5, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_10

    return v1

    :cond_10
    if-ne v5, v0, :cond_11

    return v2

    :cond_11
    return v1
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/kryo/FixedInput;->r:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final d(I)I
    .locals 9

    iget v0, p0, Lcom/prineside/kryo/FixedInput;->k:I

    iget v1, p0, Lcom/prineside/kryo/FixedInput;->b:I

    sub-int/2addr v0, v1

    if-lt v0, p1, :cond_0

    return p1

    :cond_0
    iget v1, p0, Lcom/prineside/kryo/FixedInput;->d:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v1, p0, Lcom/prineside/kryo/FixedInput;->a:[B

    iget v2, p0, Lcom/prineside/kryo/FixedInput;->k:I

    iget v3, p0, Lcom/prineside/kryo/FixedInput;->d:I

    sub-int/2addr v3, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/prineside/kryo/FixedInput;->c([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_0
    return v2

    :cond_2
    add-int/2addr v0, v1

    if-lt v0, p1, :cond_3

    iget v0, p0, Lcom/prineside/kryo/FixedInput;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/prineside/kryo/FixedInput;->k:I

    return p1

    :cond_3
    iget-object v1, p0, Lcom/prineside/kryo/FixedInput;->a:[B

    iget v3, p0, Lcom/prineside/kryo/FixedInput;->b:I

    const/4 v4, 0x0

    invoke-static {v1, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-wide v5, p0, Lcom/prineside/kryo/FixedInput;->p:J

    iget v1, p0, Lcom/prineside/kryo/FixedInput;->b:I

    int-to-long v7, v1

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/prineside/kryo/FixedInput;->p:J

    iput v4, p0, Lcom/prineside/kryo/FixedInput;->b:I

    :cond_4
    iget-object v1, p0, Lcom/prineside/kryo/FixedInput;->a:[B

    iget v3, p0, Lcom/prineside/kryo/FixedInput;->d:I

    sub-int/2addr v3, v0

    invoke-virtual {p0, v1, v0, v3}, Lcom/prineside/kryo/FixedInput;->c([BII)I

    move-result v1

    if-ne v1, v2, :cond_5

    goto :goto_1

    :cond_5
    add-int/2addr v0, v1

    if-lt v0, p1, :cond_4

    :goto_1
    iput v0, p0, Lcom/prineside/kryo/FixedInput;->k:I

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_2
    return v2
.end method

.method public final e()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/prineside/kryo/FixedInput;->a:[B

    iget v1, p0, Lcom/prineside/kryo/FixedInput;->b:I

    add-int/lit8 v2, v1, -0x1

    iget v3, p0, Lcom/prineside/kryo/FixedInput;->k:I

    :goto_0
    if-ne v1, v3, :cond_0

    invoke-virtual {p0}, Lcom/prineside/kryo/FixedInput;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    add-int/lit8 v1, v4, -0x1

    aget-byte v3, v0, v1

    and-int/lit8 v3, v3, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    new-instance v3, Ljava/lang/String;

    const/4 v5, 0x0

    sub-int v6, v4, v2

    invoke-direct {v3, v0, v5, v2, v6}, Ljava/lang/String;-><init>([BIII)V

    aget-byte v2, v0, v1

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iput v4, p0, Lcom/prineside/kryo/FixedInput;->b:I

    return-object v3

    :cond_1
    move v1, v4

    goto :goto_0
.end method

.method public eof()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/prineside/kryo/FixedInput;->d(I)I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 9

    iget v0, p0, Lcom/prineside/kryo/FixedInput;->b:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/prineside/kryo/FixedInput;->b:I

    iget v2, p0, Lcom/prineside/kryo/FixedInput;->k:I

    sub-int v3, v2, v0

    iget-object v4, p0, Lcom/prineside/kryo/FixedInput;->q:[C

    array-length v4, v4

    if-le v3, v4, :cond_0

    mul-int/lit8 v4, v3, 0x2

    new-array v4, v4, [C

    iput-object v4, p0, Lcom/prineside/kryo/FixedInput;->q:[C

    :cond_0
    iget-object v4, p0, Lcom/prineside/kryo/FixedInput;->q:[C

    iget-object v5, p0, Lcom/prineside/kryo/FixedInput;->a:[B

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-byte v8, v5, v0

    int-to-char v8, v8

    aput-char v8, v4, v7

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v7, v1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/prineside/kryo/FixedInput;->k:I

    iput v0, p0, Lcom/prineside/kryo/FixedInput;->b:I

    :goto_1
    invoke-virtual {p0, v1}, Lcom/prineside/kryo/FixedInput;->n(I)I

    iget v0, p0, Lcom/prineside/kryo/FixedInput;->b:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/prineside/kryo/FixedInput;->b:I

    aget-byte v0, v5, v0

    array-length v2, v4

    if-ne v3, v2, :cond_2

    mul-int/lit8 v2, v3, 0x2

    new-array v2, v2, [C

    invoke-static {v4, v6, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/prineside/kryo/FixedInput;->q:[C

    move-object v4, v2

    :cond_2
    and-int/lit16 v2, v0, 0x80

    const/16 v7, 0x80

    if-ne v2, v7, :cond_3

    add-int/lit8 v1, v3, 0x1

    and-int/lit8 v0, v0, 0x7f

    int-to-char v0, v0

    aput-char v0, v4, v3

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4, v6, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_3
    add-int/lit8 v2, v3, 0x1

    int-to-char v0, v0

    aput-char v0, v4, v3

    move v3, v2

    goto :goto_1
.end method

.method public final g(Z)I
    .locals 5

    iget-object v0, p0, Lcom/prineside/kryo/FixedInput;->a:[B

    iget v1, p0, Lcom/prineside/kryo/FixedInput;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/prineside/kryo/FixedInput;->b:I

    aget-byte v0, v0, v1

    and-int/lit8 v1, v0, 0x7f

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/prineside/kryo/FixedInput;->n(I)I

    iget-object v2, p0, Lcom/prineside/kryo/FixedInput;->a:[B

    iget v3, p0, Lcom/prineside/kryo/FixedInput;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/prineside/kryo/FixedInput;->b:I

    aget-byte v3, v2, v3

    and-int/lit8 v4, v3, 0x7f

    shl-int/lit8 v4, v4, 0x7

    or-int/2addr v1, v4

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/prineside/kryo/FixedInput;->n(I)I

    iget v3, p0, Lcom/prineside/kryo/FixedInput;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/prineside/kryo/FixedInput;->b:I

    aget-byte v3, v2, v3

    and-int/lit8 v4, v3, 0x7f

    shl-int/lit8 v4, v4, 0xe

    or-int/2addr v1, v4

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/prineside/kryo/FixedInput;->n(I)I

    iget v3, p0, Lcom/prineside/kryo/FixedInput;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/prineside/kryo/FixedInput;->b:I

    aget-byte v3, v2, v3

    and-int/lit8 v4, v3, 0x7f

    shl-int/lit8 v4, v4, 0x15

    or-int/2addr v1, v4

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/prineside/kryo/FixedInput;->n(I)I

    iget v0, p0, Lcom/prineside/kryo/FixedInput;->b:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/prineside/kryo/FixedInput;->b:I

    aget-byte v0, v2, v0

    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x1c

    or-int/2addr v1, v0

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    ushr-int/lit8 p1, v1, 0x1

    and-int/lit8 v0, v1, 0x1

    neg-int v0, v0

    xor-int v1, p1, v0

    :goto_0
    return v1
.end method

.method public getBuffer()[B
    .locals 1

    iget-object v0, p0, Lcom/prineside/kryo/FixedInput;->a:[B

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/prineside/kryo/FixedInput;->r:Ljava/io/InputStream;

    return-object v0
.end method

.method public final h(Z)J
    .locals 8

    iget-object v0, p0, Lcom/prineside/kryo/FixedInput;->a:[B

    iget v1, p0, Lcom/prineside/kryo/FixedInput;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/prineside/kryo/FixedInput;->b:I

    aget-byte v0, v0, v1

    and-int/lit8 v1, v0, 0x7f

    int-to-long v1, v1

    and-int/lit16 v0, v0, 0x80

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/prineside/kryo/FixedInput;->n(I)I

    iget-object v0, p0, Lcom/prineside/kryo/FixedInput;->a:[B

    iget v4, p0, Lcom/prineside/kryo/FixedInput;->b:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/prineside/kryo/FixedInput;->b:I

    aget-byte v4, v0, v4

    and-int/lit8 v5, v4, 0x7f

    shl-int/lit8 v5, v5, 0x7

    int-to-long v5, v5

    or-long/2addr v1, v5

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3}, Lcom/prineside/kryo/FixedInput;->n(I)I

    iget v4, p0, Lcom/prineside/kryo/FixedInput;->b:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/prineside/kryo/FixedInput;->b:I

    aget-byte v4, v0, v4

    and-int/lit8 v5, v4, 0x7f

    shl-int/lit8 v5, v5, 0xe

    int-to-long v5, v5

    or-long/2addr v1, v5

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3}, Lcom/prineside/kryo/FixedInput;->n(I)I

    iget v4, p0, Lcom/prineside/kryo/FixedInput;->b:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/prineside/kryo/FixedInput;->b:I

    aget-byte v4, v0, v4

    and-int/lit8 v5, v4, 0x7f

    shl-int/lit8 v5, v5, 0x15

    int-to-long v5, v5

    or-long/2addr v1, v5

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3}, Lcom/prineside/kryo/FixedInput;->n(I)I

    iget v4, p0, Lcom/prineside/kryo/FixedInput;->b:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/prineside/kryo/FixedInput;->b:I

    aget-byte v4, v0, v4

    and-int/lit8 v5, v4, 0x7f

    int-to-long v5, v5

    const/16 v7, 0x1c

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3}, Lcom/prineside/kryo/FixedInput;->n(I)I

    iget v4, p0, Lcom/prineside/kryo/FixedInput;->b:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/prineside/kryo/FixedInput;->b:I

    aget-byte v4, v0, v4

    and-int/lit8 v5, v4, 0x7f

    int-to-long v5, v5

    const/16 v7, 0x23

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3}, Lcom/prineside/kryo/FixedInput;->n(I)I

    iget v4, p0, Lcom/prineside/kryo/FixedInput;->b:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/prineside/kryo/FixedInput;->b:I

    aget-byte v4, v0, v4

    and-int/lit8 v5, v4, 0x7f

    int-to-long v5, v5

    const/16 v7, 0x2a

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3}, Lcom/prineside/kryo/FixedInput;->n(I)I

    iget v4, p0, Lcom/prineside/kryo/FixedInput;->b:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/prineside/kryo/FixedInput;->b:I

    aget-byte v4, v0, v4

    and-int/lit8 v5, v4, 0x7f

    int-to-long v5, v5

    const/16 v7, 0x31

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3}, Lcom/prineside/kryo/FixedInput;->n(I)I

    iget v4, p0, Lcom/prineside/kryo/FixedInput;->b:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/prineside/kryo/FixedInput;->b:I

    aget-byte v0, v0, v4

    int-to-long v4, v0

    const/16 v0, 0x38

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    :cond_0
    if-nez p1, :cond_1

    ushr-long v3, v1, v3

    const-wide/16 v5, 0x1

    and-long/2addr v1, v5

    neg-long v0, v1

    xor-long/2addr v0, v3

    move-wide v1, v0

    :cond_1
    return-wide v1
.end method

.method public final i(I)V
    .locals 7

    iget-object v0, p0, Lcom/prineside/kryo/FixedInput;->a:[B

    iget-object v1, p0, Lcom/prineside/kryo/FixedInput;->q:[C

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/prineside/kryo/FixedInput;->n(I)I

    move-result v2

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, p0, Lcom/prineside/kryo/FixedInput;->b:I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    add-int/lit8 v5, v3, 0x1

    aget-byte v3, v0, v3

    if-gez v3, :cond_0

    add-int/lit8 v3, v5, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v4, 0x1

    int-to-char v3, v3

    aput-char v3, v1, v4

    move v3, v5

    move v4, v6

    goto :goto_0

    :cond_1
    :goto_1
    iput v3, p0, Lcom/prineside/kryo/FixedInput;->b:I

    if-ge v4, p1, :cond_2

    invoke-virtual {p0, p1, v4}, Lcom/prineside/kryo/FixedInput;->m(II)V

    :cond_2
    return-void
.end method

.method public final j(I)I
    .locals 4

    and-int/lit8 v0, p1, 0x3f

    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/kryo/FixedInput;->a:[B

    iget v1, p0, Lcom/prineside/kryo/FixedInput;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/prineside/kryo/FixedInput;->b:I

    aget-byte v1, p1, v1

    and-int/lit8 v3, v1, 0x7f

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v0, v3

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/prineside/kryo/FixedInput;->b:I

    aget-byte v2, p1, v2

    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0xd

    or-int/2addr v0, v3

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/prineside/kryo/FixedInput;->b:I

    aget-byte v1, p1, v1

    and-int/lit8 v3, v1, 0x7f

    shl-int/lit8 v3, v3, 0x14

    or-int/2addr v0, v3

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/prineside/kryo/FixedInput;->b:I

    aget-byte p1, p1, v2

    and-int/lit8 p1, p1, 0x7f

    shl-int/lit8 p1, p1, 0x1b

    or-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final k(I)I
    .locals 4

    and-int/lit8 v0, p1, 0x3f

    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/prineside/kryo/FixedInput;->n(I)I

    iget-object v1, p0, Lcom/prineside/kryo/FixedInput;->a:[B

    iget v2, p0, Lcom/prineside/kryo/FixedInput;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/prineside/kryo/FixedInput;->b:I

    aget-byte v2, v1, v2

    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v0, v3

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/prineside/kryo/FixedInput;->n(I)I

    iget v2, p0, Lcom/prineside/kryo/FixedInput;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/prineside/kryo/FixedInput;->b:I

    aget-byte v2, v1, v2

    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0xd

    or-int/2addr v0, v3

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/prineside/kryo/FixedInput;->n(I)I

    iget v2, p0, Lcom/prineside/kryo/FixedInput;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/prineside/kryo/FixedInput;->b:I

    aget-byte v2, v1, v2

    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0x14

    or-int/2addr v0, v3

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/prineside/kryo/FixedInput;->n(I)I

    iget p1, p0, Lcom/prineside/kryo/FixedInput;->b:I

    add-int/lit8 v2, p1, 0x1

    iput v2, p0, Lcom/prineside/kryo/FixedInput;->b:I

    aget-byte p1, v1, p1

    and-int/lit8 p1, p1, 0x7f

    shl-int/lit8 p1, p1, 0x1b

    or-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final limit()I
    .locals 1

    iget v0, p0, Lcom/prineside/kryo/FixedInput;->k:I

    return v0
.end method

.method public final m(II)V
    .locals 6

    iget-object v0, p0, Lcom/prineside/kryo/FixedInput;->q:[C

    iget-object v1, p0, Lcom/prineside/kryo/FixedInput;->a:[B

    :goto_0
    if-ge p2, p1, :cond_2

    iget v2, p0, Lcom/prineside/kryo/FixedInput;->b:I

    iget v3, p0, Lcom/prineside/kryo/FixedInput;->k:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v4}, Lcom/prineside/kryo/FixedInput;->n(I)I

    :cond_0
    iget v2, p0, Lcom/prineside/kryo/FixedInput;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/prineside/kryo/FixedInput;->b:I

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v5, v2, 0x4

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/prineside/kryo/FixedInput;->n(I)I

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0xc

    iget v3, p0, Lcom/prineside/kryo/FixedInput;->b:I

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, v1, v3

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v2, v3

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Lcom/prineside/kryo/FixedInput;->b:I

    aget-byte v3, v1, v4

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v0, p2

    goto :goto_1

    :pswitch_2
    iget v5, p0, Lcom/prineside/kryo/FixedInput;->k:I

    if-ne v3, v5, :cond_1

    invoke-virtual {p0, v4}, Lcom/prineside/kryo/FixedInput;->n(I)I

    :cond_1
    and-int/lit8 v2, v2, 0x1f

    shl-int/lit8 v2, v2, 0x6

    iget v3, p0, Lcom/prineside/kryo/FixedInput;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/prineside/kryo/FixedInput;->b:I

    aget-byte v3, v1, v3

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v0, p2

    goto :goto_1

    :pswitch_3
    int-to-char v2, v2

    aput-char v2, v0, p2

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public n(I)I
    .locals 10

    iget v0, p0, Lcom/prineside/kryo/FixedInput;->k:I

    iget v1, p0, Lcom/prineside/kryo/FixedInput;->b:I

    sub-int v1, v0, v1

    if-lt v1, p1, :cond_0

    return v1

    :cond_0
    iget v2, p0, Lcom/prineside/kryo/FixedInput;->d:I

    if-gt p1, v2, :cond_6

    const-string v3, "Buffer underflow."

    const/4 v4, -0x1

    if-lez v1, :cond_2

    iget-object v5, p0, Lcom/prineside/kryo/FixedInput;->a:[B

    sub-int/2addr v2, v0

    invoke-virtual {p0, v5, v0, v2}, Lcom/prineside/kryo/FixedInput;->c([BII)I

    move-result v0

    if-eq v0, v4, :cond_1

    add-int/2addr v1, v0

    if-lt v1, p1, :cond_2

    iget p1, p0, Lcom/prineside/kryo/FixedInput;->k:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/prineside/kryo/FixedInput;->k:I

    return v1

    :cond_1
    new-instance p1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {p1, v3}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v0, p0, Lcom/prineside/kryo/FixedInput;->a:[B

    iget v2, p0, Lcom/prineside/kryo/FixedInput;->b:I

    const/4 v5, 0x0

    invoke-static {v0, v2, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-wide v6, p0, Lcom/prineside/kryo/FixedInput;->p:J

    iget v0, p0, Lcom/prineside/kryo/FixedInput;->b:I

    int-to-long v8, v0

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/prineside/kryo/FixedInput;->p:J

    iput v5, p0, Lcom/prineside/kryo/FixedInput;->b:I

    :cond_3
    iget-object v0, p0, Lcom/prineside/kryo/FixedInput;->a:[B

    iget v2, p0, Lcom/prineside/kryo/FixedInput;->d:I

    sub-int/2addr v2, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/prineside/kryo/FixedInput;->c([BII)I

    move-result v0

    if-ne v0, v4, :cond_5

    if-lt v1, p1, :cond_4

    goto :goto_0

    :cond_4
    new-instance p1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {p1, v3}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    add-int/2addr v1, v0

    if-lt v1, p1, :cond_3

    :goto_0
    iput v1, p0, Lcom/prineside/kryo/FixedInput;->k:I

    return v1

    :cond_6
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buffer too small: capacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/prineside/kryo/FixedInput;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", required: "

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

.method public final position()I
    .locals 1

    iget v0, p0, Lcom/prineside/kryo/FixedInput;->b:I

    return v0
.end method

.method public read()I
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/prineside/kryo/FixedInput;->d(I)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/prineside/kryo/FixedInput;->a:[B

    iget v1, p0, Lcom/prineside/kryo/FixedInput;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/prineside/kryo/FixedInput;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/prineside/kryo/FixedInput;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 4

    if-eqz p1, :cond_4

    iget v0, p0, Lcom/prineside/kryo/FixedInput;->k:I

    iget v1, p0, Lcom/prineside/kryo/FixedInput;->b:I

    sub-int/2addr v0, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, p3

    :cond_0
    iget-object v2, p0, Lcom/prineside/kryo/FixedInput;->a:[B

    iget v3, p0, Lcom/prineside/kryo/FixedInput;->b:I

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/prineside/kryo/FixedInput;->b:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/prineside/kryo/FixedInput;->b:I

    sub-int/2addr v1, v0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    add-int/2addr p2, v0

    invoke-virtual {p0, v1}, Lcom/prineside/kryo/FixedInput;->d(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    if-ne p3, v1, :cond_3

    return v2

    :cond_2
    iget v2, p0, Lcom/prineside/kryo/FixedInput;->b:I

    iget v3, p0, Lcom/prineside/kryo/FixedInput;->k:I

    if-ne v2, v3, :cond_0

    :cond_3
    :goto_0
    sub-int/2addr p3, v1

    return p3

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bytes cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public readBoolean()Z
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/prineside/kryo/FixedInput;->n(I)I

    iget-object v1, p0, Lcom/prineside/kryo/FixedInput;->a:[B

    iget v2, p0, Lcom/prineside/kryo/FixedInput;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/prineside/kryo/FixedInput;->b:I

    aget-byte v1, v1, v2

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readByte()B
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/prineside/kryo/FixedInput;->n(I)I

    iget-object v0, p0, Lcom/prineside/kryo/FixedInput;->a:[B

    iget v1, p0, Lcom/prineside/kryo/FixedInput;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/prineside/kryo/FixedInput;->b:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public readByteUnsigned()I
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/prineside/kryo/FixedInput;->n(I)I

    iget-object v0, p0, Lcom/prineside/kryo/FixedInput;->a:[B

    iget v1, p0, Lcom/prineside/kryo/FixedInput;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/prineside/kryo/FixedInput;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readBytes([B)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/prineside/kryo/FixedInput;->readBytes([BII)V

    return-void
.end method

.method public readBytes([BII)V
    .locals 3

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/prineside/kryo/FixedInput;->k:I

    iget v1, p0, Lcom/prineside/kryo/FixedInput;->b:I

    sub-int/2addr v0, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/prineside/kryo/FixedInput;->a:[B

    iget v2, p0, Lcom/prineside/kryo/FixedInput;->b:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/prineside/kryo/FixedInput;->b:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/prineside/kryo/FixedInput;->b:I

    sub-int/2addr p3, v0

    if-nez p3, :cond_0

    return-void

    :cond_0
    add-int/2addr p2, v0

    iget v0, p0, Lcom/prineside/kryo/FixedInput;->d:I

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/prineside/kryo/FixedInput;->n(I)I

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

.method public readBytes(I)[B
    .locals 2

    new-array v0, p1, [B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/prineside/kryo/FixedInput;->readBytes([BII)V

    return-object v0
.end method

.method public readChar()C
    .locals 4

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/prineside/kryo/FixedInput;->n(I)I

    iget-object v0, p0, Lcom/prineside/kryo/FixedInput;->a:[B

    iget v1, p0, Lcom/prineside/kryo/FixedInput;->b:I

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/prineside/kryo/FixedInput;->b:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public readChars(I)[C
    .locals 3

    new-array v0, p1, [C

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-virtual {p0}, Lcom/prineside/kryo/FixedInput;->readChar()C

    move-result v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public readDouble()D
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/kryo/FixedInput;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readDouble(DZ)D
    .locals 2

    invoke-virtual {p0, p3}, Lcom/prineside/kryo/FixedInput;->readLong(Z)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, p1

    return-wide v0
.end method

.method public readDoubles(I)[D
    .locals 4

    new-array v0, p1, [D

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-virtual {p0}, Lcom/prineside/kryo/FixedInput;->readDouble()D

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public readFloat()F
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/kryo/FixedInput;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readFloat(FZ)F
    .locals 0

    invoke-virtual {p0, p2}, Lcom/prineside/kryo/FixedInput;->readInt(Z)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, p1

    return p2
.end method

.method public readFloats(I)[F
    .locals 3

    new-array v0, p1, [F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-virtual {p0}, Lcom/prineside/kryo/FixedInput;->readFloat()F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public readInt()I
    .locals 4

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/prineside/kryo/FixedInput;->n(I)I

    iget-object v0, p0, Lcom/prineside/kryo/FixedInput;->a:[B

    iget v1, p0, Lcom/prineside/kryo/FixedInput;->b:I

    add-int/lit8 v2, v1, 0x4

    iput v2, p0, Lcom/prineside/kryo/FixedInput;->b:I

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x3

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    return v0
.end method

.method public readInt(Z)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/kryo/FixedInput;->readVarInt(Z)I

    move-result p1

    return p1
.end method

.method public readInts(I)[I
    .locals 3

    new-array v0, p1, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-virtual {p0}, Lcom/prineside/kryo/FixedInput;->readInt()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public readInts(IZ)[I
    .locals 3

    new-array v0, p1, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/prineside/kryo/FixedInput;->readInt(Z)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public readLong()J
    .locals 8

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/prineside/kryo/FixedInput;->n(I)I

    iget-object v1, p0, Lcom/prineside/kryo/FixedInput;->a:[B

    iget v2, p0, Lcom/prineside/kryo/FixedInput;->b:I

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v1, v2

    int-to-long v4, v2

    const/16 v2, 0x38

    shl-long/2addr v4, v2

    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v6, v3

    const/16 v3, 0x30

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v6, v2

    const/16 v2, 0x28

    shl-long/2addr v6, v2

    or-long/2addr v4, v6

    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v6, v3

    const/16 v3, 0x20

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v6, v2

    const/16 v2, 0x18

    shl-long/2addr v6, v2

    or-long/2addr v4, v6

    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    int-to-long v6, v3

    or-long/2addr v4, v6

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v0, v2, 0x8

    int-to-long v6, v0

    or-long/2addr v4, v6

    add-int/lit8 v0, v3, 0x1

    iput v0, p0, Lcom/prineside/kryo/FixedInput;->b:I

    aget-byte v0, v1, v3

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    or-long/2addr v0, v4

    return-wide v0
.end method

.method public readLong(Z)J
    .locals 2

    invoke-virtual {p0, p1}, Lcom/prineside/kryo/FixedInput;->readVarLong(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public readLongs(I)[J
    .locals 4

    new-array v0, p1, [J

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-virtual {p0}, Lcom/prineside/kryo/FixedInput;->readLong()J

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public readLongs(IZ)[J
    .locals 4

    new-array v0, p1, [J

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/prineside/kryo/FixedInput;->readLong(Z)J

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public readShort()S
    .locals 4

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/prineside/kryo/FixedInput;->n(I)I

    iget-object v0, p0, Lcom/prineside/kryo/FixedInput;->a:[B

    iget v1, p0, Lcom/prineside/kryo/FixedInput;->b:I

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/prineside/kryo/FixedInput;->b:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public readShortUnsigned()I
    .locals 4

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/prineside/kryo/FixedInput;->n(I)I

    iget-object v0, p0, Lcom/prineside/kryo/FixedInput;->a:[B

    iget v1, p0, Lcom/prineside/kryo/FixedInput;->b:I

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/prineside/kryo/FixedInput;->b:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public readShorts(I)[S
    .locals 3

    new-array v0, p1, [S

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-virtual {p0}, Lcom/prineside/kryo/FixedInput;->readShort()S

    move-result v2

    aput-short v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public readString()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/prineside/kryo/FixedInput;->n(I)I

    move-result v1

    iget-object v2, p0, Lcom/prineside/kryo/FixedInput;->a:[B

    iget v3, p0, Lcom/prineside/kryo/FixedInput;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/prineside/kryo/FixedInput;->b:I

    aget-byte v2, v2, v3

    and-int/lit16 v3, v2, 0x80

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/prineside/kryo/FixedInput;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v3, 0x5

    if-lt v1, v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/prineside/kryo/FixedInput;->j(I)I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/prineside/kryo/FixedInput;->k(I)I

    move-result v1

    :goto_0
    if-eqz v1, :cond_4

    if-eq v1, v0, :cond_3

    add-int/lit8 v1, v1, -0x1

    iget-object v0, p0, Lcom/prineside/kryo/FixedInput;->q:[C

    array-length v0, v0

    if-ge v0, v1, :cond_2

    new-array v0, v1, [C

    iput-object v0, p0, Lcom/prineside/kryo/FixedInput;->q:[C

    :cond_2
    invoke-virtual {p0, v1}, Lcom/prineside/kryo/FixedInput;->i(I)V

    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/prineside/kryo/FixedInput;->q:[C

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_3
    const-string v0, ""

    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public readStringBuilder()Ljava/lang/StringBuilder;
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/prineside/kryo/FixedInput;->n(I)I

    move-result v1

    iget-object v2, p0, Lcom/prineside/kryo/FixedInput;->a:[B

    iget v3, p0, Lcom/prineside/kryo/FixedInput;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/prineside/kryo/FixedInput;->b:I

    aget-byte v2, v2, v3

    and-int/lit16 v3, v2, 0x80

    if-nez v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/prineside/kryo/FixedInput;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v3, 0x5

    if-lt v1, v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/prineside/kryo/FixedInput;->j(I)I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/prineside/kryo/FixedInput;->k(I)I

    move-result v1

    :goto_0
    if-eqz v1, :cond_4

    if-eq v1, v0, :cond_3

    add-int/lit8 v1, v1, -0x1

    iget-object v0, p0, Lcom/prineside/kryo/FixedInput;->q:[C

    array-length v0, v0

    if-ge v0, v1, :cond_2

    new-array v0, v1, [C

    iput-object v0, p0, Lcom/prineside/kryo/FixedInput;->q:[C

    :cond_2
    invoke-virtual {p0, v1}, Lcom/prineside/kryo/FixedInput;->i(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v2, p0, Lcom/prineside/kryo/FixedInput;->q:[C

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public readVarInt(Z)I
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/prineside/kryo/FixedInput;->n(I)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/prineside/kryo/FixedInput;->g(Z)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/prineside/kryo/FixedInput;->a:[B

    iget v1, p0, Lcom/prineside/kryo/FixedInput;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/prineside/kryo/FixedInput;->b:I

    aget-byte v1, v0, v1

    and-int/lit8 v3, v1, 0x7f

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/prineside/kryo/FixedInput;->b:I

    aget-byte v2, v0, v2

    and-int/lit8 v4, v2, 0x7f

    shl-int/lit8 v4, v4, 0x7

    or-int/2addr v3, v4

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/prineside/kryo/FixedInput;->b:I

    aget-byte v1, v0, v1

    and-int/lit8 v4, v1, 0x7f

    shl-int/lit8 v4, v4, 0xe

    or-int/2addr v3, v4

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/prineside/kryo/FixedInput;->b:I

    aget-byte v2, v0, v2

    and-int/lit8 v4, v2, 0x7f

    shl-int/lit8 v4, v4, 0x15

    or-int/2addr v3, v4

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/prineside/kryo/FixedInput;->b:I

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x1c

    or-int/2addr v3, v0

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    ushr-int/lit8 p1, v3, 0x1

    and-int/lit8 v0, v3, 0x1

    neg-int v0, v0

    xor-int v3, p1, v0

    :goto_0
    return v3
.end method

.method public readVarLong(Z)J
    .locals 9

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/prineside/kryo/FixedInput;->n(I)I

    move-result v1

    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/prineside/kryo/FixedInput;->h(Z)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v1, p0, Lcom/prineside/kryo/FixedInput;->a:[B

    iget v2, p0, Lcom/prineside/kryo/FixedInput;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/prineside/kryo/FixedInput;->b:I

    aget-byte v2, v1, v2

    and-int/lit8 v4, v2, 0x7f

    int-to-long v4, v4

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/prineside/kryo/FixedInput;->b:I

    aget-byte v3, v1, v3

    and-int/lit8 v6, v3, 0x7f

    shl-int/lit8 v6, v6, 0x7

    int-to-long v6, v6

    or-long/2addr v4, v6

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/prineside/kryo/FixedInput;->b:I

    aget-byte v2, v1, v2

    and-int/lit8 v6, v2, 0x7f

    shl-int/lit8 v6, v6, 0xe

    int-to-long v6, v6

    or-long/2addr v4, v6

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/prineside/kryo/FixedInput;->b:I

    aget-byte v3, v1, v3

    and-int/lit8 v6, v3, 0x7f

    shl-int/lit8 v6, v6, 0x15

    int-to-long v6, v6

    or-long/2addr v4, v6

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/prineside/kryo/FixedInput;->b:I

    aget-byte v2, v1, v2

    and-int/lit8 v6, v2, 0x7f

    int-to-long v6, v6

    const/16 v8, 0x1c

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/prineside/kryo/FixedInput;->b:I

    aget-byte v3, v1, v3

    and-int/lit8 v6, v3, 0x7f

    int-to-long v6, v6

    const/16 v8, 0x23

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/prineside/kryo/FixedInput;->b:I

    aget-byte v2, v1, v2

    and-int/lit8 v6, v2, 0x7f

    int-to-long v6, v6

    const/16 v8, 0x2a

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/prineside/kryo/FixedInput;->b:I

    aget-byte v3, v1, v3

    and-int/lit8 v6, v3, 0x7f

    int-to-long v6, v6

    const/16 v8, 0x31

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/prineside/kryo/FixedInput;->b:I

    aget-byte v1, v1, v2

    int-to-long v1, v1

    const/16 v3, 0x38

    shl-long/2addr v1, v3

    or-long/2addr v4, v1

    :cond_1
    if-nez p1, :cond_2

    ushr-long v0, v4, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, v4

    neg-long v2, v2

    xor-long v4, v0, v2

    :cond_2
    return-wide v4
.end method

.method public rewind()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/kryo/FixedInput;->b:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/prineside/kryo/FixedInput;->p:J

    return-void
.end method

.method public setBuffer([B)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/prineside/kryo/FixedInput;->setBuffer([BII)V

    return-void
.end method

.method public setBuffer([BII)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/prineside/kryo/FixedInput;->a:[B

    iput p2, p0, Lcom/prineside/kryo/FixedInput;->b:I

    add-int/2addr p2, p3

    iput p2, p0, Lcom/prineside/kryo/FixedInput;->k:I

    array-length p1, p1

    iput p1, p0, Lcom/prineside/kryo/FixedInput;->d:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/prineside/kryo/FixedInput;->p:J

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/prineside/kryo/FixedInput;->r:Ljava/io/InputStream;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bytes cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/kryo/FixedInput;->r:Ljava/io/InputStream;

    const/4 p1, 0x0

    iput p1, p0, Lcom/prineside/kryo/FixedInput;->k:I

    invoke-virtual {p0}, Lcom/prineside/kryo/FixedInput;->rewind()V

    return-void
.end method

.method public setLimit(I)V
    .locals 0

    iput p1, p0, Lcom/prineside/kryo/FixedInput;->k:I

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/prineside/kryo/FixedInput;->b:I

    return-void
.end method

.method public setTotal(I)V
    .locals 2

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/prineside/kryo/FixedInput;->p:J

    return-void
.end method

.method public skip(J)J
    .locals 5

    move-wide v0, p1

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-wide/32 v2, 0x7fffffff

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {p0, v3}, Lcom/prineside/kryo/FixedInput;->skip(I)V

    int-to-long v2, v3

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide p1
.end method

.method public skip(I)V
    .locals 2

    iget v0, p0, Lcom/prineside/kryo/FixedInput;->k:I

    iget v1, p0, Lcom/prineside/kryo/FixedInput;->b:I

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    iget v1, p0, Lcom/prineside/kryo/FixedInput;->b:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/prineside/kryo/FixedInput;->b:I

    sub-int/2addr p1, v0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/prineside/kryo/FixedInput;->d:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/prineside/kryo/FixedInput;->n(I)I

    goto :goto_0
.end method

.method public total()J
    .locals 4

    iget-wide v0, p0, Lcom/prineside/kryo/FixedInput;->p:J

    iget v2, p0, Lcom/prineside/kryo/FixedInput;->b:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method
