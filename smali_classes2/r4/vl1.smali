.class public final Lr4/vl1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Lr4/wm1;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lr4/wm1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput-object p1, p0, Lr4/vl1;->a:Landroid/os/Handler;

    iput-object p2, p0, Lr4/vl1;->b:Lr4/wm1;

    return-void
.end method


# virtual methods
.method public final a(Lr4/gp;)V
    .locals 2

    iget-object v0, p0, Lr4/vl1;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lr4/kb1;

    invoke-direct {v1, p0, p1}, Lr4/kb1;-><init>(Lr4/vl1;Lr4/gp;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;JJ)V
    .locals 9

    iget-object v0, p0, Lr4/vl1;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v8, Lr4/lc1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lr4/lc1;-><init>(Lr4/vl1;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final c(Lr4/e5;Lr4/iq;)V
    .locals 2

    iget-object v0, p0, Lr4/vl1;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lr4/md1;

    invoke-direct {v1, p0, p1, p2}, Lr4/md1;-><init>(Lr4/vl1;Lr4/e5;Lr4/iq;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final d(J)V
    .locals 2

    iget-object v0, p0, Lr4/vl1;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lr4/ne1;

    invoke-direct {v1, p0, p1, p2}, Lr4/ne1;-><init>(Lr4/vl1;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final e(IJJ)V
    .locals 9

    iget-object v0, p0, Lr4/vl1;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v8, Lr4/of1;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lr4/of1;-><init>(Lr4/vl1;IJJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lr4/vl1;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lr4/pg1;

    invoke-direct {v1, p0, p1}, Lr4/pg1;-><init>(Lr4/vl1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final g(Lr4/gp;)V
    .locals 2

    invoke-virtual {p1}, Lr4/gp;->a()V

    iget-object v0, p0, Lr4/vl1;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lr4/qh1;

    invoke-direct {v1, p0, p1}, Lr4/qh1;-><init>(Lr4/vl1;Lr4/gp;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final h(Z)V
    .locals 2

    iget-object v0, p0, Lr4/vl1;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lr4/ri1;

    invoke-direct {v1, p0, p1}, Lr4/ri1;-><init>(Lr4/vl1;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final i(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lr4/vl1;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lr4/sj1;

    invoke-direct {v1, p0, p1}, Lr4/sj1;-><init>(Lr4/vl1;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final j(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lr4/vl1;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lr4/tk1;

    invoke-direct {v1, p0, p1}, Lr4/tk1;-><init>(Lr4/vl1;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final synthetic k(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lr4/vl1;->b:Lr4/wm1;

    sget v1, Lr4/lc;->a:I

    invoke-interface {v0, p1}, Lr4/wm1;->v(Ljava/lang/Exception;)V

    return-void
.end method

.method public final synthetic l(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lr4/vl1;->b:Lr4/wm1;

    sget v1, Lr4/lc;->a:I

    invoke-interface {v0, p1}, Lr4/wm1;->x(Ljava/lang/Exception;)V

    return-void
.end method

.method public final synthetic m(Z)V
    .locals 2

    iget-object v0, p0, Lr4/vl1;->b:Lr4/wm1;

    sget v1, Lr4/lc;->a:I

    invoke-interface {v0, p1}, Lr4/wm1;->p(Z)V

    return-void
.end method

.method public final synthetic n(Lr4/gp;)V
    .locals 2

    invoke-virtual {p1}, Lr4/gp;->a()V

    iget-object v0, p0, Lr4/vl1;->b:Lr4/wm1;

    sget v1, Lr4/lc;->a:I

    invoke-interface {v0, p1}, Lr4/wm1;->A(Lr4/gp;)V

    return-void
.end method

.method public final synthetic o(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lr4/vl1;->b:Lr4/wm1;

    sget v1, Lr4/lc;->a:I

    invoke-interface {v0, p1}, Lr4/wm1;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic p(IJJ)V
    .locals 6

    iget-object v0, p0, Lr4/vl1;->b:Lr4/wm1;

    sget v1, Lr4/lc;->a:I

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lr4/wm1;->i(IJJ)V

    return-void
.end method

.method public final synthetic q(J)V
    .locals 2

    iget-object v0, p0, Lr4/vl1;->b:Lr4/wm1;

    sget v1, Lr4/lc;->a:I

    invoke-interface {v0, p1, p2}, Lr4/wm1;->w(J)V

    return-void
.end method

.method public final synthetic r(Lr4/e5;Lr4/iq;)V
    .locals 1

    sget v0, Lr4/lc;->a:I

    iget-object v0, p0, Lr4/vl1;->b:Lr4/wm1;

    invoke-interface {v0, p1, p2}, Lr4/wm1;->j(Lr4/e5;Lr4/iq;)V

    return-void
.end method

.method public final synthetic s(Ljava/lang/String;JJ)V
    .locals 6

    iget-object v0, p0, Lr4/vl1;->b:Lr4/wm1;

    sget v1, Lr4/lc;->a:I

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lr4/wm1;->o(Ljava/lang/String;JJ)V

    return-void
.end method

.method public final synthetic t(Lr4/gp;)V
    .locals 2

    iget-object v0, p0, Lr4/vl1;->b:Lr4/wm1;

    sget v1, Lr4/lc;->a:I

    invoke-interface {v0, p1}, Lr4/wm1;->e(Lr4/gp;)V

    return-void
.end method
