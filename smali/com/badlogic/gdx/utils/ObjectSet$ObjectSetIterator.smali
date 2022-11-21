.class public Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/ObjectSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ObjectSetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TK;>;",
        "Ljava/util/Iterator<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/badlogic/gdx/utils/ObjectSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectSet<",
            "TK;>;"
        }
    .end annotation
.end field

.field public b:I

.field public d:I

.field public hasNext:Z

.field public k:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/ObjectSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectSet<",
            "TK;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->k:Z

    iput-object p1, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->a:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->reset()V

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->a:Lcom/badlogic/gdx/utils/ObjectSet;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ObjectSet;->a:[Ljava/lang/Object;

    array-length v1, v0

    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->b:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->b:I

    if-ge v2, v1, :cond_1

    aget-object v2, v0, v2

    if-eqz v2, :cond_0

    iput-boolean v3, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->hasNext:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->hasNext:Z

    return-void
.end method

.method public hasNext()Z
    .locals 2

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->hasNext:Z

    return v0

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public iterator()Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator<",
            "TK;>;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->iterator()Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->hasNext:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->a:Lcom/badlogic/gdx/utils/ObjectSet;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ObjectSet;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->b:I

    aget-object v0, v0, v1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->d:I

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->e()V

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

.method public remove()V
    .locals 7

    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->d:I

    if-ltz v0, :cond_3

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->a:Lcom/badlogic/gdx/utils/ObjectSet;

    iget-object v2, v1, Lcom/badlogic/gdx/utils/ObjectSet;->a:[Ljava/lang/Object;

    iget v1, v1, Lcom/badlogic/gdx/utils/ObjectSet;->p:I

    add-int/lit8 v3, v0, 0x1

    :goto_0
    and-int/2addr v3, v1

    aget-object v4, v2, v3

    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->a:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/ObjectSet;->g(Ljava/lang/Object;)I

    move-result v5

    sub-int v6, v3, v5

    and-int/2addr v6, v1

    sub-int v5, v0, v5

    and-int/2addr v5, v1

    if-le v6, v5, :cond_0

    aput-object v4, v2, v0

    move v0, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->a:Lcom/badlogic/gdx/utils/ObjectSet;

    iget v2, v1, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->d:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->b:I

    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->d:I

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next must be called before remove."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public reset()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->d:I

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->b:I

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->e()V

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

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->toArray(Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0
.end method

.method public toArray(Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TK;>;)",
            "Lcom/badlogic/gdx/utils/Array<",
            "TK;>;"
        }
    .end annotation

    :goto_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->hasNext:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object p1
.end method
