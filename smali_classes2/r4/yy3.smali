.class public final Lr4/yy3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Lr4/zy3;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lr4/zy3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput-object p1, p0, Lr4/yy3;->a:Landroid/os/Handler;

    iput-object p2, p0, Lr4/yy3;->b:Lr4/zy3;

    return-void
.end method


# virtual methods
.method public final a(Lr4/gp;)V
    .locals 2

    iget-object v0, p0, Lr4/yy3;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lr4/oy3;

    invoke-direct {v1, p0, p1}, Lr4/oy3;-><init>(Lr4/yy3;Lr4/gp;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;JJ)V
    .locals 9

    iget-object v0, p0, Lr4/yy3;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v8, Lr4/py3;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lr4/py3;-><init>(Lr4/yy3;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final c(Lr4/e5;Lr4/iq;)V
    .locals 2

    iget-object v0, p0, Lr4/yy3;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lr4/qy3;

    invoke-direct {v1, p0, p1, p2}, Lr4/qy3;-><init>(Lr4/yy3;Lr4/e5;Lr4/iq;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final d(IJ)V
    .locals 2

    iget-object v0, p0, Lr4/yy3;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lr4/ry3;

    invoke-direct {v1, p0, p1, p2, p3}, Lr4/ry3;-><init>(Lr4/yy3;IJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final e(JI)V
    .locals 2

    iget-object v0, p0, Lr4/yy3;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lr4/sy3;

    invoke-direct {v1, p0, p1, p2, p3}, Lr4/sy3;-><init>(Lr4/yy3;JI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final f(Lr4/pa4;)V
    .locals 2

    iget-object v0, p0, Lr4/yy3;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lr4/ty3;

    invoke-direct {v1, p0, p1}, Lr4/ty3;-><init>(Lr4/yy3;Lr4/pa4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lr4/yy3;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lr4/yy3;->a:Landroid/os/Handler;

    new-instance v3, Lr4/uy3;

    invoke-direct {v3, p0, p1, v0, v1}, Lr4/uy3;-><init>(Lr4/yy3;Ljava/lang/Object;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lr4/yy3;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lr4/vy3;

    invoke-direct {v1, p0, p1}, Lr4/vy3;-><init>(Lr4/yy3;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final i(Lr4/gp;)V
    .locals 2

    invoke-virtual {p1}, Lr4/gp;->a()V

    iget-object v0, p0, Lr4/yy3;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lr4/wy3;

    invoke-direct {v1, p0, p1}, Lr4/wy3;-><init>(Lr4/yy3;Lr4/gp;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final j(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lr4/yy3;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lr4/xy3;

    invoke-direct {v1, p0, p1}, Lr4/xy3;-><init>(Lr4/yy3;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final synthetic k(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lr4/yy3;->b:Lr4/zy3;

    sget v1, Lr4/lc;->a:I

    invoke-interface {v0, p1}, Lr4/zy3;->f(Ljava/lang/Exception;)V

    return-void
.end method

.method public final synthetic l(Lr4/gp;)V
    .locals 2

    invoke-virtual {p1}, Lr4/gp;->a()V

    iget-object v0, p0, Lr4/yy3;->b:Lr4/zy3;

    sget v1, Lr4/lc;->a:I

    invoke-interface {v0, p1}, Lr4/zy3;->C(Lr4/gp;)V

    return-void
.end method

.method public final synthetic m(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lr4/yy3;->b:Lr4/zy3;

    sget v1, Lr4/lc;->a:I

    invoke-interface {v0, p1}, Lr4/zy3;->x0(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic n(Ljava/lang/Object;J)V
    .locals 2

    iget-object v0, p0, Lr4/yy3;->b:Lr4/zy3;

    sget v1, Lr4/lc;->a:I

    invoke-interface {v0, p1, p2, p3}, Lr4/zy3;->l(Ljava/lang/Object;J)V

    return-void
.end method

.method public final synthetic o(Lr4/pa4;)V
    .locals 2

    iget-object v0, p0, Lr4/yy3;->b:Lr4/zy3;

    sget v1, Lr4/lc;->a:I

    invoke-interface {v0, p1}, Lr4/zy3;->q(Lr4/pa4;)V

    return-void
.end method

.method public final synthetic p(JI)V
    .locals 2

    iget-object v0, p0, Lr4/yy3;->b:Lr4/zy3;

    sget v1, Lr4/lc;->a:I

    invoke-interface {v0, p1, p2, p3}, Lr4/zy3;->b(JI)V

    return-void
.end method

.method public final synthetic q(IJ)V
    .locals 2

    iget-object v0, p0, Lr4/yy3;->b:Lr4/zy3;

    sget v1, Lr4/lc;->a:I

    invoke-interface {v0, p1, p2, p3}, Lr4/zy3;->z(IJ)V

    return-void
.end method

.method public final synthetic r(Lr4/e5;Lr4/iq;)V
    .locals 1

    sget v0, Lr4/lc;->a:I

    iget-object v0, p0, Lr4/yy3;->b:Lr4/zy3;

    invoke-interface {v0, p1, p2}, Lr4/zy3;->c(Lr4/e5;Lr4/iq;)V

    return-void
.end method

.method public final synthetic s(Ljava/lang/String;JJ)V
    .locals 6

    iget-object v0, p0, Lr4/yy3;->b:Lr4/zy3;

    sget v1, Lr4/lc;->a:I

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lr4/zy3;->n(Ljava/lang/String;JJ)V

    return-void
.end method

.method public final synthetic t(Lr4/gp;)V
    .locals 2

    iget-object v0, p0, Lr4/yy3;->b:Lr4/zy3;

    sget v1, Lr4/lc;->a:I

    invoke-interface {v0, p1}, Lr4/zy3;->m(Lr4/gp;)V

    return-void
.end method
