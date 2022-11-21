.class public Lcom/badlogic/gdx/utils/ObjectLongMap$Values;
.super Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/ObjectLongMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/ObjectLongMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectLongMap<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;-><init>(Lcom/badlogic/gdx/utils/ObjectLongMap;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->hasNext:Z

    return v0

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public iterator()Lcom/badlogic/gdx/utils/ObjectLongMap$Values;
    .locals 0

    return-object p0
.end method

.method public next()J
    .locals 4

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->hasNext:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->a:Lcom/badlogic/gdx/utils/ObjectLongMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ObjectLongMap;->b:[J

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->b:I

    aget-wide v2, v0, v1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->d:I

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->e()V

    return-wide v2

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->reset()V

    return-void
.end method

.method public toArray()Lcom/badlogic/gdx/utils/LongArray;
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/utils/LongArray;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->a:Lcom/badlogic/gdx/utils/ObjectLongMap;

    iget v1, v1, Lcom/badlogic/gdx/utils/ObjectLongMap;->size:I

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/badlogic/gdx/utils/LongArray;-><init>(ZI)V

    :goto_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->hasNext:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectLongMap$Values;->next()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/LongArray;->add(J)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toArray(Lcom/badlogic/gdx/utils/LongArray;)Lcom/badlogic/gdx/utils/LongArray;
    .locals 2

    :goto_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->hasNext:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectLongMap$Values;->next()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/LongArray;->add(J)V

    goto :goto_0

    :cond_0
    return-object p1
.end method
