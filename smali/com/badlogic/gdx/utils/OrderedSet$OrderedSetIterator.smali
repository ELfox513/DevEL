.class public Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;
.super Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/OrderedSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OrderedSetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public p:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/OrderedSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/OrderedSet<",
            "TK;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;-><init>(Lcom/badlogic/gdx/utils/ObjectSet;)V

    iget-object p1, p1, Lcom/badlogic/gdx/utils/OrderedSet;->s:Lcom/badlogic/gdx/utils/Array;

    iput-object p1, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->p:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->hasNext:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->k:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->p:Lcom/badlogic/gdx/utils/Array;

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->b:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->b:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->b:I

    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->a:Lcom/badlogic/gdx/utils/ObjectSet;

    iget v3, v3, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    if-ge v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->hasNext:Z

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

.method public remove()V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->b:I

    if-ltz v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->b:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->a:Lcom/badlogic/gdx/utils/ObjectSet;

    check-cast v1, Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/OrderedSet;->removeIndex(I)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next must be called before remove."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->b:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->a:Lcom/badlogic/gdx/utils/ObjectSet;

    iget v1, v1, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->hasNext:Z

    return-void
.end method

.method public toArray()Lcom/badlogic/gdx/utils/Array;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->a:Lcom/badlogic/gdx/utils/ObjectSet;

    iget v1, v1, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->b:I

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->toArray(Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0
.end method

.method public toArray(Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/Array;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TK;>;)",
            "Lcom/badlogic/gdx/utils/Array<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->p:Lcom/badlogic/gdx/utils/Array;

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->b:I

    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    sub-int/2addr v2, v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;II)V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;->p:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->hasNext:Z

    return-object p1
.end method
