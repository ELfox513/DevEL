.class public Lcom/badlogic/gdx/utils/Bits;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[J


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->a:[J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->a:[J

    ushr-int/lit8 p1, p1, 0x6

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/Bits;->a(I)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/Bits;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [J

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->a:[J

    iget-object v0, p1, Lcom/badlogic/gdx/utils/Bits;->a:[J

    array-length v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->a:[J

    iget-object p1, p1, Lcom/badlogic/gdx/utils/Bits;->a:[J

    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->a:[J

    array-length v1, v0

    if-lt p1, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [J

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lcom/badlogic/gdx/utils/Bits;->a:[J

    :cond_0
    return-void
.end method

.method public and(Lcom/badlogic/gdx/utils/Bits;)V
    .locals 8

    iget-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->a:[J

    array-length v0, v0

    iget-object v1, p1, Lcom/badlogic/gdx/utils/Bits;->a:[J

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-le v0, v1, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/utils/Bits;->a:[J

    aget-wide v3, v2, v1

    iget-object v5, p1, Lcom/badlogic/gdx/utils/Bits;->a:[J

    aget-wide v6, v5, v1

    and-long/2addr v3, v6

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/utils/Bits;->a:[J

    array-length v1, p1

    if-le v1, v0, :cond_1

    array-length p1, p1

    :goto_1
    if-le p1, v0, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Bits;->a:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public andNot(Lcom/badlogic/gdx/utils/Bits;)V
    .locals 11

    iget-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->a:[J

    array-length v0, v0

    iget-object v1, p1, Lcom/badlogic/gdx/utils/Bits;->a:[J

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/badlogic/gdx/utils/Bits;->a:[J

    aget-wide v4, v3, v2

    iget-object v6, p1, Lcom/badlogic/gdx/utils/Bits;->a:[J

    aget-wide v7, v6, v2

    const-wide/16 v9, -0x1

    xor-long/2addr v7, v9

    and-long/2addr v4, v7

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->a:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    return-void
.end method

.method public clear(I)V
    .locals 8

    ushr-int/lit8 v0, p1, 0x6

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Bits;->a:[J

    array-length v2, v1

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    aget-wide v2, v1, v0

    const-wide/16 v4, 0x1

    and-int/lit8 p1, p1, 0x3f

    shl-long/2addr v4, p1

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    and-long/2addr v2, v4

    aput-wide v2, v1, v0

    return-void
.end method

.method public containsAll(Lcom/badlogic/gdx/utils/Bits;)Z
    .locals 10

    iget-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->a:[J

    iget-object p1, p1, Lcom/badlogic/gdx/utils/Bits;->a:[J

    array-length v1, p1

    array-length v2, v0

    move v3, v2

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v1, :cond_1

    aget-wide v5, p1, v3

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_0

    return v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_1
    if-ltz v1, :cond_3

    aget-wide v5, v0, v1

    aget-wide v7, p1, v1

    and-long/2addr v5, v7

    cmp-long v3, v5, v7

    if-eqz v3, :cond_2

    return v4

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcom/badlogic/gdx/utils/Bits;

    iget-object v2, p1, Lcom/badlogic/gdx/utils/Bits;->a:[J

    iget-object v3, p0, Lcom/badlogic/gdx/utils/Bits;->a:[J

    array-length v3, v3

    array-length v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-le v3, v4, :cond_4

    iget-object v5, p0, Lcom/badlogic/gdx/utils/Bits;->a:[J

    aget-wide v6, v5, v4

    aget-wide v8, v2, v4

    cmp-long v5, v6, v8

    if-eqz v5, :cond_3

    return v1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Bits;->a:[J

    array-length v3, v3

    array-length v2, v2

    if-ne v3, v2, :cond_5

    return v0

    :cond_5
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Bits;->length()I

    move-result v2

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Bits;->length()I

    move-result p1

    if-ne v2, p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public flip(I)V
    .locals 6

    ushr-int/lit8 v0, p1, 0x6

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Bits;->a(I)V

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Bits;->a:[J

    aget-wide v2, v1, v0

    and-int/lit8 p1, p1, 0x3f

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p1

    xor-long/2addr v2, v4

    aput-wide v2, v1, v0

    return-void
.end method

.method public get(I)Z
    .locals 6

    ushr-int/lit8 v0, p1, 0x6

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Bits;->a:[J

    array-length v2, v1

    const/4 v3, 0x0

    if-lt v0, v2, :cond_0

    return v3

    :cond_0
    aget-wide v0, v1, v0

    const-wide/16 v4, 0x1

    and-int/lit8 p1, p1, 0x3f

    shl-long/2addr v4, p1

    and-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method public getAndClear(I)Z
    .locals 10

    ushr-int/lit8 v0, p1, 0x6

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Bits;->a:[J

    array-length v2, v1

    const/4 v3, 0x0

    if-lt v0, v2, :cond_0

    return v3

    :cond_0
    aget-wide v4, v1, v0

    const-wide/16 v6, 0x1

    and-int/lit8 p1, p1, 0x3f

    shl-long/2addr v6, p1

    const-wide/16 v8, -0x1

    xor-long/2addr v6, v8

    and-long/2addr v6, v4

    aput-wide v6, v1, v0

    cmp-long p1, v6, v4

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method public getAndSet(I)Z
    .locals 6

    ushr-int/lit8 v0, p1, 0x6

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Bits;->a(I)V

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Bits;->a:[J

    aget-wide v2, v1, v0

    and-int/lit8 p1, p1, 0x3f

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p1

    or-long/2addr v4, v2

    aput-wide v4, v1, v0

    cmp-long p1, v4, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 8

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Bits;->length()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    mul-int/lit8 v2, v2, 0x7f

    iget-object v3, p0, Lcom/badlogic/gdx/utils/Bits;->a:[J

    aget-wide v4, v3, v1

    const/16 v3, 0x20

    ushr-long v6, v4, v3

    xor-long/2addr v4, v6

    long-to-int v3, v4

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public intersects(Lcom/badlogic/gdx/utils/Bits;)Z
    .locals 8

    iget-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->a:[J

    iget-object p1, p1, Lcom/badlogic/gdx/utils/Bits;->a:[J

    array-length v1, v0

    array-length v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    aget-wide v3, v0, v1

    aget-wide v5, p1, v1

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_0

    return v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isEmpty()Z
    .locals 9

    iget-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->a:[J

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-wide v4, v0, v3

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public length()I
    .locals 10

    iget-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->a:[J

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    const/16 v6, 0x3f

    :goto_1
    if-ltz v6, :cond_1

    const-wide/16 v7, 0x1

    and-int/lit8 v9, v6, 0x3f

    shl-long/2addr v7, v9

    and-long/2addr v7, v2

    cmp-long v9, v7, v4

    if-eqz v9, :cond_0

    shl-int/lit8 v0, v1, 0x6

    add-int/2addr v0, v6

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public nextClearBit(I)I
    .locals 13

    iget-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->a:[J

    ushr-int/lit8 v1, p1, 0x6

    array-length v2, v0

    if-lt v1, v2, :cond_0

    array-length p1, v0

    :goto_0
    shl-int/lit8 p1, p1, 0x6

    return p1

    :cond_0
    aget-wide v3, v0, v1

    and-int/lit8 p1, p1, 0x3f

    :goto_1
    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x1

    const/16 v9, 0x40

    if-ge p1, v9, :cond_2

    and-int/lit8 v9, p1, 0x3f

    shl-long/2addr v7, v9

    and-long/2addr v7, v3

    cmp-long v9, v7, v5

    if-nez v9, :cond_1

    :goto_2
    shl-int/lit8 v0, v1, 0x6

    add-int/2addr v0, p1

    return v0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v2, :cond_5

    if-nez v1, :cond_3

    shl-int/lit8 p1, v1, 0x6

    return p1

    :cond_3
    aget-wide v3, v0, v1

    const/4 p1, 0x0

    :goto_3
    if-ge p1, v9, :cond_2

    and-int/lit8 v10, p1, 0x3f

    shl-long v10, v7, v10

    and-long/2addr v10, v3

    cmp-long v12, v10, v5

    if-nez v12, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_5
    array-length p1, v0

    goto :goto_0
.end method

.method public nextSetBit(I)I
    .locals 14

    iget-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->a:[J

    ushr-int/lit8 v1, p1, 0x6

    array-length v2, v0

    const/4 v3, -0x1

    if-lt v1, v2, :cond_0

    return v3

    :cond_0
    aget-wide v4, v0, v1

    const-wide/16 v6, 0x1

    const/16 v8, 0x40

    const-wide/16 v9, 0x0

    cmp-long v11, v4, v9

    if-eqz v11, :cond_2

    and-int/lit8 p1, p1, 0x3f

    :goto_0
    if-ge p1, v8, :cond_2

    and-int/lit8 v11, p1, 0x3f

    shl-long v11, v6, v11

    and-long/2addr v11, v4

    cmp-long v13, v11, v9

    if-eqz v13, :cond_1

    :goto_1
    shl-int/lit8 v0, v1, 0x6

    add-int/2addr v0, p1

    return v0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v2, :cond_4

    if-eqz v1, :cond_2

    aget-wide v4, v0, v1

    cmp-long p1, v4, v9

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    :goto_2
    if-ge p1, v8, :cond_2

    and-int/lit8 v11, p1, 0x3f

    shl-long v11, v6, v11

    and-long/2addr v11, v4

    cmp-long v13, v11, v9

    if-eqz v13, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    return v3
.end method

.method public notEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Bits;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public numBits()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->a:[J

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public or(Lcom/badlogic/gdx/utils/Bits;)V
    .locals 8

    iget-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->a:[J

    array-length v0, v0

    iget-object v1, p1, Lcom/badlogic/gdx/utils/Bits;->a:[J

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-le v0, v1, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/utils/Bits;->a:[J

    aget-wide v3, v2, v1

    iget-object v5, p1, Lcom/badlogic/gdx/utils/Bits;->a:[J

    aget-wide v6, v5, v1

    or-long/2addr v3, v6

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/badlogic/gdx/utils/Bits;->a:[J

    array-length v2, v1

    if-ge v0, v2, :cond_1

    array-length v1, v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/Bits;->a(I)V

    iget-object v1, p1, Lcom/badlogic/gdx/utils/Bits;->a:[J

    array-length v1, v1

    :goto_1
    if-le v1, v0, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/Bits;->a:[J

    iget-object v3, p1, Lcom/badlogic/gdx/utils/Bits;->a:[J

    aget-wide v4, v3, v0

    aput-wide v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public set(I)V
    .locals 6

    ushr-int/lit8 v0, p1, 0x6

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Bits;->a(I)V

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Bits;->a:[J

    aget-wide v2, v1, v0

    and-int/lit8 p1, p1, 0x3f

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p1

    or-long/2addr v2, v4

    aput-wide v2, v1, v0

    return-void
.end method

.method public xor(Lcom/badlogic/gdx/utils/Bits;)V
    .locals 8

    iget-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->a:[J

    array-length v0, v0

    iget-object v1, p1, Lcom/badlogic/gdx/utils/Bits;->a:[J

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-le v0, v1, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/utils/Bits;->a:[J

    aget-wide v3, v2, v1

    iget-object v5, p1, Lcom/badlogic/gdx/utils/Bits;->a:[J

    aget-wide v6, v5, v1

    xor-long/2addr v3, v6

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/badlogic/gdx/utils/Bits;->a:[J

    array-length v2, v1

    if-ge v0, v2, :cond_1

    array-length v1, v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/Bits;->a(I)V

    iget-object v1, p1, Lcom/badlogic/gdx/utils/Bits;->a:[J

    array-length v1, v1

    :goto_1
    if-le v1, v0, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/Bits;->a:[J

    iget-object v3, p1, Lcom/badlogic/gdx/utils/Bits;->a:[J

    aget-wide v4, v3, v0

    aput-wide v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
