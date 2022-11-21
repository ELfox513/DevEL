.class public Lcom/esotericsoftware/kryo/io/Input;
.super Ljava/io/InputStream;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/util/Pool$Poolable;


# instance fields
.field public buffer:[B

.field public capacity:I

.field public chars:[C

.field public inputStream:Ljava/io/InputStream;

.field public limit:I

.field public position:I

.field public total:J

.field public varEncoding:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/io/Input;->varEncoding:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/io/Input;->varEncoding:Z

    iput p1, p0, Lcom/esotericsoftware/kryo/io/Input;->capacity:I

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;-><init>(I)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/Input;->inputStream:Ljava/io/InputStream;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "inputStream cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/esotericsoftware/kryo/io/Input;-><init>(I)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/Input;->inputStream:Ljava/io/InputStream;

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

    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/io/Input;->varEncoding:Z

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/esotericsoftware/kryo/io/Input;->setBuffer([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/io/Input;->varEncoding:Z

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/io/Input;->setBuffer([BII)V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->inputStream:Ljava/io/InputStream;

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

.method public final c()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    array-length v3, v0

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    sub-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget-byte v6, v1, v2

    and-int/lit16 v7, v6, 0x80

    const/16 v8, 0x80

    if-ne v7, v8, :cond_0

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    and-int/lit8 v1, v6, 0x7f

    int-to-char v1, v1

    aput-char v1, v0, v5

    new-instance v1, Ljava/lang/String;

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v1, v0, v4, v5}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    :cond_0
    int-to-char v6, v6

    aput-char v6, v0, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    invoke-virtual {p0, v5}, Lcom/esotericsoftware/kryo/io/Input;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public canReadInt()Z
    .locals 3

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/io/Input;->varEncoding:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->canReadVarInt()Z

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-lt v0, v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/Input;->optional(I)I

    move-result v0

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public canReadLong()Z
    .locals 3

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/io/Input;->varEncoding:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->canReadVarLong()Z

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-lt v0, v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/Input;->optional(I)I

    move-result v0

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public canReadVarInt()Z
    .locals 6

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int/2addr v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Input;->optional(I)I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    return v1

    :cond_1
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    add-int/lit8 v5, v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_2

    return v2

    :cond_2
    if-ne v5, v3, :cond_3

    return v1

    :cond_3
    add-int/lit8 v0, v5, 0x1

    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_4

    return v2

    :cond_4
    if-ne v0, v3, :cond_5

    return v1

    :cond_5
    add-int/lit8 v5, v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_6

    return v2

    :cond_6
    if-ne v5, v3, :cond_7

    return v1

    :cond_7
    add-int/lit8 v0, v5, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_8

    return v2

    :cond_8
    if-ne v0, v3, :cond_9

    return v1

    :cond_9
    return v2
.end method

.method public canReadVarLong()Z
    .locals 6

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x9

    if-lt v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->optional(I)I

    move-result v0

    const/4 v2, 0x0

    if-gtz v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    add-int/lit8 v5, v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_2

    return v1

    :cond_2
    if-ne v5, v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v0, v5, 0x1

    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_4

    return v1

    :cond_4
    if-ne v0, v3, :cond_5

    return v2

    :cond_5
    add-int/lit8 v5, v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_6

    return v1

    :cond_6
    if-ne v5, v3, :cond_7

    return v2

    :cond_7
    add-int/lit8 v0, v5, 0x1

    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_8

    return v1

    :cond_8
    if-ne v0, v3, :cond_9

    return v2

    :cond_9
    add-int/lit8 v5, v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_a

    return v1

    :cond_a
    if-ne v5, v3, :cond_b

    return v2

    :cond_b
    add-int/lit8 v0, v5, 0x1

    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_c

    return v1

    :cond_c
    if-ne v0, v3, :cond_d

    return v2

    :cond_d
    add-int/lit8 v5, v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_e

    return v1

    :cond_e
    if-ne v5, v3, :cond_f

    return v2

    :cond_f
    add-int/lit8 v0, v5, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_10

    return v1

    :cond_10
    if-ne v0, v3, :cond_11

    return v2

    :cond_11
    return v1
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final d(I)Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    :goto_0
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    :cond_0
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v2, v1, v2

    array-length v3, v0

    const/4 v5, 0x0

    if-ne p1, v3, :cond_1

    mul-int/lit8 v3, p1, 0x2

    new-array v3, v3, [C

    invoke-static {v0, v5, v3, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    move-object v0, v3

    :cond_1
    and-int/lit16 v3, v2, 0x80

    const/16 v6, 0x80

    if-ne v3, v6, :cond_2

    and-int/lit8 v1, v2, 0x7f

    int-to-char v1, v1

    aput-char v1, v0, p1

    new-instance v1, Ljava/lang/String;

    add-int/2addr p1, v4

    invoke-direct {v1, v0, v5, p1}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    :cond_2
    add-int/lit8 v3, p1, 0x1

    int-to-char v2, v2

    aput-char v2, v0, p1

    move p1, v3

    goto :goto_0
.end method

.method public final e(I)V
    .locals 7

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    array-length v0, v0

    if-ge v0, p1, :cond_0

    new-array v0, p1, [C

    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    move-result v3

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    :goto_0
    if-ge v2, v3, :cond_2

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v0, v4

    if-gez v4, :cond_1

    add-int/lit8 v4, v5, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v2, 0x1

    int-to-char v4, v4

    aput-char v4, v1, v2

    move v4, v5

    move v2, v6

    goto :goto_0

    :cond_2
    :goto_1
    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    if-ge v2, p1, :cond_3

    invoke-virtual {p0, p1, v2}, Lcom/esotericsoftware/kryo/io/Input;->f(II)V

    :cond_3
    return-void
.end method

.method public end()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->optional(I)I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final f(II)V
    .locals 6

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    :goto_0
    if-ge p2, p1, :cond_2

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    :cond_0
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v5, v2, 0x4

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v5, v3, 0x2

    iput v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0xc

    aget-byte v5, v1, v3

    and-int/lit8 v5, v5, 0x3f

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v2, v5

    add-int/2addr v3, v4

    aget-byte v3, v1, v3

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v0, p2

    goto :goto_1

    :pswitch_2
    iget v5, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v3, v5, :cond_1

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    :cond_1
    and-int/lit8 v2, v2, 0x1f

    shl-int/lit8 v2, v2, 0x6

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

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

.method public fill([BII)I
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->inputStream:Ljava/io/InputStream;

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

.method public final g(Z)I
    .locals 6

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v0, v1

    and-int/lit8 v1, v0, 0x3f

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    const/4 v3, 0x1

    if-ne v2, v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v2, v0, v2

    and-int/lit8 v5, v2, 0x7f

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v1, v5

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v4, v2, :cond_1

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    :cond_1
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v2, v0, v2

    and-int/lit8 v5, v2, 0x7f

    shl-int/lit8 v5, v5, 0xd

    or-int/2addr v1, v5

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v4, v2, :cond_2

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    :cond_2
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v2, v0, v2

    and-int/lit8 v5, v2, 0x7f

    shl-int/lit8 v5, v5, 0x14

    or-int/2addr v1, v5

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v4, v2, :cond_3

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    :cond_3
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v0, v2

    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x1b

    or-int/2addr v1, v0

    :cond_4
    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    ushr-int/lit8 p1, v1, 0x1

    and-int/lit8 v0, v1, 0x1

    neg-int v0, v0

    xor-int v1, p1, v0

    :goto_0
    return v1
.end method

.method public getBuffer()[B
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getVariableLengthEncoding()Z
    .locals 1

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/io/Input;->varEncoding:Z

    return v0
.end method

.method public final h(Z)I
    .locals 6

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v0, v1

    and-int/lit8 v1, v0, 0x7f

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    const/4 v3, 0x1

    if-ne v2, v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v2, v0, v2

    and-int/lit8 v5, v2, 0x7f

    shl-int/lit8 v5, v5, 0x7

    or-int/2addr v1, v5

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v4, v2, :cond_1

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    :cond_1
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v2, v0, v2

    and-int/lit8 v5, v2, 0x7f

    shl-int/lit8 v5, v5, 0xe

    or-int/2addr v1, v5

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v4, v2, :cond_2

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    :cond_2
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v2, v0, v2

    and-int/lit8 v5, v2, 0x7f

    shl-int/lit8 v5, v5, 0x15

    or-int/2addr v1, v5

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v4, v2, :cond_3

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    :cond_3
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v0, v2

    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x1c

    or-int/2addr v1, v0

    :cond_4
    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    ushr-int/lit8 p1, v1, 0x1

    and-int/lit8 v0, v1, 0x1

    neg-int v0, v0

    xor-int v1, p1, v0

    :goto_0
    return v1
.end method

.method public final i(Z)J
    .locals 9

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v0, v1

    and-int/lit8 v1, v0, 0x7f

    int-to-long v3, v1

    and-int/lit16 v0, v0, 0x80

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v2, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v2, v0, v2

    and-int/lit8 v6, v2, 0x7f

    shl-int/lit8 v6, v6, 0x7

    int-to-long v6, v6

    or-long/2addr v3, v6

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v5, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    :cond_1
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v2, v0, v2

    and-int/lit8 v6, v2, 0x7f

    shl-int/lit8 v6, v6, 0xe

    int-to-long v6, v6

    or-long/2addr v3, v6

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v5, v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    :cond_2
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v2, v0, v2

    and-int/lit8 v6, v2, 0x7f

    shl-int/lit8 v6, v6, 0x15

    int-to-long v6, v6

    or-long/2addr v3, v6

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v5, v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    :cond_3
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v2, v0, v2

    and-int/lit8 v6, v2, 0x7f

    int-to-long v6, v6

    const/16 v8, 0x1c

    shl-long/2addr v6, v8

    or-long/2addr v3, v6

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v5, v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    :cond_4
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v2, v0, v2

    and-int/lit8 v6, v2, 0x7f

    int-to-long v6, v6

    const/16 v8, 0x23

    shl-long/2addr v6, v8

    or-long/2addr v3, v6

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v5, v2, :cond_5

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    :cond_5
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v2, v0, v2

    and-int/lit8 v6, v2, 0x7f

    int-to-long v6, v6

    const/16 v8, 0x2a

    shl-long/2addr v6, v8

    or-long/2addr v3, v6

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v5, v2, :cond_6

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    :cond_6
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v2, v0, v2

    and-int/lit8 v6, v2, 0x7f

    int-to-long v6, v6

    const/16 v8, 0x31

    shl-long/2addr v6, v8

    or-long/2addr v3, v6

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v5, v2, :cond_7

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    :cond_7
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v0, v2

    int-to-long v5, v0

    const/16 v0, 0x38

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    :cond_8
    if-eqz p1, :cond_9

    goto :goto_0

    :cond_9
    ushr-long v0, v3, v1

    const-wide/16 v5, 0x1

    and-long/2addr v3, v5

    neg-long v2, v3

    xor-long/2addr v0, v2

    move-wide v3, v0

    :goto_0
    return-wide v3
.end method

.method public limit()I
    .locals 1

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    return v0
.end method

.method public optional(I)I
    .locals 9

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int/2addr v0, v1

    if-lt v0, p1, :cond_0

    return p1

    :cond_0
    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->capacity:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->capacity:I

    sub-int/2addr v3, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/esotericsoftware/kryo/io/Input;->fill([BII)I

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

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    return p1

    :cond_3
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    const/4 v4, 0x0

    invoke-static {v1, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-wide v5, p0, Lcom/esotericsoftware/kryo/io/Input;->total:J

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    int-to-long v7, v1

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/esotericsoftware/kryo/io/Input;->total:J

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    :cond_4
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->capacity:I

    sub-int/2addr v3, v0

    invoke-virtual {p0, v1, v0, v3}, Lcom/esotericsoftware/kryo/io/Input;->fill([BII)I

    move-result v1

    if-ne v1, v2, :cond_5

    goto :goto_1

    :cond_5
    add-int/2addr v0, v1

    if-lt v0, p1, :cond_4

    :goto_1
    iput v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_2
    return v2
.end method

.method public position()I
    .locals 1

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    return v0
.end method

.method public read()I
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->optional(I)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/esotericsoftware/kryo/io/Input;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 4

    if-eqz p1, :cond_4

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int/2addr v0, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, p3

    :cond_0
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int/2addr v1, v0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    add-int/2addr p2, v0

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Input;->optional(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    if-ne p3, v1, :cond_3

    return v2

    :cond_2
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

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

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v0, v1

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public readBooleans(I)[Z
    .locals 6

    new-array v0, p1, [Z

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/io/Input;->optional(I)I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, p1, :cond_2

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p1, :cond_1

    aget-byte v5, v1, v3

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    aput-boolean v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    goto :goto_3

    :cond_2
    :goto_2
    if-ge v2, p1, :cond_3

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v1

    aput-boolean v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-object v0
.end method

.method public readByte()B
    .locals 3

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public readByteUnsigned()I
    .locals 3

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readBytes([B)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/esotericsoftware/kryo/io/Input;->readBytes([BII)V

    return-void
.end method

.method public readBytes([BII)V
    .locals 3

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int/2addr v0, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int/2addr p3, v0

    if-nez p3, :cond_0

    return-void

    :cond_0
    add-int/2addr p2, v0

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->capacity:I

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

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

    invoke-virtual {p0, v0, v1, p1}, Lcom/esotericsoftware/kryo/io/Input;->readBytes([BII)V

    return-object v0
.end method

.method public readChar()C
    .locals 3

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v1, v0, 0x2

    iput v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v2

    int-to-char v0, v0

    return v0
.end method

.method public readChars(I)[C
    .locals 6

    new-array v0, p1, [C

    shl-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Input;->optional(I)I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_1

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    :goto_0
    if-ge v3, p1, :cond_0

    aget-byte v4, v1, v2

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    goto :goto_2

    :cond_1
    :goto_1
    if-ge v3, p1, :cond_2

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->readChar()C

    move-result v1

    aput-char v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-object v0
.end method

.method public readDouble()D
    .locals 7

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v3, v2, 0x8

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v0, v4, 0x8

    or-int/2addr v0, v3

    add-int/lit8 v3, v2, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v0, v3

    int-to-long v3, v0

    add-int/lit8 v0, v2, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    const/16 v0, 0x18

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    add-int/lit8 v0, v2, 0x4

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    const/16 v0, 0x20

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    add-int/lit8 v0, v2, 0x5

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    const/16 v0, 0x28

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    add-int/lit8 v0, v2, 0x6

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    const/16 v0, 0x30

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    add-int/lit8 v2, v2, 0x7

    aget-byte v0, v1, v2

    int-to-long v0, v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    or-long/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readDoubles(I)[D
    .locals 9

    new-array v0, p1, [D

    shl-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Input;->optional(I)I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_1

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    :goto_0
    if-ge v3, p1, :cond_0

    aget-byte v4, v1, v2

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v5, v2, 0x2

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    int-to-long v4, v4

    add-int/lit8 v6, v2, 0x3

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    add-int/lit8 v6, v2, 0x4

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    add-int/lit8 v6, v2, 0x5

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const/16 v8, 0x28

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    add-int/lit8 v6, v2, 0x6

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const/16 v8, 0x30

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    add-int/lit8 v6, v2, 0x7

    aget-byte v6, v1, v6

    int-to-long v6, v6

    const/16 v8, 0x38

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    aput-wide v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x8

    goto :goto_0

    :cond_0
    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    goto :goto_2

    :cond_1
    :goto_1
    if-ge v3, p1, :cond_2

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->readDouble()D

    move-result-wide v1

    aput-wide v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-object v0
.end method

.method public readFloat()F
    .locals 4

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v2, v1, 0x4

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x3

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readFloats(I)[F
    .locals 6

    new-array v0, p1, [F

    shl-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Input;->optional(I)I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_1

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    :goto_0
    if-ge v3, p1, :cond_0

    aget-byte v4, v1, v2

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v5, v2, 0x2

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 v5, v2, 0x3

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    aput v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    :cond_0
    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    goto :goto_2

    :cond_1
    :goto_1
    if-ge v3, p1, :cond_2

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v1

    aput v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-object v0
.end method

.method public readInt()I
    .locals 4

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v2, v1, 0x4

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x3

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0
.end method

.method public readInt(Z)I
    .locals 1

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/io/Input;->varEncoding:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result p1

    return p1
.end method

.method public readInts(I)[I
    .locals 6

    new-array v0, p1, [I

    shl-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Input;->optional(I)I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_1

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    :goto_0
    if-ge v3, p1, :cond_0

    aget-byte v4, v1, v2

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v5, v2, 0x2

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 v5, v2, 0x3

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    aput v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    :cond_0
    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    goto :goto_2

    :cond_1
    :goto_1
    if-ge v3, p1, :cond_2

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v1

    aput v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-object v0
.end method

.method public readInts(IZ)[I
    .locals 3

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/io/Input;->varEncoding:Z

    if-eqz v0, :cond_1

    new-array v0, p1, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/io/Input;->readInts(I)[I

    move-result-object p1

    return-object p1
.end method

.method public readLong()J
    .locals 7

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v3, v2, 0x8

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v0, v4, 0x8

    or-int/2addr v0, v3

    add-int/lit8 v3, v2, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v0, v3

    int-to-long v3, v0

    add-int/lit8 v0, v2, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    const/16 v0, 0x18

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    add-int/lit8 v0, v2, 0x4

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    const/16 v0, 0x20

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    add-int/lit8 v0, v2, 0x5

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    const/16 v0, 0x28

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    add-int/lit8 v0, v2, 0x6

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    const/16 v0, 0x30

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    add-int/lit8 v2, v2, 0x7

    aget-byte v0, v1, v2

    int-to-long v0, v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    or-long/2addr v0, v3

    return-wide v0
.end method

.method public readLong(Z)J
    .locals 2

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/io/Input;->varEncoding:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/io/Input;->readVarLong(Z)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readLongs(I)[J
    .locals 9

    new-array v0, p1, [J

    shl-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Input;->optional(I)I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_1

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    :goto_0
    if-ge v3, p1, :cond_0

    aget-byte v4, v1, v2

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v5, v2, 0x2

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    int-to-long v4, v4

    add-int/lit8 v6, v2, 0x3

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    add-int/lit8 v6, v2, 0x4

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    add-int/lit8 v6, v2, 0x5

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const/16 v8, 0x28

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    add-int/lit8 v6, v2, 0x6

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const/16 v8, 0x30

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    add-int/lit8 v6, v2, 0x7

    aget-byte v6, v1, v6

    int-to-long v6, v6

    const/16 v8, 0x38

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x8

    goto :goto_0

    :cond_0
    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    goto :goto_2

    :cond_1
    :goto_1
    if-ge v3, p1, :cond_2

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->readLong()J

    move-result-wide v1

    aput-wide v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-object v0
.end method

.method public readLongs(IZ)[J
    .locals 4

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/io/Input;->varEncoding:Z

    if-eqz v0, :cond_1

    new-array v0, p1, [J

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/esotericsoftware/kryo/io/Input;->readVarLong(Z)J

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/io/Input;->readLongs(I)[J

    move-result-object p1

    return-object p1
.end method

.method public readShort()S
    .locals 3

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v1, v0, 0x2

    iput v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v2

    int-to-short v0, v0

    return v0
.end method

.method public readShortUnsigned()I
    .locals 3

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v1, v0, 0x2

    iput v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v2

    return v0
.end method

.method public readShorts(I)[S
    .locals 6

    new-array v0, p1, [S

    shl-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Input;->optional(I)I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_1

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    :goto_0
    if-ge v3, p1, :cond_0

    aget-byte v4, v1, v2

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    goto :goto_2

    :cond_1
    :goto_1
    if-ge v3, p1, :cond_2

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->readShort()S

    move-result v1

    aput-short v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-object v0
.end method

.method public readString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->readVarIntFlag()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarIntFlag(Z)I

    move-result v1

    if-eqz v1, :cond_2

    if-eq v1, v0, :cond_1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Input;->e(I)V

    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public readStringBuilder()Ljava/lang/StringBuilder;
    .locals 4

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->readVarIntFlag()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarIntFlag(Z)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    if-eq v1, v0, :cond_1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Input;->e(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    invoke-virtual {v0, v3, v2, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public readVarDouble(DZ)D
    .locals 2

    invoke-virtual {p0, p3}, Lcom/esotericsoftware/kryo/io/Input;->readVarLong(Z)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, p1

    return-wide v0
.end method

.method public readVarFloat(FZ)F
    .locals 0

    invoke-virtual {p0, p2}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, p1

    return p2
.end method

.method public readVarInt(Z)I
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/io/Input;->h(Z)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v1, v0, v1

    and-int/lit8 v3, v1, 0x7f

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_3

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit8 v4, v2, 0x7f

    shl-int/lit8 v4, v4, 0x7

    or-int/2addr v3, v4

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v0, v1

    and-int/lit8 v4, v1, 0x7f

    shl-int/lit8 v4, v4, 0xe

    or-int/2addr v3, v4

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit8 v4, v2, 0x7f

    shl-int/lit8 v4, v4, 0x15

    or-int/2addr v3, v4

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x1c

    or-int/2addr v0, v3

    move v3, v0

    :cond_1
    move v1, v2

    :cond_2
    iput v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    :cond_3
    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    ushr-int/lit8 p1, v3, 0x1

    and-int/lit8 v0, v3, 0x1

    neg-int v0, v0

    xor-int v3, p1, v0

    :goto_0
    return v3
.end method

.method public readVarIntFlag(Z)I
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/io/Input;->g(Z)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v1, v0, v1

    and-int/lit8 v3, v1, 0x3f

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_3

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit8 v4, v2, 0x7f

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v3, v4

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v0, v1

    and-int/lit8 v4, v1, 0x7f

    shl-int/lit8 v4, v4, 0xd

    or-int/2addr v3, v4

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit8 v4, v2, 0x7f

    shl-int/lit8 v4, v4, 0x14

    or-int/2addr v3, v4

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x1b

    or-int/2addr v0, v3

    move v3, v0

    :cond_1
    move v1, v2

    :cond_2
    iput v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    :cond_3
    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    ushr-int/lit8 p1, v3, 0x1

    and-int/lit8 v0, v3, 0x1

    neg-int v0, v0

    xor-int v3, p1, v0

    :goto_0
    return v3
.end method

.method public readVarIntFlag()Z
    .locals 3

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public readVarLong(Z)J
    .locals 9

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    move-result v1

    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/io/Input;->i(Z)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    and-int/lit8 v4, v1, 0x7f

    int-to-long v4, v4

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_2

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    and-int/lit8 v6, v3, 0x7f

    shl-int/lit8 v6, v6, 0x7

    int-to-long v6, v6

    or-long/2addr v4, v6

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_1

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    and-int/lit8 v6, v1, 0x7f

    shl-int/lit8 v6, v6, 0xe

    int-to-long v6, v6

    or-long/2addr v4, v6

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_2

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    and-int/lit8 v6, v3, 0x7f

    shl-int/lit8 v6, v6, 0x15

    int-to-long v6, v6

    or-long/2addr v4, v6

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_1

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    and-int/lit8 v6, v1, 0x7f

    int-to-long v6, v6

    const/16 v8, 0x1c

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_2

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    and-int/lit8 v6, v3, 0x7f

    int-to-long v6, v6

    const/16 v8, 0x23

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_1

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    and-int/lit8 v6, v1, 0x7f

    int-to-long v6, v6

    const/16 v8, 0x2a

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_2

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    and-int/lit8 v6, v3, 0x7f

    int-to-long v6, v6

    const/16 v8, 0x31

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_1

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v1, v1

    const/16 v6, 0x38

    shl-long/2addr v1, v6

    or-long/2addr v4, v1

    goto :goto_0

    :cond_1
    move v3, v1

    :cond_2
    :goto_0
    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    ushr-long v0, v4, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, v4

    neg-long v2, v2

    xor-long v4, v0, v2

    :goto_1
    return-wide v4
.end method

.method public require(I)I
    .locals 10

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int v1, v0, v1

    if-lt v1, p1, :cond_0

    return v1

    :cond_0
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->capacity:I

    if-gt p1, v2, :cond_6

    const-string v3, "Buffer underflow."

    const/4 v4, -0x1

    if-lez v1, :cond_2

    iget-object v5, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    sub-int/2addr v2, v0

    invoke-virtual {p0, v5, v0, v2}, Lcom/esotericsoftware/kryo/io/Input;->fill([BII)I

    move-result v0

    if-eq v0, v4, :cond_1

    add-int/2addr v1, v0

    if-lt v1, p1, :cond_2

    iget p1, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    return v1

    :cond_1
    new-instance p1, Lcom/esotericsoftware/kryo/io/KryoBufferUnderflowException;

    invoke-direct {p1, v3}, Lcom/esotericsoftware/kryo/io/KryoBufferUnderflowException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    const/4 v5, 0x0

    invoke-static {v0, v2, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-wide v6, p0, Lcom/esotericsoftware/kryo/io/Input;->total:J

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    int-to-long v8, v0

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/esotericsoftware/kryo/io/Input;->total:J

    iput v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    :cond_3
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->capacity:I

    sub-int/2addr v2, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/esotericsoftware/kryo/io/Input;->fill([BII)I

    move-result v0

    if-ne v0, v4, :cond_5

    if-lt v1, p1, :cond_4

    goto :goto_0

    :cond_4
    new-instance p1, Lcom/esotericsoftware/kryo/io/KryoBufferUnderflowException;

    invoke-direct {p1, v3}, Lcom/esotericsoftware/kryo/io/KryoBufferUnderflowException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    add-int/2addr v1, v0

    if-lt v1, p1, :cond_3

    :goto_0
    iput v1, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    return v1

    :cond_6
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buffer too small: capacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->capacity:I

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

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/esotericsoftware/kryo/io/Input;->total:J

    return-void
.end method

.method public setBuffer([B)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/esotericsoftware/kryo/io/Input;->setBuffer([BII)V

    return-void
.end method

.method public setBuffer([BII)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iput p2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/2addr p2, p3

    iput p2, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    array-length p1, p1

    iput p1, p0, Lcom/esotericsoftware/kryo/io/Input;->capacity:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/esotericsoftware/kryo/io/Input;->total:J

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/Input;->inputStream:Ljava/io/InputStream;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bytes cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/Input;->inputStream:Ljava/io/InputStream;

    const/4 p1, 0x0

    iput p1, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->reset()V

    return-void
.end method

.method public setLimit(I)V
    .locals 0

    iput p1, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    return-void
.end method

.method public setTotal(J)V
    .locals 0

    iput-wide p1, p0, Lcom/esotericsoftware/kryo/io/Input;->total:J

    return-void
.end method

.method public setVariableLengthEncoding(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/io/Input;->varEncoding:Z

    return-void
.end method

.method public skip(J)J
    .locals 5

    move-wide v0, p1

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-wide/32 v2, 0x7ffffff7

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/kryo/io/Input;->skip(I)V

    int-to-long v2, v3

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide p1
.end method

.method public skip(I)V
    .locals 2

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int/2addr p1, v0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->capacity:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    goto :goto_0
.end method

.method public total()J
    .locals 4

    iget-wide v0, p0, Lcom/esotericsoftware/kryo/io/Input;->total:J

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method
