.class public final Lr4/ig2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lr4/eg2<",
            "+",
            "Lr4/dg2<",
            "TT;>;>;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/Set<",
            "Lr4/eg2<",
            "+",
            "Lr4/dg2<",
            "TT;>;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ig2;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lr4/ig2;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lr4/h83;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lr4/h83<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lr4/ig2;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lr4/ig2;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr4/eg2;

    invoke-interface {v2}, Lr4/eg2;->zza()Lr4/h83;

    move-result-object v3

    sget-object v4, Lr4/i10;->a:Lr4/u00;

    invoke-virtual {v4}, Lr4/u00;->e()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object v4

    invoke-interface {v4}, Lc4/f;->b()J

    move-result-wide v4

    new-instance v6, Lr4/fg2;

    invoke-direct {v6, v2, v4, v5}, Lr4/fg2;-><init>(Lr4/eg2;J)V

    sget-object v2, Lr4/qm0;->f:Lr4/i83;

    invoke-interface {v3, v6, v2}, Lr4/h83;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lr4/y73;->o(Ljava/lang/Iterable;)Lr4/w73;

    move-result-object v1

    new-instance v2, Lr4/hg2;

    invoke-direct {v2, v0, p1}, Lr4/hg2;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    iget-object p1, p0, Lr4/ig2;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2, p1}, Lr4/w73;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method
