.class public final Lr4/j6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lr4/h6;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lr4/et3;",
            "Lr4/h6;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lr4/h6;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lr4/i6;

.field public final e:Lr4/ot3;

.field public final f:Lr4/po2;

.field public final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lr4/h6;",
            "Lr4/g6;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lr4/h6;",
            ">;"
        }
    .end annotation
.end field

.field public i:Z

.field public j:Lr4/ho;

.field public k:Lr4/yu3;


# direct methods
.method public constructor <init>(Lr4/i6;Lr4/c41;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/j6;->d:Lr4/i6;

    new-instance p1, Lr4/yu3;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lr4/yu3;-><init>(I)V

    iput-object p1, p0, Lr4/j6;->k:Lr4/yu3;

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lr4/j6;->b:Ljava/util/IdentityHashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lr4/j6;->c:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lr4/j6;->a:Ljava/util/List;

    new-instance p1, Lr4/ot3;

    invoke-direct {p1}, Lr4/ot3;-><init>()V

    iput-object p1, p0, Lr4/j6;->e:Lr4/ot3;

    new-instance v0, Lr4/po2;

    invoke-direct {v0}, Lr4/po2;-><init>()V

    iput-object v0, p0, Lr4/j6;->f:Lr4/po2;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lr4/j6;->g:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lr4/j6;->h:Ljava/util/Set;

    invoke-virtual {p1, p3, p2}, Lr4/ot3;->b(Landroid/os/Handler;Lr4/pt3;)V

    invoke-virtual {v0, p3, p2}, Lr4/po2;->b(Landroid/os/Handler;Lr4/qp2;)V

    return-void
.end method

.method public static synthetic a(Lr4/j6;)Lr4/ot3;
    .locals 0

    iget-object p0, p0, Lr4/j6;->e:Lr4/ot3;

    return-object p0
.end method

.method public static synthetic b(Lr4/j6;)Lr4/po2;
    .locals 0

    iget-object p0, p0, Lr4/j6;->f:Lr4/po2;

    return-object p0
.end method


# virtual methods
.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lr4/j6;->i:Z

    return v0
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lr4/j6;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final e(Lr4/ho;)V
    .locals 3

    iget-boolean v0, p0, Lr4/j6;->i:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lr4/ja;->d(Z)V

    iput-object p1, p0, Lr4/j6;->j:Lr4/ho;

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lr4/j6;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lr4/j6;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/h6;

    invoke-virtual {p0, v0}, Lr4/j6;->t(Lr4/h6;)V

    iget-object v2, p0, Lr4/j6;->h:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lr4/j6;->i:Z

    return-void
.end method

.method public final f(Lr4/et3;)V
    .locals 2

    iget-object v0, p0, Lr4/j6;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/h6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lr4/h6;->a:Lr4/bt3;

    invoke-virtual {v1, p1}, Lr4/bt3;->h(Lr4/et3;)V

    iget-object v1, v0, Lr4/h6;->c:Ljava/util/List;

    check-cast p1, Lr4/xs3;

    iget-object p1, p1, Lr4/xs3;->a:Lr4/ft3;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lr4/j6;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {p1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lr4/j6;->p()V

    :cond_0
    invoke-virtual {p0, v0}, Lr4/j6;->u(Lr4/h6;)V

    return-void
.end method

.method public final g()V
    .locals 5

    iget-object v0, p0, Lr4/j6;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/g6;

    :try_start_0
    iget-object v2, v1, Lr4/g6;->a:Lr4/ht3;

    iget-object v3, v1, Lr4/g6;->b:Lr4/gt3;

    invoke-interface {v2, v3}, Lr4/ht3;->g(Lr4/gt3;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "MediaSourceList"

    const-string v4, "Failed to release child source."

    invoke-static {v3, v4, v2}, Lr4/eb;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    iget-object v2, v1, Lr4/g6;->a:Lr4/ht3;

    iget-object v3, v1, Lr4/g6;->c:Lr4/f6;

    invoke-interface {v2, v3}, Lr4/ht3;->k(Lr4/pt3;)V

    iget-object v2, v1, Lr4/g6;->a:Lr4/ht3;

    iget-object v1, v1, Lr4/g6;->c:Lr4/f6;

    invoke-interface {v2, v1}, Lr4/ht3;->c(Lr4/qp2;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr4/j6;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lr4/j6;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/j6;->i:Z

    return-void
.end method

.method public final h()Lr4/e8;
    .locals 4

    iget-object v0, p0, Lr4/j6;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lr4/j6;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lr4/j6;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr4/h6;

    iput v1, v2, Lr4/h6;->d:I

    iget-object v2, v2, Lr4/h6;->a:Lr4/bt3;

    invoke-virtual {v2}, Lr4/bt3;->F()Lr4/e8;

    move-result-object v2

    invoke-virtual {v2}, Lr4/e8;->a()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lr4/e7;

    iget-object v1, p0, Lr4/j6;->a:Ljava/util/List;

    iget-object v2, p0, Lr4/j6;->k:Lr4/yu3;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lr4/e7;-><init>(Ljava/util/Collection;Lr4/yu3;[B)V

    return-object v0

    :cond_1
    sget-object v0, Lr4/e8;->a:Lr4/e8;

    return-object v0
.end method

.method public final synthetic i(Lr4/ht3;Lr4/e8;)V
    .locals 0

    iget-object p1, p0, Lr4/j6;->d:Lr4/i6;

    invoke-interface {p1}, Lr4/i6;->k()V

    return-void
.end method

.method public final j(Ljava/util/List;Lr4/yu3;)Lr4/e8;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lr4/h6;",
            ">;",
            "Lr4/yu3;",
            ")",
            "Lr4/e8;"
        }
    .end annotation

    iget-object v0, p0, Lr4/j6;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lr4/j6;->r(II)V

    iget-object v0, p0, Lr4/j6;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lr4/j6;->k(ILjava/util/List;Lr4/yu3;)Lr4/e8;

    move-result-object p1

    return-object p1
.end method

.method public final k(ILjava/util/List;Lr4/yu3;)Lr4/e8;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lr4/h6;",
            ">;",
            "Lr4/yu3;",
            ")",
            "Lr4/e8;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iput-object p3, p0, Lr4/j6;->k:Lr4/yu3;

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p1

    if-ge p3, v0, :cond_3

    sub-int v0, p3, p1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/h6;

    if-lez p3, :cond_0

    iget-object v1, p0, Lr4/j6;->a:Ljava/util/List;

    add-int/lit8 v2, p3, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/h6;

    iget-object v2, v1, Lr4/h6;->a:Lr4/bt3;

    invoke-virtual {v2}, Lr4/bt3;->F()Lr4/e8;

    move-result-object v2

    iget v1, v1, Lr4/h6;->d:I

    invoke-virtual {v2}, Lr4/e8;->a()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lr4/h6;->c(I)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr4/h6;->c(I)V

    :goto_1
    iget-object v1, v0, Lr4/h6;->a:Lr4/bt3;

    invoke-virtual {v1}, Lr4/bt3;->F()Lr4/e8;

    move-result-object v1

    invoke-virtual {v1}, Lr4/e8;->a()I

    move-result v1

    invoke-virtual {p0, p3, v1}, Lr4/j6;->s(II)V

    iget-object v1, p0, Lr4/j6;->a:Ljava/util/List;

    invoke-interface {v1, p3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lr4/j6;->c:Ljava/util/Map;

    iget-object v2, v0, Lr4/h6;->b:Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lr4/j6;->i:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lr4/j6;->t(Lr4/h6;)V

    iget-object v1, p0, Lr4/j6;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lr4/j6;->h:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v0}, Lr4/j6;->q(Lr4/h6;)V

    :cond_2
    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lr4/j6;->h()Lr4/e8;

    move-result-object p1

    return-object p1
.end method

.method public final l(IILr4/yu3;)Lr4/e8;
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    invoke-virtual {p0}, Lr4/j6;->d()I

    move-result v1

    if-gt p2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lr4/ja;->a(Z)V

    iput-object p3, p0, Lr4/j6;->k:Lr4/yu3;

    invoke-virtual {p0, p1, p2}, Lr4/j6;->r(II)V

    invoke-virtual {p0}, Lr4/j6;->h()Lr4/e8;

    move-result-object p1

    return-object p1
.end method

.method public final m(IIILr4/yu3;)Lr4/e8;
    .locals 0

    invoke-virtual {p0}, Lr4/j6;->d()I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lr4/ja;->a(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lr4/j6;->k:Lr4/yu3;

    invoke-virtual {p0}, Lr4/j6;->h()Lr4/e8;

    move-result-object p1

    return-object p1
.end method

.method public final n(Lr4/yu3;)Lr4/e8;
    .locals 2

    invoke-virtual {p0}, Lr4/j6;->d()I

    move-result v0

    invoke-virtual {p1}, Lr4/yu3;->a()I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-virtual {p1}, Lr4/yu3;->h()Lr4/yu3;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lr4/yu3;->f(II)Lr4/yu3;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lr4/j6;->k:Lr4/yu3;

    invoke-virtual {p0}, Lr4/j6;->h()Lr4/e8;

    move-result-object p1

    return-object p1
.end method

.method public final o(Lr4/ft3;Lr4/qw3;J)Lr4/et3;
    .locals 3

    iget-object v0, p1, Lr4/f04;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lr4/ft3;->c(Ljava/lang/Object;)Lr4/ft3;

    move-result-object p1

    iget-object v0, p0, Lr4/j6;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/h6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lr4/j6;->h:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lr4/j6;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/g6;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lr4/g6;->a:Lr4/ht3;

    iget-object v1, v1, Lr4/g6;->b:Lr4/gt3;

    invoke-interface {v2, v1}, Lr4/ht3;->e(Lr4/gt3;)V

    :cond_0
    iget-object v1, v0, Lr4/h6;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lr4/h6;->a:Lr4/bt3;

    invoke-virtual {v1, p1, p2, p3, p4}, Lr4/bt3;->C(Lr4/ft3;Lr4/qw3;J)Lr4/xs3;

    move-result-object p1

    iget-object p2, p0, Lr4/j6;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lr4/j6;->p()V

    return-object p1
.end method

.method public final p()V
    .locals 3

    iget-object v0, p0, Lr4/j6;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/h6;

    iget-object v2, v1, Lr4/h6;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lr4/j6;->q(Lr4/h6;)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final q(Lr4/h6;)V
    .locals 1

    iget-object v0, p0, Lr4/j6;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/g6;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lr4/g6;->a:Lr4/ht3;

    iget-object p1, p1, Lr4/g6;->b:Lr4/gt3;

    invoke-interface {v0, p1}, Lr4/ht3;->f(Lr4/gt3;)V

    :cond_0
    return-void
.end method

.method public final r(II)V
    .locals 3

    :cond_0
    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-lt p2, p1, :cond_1

    iget-object v0, p0, Lr4/j6;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/h6;

    iget-object v1, p0, Lr4/j6;->c:Ljava/util/Map;

    iget-object v2, v0, Lr4/h6;->b:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lr4/h6;->a:Lr4/bt3;

    invoke-virtual {v1}, Lr4/bt3;->F()Lr4/e8;

    move-result-object v1

    invoke-virtual {v1}, Lr4/e8;->a()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p0, p2, v1}, Lr4/j6;->s(II)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lr4/h6;->e:Z

    iget-boolean v1, p0, Lr4/j6;->i:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lr4/j6;->u(Lr4/h6;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final s(II)V
    .locals 2

    :goto_0
    iget-object v0, p0, Lr4/j6;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lr4/j6;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/h6;

    iget v1, v0, Lr4/h6;->d:I

    add-int/2addr v1, p2

    iput v1, v0, Lr4/h6;->d:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final t(Lr4/h6;)V
    .locals 5

    iget-object v0, p1, Lr4/h6;->a:Lr4/bt3;

    new-instance v1, Lr4/e6;

    invoke-direct {v1, p0}, Lr4/e6;-><init>(Lr4/j6;)V

    new-instance v2, Lr4/f6;

    invoke-direct {v2, p0, p1}, Lr4/f6;-><init>(Lr4/j6;Lr4/h6;)V

    iget-object v3, p0, Lr4/j6;->g:Ljava/util/HashMap;

    new-instance v4, Lr4/g6;

    invoke-direct {v4, v0, v1, v2}, Lr4/g6;-><init>(Lr4/ht3;Lr4/gt3;Lr4/f6;)V

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lr4/lc;->P()Landroid/os/Looper;

    move-result-object p1

    new-instance v3, Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-interface {v0, v3, v2}, Lr4/ht3;->d(Landroid/os/Handler;Lr4/pt3;)V

    invoke-static {}, Lr4/lc;->P()Landroid/os/Looper;

    move-result-object p1

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, p1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-interface {v0, v3, v2}, Lr4/ht3;->a(Landroid/os/Handler;Lr4/qp2;)V

    iget-object p1, p0, Lr4/j6;->j:Lr4/ho;

    invoke-interface {v0, v1, p1}, Lr4/ht3;->j(Lr4/gt3;Lr4/ho;)V

    return-void
.end method

.method public final u(Lr4/h6;)V
    .locals 3

    iget-boolean v0, p1, Lr4/h6;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lr4/h6;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/j6;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/g6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lr4/g6;->a:Lr4/ht3;

    iget-object v2, v0, Lr4/g6;->b:Lr4/gt3;

    invoke-interface {v1, v2}, Lr4/ht3;->g(Lr4/gt3;)V

    iget-object v1, v0, Lr4/g6;->a:Lr4/ht3;

    iget-object v2, v0, Lr4/g6;->c:Lr4/f6;

    invoke-interface {v1, v2}, Lr4/ht3;->k(Lr4/pt3;)V

    iget-object v1, v0, Lr4/g6;->a:Lr4/ht3;

    iget-object v0, v0, Lr4/g6;->c:Lr4/f6;

    invoke-interface {v1, v0}, Lr4/ht3;->c(Lr4/qp2;)V

    iget-object v0, p0, Lr4/j6;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
