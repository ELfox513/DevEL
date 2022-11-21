.class public Lcom/esotericsoftware/jsonbeans/ObjectMap$Keys;
.super Lcom/esotericsoftware/jsonbeans/ObjectMap$MapIterator;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/jsonbeans/ObjectMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Keys"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/esotericsoftware/jsonbeans/ObjectMap$MapIterator<",
        "TK;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Iterable<",
        "TK;>;",
        "Ljava/util/Iterator<",
        "TK;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/jsonbeans/ObjectMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/jsonbeans/ObjectMap<",
            "TK;*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/esotericsoftware/jsonbeans/ObjectMap$MapIterator;-><init>(Lcom/esotericsoftware/jsonbeans/ObjectMap;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-boolean v0, p0, Lcom/esotericsoftware/jsonbeans/ObjectMap$MapIterator;->hasNext:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    return-object p0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/esotericsoftware/jsonbeans/ObjectMap$MapIterator;->hasNext:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/ObjectMap$MapIterator;->a:Lcom/esotericsoftware/jsonbeans/ObjectMap;

    iget-object v0, v0, Lcom/esotericsoftware/jsonbeans/ObjectMap;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/esotericsoftware/jsonbeans/ObjectMap$MapIterator;->b:I

    aget-object v0, v0, v1

    iput v1, p0, Lcom/esotericsoftware/jsonbeans/ObjectMap$MapIterator;->d:I

    invoke-virtual {p0}, Lcom/esotericsoftware/jsonbeans/ObjectMap$MapIterator;->e()V

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    invoke-super {p0}, Lcom/esotericsoftware/jsonbeans/ObjectMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    invoke-super {p0}, Lcom/esotericsoftware/jsonbeans/ObjectMap$MapIterator;->reset()V

    return-void
.end method

.method public toArray()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/esotericsoftware/jsonbeans/ObjectMap$MapIterator;->a:Lcom/esotericsoftware/jsonbeans/ObjectMap;

    iget v1, v1, Lcom/esotericsoftware/jsonbeans/ObjectMap;->size:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    iget-boolean v1, p0, Lcom/esotericsoftware/jsonbeans/ObjectMap$MapIterator;->hasNext:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/esotericsoftware/jsonbeans/ObjectMap$Keys;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
