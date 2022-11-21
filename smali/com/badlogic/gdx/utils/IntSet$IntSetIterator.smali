.class public Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/IntSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntSetIterator"
.end annotation


# instance fields
.field public final a:Lcom/badlogic/gdx/utils/IntSet;

.field public b:I

.field public c:I

.field public d:Z

.field public hasNext:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/IntSet;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->d:Z

    iput-object p1, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->a:Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->reset()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->a:Lcom/badlogic/gdx/utils/IntSet;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/IntSet;->a:[I

    array-length v1, v0

    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->b:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->b:I

    if-ge v2, v1, :cond_1

    aget v2, v0, v2

    if-eqz v2, :cond_0

    iput-boolean v3, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->hasNext:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->hasNext:Z

    return-void
.end method

.method public next()I
    .locals 2

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->hasNext:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->d:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->a:Lcom/badlogic/gdx/utils/IntSet;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/IntSet;->a:[I

    aget v1, v1, v0

    :goto_0
    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->c:I

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->a()V

    return v1

    :cond_1
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 8

    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->c:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->a:Lcom/badlogic/gdx/utils/IntSet;

    iget-boolean v3, v2, Lcom/badlogic/gdx/utils/IntSet;->b:Z

    if-eqz v3, :cond_0

    iput-boolean v1, v2, Lcom/badlogic/gdx/utils/IntSet;->b:Z

    goto :goto_1

    :cond_0
    if-ltz v0, :cond_4

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->a:Lcom/badlogic/gdx/utils/IntSet;

    iget-object v3, v2, Lcom/badlogic/gdx/utils/IntSet;->a:[I

    iget v2, v2, Lcom/badlogic/gdx/utils/IntSet;->f:I

    add-int/lit8 v4, v0, 0x1

    :goto_0
    and-int/2addr v4, v2

    aget v5, v3, v4

    if-eqz v5, :cond_2

    iget-object v6, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->a:Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/utils/IntSet;->c(I)I

    move-result v6

    sub-int v7, v4, v6

    and-int/2addr v7, v2

    sub-int v6, v0, v6

    and-int/2addr v6, v2

    if-le v7, v6, :cond_1

    aput v5, v3, v0

    move v0, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    aput v1, v3, v0

    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->c:I

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->b:I

    :cond_3
    :goto_1
    const/4 v0, -0x2

    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->c:I

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->a:Lcom/badlogic/gdx/utils/IntSet;

    iget v1, v0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next must be called before remove."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public reset()V
    .locals 1

    const/4 v0, -0x2

    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->c:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->b:I

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->a:Lcom/badlogic/gdx/utils/IntSet;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntSet;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->hasNext:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->a()V

    :goto_0
    return-void
.end method

.method public toArray()Lcom/badlogic/gdx/utils/IntArray;
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->a:Lcom/badlogic/gdx/utils/IntSet;

    iget v1, v1, Lcom/badlogic/gdx/utils/IntSet;->size:I

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/badlogic/gdx/utils/IntArray;-><init>(ZI)V

    :goto_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->hasNext:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->next()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    goto :goto_0

    :cond_0
    return-object v0
.end method
