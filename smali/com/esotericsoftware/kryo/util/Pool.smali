.class public abstract Lcom/esotericsoftware/kryo/util/Pool;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue;,
        Lcom/esotericsoftware/kryo/util/Pool$Poolable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TT;>;"
        }
    .end annotation
.end field

.field public b:I


# direct methods
.method public constructor <init>(ZZ)V
    .locals 1

    const v0, 0x7fffffff

    invoke-direct {p0, p1, p2, v0}, Lcom/esotericsoftware/kryo/util/Pool;-><init>(ZZI)V

    return-void
.end method

.method public constructor <init>(ZZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    new-instance p1, Lcom/esotericsoftware/kryo/util/Pool$1;

    invoke-direct {p1, p0, p3}, Lcom/esotericsoftware/kryo/util/Pool$1;-><init>(Lcom/esotericsoftware/kryo/util/Pool;I)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    new-instance p1, Lcom/esotericsoftware/kryo/util/Pool$2;

    invoke-direct {p1, p0, p3}, Lcom/esotericsoftware/kryo/util/Pool$2;-><init>(Lcom/esotericsoftware/kryo/util/Pool;I)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/esotericsoftware/kryo/util/Pool$3;

    invoke-direct {p1, p0, p3}, Lcom/esotericsoftware/kryo/util/Pool$3;-><init>(Lcom/esotericsoftware/kryo/util/Pool;I)V

    :goto_0
    if-eqz p2, :cond_2

    new-instance p2, Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue;

    invoke-direct {p2, p1}, Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue;-><init>(Ljava/util/Queue;)V

    move-object p1, p2

    :cond_2
    iput-object p1, p0, Lcom/esotericsoftware/kryo/util/Pool;->a:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/Pool;->a:Ljava/util/Queue;

    instance-of v1, v0, Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue;->e()V

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/Pool;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public abstract create()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public free(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/util/Pool;->reset(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/Pool;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/Pool;->a:Ljava/util/Queue;

    instance-of v1, v0, Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue;->g()V

    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/Pool;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_0
    iget p1, p0, Lcom/esotericsoftware/kryo/util/Pool;->b:I

    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/Pool;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/esotericsoftware/kryo/util/Pool;->b:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "object cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFree()I
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/Pool;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public getPeak()I
    .locals 1

    iget v0, p0, Lcom/esotericsoftware/kryo/util/Pool;->b:I

    return v0
.end method

.method public obtain()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/Pool;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/Pool;->create()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public reset(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/esotericsoftware/kryo/util/Pool$Poolable;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/esotericsoftware/kryo/util/Pool$Poolable;

    invoke-interface {p1}, Lcom/esotericsoftware/kryo/util/Pool$Poolable;->reset()V

    :cond_0
    return-void
.end method

.method public resetPeak()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/esotericsoftware/kryo/util/Pool;->b:I

    return-void
.end method
