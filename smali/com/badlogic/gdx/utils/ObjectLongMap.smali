.class public Lcom/badlogic/gdx/utils/ObjectLongMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/ObjectLongMap$Keys;,
        Lcom/badlogic/gdx/utils/ObjectLongMap$Values;,
        Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;,
        Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;,
        Lcom/badlogic/gdx/utils/ObjectLongMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/utils/ObjectLongMap$Entry<",
        "TK;>;>;"
    }
.end annotation


# instance fields
.field public a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field public b:[J

.field public d:F

.field public k:I

.field public p:I

.field public q:I

.field public transient r:Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;

.field public transient s:Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;

.field public size:I

.field public transient t:Lcom/badlogic/gdx/utils/ObjectLongMap$Values;

.field public transient u:Lcom/badlogic/gdx/utils/ObjectLongMap$Values;

.field public transient v:Lcom/badlogic/gdx/utils/ObjectLongMap$Keys;

.field public transient w:Lcom/badlogic/gdx/utils/ObjectLongMap$Keys;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x33

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/ObjectLongMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const v0, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/ObjectLongMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-gez v0, :cond_0

    iput p2, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->d:F

    invoke-static {p1, p2}, Lcom/badlogic/gdx/utils/ObjectSet;->k(IF)I

    move-result p1

    int-to-float v0, p1

    mul-float v0, v0, p2

    float-to-int p2, v0

    iput p2, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->k:I

    add-int/lit8 p2, p1, -0x1

    iput p2, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->q:I

    int-to-long v0, p2

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p2

    iput p2, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->p:I

    new-array p2, p1, [Ljava/lang/Object;

    iput-object p2, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->a:[Ljava/lang/Object;

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->b:[J

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadFactor must be > 0 and < 1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/ObjectLongMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectLongMap<",
            "+TK;>;)V"
        }
    .end annotation

    iget-object v0, p1, Lcom/badlogic/gdx/utils/ObjectLongMap;->a:[Ljava/lang/Object;

    array-length v0, v0

    int-to-float v0, v0

    iget v1, p1, Lcom/badlogic/gdx/utils/ObjectLongMap;->d:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/ObjectLongMap;-><init>(IF)V

    iget-object v0, p1, Lcom/badlogic/gdx/utils/ObjectLongMap;->a:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->a:[Ljava/lang/Object;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/badlogic/gdx/utils/ObjectLongMap;->b:[J

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->b:[J

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p1, Lcom/badlogic/gdx/utils/ObjectLongMap;->size:I

    iput p1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->size:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->size:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->size:I

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->a:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public clear(I)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->d:F

    invoke-static {p1, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->k(IF)I

    move-result p1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->a:[Ljava/lang/Object;

    array-length v0, v0

    if-gt v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectLongMap;->clear()V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->size:I

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectLongMap;->i(I)V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectLongMap;->d(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsValue(J)Z
    .locals 7

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->a:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->b:[J

    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_1

    aget-object v4, v0, v2

    if-eqz v4, :cond_0

    aget-wide v4, v1, v2

    cmp-long v6, v4, p1

    if-nez v6, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public d(Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->a:[Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectLongMap;->e(Ljava/lang/Object;)I

    move-result v1

    :goto_0
    aget-object v2, v0, v1

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    neg-int p1, v1

    return p1

    :cond_0
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->q:I

    and-int/2addr v1, v2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "key cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public e(Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    const-wide v2, -0x61c8864680b583ebL

    mul-long v0, v0, v2

    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->p:I

    ushr-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method public ensureCapacity(I)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->size:I

    add-int/2addr v0, p1

    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->d:F

    invoke-static {v0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->k(IF)I

    move-result p1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->a:[Ljava/lang/Object;

    array-length v0, v0

    if-ge v0, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectLongMap;->i(I)V

    :cond_0
    return-void
.end method

.method public entries()Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectLongMap$Entries<",
            "TK;>;"
        }
    .end annotation

    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;-><init>(Lcom/badlogic/gdx/utils/ObjectLongMap;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->r:Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;

    if-nez v0, :cond_1

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;-><init>(Lcom/badlogic/gdx/utils/ObjectLongMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->r:Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;-><init>(Lcom/badlogic/gdx/utils/ObjectLongMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->s:Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->r:Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;

    iget-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->k:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->reset()V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->r:Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;

    iput-boolean v3, v0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->k:Z

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->s:Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;

    iput-boolean v2, v1, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->k:Z

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->s:Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->reset()V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->s:Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;

    iput-boolean v3, v0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->k:Z

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->r:Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;

    iput-boolean v2, v1, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->k:Z

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 12

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/badlogic/gdx/utils/ObjectLongMap;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/badlogic/gdx/utils/ObjectLongMap;

    iget v1, p1, Lcom/badlogic/gdx/utils/ObjectLongMap;->size:I

    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->size:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->a:[Ljava/lang/Object;

    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->b:[J

    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_5

    aget-object v6, v1, v5

    if-eqz v6, :cond_4

    const-wide/16 v7, 0x0

    invoke-virtual {p1, v6, v7, v8}, Lcom/badlogic/gdx/utils/ObjectLongMap;->get(Ljava/lang/Object;J)J

    move-result-wide v9

    cmp-long v11, v9, v7

    if-nez v11, :cond_3

    invoke-virtual {p1, v6}, Lcom/badlogic/gdx/utils/ObjectLongMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    return v2

    :cond_3
    aget-wide v6, v3, v5

    cmp-long v8, v9, v6

    if-eqz v8, :cond_4

    return v2

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method public findKey(J)Ljava/lang/Object;
    .locals 7
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->a:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->b:[J

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    aget-wide v4, v1, v2

    cmp-long v6, v4, p1

    if-nez v6, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final g(Ljava/lang/Object;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->a:[Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectLongMap;->e(Ljava/lang/Object;)I

    move-result v1

    :goto_0
    aget-object v2, v0, v1

    if-nez v2, :cond_0

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->b:[J

    aput-wide p2, p1, v1

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->q:I

    and-int/2addr v1, v2

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)J"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectLongMap;->d(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->b:[J

    aget-wide p1, p2, p1

    move-wide p2, p1

    :goto_0
    return-wide p2
.end method

.method public getAndIncrement(Ljava/lang/Object;JJ)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;JJ)J"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectLongMap;->d(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->b:[J

    aget-wide p2, p1, v0

    add-long/2addr p4, p2

    aput-wide p4, p1, v0

    return-wide p2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->a:[Ljava/lang/Object;

    aput-object p1, v1, v0

    iget-object p1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->b:[J

    add-long/2addr p4, p2

    aput-wide p4, p1, v0

    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->size:I

    iget p4, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->k:I

    if-lt p1, p4, :cond_1

    array-length p1, v1

    shl-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectLongMap;->i(I)V

    :cond_1
    return-wide p2
.end method

.method public hashCode()I
    .locals 12

    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->size:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->a:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->b:[J

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    if-eqz v5, :cond_0

    int-to-long v6, v0

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v8, v0

    aget-wide v10, v2, v4

    add-long/2addr v8, v10

    add-long/2addr v6, v8

    long-to-int v0, v6

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final i(I)V
    .locals 6

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->a:[Ljava/lang/Object;

    array-length v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->d:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->k:I

    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->q:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->p:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->a:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->b:[J

    new-array v3, p1, [Ljava/lang/Object;

    iput-object v3, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->a:[Ljava/lang/Object;

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->b:[J

    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->size:I

    if-lez p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_1

    aget-object v3, v1, p1

    if-eqz v3, :cond_0

    aget-wide v4, v2, p1

    invoke-virtual {p0, v3, v4, v5}, Lcom/badlogic/gdx/utils/ObjectLongMap;->g(Ljava/lang/Object;J)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectLongMap$Entries<",
            "TK;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectLongMap;->entries()Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectLongMap;->iterator()Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public final k(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8

    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->size:I

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const-string p1, "{}"

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz p2, :cond_2

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->a:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->b:[J

    array-length v3, v1

    :goto_1
    add-int/lit8 v4, v3, -0x1

    const/16 v5, 0x3d

    if-lez v3, :cond_4

    aget-object v3, v1, v4

    if-nez v3, :cond_3

    move v3, v4

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-wide v6, v2, v4

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_4
    :goto_2
    add-int/lit8 v3, v4, -0x1

    if-lez v4, :cond_6

    aget-object v4, v1, v3

    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-wide v6, v2, v3

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_3
    move v4, v3

    goto :goto_2

    :cond_6
    if-eqz p2, :cond_7

    const/16 p1, 0x7d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public keys()Lcom/badlogic/gdx/utils/ObjectLongMap$Keys;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectLongMap$Keys<",
            "TK;>;"
        }
    .end annotation

    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectLongMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectLongMap$Keys;-><init>(Lcom/badlogic/gdx/utils/ObjectLongMap;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->v:Lcom/badlogic/gdx/utils/ObjectLongMap$Keys;

    if-nez v0, :cond_1

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectLongMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectLongMap$Keys;-><init>(Lcom/badlogic/gdx/utils/ObjectLongMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->v:Lcom/badlogic/gdx/utils/ObjectLongMap$Keys;

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectLongMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectLongMap$Keys;-><init>(Lcom/badlogic/gdx/utils/ObjectLongMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->w:Lcom/badlogic/gdx/utils/ObjectLongMap$Keys;

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->v:Lcom/badlogic/gdx/utils/ObjectLongMap$Keys;

    iget-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->k:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectLongMap$Keys;->reset()V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->v:Lcom/badlogic/gdx/utils/ObjectLongMap$Keys;

    iput-boolean v3, v0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->k:Z

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->w:Lcom/badlogic/gdx/utils/ObjectLongMap$Keys;

    iput-boolean v2, v1, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->k:Z

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->w:Lcom/badlogic/gdx/utils/ObjectLongMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectLongMap$Keys;->reset()V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->w:Lcom/badlogic/gdx/utils/ObjectLongMap$Keys;

    iput-boolean v3, v0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->k:Z

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->v:Lcom/badlogic/gdx/utils/ObjectLongMap$Keys;

    iput-boolean v2, v1, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->k:Z

    return-object v0
.end method

.method public notEmpty()Z
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public put(Ljava/lang/Object;JJ)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;JJ)J"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectLongMap;->d(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->b:[J

    aget-wide p4, p1, v0

    aput-wide p2, p1, v0

    return-wide p4

    :cond_0
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->a:[Ljava/lang/Object;

    aput-object p1, v1, v0

    iget-object p1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->b:[J

    aput-wide p2, p1, v0

    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->size:I

    iget p2, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->k:I

    if-lt p1, p2, :cond_1

    array-length p1, v1

    shl-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectLongMap;->i(I)V

    :cond_1
    return-wide p4
.end method

.method public put(Ljava/lang/Object;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectLongMap;->d(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->b:[J

    aput-wide p2, p1, v0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->a:[Ljava/lang/Object;

    aput-object p1, v1, v0

    iget-object p1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->b:[J

    aput-wide p2, p1, v0

    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->size:I

    iget p2, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->k:I

    if-lt p1, p2, :cond_1

    array-length p1, v1

    shl-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectLongMap;->i(I)V

    :cond_1
    return-void
.end method

.method public putAll(Lcom/badlogic/gdx/utils/ObjectLongMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectLongMap<",
            "+TK;>;)V"
        }
    .end annotation

    iget v0, p1, Lcom/badlogic/gdx/utils/ObjectLongMap;->size:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ObjectLongMap;->ensureCapacity(I)V

    iget-object v0, p1, Lcom/badlogic/gdx/utils/ObjectLongMap;->a:[Ljava/lang/Object;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/ObjectLongMap;->b:[J

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    aget-wide v4, p1, v2

    invoke-virtual {p0, v3, v4, v5}, Lcom/badlogic/gdx/utils/ObjectLongMap;->put(Ljava/lang/Object;J)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public remove(Ljava/lang/Object;J)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)J"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectLongMap;->d(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    return-wide p2

    :cond_0
    iget-object p2, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->a:[Ljava/lang/Object;

    iget-object p3, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->b:[J

    aget-wide v0, p3, p1

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->q:I

    add-int/lit8 v3, p1, 0x1

    :goto_0
    and-int/2addr v3, v2

    aget-object v4, p2, v3

    if-eqz v4, :cond_2

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/utils/ObjectLongMap;->e(Ljava/lang/Object;)I

    move-result v5

    sub-int v6, v3, v5

    and-int/2addr v6, v2

    sub-int v5, p1, v5

    and-int/2addr v5, v2

    if-le v6, v5, :cond_1

    aput-object v4, p2, p1

    aget-wide v4, p3, v3

    aput-wide v4, p3, p1

    move p1, v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    aput-object p3, p2, p1

    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->size:I

    return-wide v0
.end method

.method public shrink(I)V
    .locals 3

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->d:F

    invoke-static {p1, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->k(IF)I

    move-result p1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->a:[Ljava/lang/Object;

    array-length v0, v0

    if-le v0, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectLongMap;->i(I)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maximumCapacity must be >= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, ", "

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/utils/ObjectLongMap;->k(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/ObjectLongMap;->k(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public values()Lcom/badlogic/gdx/utils/ObjectLongMap$Values;
    .locals 4

    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectLongMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectLongMap$Values;-><init>(Lcom/badlogic/gdx/utils/ObjectLongMap;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->t:Lcom/badlogic/gdx/utils/ObjectLongMap$Values;

    if-nez v0, :cond_1

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectLongMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectLongMap$Values;-><init>(Lcom/badlogic/gdx/utils/ObjectLongMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->t:Lcom/badlogic/gdx/utils/ObjectLongMap$Values;

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectLongMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectLongMap$Values;-><init>(Lcom/badlogic/gdx/utils/ObjectLongMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->u:Lcom/badlogic/gdx/utils/ObjectLongMap$Values;

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->t:Lcom/badlogic/gdx/utils/ObjectLongMap$Values;

    iget-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->k:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectLongMap$Values;->reset()V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->t:Lcom/badlogic/gdx/utils/ObjectLongMap$Values;

    iput-boolean v3, v0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->k:Z

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->u:Lcom/badlogic/gdx/utils/ObjectLongMap$Values;

    iput-boolean v2, v1, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->k:Z

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->u:Lcom/badlogic/gdx/utils/ObjectLongMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectLongMap$Values;->reset()V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->u:Lcom/badlogic/gdx/utils/ObjectLongMap$Values;

    iput-boolean v3, v0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->k:Z

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->t:Lcom/badlogic/gdx/utils/ObjectLongMap$Values;

    iput-boolean v2, v1, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->k:Z

    return-object v0
.end method
