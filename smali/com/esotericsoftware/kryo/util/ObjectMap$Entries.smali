.class public Lcom/esotericsoftware/kryo/util/ObjectMap$Entries;
.super Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/util/ObjectMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator<",
        "TK;TV;",
        "Lcom/esotericsoftware/kryo/util/ObjectMap$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public p:Lcom/esotericsoftware/kryo/util/ObjectMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/esotericsoftware/kryo/util/ObjectMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/util/ObjectMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/util/ObjectMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;-><init>(Lcom/esotericsoftware/kryo/util/ObjectMap;)V

    new-instance p1, Lcom/esotericsoftware/kryo/util/ObjectMap$Entry;

    invoke-direct {p1}, Lcom/esotericsoftware/kryo/util/ObjectMap$Entry;-><init>()V

    iput-object p1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$Entries;->p:Lcom/esotericsoftware/kryo/util/ObjectMap$Entry;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->hasNext:Z

    return v0
.end method

.method public iterator()Lcom/esotericsoftware/kryo/util/ObjectMap$Entries;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/esotericsoftware/kryo/util/ObjectMap$Entries<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/ObjectMap$Entries;->iterator()Lcom/esotericsoftware/kryo/util/ObjectMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public next()Lcom/esotericsoftware/kryo/util/ObjectMap$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/esotericsoftware/kryo/util/ObjectMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->hasNext:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->a:Lcom/esotericsoftware/kryo/util/ObjectMap;

    iget-object v1, v0, Lcom/esotericsoftware/kryo/util/ObjectMap;->a:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$Entries;->p:Lcom/esotericsoftware/kryo/util/ObjectMap$Entry;

    iget v3, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->b:I

    aget-object v1, v1, v3

    iput-object v1, v2, Lcom/esotericsoftware/kryo/util/ObjectMap$Entry;->key:Ljava/lang/Object;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/util/ObjectMap;->b:[Ljava/lang/Object;

    aget-object v0, v0, v3

    iput-object v0, v2, Lcom/esotericsoftware/kryo/util/ObjectMap$Entry;->value:Ljava/lang/Object;

    iput v3, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->d:I

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->e()V

    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$Entries;->p:Lcom/esotericsoftware/kryo/util/ObjectMap$Entry;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/ObjectMap$Entries;->next()Lcom/esotericsoftware/kryo/util/ObjectMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    invoke-super {p0}, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    invoke-super {p0}, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->reset()V

    return-void
.end method
