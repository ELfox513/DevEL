.class public abstract Lr4/so3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/ht3;


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lr4/gt3;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lr4/gt3;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr4/ot3;

.field public final d:Lr4/po2;

.field public e:Landroid/os/Looper;

.field public f:Lr4/e8;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lr4/so3;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lr4/so3;->b:Ljava/util/HashSet;

    new-instance v0, Lr4/ot3;

    invoke-direct {v0}, Lr4/ot3;-><init>()V

    iput-object v0, p0, Lr4/so3;->c:Lr4/ot3;

    new-instance v0, Lr4/po2;

    invoke-direct {v0}, Lr4/po2;-><init>()V

    iput-object v0, p0, Lr4/so3;->d:Lr4/po2;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Handler;Lr4/qp2;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lr4/so3;->d:Lr4/po2;

    invoke-virtual {v0, p1, p2}, Lr4/po2;->b(Landroid/os/Handler;Lr4/qp2;)V

    return-void
.end method

.method public final c(Lr4/qp2;)V
    .locals 1

    iget-object v0, p0, Lr4/so3;->d:Lr4/po2;

    invoke-virtual {v0, p1}, Lr4/po2;->c(Lr4/qp2;)V

    return-void
.end method

.method public final d(Landroid/os/Handler;Lr4/pt3;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lr4/so3;->c:Lr4/ot3;

    invoke-virtual {v0, p1, p2}, Lr4/ot3;->b(Landroid/os/Handler;Lr4/pt3;)V

    return-void
.end method

.method public final e(Lr4/gt3;)V
    .locals 2

    iget-object v0, p0, Lr4/so3;->e:Landroid/os/Looper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lr4/so3;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lr4/so3;->b:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lr4/so3;->l()V

    :cond_0
    return-void
.end method

.method public final f(Lr4/gt3;)V
    .locals 2

    iget-object v0, p0, Lr4/so3;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lr4/so3;->b:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    xor-int/lit8 p1, v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lr4/so3;->b:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lr4/so3;->o()V

    :cond_0
    return-void
.end method

.method public final g(Lr4/gt3;)V
    .locals 1

    iget-object v0, p0, Lr4/so3;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr4/so3;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lr4/so3;->e:Landroid/os/Looper;

    iput-object p1, p0, Lr4/so3;->f:Lr4/e8;

    iget-object p1, p0, Lr4/so3;->b:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    invoke-virtual {p0}, Lr4/so3;->p()V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lr4/so3;->f(Lr4/gt3;)V

    return-void
.end method

.method public final j(Lr4/gt3;Lr4/ho;)V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lr4/so3;->e:Landroid/os/Looper;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-static {v2}, Lr4/ja;->a(Z)V

    iget-object v1, p0, Lr4/so3;->f:Lr4/e8;

    iget-object v2, p0, Lr4/so3;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lr4/so3;->e:Landroid/os/Looper;

    if-nez v2, :cond_2

    iput-object v0, p0, Lr4/so3;->e:Landroid/os/Looper;

    iget-object v0, p0, Lr4/so3;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p2}, Lr4/so3;->m(Lr4/ho;)V

    return-void

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0, p1}, Lr4/so3;->e(Lr4/gt3;)V

    invoke-interface {p1, p0, v1}, Lr4/gt3;->a(Lr4/ht3;Lr4/e8;)V

    :cond_3
    return-void
.end method

.method public final k(Lr4/pt3;)V
    .locals 1

    iget-object v0, p0, Lr4/so3;->c:Lr4/ot3;

    invoke-virtual {v0, p1}, Lr4/ot3;->c(Lr4/pt3;)V

    return-void
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method public abstract m(Lr4/ho;)V
.end method

.method public final n()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o()V
    .locals 0

    return-void
.end method

.method public abstract p()V
.end method

.method public final q(Lr4/e8;)V
    .locals 4

    iput-object p1, p0, Lr4/so3;->f:Lr4/e8;

    iget-object v0, p0, Lr4/so3;->a:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr4/gt3;

    invoke-interface {v3, p0, p1}, Lr4/gt3;->a(Lr4/ht3;Lr4/e8;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final r()Lr4/e8;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final s(Lr4/ft3;)Lr4/ot3;
    .locals 4

    iget-object v0, p0, Lr4/so3;->c:Lr4/ot3;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lr4/ot3;->a(ILr4/ft3;J)Lr4/ot3;

    move-result-object p1

    return-object p1
.end method

.method public final u(ILr4/ft3;J)Lr4/ot3;
    .locals 2

    iget-object p3, p0, Lr4/so3;->c:Lr4/ot3;

    const-wide/16 v0, 0x0

    invoke-virtual {p3, p1, p2, v0, v1}, Lr4/ot3;->a(ILr4/ft3;J)Lr4/ot3;

    move-result-object p1

    return-object p1
.end method

.method public final w(Lr4/ft3;)Lr4/po2;
    .locals 2

    iget-object v0, p0, Lr4/so3;->d:Lr4/po2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lr4/po2;->a(ILr4/ft3;)Lr4/po2;

    move-result-object p1

    return-object p1
.end method

.method public final x(ILr4/ft3;)Lr4/po2;
    .locals 1

    iget-object v0, p0, Lr4/so3;->d:Lr4/po2;

    invoke-virtual {v0, p1, p2}, Lr4/po2;->a(ILr4/ft3;)Lr4/po2;

    move-result-object p1

    return-object p1
.end method

.method public final y()Z
    .locals 1

    iget-object v0, p0, Lr4/so3;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
