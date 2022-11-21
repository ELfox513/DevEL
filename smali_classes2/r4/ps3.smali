.class public abstract Lr4/ps3;
.super Lr4/so3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lr4/so3;"
    }
.end annotation


# instance fields
.field public final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TT;",
            "Lr4/os3<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public h:Landroid/os/Handler;

.field public i:Lr4/ho;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lr4/so3;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lr4/ps3;->g:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Lr4/ht3;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lr4/ht3;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lr4/ps3;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lr4/ja;->a(Z)V

    new-instance v0, Lr4/ms3;

    invoke-direct {v0, p0, p1}, Lr4/ms3;-><init>(Lr4/ps3;Ljava/lang/Object;)V

    new-instance v1, Lr4/ns3;

    invoke-direct {v1, p0, p1}, Lr4/ns3;-><init>(Lr4/ps3;Ljava/lang/Object;)V

    iget-object v2, p0, Lr4/ps3;->g:Ljava/util/HashMap;

    new-instance v3, Lr4/os3;

    invoke-direct {v3, p2, v0, v1}, Lr4/os3;-><init>(Lr4/ht3;Lr4/gt3;Lr4/ns3;)V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lr4/ps3;->h:Landroid/os/Handler;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2, p1, v1}, Lr4/ht3;->d(Landroid/os/Handler;Lr4/pt3;)V

    iget-object p1, p0, Lr4/ps3;->h:Landroid/os/Handler;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2, p1, v1}, Lr4/ht3;->a(Landroid/os/Handler;Lr4/qp2;)V

    iget-object p1, p0, Lr4/ps3;->i:Lr4/ho;

    invoke-interface {p2, v0, p1}, Lr4/ht3;->j(Lr4/gt3;Lr4/ho;)V

    invoke-virtual {p0}, Lr4/so3;->y()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {p2, v0}, Lr4/ht3;->f(Lr4/gt3;)V

    :cond_0
    return-void
.end method

.method public abstract B(Ljava/lang/Object;Lr4/ft3;)Lr4/ft3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lr4/ft3;",
            ")",
            "Lr4/ft3;"
        }
    .end annotation
.end method

.method public final l()V
    .locals 3

    iget-object v0, p0, Lr4/ps3;->g:Ljava/util/HashMap;

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

    check-cast v1, Lr4/os3;

    iget-object v2, v1, Lr4/os3;->a:Lr4/ht3;

    iget-object v1, v1, Lr4/os3;->b:Lr4/gt3;

    invoke-interface {v2, v1}, Lr4/ht3;->e(Lr4/gt3;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public m(Lr4/ho;)V
    .locals 0

    iput-object p1, p0, Lr4/ps3;->i:Lr4/ho;

    const/4 p1, 0x0

    invoke-static {p1}, Lr4/lc;->M(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lr4/ps3;->h:Landroid/os/Handler;

    return-void
.end method

.method public final o()V
    .locals 3

    iget-object v0, p0, Lr4/ps3;->g:Ljava/util/HashMap;

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

    check-cast v1, Lr4/os3;

    iget-object v2, v1, Lr4/os3;->a:Lr4/ht3;

    iget-object v1, v1, Lr4/os3;->b:Lr4/gt3;

    invoke-interface {v2, v1}, Lr4/ht3;->f(Lr4/gt3;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public p()V
    .locals 4

    iget-object v0, p0, Lr4/ps3;->g:Ljava/util/HashMap;

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

    check-cast v1, Lr4/os3;

    iget-object v2, v1, Lr4/os3;->a:Lr4/ht3;

    iget-object v3, v1, Lr4/os3;->b:Lr4/gt3;

    invoke-interface {v2, v3}, Lr4/ht3;->g(Lr4/gt3;)V

    iget-object v2, v1, Lr4/os3;->a:Lr4/ht3;

    iget-object v3, v1, Lr4/os3;->c:Lr4/ns3;

    invoke-interface {v2, v3}, Lr4/ht3;->k(Lr4/pt3;)V

    iget-object v2, v1, Lr4/os3;->a:Lr4/ht3;

    iget-object v1, v1, Lr4/os3;->c:Lr4/ns3;

    invoke-interface {v2, v1}, Lr4/ht3;->c(Lr4/qp2;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr4/ps3;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public t()V
    .locals 2

    iget-object v0, p0, Lr4/ps3;->g:Ljava/util/HashMap;

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

    check-cast v1, Lr4/os3;

    iget-object v1, v1, Lr4/os3;->a:Lr4/ht3;

    invoke-interface {v1}, Lr4/ht3;->t()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract z(Ljava/lang/Object;Lr4/ht3;Lr4/e8;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lr4/ht3;",
            "Lr4/e8;",
            ")V"
        }
    .end annotation
.end method
