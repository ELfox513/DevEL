.class public final Lcom/prineside/tdi2/utils/BitVector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation


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

    iput-object v0, p0, Lcom/prineside/tdi2/utils/BitVector;->a:[J

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

    iput-object v0, p0, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    ushr-int/lit8 p1, p1, 0x6

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/utils/BitVector;->a(I)V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/utils/BitVector;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    iput-object v0, p0, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    iget-object p1, p1, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    array-length v1, v0

    if-lt p1, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [J

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    :cond_0
    return-void
.end method

.method public and(Lcom/prineside/tdi2/utils/BitVector;)V
    .locals 8

    iget-object v0, p0, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    array-length v0, v0

    iget-object v1, p1, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-le v0, v1, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    aget-wide v3, v2, v1

    iget-object v5, p1, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    aget-wide v6, v5, v1

    and-long/2addr v3, v6

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    array-length v1, p1

    if-le v1, v0, :cond_1

    array-length p1, p1

    :goto_1
    if-le p1, v0, :cond_1

    iget-object v1, p0, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public andNot(Lcom/prineside/tdi2/utils/BitVector;)V
    .locals 10

    iget-object v0, p0, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    array-length v0, v0

    iget-object v1, p1, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-le v0, v1, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    aget-wide v3, v2, v1

    iget-object v5, p1, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    aget-wide v6, v5, v1

    const-wide/16 v8, -0x1

    xor-long/2addr v6, v8

    and-long/2addr v3, v6

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public cardinality()I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-wide v3, v2, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->bitCount(J)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public clear()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    return-void
.end method

.method public clear(I)V
    .locals 8

    ushr-int/lit8 v0, p1, 0x6

    iget-object v1, p0, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    array-length v2, v1

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    aget-wide v2, v1, v0

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p1

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    and-long/2addr v2, v4

    aput-wide v2, v1, v0

    return-void
.end method

.method public containsAll(Lcom/prineside/tdi2/utils/BitVector;)Z
    .locals 10

    iget-object v0, p0, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    iget-object p1, p1, Lcom/prineside/tdi2/utils/BitVector;->a:[J

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

    const/4 v2, 0x0

    :goto_1
    if-le v1, v2, :cond_3

    aget-wide v5, v0, v2

    aget-wide v7, p1, v2

    and-long/2addr v5, v7

    cmp-long v3, v5, v7

    if-eqz v3, :cond_2

    return v4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public ensureCapacity(I)V
    .locals 0

    ushr-int/lit8 p1, p1, 0x6

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/utils/BitVector;->a(I)V

    return-void
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
    const-class v2, Lcom/prineside/tdi2/utils/BitVector;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcom/prineside/tdi2/utils/BitVector;

    iget-object v2, p1, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    iget-object v3, p0, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    array-length v3, v3

    array-length v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-le v3, v4, :cond_4

    iget-object v5, p0, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    aget-wide v6, v5, v4

    aget-wide v8, v2, v4

    cmp-long v5, v6, v8

    if-eqz v5, :cond_3

    return v1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    array-length v3, v3

    array-length v2, v2

    if-ne v3, v2, :cond_5

    return v0

    :cond_5
    invoke-virtual {p0}, Lcom/prineside/tdi2/utils/BitVector;->length()I

    move-result v2

    invoke-virtual {p1}, Lcom/prineside/tdi2/utils/BitVector;->length()I

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

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/utils/BitVector;->a(I)V

    iget-object v1, p0, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p1

    xor-long/2addr v2, v4

    aput-wide v2, v1, v0

    return-void
.end method

.method public get(I)Z
    .locals 4

    ushr-int/lit8 v0, p1, 0x6

    iget-object v1, p0, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-wide v0, v1, v0

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getCapacity()I
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public hashCode()I
    .locals 8

    invoke-virtual {p0}, Lcom/prineside/tdi2/utils/BitVector;->length()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    mul-int/lit8 v2, v2, 0x7f

    iget-object v3, p0, Lcom/prineside/tdi2/utils/BitVector;->a:[J

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

.method public intersects(Lcom/prineside/tdi2/utils/BitVector;)Z
    .locals 9

    iget-object v0, p0, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    iget-object p1, p1, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    array-length v1, v0

    array-length v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-le v1, v3, :cond_1

    aget-wide v4, v0, v3

    aget-wide v6, p1, v3

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public isEmpty()Z
    .locals 9

    iget-object v0, p0, Lcom/prineside/tdi2/utils/BitVector;->a:[J

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
    .locals 7

    iget-object v0, p0, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    shl-int/lit8 v0, v1, 0x6

    add-int/lit8 v0, v0, 0x40

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public nextClearBit(I)I
    .locals 9

    ushr-int/lit8 v0, p1, 0x6

    iget-object v1, p0, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    array-length v2, v1

    if-lt v0, v2, :cond_0

    array-length v0, v1

    shl-int/lit8 v0, v0, 0x6

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    :cond_0
    aget-wide v2, v1, v0

    ushr-long v1, v2, p1

    const-wide/16 v3, -0x1

    xor-long/2addr v1, v3

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-eqz v7, :cond_1

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    add-int/2addr p1, v0

    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-wide v7, v1, v0

    xor-long v1, v7, v3

    cmp-long v7, v1, v5

    if-eqz v7, :cond_1

    mul-int/lit8 v0, v0, 0x40

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result p1

    add-int/2addr v0, p1

    return v0

    :cond_2
    array-length v0, v1

    shl-int/lit8 v0, v0, 0x6

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public nextSetBit(I)I
    .locals 7

    ushr-int/lit8 v0, p1, 0x6

    iget-object v1, p0, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    array-length v2, v1

    const/4 v3, -0x1

    if-lt v0, v2, :cond_0

    return v3

    :cond_0
    aget-wide v4, v1, v0

    ushr-long v1, v4, p1

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-eqz v6, :cond_1

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    add-int/2addr p1, v0

    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    iget-object p1, p0, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    array-length v1, p1

    if-ge v0, v1, :cond_2

    aget-wide v1, p1, v0

    cmp-long p1, v1, v4

    if-eqz p1, :cond_1

    mul-int/lit8 v0, v0, 0x40

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result p1

    add-int/2addr v0, p1

    return v0

    :cond_2
    return v3
.end method

.method public or(Lcom/prineside/tdi2/utils/BitVector;)V
    .locals 8

    iget-object v0, p0, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    array-length v0, v0

    iget-object v1, p1, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-le v0, v1, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    aget-wide v3, v2, v1

    iget-object v5, p1, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    aget-wide v6, v5, v1

    or-long/2addr v3, v6

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    array-length v2, v1

    if-ge v0, v2, :cond_1

    array-length v1, v1

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/utils/BitVector;->a(I)V

    iget-object v1, p1, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    array-length v1, v1

    :goto_1
    if-le v1, v0, :cond_1

    iget-object v2, p0, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    iget-object v3, p1, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    aget-wide v4, v3, v0

    aput-wide v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, [J

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J

    iput-object p1, p0, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    return-void
.end method

.method public set(I)V
    .locals 6

    ushr-int/lit8 v0, p1, 0x6

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/utils/BitVector;->a(I)V

    iget-object v1, p0, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p1

    or-long/2addr v2, v4

    aput-wide v2, v1, v0

    return-void
.end method

.method public set(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/utils/BitVector;->set(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/utils/BitVector;->clear(I)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lcom/prineside/tdi2/utils/BitVector;->cardinality()I

    move-result v0

    const/16 v1, 0x80

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BitVector["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-lez v0, :cond_3

    const-string v3, ": {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/prineside/tdi2/utils/BitVector;->nextSetBit(I)I

    move-result v4

    :goto_0
    if-le v1, v3, :cond_1

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    if-eqz v3, :cond_0

    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Lcom/prineside/tdi2/utils/BitVector;->nextSetBit(I)I

    move-result v4

    goto :goto_0

    :cond_1
    if-le v0, v1, :cond_2

    const-string v0, " ..."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unsafeClear(I)V
    .locals 8

    iget-object v0, p0, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    ushr-int/lit8 v1, p1, 0x6

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p1

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    and-long/2addr v2, v4

    aput-wide v2, v0, v1

    return-void
.end method

.method public unsafeGet(I)Z
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    ushr-int/lit8 v1, p1, 0x6

    aget-wide v1, v0, v1

    const-wide/16 v3, 0x1

    shl-long/2addr v3, p1

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public unsafeSet(I)V
    .locals 6

    iget-object v0, p0, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    ushr-int/lit8 v1, p1, 0x6

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p1

    or-long/2addr v2, v4

    aput-wide v2, v0, v1

    return-void
.end method

.method public unsafeSet(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/utils/BitVector;->unsafeSet(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/utils/BitVector;->unsafeClear(I)V

    :goto_0
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method

.method public xor(Lcom/prineside/tdi2/utils/BitVector;)V
    .locals 8

    iget-object v0, p0, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    array-length v0, v0

    iget-object v1, p1, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-le v0, v1, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    aget-wide v3, v2, v1

    iget-object v5, p1, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    aget-wide v6, v5, v1

    xor-long/2addr v3, v6

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    array-length v2, v1

    if-ge v0, v2, :cond_1

    array-length v1, v1

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/utils/BitVector;->a(I)V

    iget-object v1, p1, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    array-length v1, v1

    :goto_1
    if-le v1, v0, :cond_1

    iget-object v2, p0, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    iget-object v3, p1, Lcom/prineside/tdi2/utils/BitVector;->a:[J

    aget-wide v4, v3, v0

    aput-wide v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
