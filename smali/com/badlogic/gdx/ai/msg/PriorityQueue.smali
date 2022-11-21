.class public Lcom/badlogic/gdx/ai/msg/PriorityQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Ljava/lang/Comparable<",
        "TE;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:[Ljava/lang/Object;

.field public b:Lcom/badlogic/gdx/utils/ObjectSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectSet<",
            "TE;>;"
        }
    .end annotation
.end field

.field public c:Z

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/ai/msg/PriorityQueue;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/ai/msg/PriorityQueue;->d:I

    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/ai/msg/PriorityQueue;->a:[Ljava/lang/Object;

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/ai/msg/PriorityQueue;->b:Lcom/badlogic/gdx/utils/ObjectSet;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    if-ltz p1, :cond_3

    iget-object v0, p0, Lcom/badlogic/gdx/ai/msg/PriorityQueue;->a:[Ljava/lang/Object;

    array-length v1, v0

    const/16 v2, 0x40

    if-ge v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    goto :goto_0

    :cond_0
    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-int v1, v1

    if-gez v1, :cond_1

    const v1, 0x7fffffff

    :cond_1
    if-ge v1, p1, :cond_2

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    new-array p1, p1, [Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/ai/msg/PriorityQueue;->d:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lcom/badlogic/gdx/ai/msg/PriorityQueue;->a:[Ljava/lang/Object;

    return-void

    :cond_3
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "Capacity upper limit exceeded."

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public add(Ljava/lang/Comparable;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/badlogic/gdx/ai/msg/PriorityQueue;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/ai/msg/PriorityQueue;->b:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/ai/msg/PriorityQueue;->d:I

    iget-object v2, p0, Lcom/badlogic/gdx/ai/msg/PriorityQueue;->a:[Ljava/lang/Object;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/ai/msg/PriorityQueue;->a(I)V

    :cond_1
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/badlogic/gdx/ai/msg/PriorityQueue;->d:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/ai/msg/PriorityQueue;->a:[Ljava/lang/Object;

    aput-object p1, v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/ai/msg/PriorityQueue;->c(ILjava/lang/Comparable;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Element cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(ILjava/lang/Comparable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    iget v0, p0, Lcom/badlogic/gdx/ai/msg/PriorityQueue;->d:I

    ushr-int/lit8 v0, v0, 0x1

    :goto_0
    if-ge p1, v0, :cond_2

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/badlogic/gdx/ai/msg/PriorityQueue;->a:[Ljava/lang/Object;

    aget-object v3, v2, v1

    check-cast v3, Ljava/lang/Comparable;

    add-int/lit8 v4, v1, 0x1

    iget v5, p0, Lcom/badlogic/gdx/ai/msg/PriorityQueue;->d:I

    if-ge v4, v5, :cond_0

    aget-object v2, v2, v4

    check-cast v2, Ljava/lang/Comparable;

    invoke-interface {v3, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/ai/msg/PriorityQueue;->a:[Ljava/lang/Object;

    aget-object v1, v1, v4

    move-object v3, v1

    check-cast v3, Ljava/lang/Comparable;

    move v1, v4

    :cond_0
    invoke-interface {p2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/ai/msg/PriorityQueue;->a:[Ljava/lang/Object;

    aput-object v3, v2, p1

    move p1, v1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/badlogic/gdx/ai/msg/PriorityQueue;->a:[Ljava/lang/Object;

    aput-object p2, v0, p1

    return-void
.end method

.method public final c(ILjava/lang/Comparable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    :goto_0
    if-lez p1, :cond_1

    add-int/lit8 v0, p1, -0x1

    ushr-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/badlogic/gdx/ai/msg/PriorityQueue;->a:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Ljava/lang/Comparable;

    invoke-interface {p2, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/ai/msg/PriorityQueue;->a:[Ljava/lang/Object;

    aput-object v1, v2, p1

    move p1, v0

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/badlogic/gdx/ai/msg/PriorityQueue;->a:[Ljava/lang/Object;

    aput-object p2, v0, p1

    return-void
.end method

.method public clear()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/badlogic/gdx/ai/msg/PriorityQueue;->d:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/ai/msg/PriorityQueue;->a:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/badlogic/gdx/ai/msg/PriorityQueue;->d:I

    iget-object v0, p0, Lcom/badlogic/gdx/ai/msg/PriorityQueue;->b:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectSet;->clear()V

    return-void
.end method

.method public get(I)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget v0, p0, Lcom/badlogic/gdx/ai/msg/PriorityQueue;->d:I

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/ai/msg/PriorityQueue;->a:[Ljava/lang/Object;

    aget-object p1, v0, p1

    check-cast p1, Ljava/lang/Comparable;

    :goto_0
    return-object p1
.end method

.method public getUniqueness()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/ai/msg/PriorityQueue;->c:Z

    return v0
.end method

.method public peek()Ljava/lang/Comparable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget v0, p0, Lcom/badlogic/gdx/ai/msg/PriorityQueue;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/ai/msg/PriorityQueue;->a:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Comparable;

    :goto_0
    return-object v0
.end method

.method public poll()Ljava/lang/Comparable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget v0, p0, Lcom/badlogic/gdx/ai/msg/PriorityQueue;->d:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/ai/msg/PriorityQueue;->d:I

    iget-object v2, p0, Lcom/badlogic/gdx/ai/msg/PriorityQueue;->a:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v4, v2, v3

    check-cast v4, Ljava/lang/Comparable;

    aget-object v5, v2, v0

    check-cast v5, Ljava/lang/Comparable;

    aput-object v1, v2, v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3, v5}, Lcom/badlogic/gdx/ai/msg/PriorityQueue;->b(ILjava/lang/Comparable;)V

    :cond_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/ai/msg/PriorityQueue;->c:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/ai/msg/PriorityQueue;->b:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/ObjectSet;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-object v4
.end method

.method public setUniqueness(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/ai/msg/PriorityQueue;->c:Z

    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/msg/PriorityQueue;->d:I

    return v0
.end method
