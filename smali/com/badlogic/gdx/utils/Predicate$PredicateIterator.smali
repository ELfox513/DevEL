.class public Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/Predicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PredicateIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public end:Z

.field public iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation
.end field

.field public next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public peeked:Z

.field public predicate:Lcom/badlogic/gdx/utils/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Predicate<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Lcom/badlogic/gdx/utils/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Lcom/badlogic/gdx/utils/Predicate<",
            "TT;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;-><init>(Ljava/util/Iterator;Lcom/badlogic/gdx/utils/Predicate;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;Lcom/badlogic/gdx/utils/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TT;>;",
            "Lcom/badlogic/gdx/utils/Predicate<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->end:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->peeked:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->next:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->set(Ljava/util/Iterator;Lcom/badlogic/gdx/utils/Predicate;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->end:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->next:Ljava/lang/Object;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iput-boolean v2, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->peeked:Z

    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->predicate:Lcom/badlogic/gdx/utils/Predicate;

    invoke-interface {v3, v0}, Lcom/badlogic/gdx/utils/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->next:Ljava/lang/Object;

    return v2

    :cond_3
    iput-boolean v2, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->end:Z

    return v1
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->next:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->next:Ljava/lang/Object;

    iput-object v1, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->next:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->peeked:Z

    return-object v0
.end method

.method public remove()V
    .locals 2

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->peeked:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Cannot remove between a call to hasNext() and next()."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(Ljava/lang/Iterable;Lcom/badlogic/gdx/utils/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Lcom/badlogic/gdx/utils/Predicate<",
            "TT;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->set(Ljava/util/Iterator;Lcom/badlogic/gdx/utils/Predicate;)V

    return-void
.end method

.method public set(Ljava/util/Iterator;Lcom/badlogic/gdx/utils/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TT;>;",
            "Lcom/badlogic/gdx/utils/Predicate<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->iterator:Ljava/util/Iterator;

    iput-object p2, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->predicate:Lcom/badlogic/gdx/utils/Predicate;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->peeked:Z

    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->end:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterator;->next:Ljava/lang/Object;

    return-void
.end method
