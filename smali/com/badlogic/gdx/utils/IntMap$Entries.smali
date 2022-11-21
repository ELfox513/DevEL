.class public Lcom/badlogic/gdx/utils/IntMap$Entries;
.super Lcom/badlogic/gdx/utils/IntMap$MapIterator;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/IntMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/utils/IntMap$MapIterator<",
        "TV;>;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/utils/IntMap$Entry<",
        "TV;>;>;",
        "Ljava/util/Iterator<",
        "Lcom/badlogic/gdx/utils/IntMap$Entry<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field public final p:Lcom/badlogic/gdx/utils/IntMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap$Entry<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/IntMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap$MapIterator;-><init>(Lcom/badlogic/gdx/utils/IntMap;)V

    new-instance p1, Lcom/badlogic/gdx/utils/IntMap$Entry;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/IntMap$Entry;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/utils/IntMap$Entries;->p:Lcom/badlogic/gdx/utils/IntMap$Entry;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->hasNext:Z

    return v0

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/badlogic/gdx/utils/IntMap$Entry<",
            "TV;>;>;"
        }
    .end annotation

    return-object p0
.end method

.method public next()Lcom/badlogic/gdx/utils/IntMap$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/IntMap$Entry<",
            "TV;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->hasNext:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->k:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->a:Lcom/badlogic/gdx/utils/IntMap;

    iget-object v1, v0, Lcom/badlogic/gdx/utils/IntMap;->a:[I

    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->b:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap$Entries;->p:Lcom/badlogic/gdx/utils/IntMap$Entry;

    const/4 v3, 0x0

    iput v3, v1, Lcom/badlogic/gdx/utils/IntMap$Entry;->key:I

    iget-object v0, v0, Lcom/badlogic/gdx/utils/IntMap;->d:Ljava/lang/Object;

    iput-object v0, v1, Lcom/badlogic/gdx/utils/IntMap$Entry;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap$Entries;->p:Lcom/badlogic/gdx/utils/IntMap$Entry;

    aget v1, v1, v2

    iput v1, v3, Lcom/badlogic/gdx/utils/IntMap$Entry;->key:I

    iget-object v0, v0, Lcom/badlogic/gdx/utils/IntMap;->b:[Ljava/lang/Object;

    aget-object v0, v0, v2

    iput-object v0, v3, Lcom/badlogic/gdx/utils/IntMap$Entry;->value:Ljava/lang/Object;

    :goto_0
    iput v2, p0, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->d:I

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->e()V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap$Entries;->p:Lcom/badlogic/gdx/utils/IntMap$Entry;

    return-object v0

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

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntMap$Entries;->next()Lcom/badlogic/gdx/utils/IntMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    invoke-super {p0}, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    invoke-super {p0}, Lcom/badlogic/gdx/utils/IntMap$MapIterator;->reset()V

    return-void
.end method
