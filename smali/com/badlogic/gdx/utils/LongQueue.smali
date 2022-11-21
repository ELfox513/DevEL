.class public Lcom/badlogic/gdx/utils/LongQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[J

.field public b:I

.field public c:I

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/LongQueue;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->b:I

    iput v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->c:I

    iput v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/badlogic/gdx/utils/LongQueue;->a:[J

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 5

    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->a:[J

    iget v1, p0, Lcom/badlogic/gdx/utils/LongQueue;->b:I

    iget v2, p0, Lcom/badlogic/gdx/utils/LongQueue;->c:I

    new-array p1, p1, [J

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    sub-int/2addr v2, v1

    invoke-static {v0, v1, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    if-lez v4, :cond_1

    array-length v4, v0

    sub-int/2addr v4, v1

    invoke-static {v0, v1, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0, v3, p1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/badlogic/gdx/utils/LongQueue;->a:[J

    iput v3, p0, Lcom/badlogic/gdx/utils/LongQueue;->b:I

    iget p1, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    iput p1, p0, Lcom/badlogic/gdx/utils/LongQueue;->c:I

    return-void
.end method

.method public addFirst(J)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->a:[J

    iget v1, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_0

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/LongQueue;->a(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->a:[J

    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/LongQueue;->b:I

    const/4 v2, -0x1

    add-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :cond_1
    aput-wide p1, v0, v1

    iput v1, p0, Lcom/badlogic/gdx/utils/LongQueue;->b:I

    iget p1, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    return-void
.end method

.method public addLast(J)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->a:[J

    iget v1, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_0

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/LongQueue;->a(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->a:[J

    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/LongQueue;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/LongQueue;->c:I

    aput-wide p1, v0, v1

    array-length p1, v0

    if-ne v2, p1, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lcom/badlogic/gdx/utils/LongQueue;->c:I

    :cond_1
    iget p1, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    return-void
.end method

.method public clear()V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->b:I

    iput v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->c:I

    iput v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    return-void
.end method

.method public ensureCapacity(I)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/badlogic/gdx/utils/LongQueue;->a:[J

    array-length p1, p1

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/LongQueue;->a(I)V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 14

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    instance-of v2, p1, Lcom/badlogic/gdx/utils/LongQueue;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/badlogic/gdx/utils/LongQueue;

    iget v2, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    iget v3, p1, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    if-eq v3, v2, :cond_2

    return v1

    :cond_2
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongQueue;->a:[J

    array-length v4, v3

    iget-object v5, p1, Lcom/badlogic/gdx/utils/LongQueue;->a:[J

    array-length v6, v5

    iget v7, p0, Lcom/badlogic/gdx/utils/LongQueue;->b:I

    iget p1, p1, Lcom/badlogic/gdx/utils/LongQueue;->b:I

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v2, :cond_6

    aget-wide v9, v3, v7

    aget-wide v11, v5, p1

    cmp-long v13, v9, v11

    if-eqz v13, :cond_3

    return v1

    :cond_3
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 p1, p1, 0x1

    if-ne v7, v4, :cond_4

    const/4 v7, 0x0

    :cond_4
    if-ne p1, v6, :cond_5

    const/4 p1, 0x0

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_6
    return v0

    :cond_7
    :goto_1
    return v1
.end method

.method public first()J
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->a:[J

    iget v1, p0, Lcom/badlogic/gdx/utils/LongQueue;->b:I

    aget-wide v1, v0, v1

    return-wide v1

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Queue is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(I)J
    .locals 3

    if-ltz p1, :cond_2

    iget v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->a:[J

    iget v1, p0, Lcom/badlogic/gdx/utils/LongQueue;->b:I

    add-int/2addr v1, p1

    array-length p1, v0

    if-lt v1, p1, :cond_0

    array-length p1, v0

    sub-int/2addr v1, p1

    :cond_0
    aget-wide v1, v0, v1

    return-wide v1

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 11

    iget v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongQueue;->a:[J

    array-length v2, v1

    iget v3, p0, Lcom/badlogic/gdx/utils/LongQueue;->b:I

    add-int/lit8 v4, v0, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v0, :cond_1

    aget-wide v7, v1, v3

    const/16 v9, 0x20

    ushr-long v9, v7, v9

    xor-long/2addr v7, v9

    long-to-int v8, v7

    mul-int/lit8 v8, v8, 0x1f

    add-int/2addr v4, v8

    add-int/lit8 v3, v3, 0x1

    if-ne v3, v2, :cond_0

    const/4 v3, 0x0

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    return v4
.end method

.method public indexOf(J)I
    .locals 9

    iget v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->a:[J

    iget v2, p0, Lcom/badlogic/gdx/utils/LongQueue;->b:I

    iget v3, p0, Lcom/badlogic/gdx/utils/LongQueue;->c:I

    if-ge v2, v3, :cond_2

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_6

    aget-wide v5, v0, v4

    cmp-long v7, v5, p1

    if-nez v7, :cond_1

    sub-int/2addr v4, v2

    return v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    array-length v4, v0

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_4

    aget-wide v6, v0, v5

    cmp-long v8, v6, p1

    if-nez v8, :cond_3

    sub-int/2addr v5, v2

    return v5

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_6

    aget-wide v5, v0, v4

    cmp-long v7, v5, p1

    if-nez v7, :cond_5

    array-length p1, v0

    add-int/2addr v4, p1

    sub-int/2addr v4, v2

    return v4

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public last()J
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->a:[J

    iget v1, p0, Lcom/badlogic/gdx/utils/LongQueue;->c:I

    const/4 v2, -0x1

    add-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :cond_0
    aget-wide v1, v0, v1

    return-wide v1

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Queue is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notEmpty()Z
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeFirst()J
    .locals 5

    iget v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongQueue;->a:[J

    iget v2, p0, Lcom/badlogic/gdx/utils/LongQueue;->b:I

    aget-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/LongQueue;->b:I

    array-length v1, v1

    if-ne v2, v1, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/utils/LongQueue;->b:I

    :cond_0
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    return-wide v3

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Queue is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeIndex(I)J
    .locals 5

    if-ltz p1, :cond_4

    iget v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->a:[J

    iget v1, p0, Lcom/badlogic/gdx/utils/LongQueue;->b:I

    iget v2, p0, Lcom/badlogic/gdx/utils/LongQueue;->c:I

    add-int/2addr p1, v1

    if-ge v1, v2, :cond_0

    aget-wide v3, v0, p1

    add-int/lit8 v1, p1, 0x1

    sub-int/2addr v2, p1

    invoke-static {v0, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/badlogic/gdx/utils/LongQueue;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/badlogic/gdx/utils/LongQueue;->c:I

    goto :goto_0

    :cond_0
    array-length v3, v0

    if-lt p1, v3, :cond_1

    array-length v1, v0

    sub-int/2addr p1, v1

    aget-wide v3, v0, p1

    add-int/lit8 v1, p1, 0x1

    sub-int/2addr v2, p1

    invoke-static {v0, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/badlogic/gdx/utils/LongQueue;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/badlogic/gdx/utils/LongQueue;->c:I

    goto :goto_0

    :cond_1
    aget-wide v3, v0, p1

    add-int/lit8 v2, v1, 0x1

    sub-int/2addr p1, v1

    invoke-static {v0, v1, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/badlogic/gdx/utils/LongQueue;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/badlogic/gdx/utils/LongQueue;->b:I

    array-length v0, v0

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    iput p1, p0, Lcom/badlogic/gdx/utils/LongQueue;->b:I

    :cond_2
    :goto_0
    iget p1, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    return-wide v3

    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeLast()J
    .locals 5

    iget v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongQueue;->a:[J

    iget v2, p0, Lcom/badlogic/gdx/utils/LongQueue;->c:I

    const/4 v3, -0x1

    add-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    :cond_0
    aget-wide v3, v1, v2

    iput v2, p0, Lcom/badlogic/gdx/utils/LongQueue;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    return-wide v3

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Queue is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeValue(J)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongQueue;->indexOf(J)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/LongQueue;->removeIndex(I)J

    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    if-nez v0, :cond_0

    const-string v0, "[]"

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->a:[J

    iget v1, p0, Lcom/badlogic/gdx/utils/LongQueue;->b:I

    iget v2, p0, Lcom/badlogic/gdx/utils/LongQueue;->c:I

    new-instance v3, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v4, 0x40

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    const/16 v4, 0x5b

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    aget-wide v4, v0, v1

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(J)Lcom/badlogic/gdx/utils/StringBuilder;

    :goto_0
    add-int/lit8 v1, v1, 0x1

    array-length v4, v0

    rem-int/2addr v1, v4

    if-eq v1, v2, :cond_1

    const-string v4, ", "

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    aget-wide v5, v0, v1

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(J)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 v0, 0x5d

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    iget v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->size:I

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongQueue;->a:[J

    iget v1, p0, Lcom/badlogic/gdx/utils/LongQueue;->b:I

    iget v2, p0, Lcom/badlogic/gdx/utils/LongQueue;->c:I

    new-instance v3, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v4, 0x40

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    aget-wide v4, v0, v1

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(J)Lcom/badlogic/gdx/utils/StringBuilder;

    :goto_0
    add-int/lit8 v1, v1, 0x1

    array-length v4, v0

    rem-int/2addr v1, v4

    if-eq v1, v2, :cond_1

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    aget-wide v5, v0, v1

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(J)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
