.class public final Lr4/uk2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/t92;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/t92<",
        "Lr4/h11;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lr4/bu0;

.field public final d:Lr4/d92;

.field public final e:Lr4/h92;

.field public final f:Landroid/view/ViewGroup;

.field public g:Lr4/n00;

.field public final h:Lr4/aa1;

.field public final i:Lr4/fp2;

.field public j:Lr4/h83;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/h83<",
            "Lr4/h11;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lr4/yt;Lr4/bu0;Lr4/d92;Lr4/h92;Lr4/fp2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/uk2;->a:Landroid/content/Context;

    iput-object p2, p0, Lr4/uk2;->b:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lr4/uk2;->c:Lr4/bu0;

    iput-object p5, p0, Lr4/uk2;->d:Lr4/d92;

    iput-object p6, p0, Lr4/uk2;->e:Lr4/h92;

    iput-object p7, p0, Lr4/uk2;->i:Lr4/fp2;

    invoke-virtual {p4}, Lr4/bu0;->k()Lr4/aa1;

    move-result-object p2

    iput-object p2, p0, Lr4/uk2;->h:Lr4/aa1;

    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lr4/uk2;->f:Landroid/view/ViewGroup;

    invoke-virtual {p7, p3}, Lr4/fp2;->I(Lr4/yt;)Lr4/fp2;

    return-void
.end method

