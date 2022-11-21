.class public Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;
.super Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/ObjectIntMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator<",
        "TK;>;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/utils/ObjectIntMap$Entry<",
        "TK;>;>;",
        "Ljava/util/Iterator<",
        "Lcom/badlogic/gdx/utils/ObjectIntMap$Entry<",
        "TK;>;>;"
    }
.end annotation


# instance fields
.field public p:Lcom/badlogic/gdx/utils/ObjectIntMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectIntMap$Entry<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/ObjectIntMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectIntMap<",
            "TK;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;-><init>(Lcom/badlogic/gdx/utils/ObjectIntMap;)V

    new-instance p1, Lcom/badlogic/gdx/utils/ObjectIntMap$Entry;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/ObjectIntMap$Entry;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->p:Lcom/badlogic/gdx/utils/ObjectIntMap$Entry;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->hasNext:Z

    return v0

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public iterator()Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectIntMap$Entries<",
            "TK;>;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->iterator()Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public next()Lcom/badlogic/gdx/utils/ObjectIntMap$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectIntMap$Entry<",
            "TK;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->hasNext:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->a:Lcom/badlogic/gdx/utils/ObjectIntMap;

    iget-object v1, v0, Lcom/badlogic/gdx/utils/ObjectIntMap;->a:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->p:Lcom/badlogic/gdx/utils/ObjectIntMap$Entry;

    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->b:I

    aget-object v1, v1, v3

    iput-object v1, v2, Lcom/badlogic/gdx/utils/ObjectIntMap$Entry;->key:Ljava/lang/Object;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ObjectIntMap;->b:[I

    aget v0, v0, v3

    iput v0, v2, Lcom/badlogic/gdx/utils/ObjectIntMap$Entry;->value:I

    iput v3, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->d:I

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->e()V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->p:Lcom/badlogic/gdx/utils/ObjectIntMap$Entry;

    return-object v0

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

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->next()Lcom/badlogic/gdx/utils/ObjectIntMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->reset()V

    return-void
.end method
