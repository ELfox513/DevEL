.class public Lcom/esotericsoftware/jsonbeans/ObjectMap$Entries;
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
    name = "Entries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/esotericsoftware/jsonbeans/ObjectMap$MapIterator<",
        "TK;TV;>;",
        "Ljava/lang/Iterable<",
        "Lcom/esotericsoftware/jsonbeans/ObjectMap$Entry<",
        "TK;TV;>;>;",
        "Ljava/util/Iterator<",
        "Lcom/esotericsoftware/jsonbeans/ObjectMap$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public k:Lcom/esotericsoftware/jsonbeans/ObjectMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/esotericsoftware/jsonbeans/ObjectMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/jsonbeans/ObjectMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/jsonbeans/ObjectMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/esotericsoftware/jsonbeans/ObjectMap$MapIterator;-><init>(Lcom/esotericsoftware/jsonbeans/ObjectMap;)V

    new-instance p1, Lcom/esotericsoftware/jsonbeans/ObjectMap$Entry;

    invoke-direct {p1}, Lcom/esotericsoftware/jsonbeans/ObjectMap$Entry;-><init>()V

    iput-object p1, p0, Lcom/esotericsoftware/jsonbeans/ObjectMap$Entries;->k:Lcom/esotericsoftware/jsonbeans/ObjectMap$Entry;

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
            "Lcom/esotericsoftware/jsonbeans/ObjectMap$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    return-object p0
.end method

.method public next()Lcom/esotericsoftware/jsonbeans/ObjectMap$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/esotericsoftware/jsonbeans/ObjectMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/esotericsoftware/jsonbeans/ObjectMap$MapIterator;->hasNext:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/ObjectMap$MapIterator;->a:Lcom/esotericsoftware/jsonbeans/ObjectMap;

    iget-object v1, v0, Lcom/esotericsoftware/jsonbeans/ObjectMap;->a:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/esotericsoftware/jsonbeans/ObjectMap$Entries;->k:Lcom/esotericsoftware/jsonbeans/ObjectMap$Entry;

    iget v3, p0, Lcom/esotericsoftware/jsonbeans/ObjectMap$MapIterator;->b:I

    aget-object v1, v1, v3

    iput-object v1, v2, Lcom/esotericsoftware/jsonbeans/ObjectMap$Entry;->key:Ljava/lang/Object;

    iget-object v0, v0, Lcom/esotericsoftware/jsonbeans/ObjectMap;->b:[Ljava/lang/Object;

    aget-object v0, v0, v3

    iput-object v0, v2, Lcom/esotericsoftware/jsonbeans/ObjectMap$Entry;->value:Ljava/lang/Object;

    iput v3, p0, Lcom/esotericsoftware/jsonbeans/ObjectMap$MapIterator;->d:I

    invoke-virtual {p0}, Lcom/esotericsoftware/jsonbeans/ObjectMap$MapIterator;->e()V

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/ObjectMap$Entries;->k:Lcom/esotericsoftware/jsonbeans/ObjectMap$Entry;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/esotericsoftware/jsonbeans/ObjectMap$Entries;->next()Lcom/esotericsoftware/jsonbeans/ObjectMap$Entry;

    move-result-object v0

    return-object v0
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