.method public static synthetic c(Lr4/uk2;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lr4/uk2;->b:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static synthetic d(Lr4/uk2;)Lr4/d92;
    .locals 0

    iget-object p0, p0, Lr4/uk2;->d:Lr4/d92;

    return-object p0
.end method

.method public static synthetic e(Lr4/uk2;)Lr4/h92;
    .locals 0

    iget-object p0, p0, Lr4/uk2;->e:Lr4/h92;

    return-object p0
.end method

.method public static synthetic f(Lr4/uk2;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lr4/uk2;->f:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static synthetic g(Lr4/uk2;)Lr4/aa1;
    .locals 0

    iget-object p0, p0, Lr4/uk2;->h:Lr4/aa1;

    return-object p0
.end method

.method public static synthetic h(Lr4/uk2;Lr4/h83;)Lr4/h83;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lr4/uk2;->j:Lr4/h83;

    return-object p1
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lr4/uk2;->j:Lr4/h83;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Lr4/tt;Ljava/lang/String;Lr4/r92;Lr4/s92;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/tt;",
            "Ljava/lang/String;",
            "Lr4/r92;",
            "Lr4/s92<",
            "-",
            "Lr4/h11;",
            ">;)Z"
        }
    .end annotation

    const/4 p3, 0x0

    if-nez p2, :cond_0

    const-string p1, "Ad unit ID should not be null for banner ad."

    invoke-static {p1}, Lr4/cm0;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lr4/uk2;->b:Ljava/util/concurrent/Executor;

    new-instance p2, Lr4/qk2;

    invoke-direct {p2, p0}, Lr4/qk2;-><init>(Lr4/uk2;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return p3

    :cond_0
    invoke-virtual {p0}, Lr4/uk2;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    return p3

    :cond_1
    sget-object v0, Lr4/rz;->p6:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lr4/tt;->q:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lr4/uk2;->c:Lr4/bu0;

    invoke-virtual {v0}, Lr4/bu0;->C()Lr4/iv1;

    move-result-object v0

    invoke-virtual {v0, v1}, Lr4/iv1;->c(Z)V

    :cond_2
    iget-object v0, p0, Lr4/uk2;->i:Lr4/fp2;

    invoke-virtual {v0, p2}, Lr4/fp2;->L(Ljava/lang/String;)Lr4/fp2;

    invoke-virtual {v0, p1}, Lr4/fp2;->G(Lr4/tt;)Lr4/fp2;

    invoke-virtual {v0}, Lr4/fp2;->l()Lr4/hp2;

    move-result-object p1

    sget-object p2, Lr4/k10;->c:Lr4/u00;

    invoke-virtual {p2}, Lr4/u00;->e()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    iget-object p2, p0, Lr4/uk2;->i:Lr4/fp2;

    invoke-virtual {p2}, Lr4/fp2;->K()Lr4/yt;

    move-result-object p2

    iget-boolean p2, p2, Lr4/yt;->v:Z

    if-eqz p2, :cond_4

    iget-object p1, p0, Lr4/uk2;->d:Lr4/d92;

    if-eqz p1, :cond_3

    const/4 p2, 0x7

    invoke-static {p2, v0, v0}, Lr4/dq2;->d(ILjava/lang/String;Lr4/lt;)Lr4/lt;

    move-result-object p2

    invoke-virtual {p1, p2}, Lr4/d92;->B(Lr4/lt;)V

    :cond_3
    return p3

    :cond_4
    sget-object p2, Lr4/rz;->O5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object p3

    invoke-virtual {p3, p2}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lr4/uk2;->c:Lr4/bu0;

    invoke-virtual {p2}, Lr4/bu0;->n()Lr4/e21;

    move-result-object p2

    new-instance p3, Lr4/s61;

    invoke-direct {p3}, Lr4/s61;-><init>()V

    iget-object v2, p0, Lr4/uk2;->a:Landroid/content/Context;

    invoke-virtual {p3, v2}, Lr4/s61;->e(Landroid/content/Context;)Lr4/s61;

    invoke-virtual {p3, p1}, Lr4/s61;->f(Lr4/hp2;)Lr4/s61;

    invoke-virtual {p3}, Lr4/s61;->h()Lr4/u61;

    move-result-object p1

    invoke-interface {p2, p1}, Lr4/e21;->s(Lr4/u61;)Lr4/e21;

    new-instance p1, Lr4/zc1;

    invoke-direct {p1}, Lr4/zc1;-><init>()V

    iget-object p3, p0, Lr4/uk2;->d:Lr4/d92;

    iget-object v2, p0, Lr4/uk2;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p3, v2}, Lr4/zc1;->b(Lr4/ga1;Ljava/util/concurrent/Executor;)Lr4/zc1;

    iget-object p3, p0, Lr4/uk2;->d:Lr4/d92;

    iget-object v2, p0, Lr4/uk2;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p3, v2}, Lr4/zc1;->w(Lr4/qc;Ljava/util/concurrent/Executor;)Lr4/zc1;

    invoke-virtual {p1}, Lr4/zc1;->c()Lr4/bd1;

    move-result-object p1

    invoke-interface {p2, p1}, Lr4/e21;->t(Lr4/bd1;)Lr4/e21;

    new-instance p1, Lr4/j72;

    iget-object p3, p0, Lr4/uk2;->g:Lr4/n00;

    invoke-direct {p1, p3}, Lr4/j72;-><init>(Lr4/n00;)V

    invoke-interface {p2, p1}, Lr4/e21;->o(Lr4/j72;)Lr4/e21;

    new-instance p1, Lr4/mh1;

    sget-object p3, Lr4/pj1;->h:Lr4/pj1;

    invoke-direct {p1, p3, v0}, Lr4/mh1;-><init>(Lr4/pj1;Lr4/iv;)V

    invoke-interface {p2, p1}, Lr4/e21;->k(Lr4/mh1;)Lr4/e21;

    new-instance p1, Lr4/c31;

    iget-object p3, p0, Lr4/uk2;->h:Lr4/aa1;

    invoke-direct {p1, p3}, Lr4/c31;-><init>(Lr4/aa1;)V

    invoke-interface {p2, p1}, Lr4/e21;->g(Lr4/c31;)Lr4/e21;

    new-instance p1, Lr4/e11;

    iget-object p3, p0, Lr4/uk2;->f:Landroid/view/ViewGroup;

    invoke-direct {p1, p3}, Lr4/e11;-><init>(Landroid/view/ViewGroup;)V

    invoke-interface {p2, p1}, Lr4/e21;->h(Lr4/e11;)Lr4/e21;

    invoke-interface {p2}, Lr4/e21;->zza()Lr4/f21;

    move-result-object p1

    goto/16 :goto_0

    :cond_5
    iget-object p2, p0, Lr4/uk2;->c:Lr4/bu0;

    invoke-virtual {p2}, Lr4/bu0;->n()Lr4/e21;

    move-result-object p2

    new-instance p3, Lr4/s61;

    invoke-direct {p3}, Lr4/s61;-><init>()V

    iget-object v2, p0, Lr4/uk2;->a:Landroid/content/Context;

    invoke-virtual {p3, v2}, Lr4/s61;->e(Landroid/content/Context;)Lr4/s61;

    invoke-virtual {p3, p1}, Lr4/s61;->f(Lr4/hp2;)Lr4/s61;

    invoke-virtual {p3}, Lr4/s61;->h()Lr4/u61;

    move-result-object p1

    invoke-interface {p2, p1}, Lr4/e21;->s(Lr4/u61;)Lr4/e21;

    new-instance p1, Lr4/zc1;

    invoke-direct {p1}, Lr4/zc1;-><init>()V

    iget-object p3, p0, Lr4/uk2;->d:Lr4/d92;

    iget-object v2, p0, Lr4/uk2;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p3, v2}, Lr4/zc1;->b(Lr4/ga1;Ljava/util/concurrent/Executor;)Lr4/zc1;

    iget-object p3, p0, Lr4/uk2;->d:Lr4/d92;

    iget-object v2, p0, Lr4/uk2;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p3, v2}, Lr4/zc1;->x(Lr4/gt;Ljava/util/concurrent/Executor;)Lr4/zc1;

    iget-object p3, p0, Lr4/uk2;->e:Lr4/h92;

    iget-object v2, p0, Lr4/uk2;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p3, v2}, Lr4/zc1;->x(Lr4/gt;Ljava/util/concurrent/Executor;)Lr4/zc1;

    iget-object p3, p0, Lr4/uk2;->d:Lr4/d92;

    iget-object v2, p0, Lr4/uk2;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p3, v2}, Lr4/zc1;->y(Lr4/cf1;Ljava/util/concurrent/Executor;)Lr4/zc1;

    iget-object p3, p0, Lr4/uk2;->d:Lr4/d92;

    iget-object v2, p0, Lr4/uk2;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p3, v2}, Lr4/zc1;->z(Lr4/d81;Ljava/util/concurrent/Executor;)Lr4/zc1;

    iget-object p3, p0, Lr4/uk2;->d:Lr4/d92;

    iget-object v2, p0, Lr4/uk2;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p3, v2}, Lr4/zc1;->s(Lr4/j71;Ljava/util/concurrent/Executor;)Lr4/zc1;

    iget-object p3, p0, Lr4/uk2;->d:Lr4/d92;

    iget-object v2, p0, Lr4/uk2;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p3, v2}, Lr4/zc1;->t(Lr4/y81;Ljava/util/concurrent/Executor;)Lr4/zc1;

    iget-object p3, p0, Lr4/uk2;->d:Lr4/d92;

    iget-object v2, p0, Lr4/uk2;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p3, v2}, Lr4/zc1;->u(Lr4/m71;Ljava/util/concurrent/Executor;)Lr4/zc1;

    iget-object p3, p0, Lr4/uk2;->d:Lr4/d92;

    iget-object v2, p0, Lr4/uk2;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p3, v2}, Lr4/zc1;->w(Lr4/qc;Ljava/util/concurrent/Executor;)Lr4/zc1;

    iget-object p3, p0, Lr4/uk2;->d:Lr4/d92;

    iget-object v2, p0, Lr4/uk2;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p3, v2}, Lr4/zc1;->C(Lr4/w91;Ljava/util/concurrent/Executor;)Lr4/zc1;

    invoke-virtual {p1}, Lr4/zc1;->c()Lr4/bd1;

    move-result-object p1

    invoke-interface {p2, p1}, Lr4/e21;->t(Lr4/bd1;)Lr4/e21;

    new-instance p1, Lr4/j72;

    iget-object p3, p0, Lr4/uk2;->g:Lr4/n00;

    invoke-direct {p1, p3}, Lr4/j72;-><init>(Lr4/n00;)V

    invoke-interface {p2, p1}, Lr4/e21;->o(Lr4/j72;)Lr4/e21;

    new-instance p1, Lr4/mh1;

    sget-object p3, Lr4/pj1;->h:Lr4/pj1;

    invoke-direct {p1, p3, v0}, Lr4/mh1;-><init>(Lr4/pj1;Lr4/iv;)V

    invoke-interface {p2, p1}, Lr4/e21;->k(Lr4/mh1;)Lr4/e21;

    new-instance p1, Lr4/c31;

    iget-object p3, p0, Lr4/uk2;->h:Lr4/aa1;

    invoke-direct {p1, p3}, Lr4/c31;-><init>(Lr4/aa1;)V

    invoke-interface {p2, p1}, Lr4/e21;->g(Lr4/c31;)Lr4/e21;

    new-instance p1, Lr4/e11;

    iget-object p3, p0, Lr4/uk2;->f:Landroid/view/ViewGroup;

    invoke-direct {p1, p3}, Lr4/e11;-><init>(Landroid/view/ViewGroup;)V

    invoke-interface {p2, p1}, Lr4/e21;->h(Lr4/e11;)Lr4/e21;

    invoke-interface {p2}, Lr4/e21;->zza()Lr4/f21;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Lr4/f21;->b()Lr4/m41;

    move-result-object p2

    invoke-virtual {p2}, Lr4/m41;->c()Lr4/h83;

    move-result-object p3

    invoke-virtual {p2, p3}, Lr4/m41;->d(Lr4/h83;)Lr4/h83;

    move-result-object p2

    iput-object p2, p0, Lr4/uk2;->j:Lr4/h83;

    new-instance p3, Lr4/tk2;

    invoke-direct {p3, p0, p4, p1}, Lr4/tk2;-><init>(Lr4/uk2;Lr4/s92;Lr4/f21;)V

    iget-object p1, p0, Lr4/uk2;->b:Ljava/util/concurrent/Executor;

    invoke-static {p2, p3, p1}, Lr4/y73;->p(Lr4/h83;Lr4/t73;Ljava/util/concurrent/Executor;)V

    return v1
