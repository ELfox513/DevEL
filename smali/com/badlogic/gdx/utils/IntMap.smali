.class public Lcom/badlogic/gdx/utils/IntMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/IntMap$Keys;,
        Lcom/badlogic/gdx/utils/IntMap$Values;,
        Lcom/badlogic/gdx/utils/IntMap$Entries;,
        Lcom/badlogic/gdx/utils/IntMap$MapIterator;,
        Lcom/badlogic/gdx/utils/IntMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/utils/IntMap$Entry<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field public a:[I

.field public b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field public k:Z

.field public final p:F

.field public q:I

.field public r:I

.field public s:I

.field public size:I

.field public transient t:Lcom/badlogic/gdx/utils/IntMap$Entries;

.field public transient u:Lcom/badlogic/gdx/utils/IntMap$Entries;

.field public transient v:Lcom/badlogic/gdx/utils/IntMap$Values;

.field public transient w:Lcom/badlogic/gdx/utils/IntMap$Values;

.field public transient x:Lcom/badlogic/gdx/utils/IntMap$Keys;

.field public transient y:Lcom/badlogic/gdx/utils/IntMap$Keys;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x33

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IntMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const v0, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/IntMap;-><init>(IF)V

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

    iput p2, p0, Lcom/badlogic/gdx/utils/IntMap;->p:F

    invoke-static {p1, p2}, Lcom/badlogic/gdx/utils/ObjectSet;->k(IF)I

    move-result p1

    int-to-float v0, p1

    mul-float v0, v0, p2

    float-to-int p2, v0

    iput p2, p0, Lcom/badlogic/gdx/utils/IntMap;->q:I

    add-int/lit8 p2, p1, -0x1

    iput p2, p0, Lcom/badlogic/gdx/utils/IntMap;->s:I

    int-to-long v0, p2

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p2

    iput p2, p0, Lcom/badlogic/gdx/utils/IntMap;->r:I

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/badlogic/gdx/utils/IntMap;->a:[I

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/badlogic/gdx/utils/IntMap;->b:[Ljava/lang/Object;

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

.method public constructor <init>(Lcom/badlogic/gdx/utils/IntMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/IntMap<",
            "+TV;>;)V"
        }
    .end annotation

    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntMap;->a:[I

    array-length v0, v0

    int-to-float v0, v0

    iget v1, p1, Lcom/badlogic/gdx/utils/IntMap;->p:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IntMap;-><init>(IF)V

    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntMap;->a:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->a:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntMap;->b:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->b:[Ljava/lang/Object;

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntMap;->d:Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->d:Ljava/lang/Object;

    iget-boolean p1, p1, Lcom/badlogic/gdx/utils/IntMap;->k:Z

    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/IntMap;->k:Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->a:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->d:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntMap;->k:Z

    return-void
.end method

.method public clear(I)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->p:F

    invoke-static {p1, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->k(IF)I

    move-result p1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->a:[I

    array-length v0, v0

    if-gt v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntMap;->clear()V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntMap;->k:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->d:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->i(I)V

    return-void
.end method

.method public containsKey(I)Z
    .locals 0

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/badlogic/gdx/utils/IntMap;->k:Z

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->d(I)I

    move-result p1

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsValue(Ljava/lang/Object;Z)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->b:[Ljava/lang/Object;

    const/4 v1, 0x1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/badlogic/gdx/utils/IntMap;->k:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/badlogic/gdx/utils/IntMap;->d:Ljava/lang/Object;

    if-nez p1, :cond_0

    return v1

    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/utils/IntMap;->a:[I

    array-length p2, v0

    sub-int/2addr p2, v1

    :goto_0
    if-ltz p2, :cond_8

    aget v2, p1, p2

    if-eqz v2, :cond_1

    aget-object v2, v0, p2

    if-nez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/badlogic/gdx/utils/IntMap;->d:Ljava/lang/Object;

    if-ne p1, p2, :cond_3

    return v1

    :cond_3
    array-length p2, v0

    sub-int/2addr p2, v1

    :goto_1
    if-ltz p2, :cond_8

    aget-object v2, v0, p2

    if-ne v2, p1, :cond_4

    return v1

    :cond_4
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_5
    iget-boolean p2, p0, Lcom/badlogic/gdx/utils/IntMap;->k:Z

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/badlogic/gdx/utils/IntMap;->d:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    return v1

    :cond_6
    array-length p2, v0

    sub-int/2addr p2, v1

    :goto_2
    if-ltz p2, :cond_8

    aget-object v2, v0, p2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    return v1

    :cond_7
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public final d(I)I
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->a:[I

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->e(I)I

    move-result v1

    :goto_0
    aget v2, v0, v1

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    neg-int p1, v1

    return p1

    :cond_0
    if-ne v2, p1, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap;->s:I

    and-int/2addr v1, v2

    goto :goto_0
.end method

.method public e(I)I
    .locals 4

    int-to-long v0, p1

    const-wide v2, -0x61c8864680b583ebL

    mul-long v0, v0, v2

    iget p1, p0, Lcom/badlogic/gdx/utils/IntMap;->r:I

    ushr-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method public ensureCapacity(I)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/2addr v0, p1

    iget p1, p0, Lcom/badlogic/gdx/utils/IntMap;->p:F

    invoke-static {v0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->k(IF)I

    move-result p1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->a:[I

    array-length v0, v0

    if-ge v0, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->i(I)V

    :cond_0
    return-void
.end method

.method public entries()Lcom/badlogic/gdx/utils/IntMap$Entries;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/IntMap$Entries<",
            "TV;>;"
        }
    .end annotation

    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/IntMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntMap$Entries;-><init>(Lcom/badlogic/gdx/utils/IntMap;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->t:Lcom/badlogic/gdx/utils/IntMap$Entries;

    if-nez v0, :cond_1

    new-instance v0, Lcom/badlogic/gdx/utils/IntMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntMap$Entries;-><init>(Lcom/badlogic/gdx/utils/IntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->t:Lcom/badlogic/gdx/utils/IntMap$Entries;

    new-instance v0, Lcom/badlogic/gdx/utils/IntMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntMap$Entries;-><init>(Lcom/badlogic/gdx/utils/IntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->u:Lcom/badlogic/gdx/utils/IntMap$Entries;

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->t:Lcom/badlogic/gdx/utils/IntMap$Entries;

    iget-boolean v1, v0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->k:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap$Entries;->reset()V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->t:Lcom/badlogic/gdx/utils/IntMap$Entries;

    iput-boolean v3, v0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->k:Z

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->u:Lcom/badlogic/gdx/utils/IntMap$Entries;

    iput-boolean v2, v1, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->k:Z

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->u:Lcom/badlogic/gdx/utils/IntMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap$Entries;->reset()V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->u:Lcom/badlogic/gdx/utils/IntMap$Entries;

    iput-boolean v3, v0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->k:Z

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->t:Lcom/badlogic/gdx/utils/IntMap$Entries;

    iput-boolean v2, v1, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->k:Z

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/badlogic/gdx/utils/IntMap;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/badlogic/gdx/utils/IntMap;

    iget v1, p1, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iget v3, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p1, Lcom/badlogic/gdx/utils/IntMap;->k:Z

    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/IntMap;->k:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    if-eqz v3, :cond_5

    iget-object v1, p1, Lcom/badlogic/gdx/utils/IntMap;->d:Ljava/lang/Object;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->d:Ljava/lang/Object;

    if-eqz v1, :cond_5

    return v2

    :cond_4
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->d:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->a:[I

    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->b:[Ljava/lang/Object;

    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_8

    aget v6, v1, v5

    if-eqz v6, :cond_7

    aget-object v7, v3, v5

    if-nez v7, :cond_6

    sget-object v7, Lcom/badlogic/gdx/utils/ObjectMap;->x:Ljava/lang/Object;

    invoke-virtual {p1, v6, v7}, Lcom/badlogic/gdx/utils/IntMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_7

    return v2

    :cond_6
    invoke-virtual {p1, v6}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    return v2

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_8
    return v0
.end method

.method public equalsIdentity(Ljava/lang/Object;)Z
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/badlogic/gdx/utils/IntMap;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/badlogic/gdx/utils/IntMap;

    iget v1, p1, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iget v3, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p1, Lcom/badlogic/gdx/utils/IntMap;->k:Z

    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/IntMap;->k:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    if-eqz v3, :cond_4

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->d:Ljava/lang/Object;

    iget-object v3, p1, Lcom/badlogic/gdx/utils/IntMap;->d:Ljava/lang/Object;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->a:[I

    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->b:[Ljava/lang/Object;

    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_6

    aget v6, v1, v5

    if-eqz v6, :cond_5

    aget-object v7, v3, v5

    sget-object v8, Lcom/badlogic/gdx/utils/ObjectMap;->x:Ljava/lang/Object;

    invoke-virtual {p1, v6, v8}, Lcom/badlogic/gdx/utils/IntMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eq v7, v6, :cond_5

    return v2

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    return v0
.end method

.method public findKey(Ljava/lang/Object;ZI)I
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->b:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/badlogic/gdx/utils/IntMap;->k:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/badlogic/gdx/utils/IntMap;->d:Ljava/lang/Object;

    if-nez p1, :cond_0

    return v1

    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/utils/IntMap;->a:[I

    array-length p2, v0

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_8

    aget v1, p1, p2

    if-eqz v1, :cond_1

    aget-object v2, v0, p2

    if-nez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/badlogic/gdx/utils/IntMap;->d:Ljava/lang/Object;

    if-ne p1, p2, :cond_3

    return v1

    :cond_3
    array-length p2, v0

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_8

    aget-object v1, v0, p2

    if-ne v1, p1, :cond_4

    iget-object p1, p0, Lcom/badlogic/gdx/utils/IntMap;->a:[I

    aget p1, p1, p2

    return p1

    :cond_4
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_5
    iget-boolean p2, p0, Lcom/badlogic/gdx/utils/IntMap;->k:Z

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/badlogic/gdx/utils/IntMap;->d:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    return v1

    :cond_6
    array-length p2, v0

    add-int/lit8 p2, p2, -0x1

    :goto_2
    if-ltz p2, :cond_8

    aget-object v1, v0, p2

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object p1, p0, Lcom/badlogic/gdx/utils/IntMap;->a:[I

    aget p1, p1, p2

    return p1

    :cond_7
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_8
    return p3
.end method

.method public final g(ILjava/lang/Object;)V
    .locals 3
    .param p2    # Ljava/lang/Object;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->a:[I

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->e(I)I

    move-result v1

    :goto_0
    aget v2, v0, v1

    if-nez v2, :cond_0

    aput p1, v0, v1

    iget-object p1, p0, Lcom/badlogic/gdx/utils/IntMap;->b:[Ljava/lang/Object;

    aput-object p2, p1, v1

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap;->s:I

    and-int/2addr v1, v2

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/badlogic/gdx/utils/IntMap;->k:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->d:Ljava/lang/Object;

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->d(I)I

    move-result p1

    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->b:[Ljava/lang/Object;

    aget-object v0, v0, p1

    :cond_2
    return-object v0
.end method

.method public get(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/badlogic/gdx/utils/IntMap;->k:Z

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/badlogic/gdx/utils/IntMap;->d:Ljava/lang/Object;

    :cond_0
    return-object p2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->d(I)I

    move-result p1

    if-ltz p1, :cond_2

    iget-object p2, p0, Lcom/badlogic/gdx/utils/IntMap;->b:[Ljava/lang/Object;

    aget-object p2, p2, p1

    :cond_2
    return-object p2
.end method

.method public hashCode()I
    .locals 6

    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntMap;->k:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->d:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->a:[I

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->b:[Ljava/lang/Object;

    const/4 v3, 0x0

    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_2

    aget v5, v1, v3

    if-eqz v5, :cond_1

    mul-int/lit8 v5, v5, 0x1f

    add-int/2addr v0, v5

    aget-object v5, v2, v3

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    add-int/2addr v0, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final i(I)V
    .locals 5

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->a:[I

    array-length v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap;->p:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntMap;->q:I

    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntMap;->s:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntMap;->r:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->a:[I

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->b:[Ljava/lang/Object;

    new-array v3, p1, [I

    iput-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->a:[I

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/badlogic/gdx/utils/IntMap;->b:[Ljava/lang/Object;

    iget p1, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    if-lez p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_1

    aget v3, v1, p1

    if-eqz v3, :cond_0

    aget-object v4, v2, p1

    invoke-virtual {p0, v3, v4}, Lcom/badlogic/gdx/utils/IntMap;->g(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/badlogic/gdx/utils/IntMap$Entry<",
            "TV;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntMap;->entries()Lcom/badlogic/gdx/utils/IntMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lcom/badlogic/gdx/utils/IntMap$Keys;
    .locals 4

    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/IntMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntMap$Keys;-><init>(Lcom/badlogic/gdx/utils/IntMap;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->x:Lcom/badlogic/gdx/utils/IntMap$Keys;

    if-nez v0, :cond_1

    new-instance v0, Lcom/badlogic/gdx/utils/IntMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntMap$Keys;-><init>(Lcom/badlogic/gdx/utils/IntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->x:Lcom/badlogic/gdx/utils/IntMap$Keys;

    new-instance v0, Lcom/badlogic/gdx/utils/IntMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntMap$Keys;-><init>(Lcom/badlogic/gdx/utils/IntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->y:Lcom/badlogic/gdx/utils/IntMap$Keys;

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->x:Lcom/badlogic/gdx/utils/IntMap$Keys;

    iget-boolean v1, v0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->k:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap$Keys;->reset()V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->x:Lcom/badlogic/gdx/utils/IntMap$Keys;

    iput-boolean v3, v0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->k:Z

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->y:Lcom/badlogic/gdx/utils/IntMap$Keys;

    iput-boolean v2, v1, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->k:Z

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->y:Lcom/badlogic/gdx/utils/IntMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap$Keys;->reset()V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->y:Lcom/badlogic/gdx/utils/IntMap$Keys;

    iput-boolean v3, v0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->k:Z

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->x:Lcom/badlogic/gdx/utils/IntMap$Keys;

    iput-boolean v2, v1, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->k:Z

    return-object v0
.end method

.method public notEmpty()Z
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public put(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p2    # Ljava/lang/Object;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/badlogic/gdx/utils/IntMap;->d:Ljava/lang/Object;

    iput-object p2, p0, Lcom/badlogic/gdx/utils/IntMap;->d:Ljava/lang/Object;

    iget-boolean p2, p0, Lcom/badlogic/gdx/utils/IntMap;->k:Z

    if-nez p2, :cond_0

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntMap;->k:Z

    iget p2, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/2addr p2, v0

    iput p2, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    :cond_0
    return-object p1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->d(I)I

    move-result v1

    if-ltz v1, :cond_2

    iget-object p1, p0, Lcom/badlogic/gdx/utils/IntMap;->b:[Ljava/lang/Object;

    aget-object v0, p1, v1

    aput-object p2, p1, v1

    return-object v0

    :cond_2
    add-int/2addr v1, v0

    neg-int v1, v1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->a:[I

    aput p1, v2, v1

    iget-object p1, p0, Lcom/badlogic/gdx/utils/IntMap;->b:[Ljava/lang/Object;

    aput-object p2, p1, v1

    iget p1, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iget p2, p0, Lcom/badlogic/gdx/utils/IntMap;->q:I

    if-lt p1, p2, :cond_3

    array-length p1, v2

    shl-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->i(I)V

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public putAll(Lcom/badlogic/gdx/utils/IntMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/IntMap<",
            "+TV;>;)V"
        }
    .end annotation

    iget v0, p1, Lcom/badlogic/gdx/utils/IntMap;->size:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/IntMap;->ensureCapacity(I)V

    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/IntMap;->k:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntMap;->d:Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntMap;->a:[I

    iget-object p1, p1, Lcom/badlogic/gdx/utils/IntMap;->b:[Ljava/lang/Object;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_2

    aget v3, v0, v1

    if-eqz v3, :cond_1

    aget-object v4, p1, v1

    invoke-virtual {p0, v3, v4}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 10
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/badlogic/gdx/utils/IntMap;->k:Z

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntMap;->k:Z

    iget-object p1, p0, Lcom/badlogic/gdx/utils/IntMap;->d:Ljava/lang/Object;

    iput-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->d:Ljava/lang/Object;

    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    return-object p1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->d(I)I

    move-result p1

    if-gez p1, :cond_2

    return-object v1

    :cond_2
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->a:[I

    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->b:[Ljava/lang/Object;

    aget-object v4, v3, p1

    iget v5, p0, Lcom/badlogic/gdx/utils/IntMap;->s:I

    add-int/lit8 v6, p1, 0x1

    :goto_0
    and-int/2addr v6, v5

    aget v7, v2, v6

    if-eqz v7, :cond_4

    invoke-virtual {p0, v7}, Lcom/badlogic/gdx/utils/IntMap;->e(I)I

    move-result v8

    sub-int v9, v6, v8

    and-int/2addr v9, v5

    sub-int v8, p1, v8

    and-int/2addr v8, v5

    if-le v9, v8, :cond_3

    aput v7, v2, p1

    aget-object v7, v3, v6

    aput-object v7, v3, p1

    move p1, v6

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    aput v0, v2, p1

    aput-object v1, v3, p1

    iget p1, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    return-object v4
.end method

.method public shrink(I)V
    .locals 3

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->p:F

    invoke-static {p1, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->k(IF)I

    move-result p1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->a:[I

    array-length v0, v0

    if-le v0, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->i(I)V

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
    .locals 7

    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    if-nez v0, :cond_0

    const-string v0, "[]"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->a:[I

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->b:[Ljava/lang/Object;

    array-length v3, v1

    iget-boolean v4, p0, Lcom/badlogic/gdx/utils/IntMap;->k:Z

    const/16 v5, 0x3d

    if-eqz v4, :cond_1

    const-string v4, "0="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/badlogic/gdx/utils/IntMap;->d:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    :goto_0
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_3

    aget v3, v1, v4

    if-nez v3, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v3, v2, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    move v3, v4

    :goto_2
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_5

    aget v3, v1, v4

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v3, v2, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Lcom/badlogic/gdx/utils/IntMap$Values;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/IntMap$Values<",
            "TV;>;"
        }
    .end annotation

    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/IntMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntMap$Values;-><init>(Lcom/badlogic/gdx/utils/IntMap;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->v:Lcom/badlogic/gdx/utils/IntMap$Values;

    if-nez v0, :cond_1

    new-instance v0, Lcom/badlogic/gdx/utils/IntMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntMap$Values;-><init>(Lcom/badlogic/gdx/utils/IntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->v:Lcom/badlogic/gdx/utils/IntMap$Values;

    new-instance v0, Lcom/badlogic/gdx/utils/IntMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntMap$Values;-><init>(Lcom/badlogic/gdx/utils/IntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->w:Lcom/badlogic/gdx/utils/IntMap$Values;

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->v:Lcom/badlogic/gdx/utils/IntMap$Values;

    iget-boolean v1, v0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->k:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap$Values;->reset()V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->v:Lcom/badlogic/gdx/utils/IntMap$Values;

    iput-boolean v3, v0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->k:Z

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->w:Lcom/badlogic/gdx/utils/IntMap$Values;

    iput-boolean v2, v1, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->k:Z

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->w:Lcom/badlogic/gdx/utils/IntMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap$Values;->reset()V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->w:Lcom/badlogic/gdx/utils/IntMap$Values;

    iput-boolean v3, v0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->k:Z

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->v:Lcom/badlogic/gdx/utils/IntMap$Values;

    iput-boolean v2, v1, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->k:Z

    return-object v0
.end method
