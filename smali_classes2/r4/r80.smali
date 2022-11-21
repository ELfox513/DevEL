.class public final Lr4/r80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/j80;
.implements Lr4/g80;


# instance fields
.field public final a:Lr4/cs0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr4/im0;Lr4/u;Lz2/a;)V
    .locals 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lz2/t;->e()Lr4/os0;

    invoke-static {}, Lr4/vt0;->b()Lr4/vt0;

    move-result-object v1

    invoke-static {}, Lr4/ip;->a()Lr4/ip;

    move-result-object v11

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p1

    move-object/from16 v7, p2

    invoke-static/range {v0 .. v13}, Lr4/os0;->a(Landroid/content/Context;Lr4/vt0;Ljava/lang/String;ZZLr4/u;Lr4/r00;Lr4/im0;Lr4/h00;Lz2/l;Lz2/a;Lr4/ip;Lr4/no2;Lr4/so2;)Lr4/cs0;

    move-result-object v0

    move-object v1, p0

    iput-object v0, v1, Lr4/r80;->a:Lr4/cs0;

    check-cast v0, Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method public static final V(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lr4/yu;->a()Lr4/vl0;

    invoke-static {}, Lr4/vl0;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    sget-object v0, Lb3/k2;->i:Lr4/c03;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lr4/l80;

    invoke-direct {v0, p0, p1}, Lr4/l80;-><init>(Lr4/r80;Ljava/lang/String;)V

    invoke-static {v0}, Lr4/r80;->V(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final A0(Ljava/lang/String;Lr4/u50;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lr4/u50<",
            "-",
            "Lr4/q90;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lr4/r80;->a:Lr4/cs0;

    new-instance v1, Lr4/q80;

    invoke-direct {v1, p0, p2}, Lr4/q80;-><init>(Lr4/r80;Lr4/u50;)V

    invoke-interface {v0, p1, v1}, Lr4/cs0;->g0(Ljava/lang/String;Lr4/u50;)V

    return-void
.end method

.method public final H0(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lr4/f80;->d(Lr4/g80;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final K0(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lr4/f80;->a(Lr4/g80;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final Q(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lr4/m80;

    invoke-direct {v0, p0, p1}, Lr4/m80;-><init>(Lr4/r80;Ljava/lang/String;)V

    invoke-static {v0}, Lr4/r80;->V(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final U(Ljava/lang/String;Lr4/u50;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lr4/u50<",
            "-",
            "Lr4/q90;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lr4/r80;->a:Lr4/cs0;

    new-instance v1, Lr4/o80;

    invoke-direct {v1, p2}, Lr4/o80;-><init>(Lr4/u50;)V

    invoke-interface {v0, p1, v1}, Lr4/cs0;->a1(Ljava/lang/String;Lc4/p;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lr4/r80;->a:Lr4/cs0;

    invoke-interface {v0, p1}, Lr4/cs0;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic b(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lr4/r80;->a:Lr4/cs0;

    const-string v1, "text/html"

    const-string v2, "UTF-8"

    invoke-interface {v0, p1, v1, v2}, Lr4/cs0;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lr4/f80;->c(Lr4/g80;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final synthetic e(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lr4/r80;->a:Lr4/cs0;

    const-string v1, "text/html"

    const-string v2, "UTF-8"

    invoke-interface {v0, p1, v1, v2}, Lr4/cs0;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lr4/f80;->b(Lr4/g80;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final h()Z
    .locals 1

    iget-object v0, p0, Lr4/r80;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->f0()Z

    move-result v0

    return v0
.end method

.method public final i()Lr4/r90;
    .locals 1

    new-instance v0, Lr4/r90;

    invoke-direct {v0, p0}, Lr4/r90;-><init>(Lr4/q90;)V

    return-object v0
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Lr4/r80;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->destroy()V

    return-void
.end method

.method public final q(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lr4/k80;

    invoke-direct {v0, p0, p1}, Lr4/k80;-><init>(Lr4/r80;Ljava/lang/String;)V

    invoke-static {v0}, Lr4/r80;->V(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final s(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lr4/n80;

    invoke-direct {v0, p0, p1}, Lr4/n80;-><init>(Lr4/r80;Ljava/lang/String;)V

    invoke-static {v0}, Lr4/r80;->V(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final u(Lr4/i80;)V
    .locals 1

    iget-object v0, p0, Lr4/r80;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->o0()Lr4/st0;

    move-result-object v0

    invoke-static {p1}, Lr4/p80;->b(Lr4/i80;)Lr4/rt0;

    move-result-object p1

    invoke-interface {v0, p1}, Lr4/st0;->V(Lr4/rt0;)V

    return-void
.end method

.method public final synthetic y(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lr4/r80;->a:Lr4/cs0;

    invoke-interface {v0, p1}, Lr4/s80;->q(Ljava/lang/String;)V

    return-void
.end method