.end method

.method public final i()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lr4/uk2;->f:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final j(Lr4/n00;)V
    .locals 0

    iput-object p1, p0, Lr4/uk2;->g:Lr4/n00;

    return-void
.end method

.method public final k(Lr4/ev;)V
    .locals 1

    iget-object v0, p0, Lr4/uk2;->e:Lr4/h92;

    invoke-virtual {v0, p1}, Lr4/h92;->c(Lr4/ev;)V

    return-void
.end method

.method public final l()Lr4/fp2;
    .locals 1

    iget-object v0, p0, Lr4/uk2;->i:Lr4/fp2;

    return-object v0
.end method

.method public final m()Z
    .locals 2

    iget-object v0, p0, Lr4/uk2;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    check-cast v0, Landroid/view/View;

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lb3/k2;->z(Landroid/view/View;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public final n(Lr4/ba1;)V
    .locals 2

    iget-object v0, p0, Lr4/uk2;->h:Lr4/aa1;

    iget-object v1, p0, Lr4/uk2;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p1, v1}, Lr4/yc1;->K0(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final o()V
    .locals 2

    iget-object v0, p0, Lr4/uk2;->h:Lr4/aa1;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lr4/aa1;->T0(I)V

    return-void
.end method

.method public final synthetic p()V
    .locals 3

    iget-object v0, p0, Lr4/uk2;->d:Lr4/d92;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lr4/dq2;->d(ILjava/lang/String;Lr4/lt;)Lr4/lt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr4/d92;->B(Lr4/lt;)V

    return-void
.end method
