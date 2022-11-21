.class Lcom/badlogic/gdx/utils/IntMap$MapIterator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/IntMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap<",
            "TV;>;"
        }
    .end annotation
.end field

.field public b:I

.field public d:I

.field public hasNext:Z

.field public k:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/IntMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/IntMap<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->k:Z

    iput-object p1, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->a:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->reset()V

    return-void
.end method


# virtual methods
.method e()V
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->a:Lcom/badlogic/gdx/utils/IntMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/IntMap;->a:[I

    array-length v1, v0

    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->b:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->b:I

    if-ge v2, v1, :cond_1

    aget v2, v0, v2

    if-eqz v2, :cond_0

    iput-boolean v3, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->hasNext:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->hasNext:Z

    return-void
.end method

.method public remove()V
    .locals 10

    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->d:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->a:Lcom/badlogic/gdx/utils/IntMap;

    iget-boolean v4, v3, Lcom/badlogic/gdx/utils/IntMap;->k:Z

    if-eqz v4, :cond_0

    iput-boolean v2, v3, Lcom/badlogic/gdx/utils/IntMap;->k:Z

    iput-object v1, v3, Lcom/badlogic/gdx/utils/IntMap;->d:Ljava/lang/Object;

    goto :goto_1

    :cond_0
    if-ltz v0, :cond_4

    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->a:Lcom/badlogic/gdx/utils/IntMap;

    iget-object v4, v3, Lcom/badlogic/gdx/utils/IntMap;->a:[I

    iget-object v5, v3, Lcom/badlogic/gdx/utils/IntMap;->b:[Ljava/lang/Object;

    iget v3, v3, Lcom/badlogic/gdx/utils/IntMap;->s:I

    add-int/lit8 v6, v0, 0x1

    :goto_0
    and-int/2addr v6, v3

    aget v7, v4, v6

    if-eqz v7, :cond_2

    iget-object v8, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->a:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/utils/IntMap;->e(I)I

    move-result v8

    sub-int v9, v6, v8

    and-int/2addr v9, v3

    sub-int v8, v0, v8

    and-int/2addr v8, v3

    if-le v9, v8, :cond_1

    aput v7, v4, v0

    aget-object v7, v5, v6

    aput-object v7, v5, v0

    move v0, v6

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    aput v2, v4, v0

    aput-object v1, v5, v0

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->d:I

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->b:I

    :cond_3
    :goto_1
    const/4 v0, -0x2

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->d:I

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->a:Lcom/badlogic/gdx/utils/IntMap;

    iget v1, v0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/badlogic/gdx/utils/IntMap;->size:I

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

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->d:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->b:I

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->a:Lcom/badlogic/gdx/utils/IntMap;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntMap;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->hasNext:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->e()V

    :goto_0
    return-void
.end method
