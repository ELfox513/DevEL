.class public Lcom/badlogic/gdx/utils/Queue$QueueIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/Queue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/badlogic/gdx/utils/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Queue<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Z

.field public d:I

.field public k:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/Queue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Queue<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/Queue$QueueIterator;-><init>(Lcom/badlogic/gdx/utils/Queue;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/Queue;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Queue<",
            "TT;>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/Queue$QueueIterator;->k:Z

    iput-object p1, p0, Lcom/badlogic/gdx/utils/Queue$QueueIterator;->a:Lcom/badlogic/gdx/utils/Queue;

    iput-boolean p2, p0, Lcom/badlogic/gdx/utils/Queue$QueueIterator;->b:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/Queue$QueueIterator;->k:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/utils/Queue$QueueIterator;->d:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Queue$QueueIterator;->a:Lcom/badlogic/gdx/utils/Queue;

    iget v1, v1, Lcom/badlogic/gdx/utils/Queue;->size:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
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
            "TT;>;"
        }
    .end annotation

    return-object p0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget v0, p0, Lcom/badlogic/gdx/utils/Queue$QueueIterator;->d:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Queue$QueueIterator;->a:Lcom/badlogic/gdx/utils/Queue;

    iget v2, v1, Lcom/badlogic/gdx/utils/Queue;->size:I

    if-ge v0, v2, :cond_1

    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/Queue$QueueIterator;->k:Z

    if-eqz v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/Queue$QueueIterator;->d:I

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Queue;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    iget v1, p0, Lcom/badlogic/gdx/utils/Queue$QueueIterator;->d:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 2

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/Queue$QueueIterator;->b:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/Queue$QueueIterator;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/Queue$QueueIterator;->d:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Queue$QueueIterator;->a:Lcom/badlogic/gdx/utils/Queue;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Queue;->removeIndex(I)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Remove not allowed."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/Queue$QueueIterator;->d:I

    return-void
.end method
