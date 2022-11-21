.class Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/IntFloatMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MapIterator"
.end annotation


# instance fields
.field public final a:Lcom/badlogic/gdx/utils/IntFloatMap;

.field public b:I

.field public d:I

.field public hasNext:Z

.field public k:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->k:Z

    iput-object p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->a:Lcom/badlogic/gdx/utils/IntFloatMap;

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->reset()V

    return-void
.end method


# virtual methods
.method e()V
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->a:Lcom/badlogic/gdx/utils/IntFloatMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/IntFloatMap;->a:[I

    array-length v1, v0

    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->b:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->b:I

    if-ge v2, v1, :cond_1

    aget v2, v0, v2

    if-eqz v2, :cond_0

    iput-boolean v3, p0, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->hasNext:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->hasNext:Z

    return-void
.end method

.method public remove()V
    .locals 9

    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->d:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->a:Lcom/badlogic/gdx/utils/IntFloatMap;

    iget-boolean v3, v2, Lcom/badlogic/gdx/utils/IntFloatMap;->k:Z

    if-eqz v3, :cond_0

    iput-boolean v1, v2, Lcom/badlogic/gdx/utils/IntFloatMap;->k:Z

    goto :goto_1

    :cond_0
    if-ltz v0, :cond_4

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->a:Lcom/badlogic/gdx/utils/IntFloatMap;

    iget-object v3, v2, Lcom/badlogic/gdx/utils/IntFloatMap;->a:[I

    iget-object v4, v2, Lcom/badlogic/gdx/utils/IntFloatMap;->b:[F

    iget v2, v2, Lcom/badlogic/gdx/utils/IntFloatMap;->s:I

    add-int/lit8 v5, v0, 0x1

    :goto_0
    and-int/2addr v5, v2

    aget v6, v3, v5

    if-eqz v6, :cond_2

    iget-object v7, p0, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->a:Lcom/badlogic/gdx/utils/IntFloatMap;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/utils/IntFloatMap;->e(I)I

    move-result v7

    sub-int v8, v5, v7

    and-int/2addr v8, v2

    sub-int v7, v0, v7

    and-int/2addr v7, v2

    if-le v8, v7, :cond_1

    aput v6, v3, v0

    aget v6, v4, v5

    aput v6, v4, v0

    move v0, v5

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    aput v1, v3, v0

    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->d:I

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->b:I

    :cond_3
    :goto_1
    const/4 v0, -0x2

    iput v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->d:I

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->a:Lcom/badlogic/gdx/utils/IntFloatMap;

    iget v1, v0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

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

    iput v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->d:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->b:I

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->a:Lcom/badlogic/gdx/utils/IntFloatMap;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntFloatMap;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->hasNext:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->e()V

    :goto_0
    return-void
.end method
