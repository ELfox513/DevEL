.class public Ln5/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lq6/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq6/b<",
            "Lq5/a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;

.field public c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lq6/b;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lq6/b<",
            "Lq5/a;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ln5/c;->a:Lq6/b;

    iput-object p3, p0, Ln5/c;->b:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Ln5/c;->c:Ljava/lang/Integer;

    return-void
.end method

.method public static c(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List<",
            "Ln5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {v1}, Ln5/b;->a(Ljava/util/Map;)Ln5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(Lq5/a$c;)V
    .locals 1

    iget-object v0, p0, Ln5/c;->a:Lq6/b;

    invoke-interface {v0}, Lq6/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq5/a;

    invoke-interface {v0, p1}, Lq5/a;->b(Lq5/a$c;)V

    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ln5/b;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ln5/c;->d()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Ln5/c;->g()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln5/b;

    :goto_1
    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v3

    if-lt v3, v1, :cond_0

    invoke-interface {v0}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq5/a$c;

    iget-object v3, v3, Lq5/a$c;->b:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ln5/c;->i(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v3, p0, Ln5/c;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ln5/b;->d(Ljava/lang/String;)Lq5/a$c;

    move-result-object v2

    invoke-virtual {p0, v2}, Ln5/c;->a(Lq5/a$c;)V

    invoke-interface {v0, v2}, Ljava/util/Deque;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final d()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lq5/a$c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ln5/c;->a:Lq6/b;

    invoke-interface {v0}, Lq6/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq5/a;

    iget-object v1, p0, Ln5/c;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lq5/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final e(Ljava/util/List;Ljava/util/Set;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ln5/b;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ln5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln5/b;

    invoke-virtual {v1}, Ln5/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final f(Ljava/util/List;Ljava/util/Set;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lq5/a$c;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lq5/a$c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq5/a$c;

    iget-object v2, v1, Lq5/a$c;->b:Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final g()I
    .locals 2

    iget-object v0, p0, Ln5/c;->c:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Ln5/c;->a:Lq6/b;

    invoke-interface {v0}, Lq6/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq5/a;

    iget-object v1, p0, Ln5/c;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lq5/a;->d(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ln5/c;->c:Ljava/lang/Integer;

    :cond_0
    iget-object v0, p0, Ln5/c;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public h()V
    .locals 1

    invoke-virtual {p0}, Ln5/c;->m()V

    invoke-virtual {p0}, Ln5/c;->d()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Ln5/c;->j(Ljava/util/Collection;)V

    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Ln5/c;->a:Lq6/b;

    invoke-interface {v0}, Lq6/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq5/a;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, v1}, Lq5/a;->clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final j(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lq5/a$c;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq5/a$c;

    iget-object v0, v0, Lq5/a$c;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ln5/c;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public k(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ln5/c;->m()V

    if-eqz p1, :cond_0

    invoke-static {p1}, Ln5/c;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln5/c;->l(Ljava/util/List;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The replacementExperiments list is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final l(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ln5/b;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ln5/c;->h()V

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln5/b;

    invoke-virtual {v2}, Ln5/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ln5/c;->d()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lq5/a$c;

    iget-object v4, v4, Lq5/a$c;->b:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1, v0}, Ln5/c;->f(Ljava/util/List;Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Ln5/c;->j(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v2}, Ln5/c;->e(Ljava/util/List;Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln5/c;->b(Ljava/util/List;)V

    return-void
.end method

.method public final m()V
    .locals 2

    iget-object v0, p0, Ln5/c;->a:Lq6/b;

    invoke-interface {v0}, Lq6/b;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ln5/a;

    const-string v1, "The Analytics SDK is not available. Please check that the Analytics SDK is included in your app dependencies."

    invoke-direct {v0, v1}, Ln5/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method
