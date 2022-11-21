.class public Lcom/esotericsoftware/kryo/util/ObjectIntMap$Values;
.super Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/util/ObjectIntMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/util/ObjectIntMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/util/ObjectIntMap<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;-><init>(Lcom/esotericsoftware/kryo/util/ObjectIntMap;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->hasNext:Z

    return v0

    :cond_0
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public iterator()Lcom/esotericsoftware/kryo/util/ObjectIntMap$Values;
    .locals 0

    return-object p0
.end method

.method public next()I
    .locals 2

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->hasNext:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->a:Lcom/esotericsoftware/kryo/util/ObjectIntMap;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->b:[I

    iget v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->b:I

    aget v0, v0, v1

    iput v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->d:I

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->e()V

    return v0

    :cond_0
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    invoke-super {p0}, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    invoke-super {p0}, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->reset()V

    return-void
.end method

.method public toArray()Lcom/esotericsoftware/kryo/util/IntArray;
    .locals 3

    new-instance v0, Lcom/esotericsoftware/kryo/util/IntArray;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->a:Lcom/esotericsoftware/kryo/util/ObjectIntMap;

    iget v1, v1, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->size:I

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/esotericsoftware/kryo/util/IntArray;-><init>(ZI)V

    :goto_0
    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->hasNext:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Values;->next()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/util/IntArray;->add(I)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toArray(Lcom/esotericsoftware/kryo/util/IntArray;)Lcom/esotericsoftware/kryo/util/IntArray;
    .locals 1

    :goto_0
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;->hasNext:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Values;->next()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/util/IntArray;->add(I)V

    goto :goto_0

    :cond_0
    return-object p1
.end method
