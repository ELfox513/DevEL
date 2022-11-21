.class public Lcom/prineside/tdi2/ibxm/Data;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:[B

.field public c:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x10000

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Data;->a:I

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/prineside/tdi2/ibxm/Data;->b:[B

    iput-object p1, p0, Lcom/prineside/tdi2/ibxm/Data;->c:Ljava/io/InputStream;

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lcom/prineside/tdi2/ibxm/Data;->b(Ljava/io/InputStream;[BII)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Data;->a:I

    iput-object p1, p0, Lcom/prineside/tdi2/ibxm/Data;->b:[B

    return-void
.end method

.method public static b(Ljava/io/InputStream;[BII)V
    .locals 1

    add-int/2addr p3, p2

    const/4 v0, 0x1

    :goto_0
    if-lez v0, :cond_0

    sub-int v0, p3, p2

    invoke-virtual {p0, p1, p2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 5

    :goto_0
    add-int v0, p1, p2

    iget v1, p0, Lcom/prineside/tdi2/ibxm/Data;->a:I

    if-le v0, v1, :cond_1

    shl-int/lit8 v0, v1, 0x1

    new-array v2, v0, [B

    iget-object v3, p0, Lcom/prineside/tdi2/ibxm/Data;->b:[B

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/prineside/tdi2/ibxm/Data;->c:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    iget v3, p0, Lcom/prineside/tdi2/ibxm/Data;->a:I

    sub-int v4, v0, v3

    invoke-static {v1, v2, v3, v4}, Lcom/prineside/tdi2/ibxm/Data;->b(Ljava/io/InputStream;[BII)V

    :cond_0
    iput v0, p0, Lcom/prineside/tdi2/ibxm/Data;->a:I

    iput-object v2, p0, Lcom/prineside/tdi2/ibxm/Data;->b:[B

    goto :goto_0

    :cond_1
    return-void
.end method

.method public sByte(I)B
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/prineside/tdi2/ibxm/Data;->a(II)V

    iget-object v0, p0, Lcom/prineside/tdi2/ibxm/Data;->b:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public samS16(II)[S
    .locals 5

    mul-int/lit8 v0, p2, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/prineside/tdi2/ibxm/Data;->a(II)V

    new-array v0, p2, [S

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/ibxm/Data;->b:[B

    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p1

    aget-byte v4, v2, v3

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v4

    int-to-short v2, v2

    aput-short v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public samS16D(II)[S
    .locals 6

    mul-int/lit8 v0, p2, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/prineside/tdi2/ibxm/Data;->a(II)V

    new-array v0, p2, [S

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    iget-object v3, p0, Lcom/prineside/tdi2/ibxm/Data;->b:[B

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v4, p1

    aget-byte v5, v3, v4

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v4, v4, 0x1

    aget-byte v3, v3, v4

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v5

    add-int/2addr v2, v3

    int-to-short v3, v2

    aput-short v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public samS8(II)[S
    .locals 4

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/ibxm/Data;->a(II)V

    new-array v0, p2, [S

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/ibxm/Data;->b:[B

    add-int v3, p1, v1

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x8

    int-to-short v2, v2

    aput-short v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public samS8D(II)[S
    .locals 5

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/ibxm/Data;->a(II)V

    new-array v0, p2, [S

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    iget-object v3, p0, Lcom/prineside/tdi2/ibxm/Data;->b:[B

    add-int v4, p1, v1

    aget-byte v3, v3, v4

    add-int/2addr v2, v3

    shl-int/lit8 v3, v2, 0x8

    int-to-short v3, v3

    aput-short v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public samU16(II)[S
    .locals 5

    mul-int/lit8 v0, p2, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/prineside/tdi2/ibxm/Data;->a(II)V

    new-array v0, p2, [S

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/ibxm/Data;->b:[B

    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p1

    aget-byte v4, v2, v3

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v4

    add-int/lit16 v2, v2, -0x8000

    int-to-short v2, v2

    aput-short v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public samU8(II)[S
    .locals 4

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/ibxm/Data;->a(II)V

    new-array v0, p2, [S

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/ibxm/Data;->b:[B

    add-int v3, p1, v1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v2, v2, -0x80

    shl-int/lit8 v2, v2, 0x8

    int-to-short v2, v2

    aput-short v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public strCp850(II)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/ibxm/Data;->a(II)V

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/prineside/tdi2/ibxm/Data;->b:[B

    const-string v2, "Cp850"

    invoke-direct {v0, v1, p1, p2, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-char v2, v0, v1

    const/16 v3, 0x20

    if-ge v2, v3, :cond_0

    const/16 v2, 0x20

    :cond_0
    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/ibxm/Data;->strLatin1(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public strLatin1(II)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/ibxm/Data;->a(II)V

    new-array v0, p2, [C

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    iget-object v2, p0, Lcom/prineside/tdi2/ibxm/Data;->b:[B

    add-int v3, p1, v1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x20

    if-ge v2, v3, :cond_0

    goto :goto_1

    :cond_0
    int-to-char v3, v2

    :goto_1
    aput-char v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method

.method public uByte(I)I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/prineside/tdi2/ibxm/Data;->a(II)V

    iget-object v0, p0, Lcom/prineside/tdi2/ibxm/Data;->b:[B

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method public ubeShort(I)I
    .locals 2

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/prineside/tdi2/ibxm/Data;->a(II)V

    iget-object v0, p0, Lcom/prineside/tdi2/ibxm/Data;->b:[B

    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    return p1
.end method

.method public uleInt(I)I
    .locals 3

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/prineside/tdi2/ibxm/Data;->a(II)V

    iget-object v0, p0, Lcom/prineside/tdi2/ibxm/Data;->b:[B

    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 p1, p1, 0x3

    aget-byte p1, v0, p1

    and-int/lit8 p1, p1, 0x7f

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p1, v1

    return p1
.end method

.method public uleShort(I)I
    .locals 2

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/prineside/tdi2/ibxm/Data;->a(II)V

    iget-object v0, p0, Lcom/prineside/tdi2/ibxm/Data;->b:[B

    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 p1, p1, 0x1

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v1

    return p1
.end method
