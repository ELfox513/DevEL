.class public final Lr4/oc0;
.super Lr4/tb0;
.source "SourceFile"


# instance fields
.field public final a:Ld3/v;


# direct methods
.method public constructor <init>(Ld3/v;)V
    .locals 0

    invoke-direct {p0}, Lr4/tb0;-><init>()V

    iput-object p1, p0, Lr4/oc0;->a:Ld3/v;

    return-void
.end method


# virtual methods
.method public final E()V
    .locals 1

    iget-object v0, p0, Lr4/oc0;->a:Ld3/v;

    invoke-virtual {v0}, Ld3/v;->s()V

    return-void
.end method

.method public final G0(Lf4/a;)V
    .locals 1

    iget-object v0, p0, Lr4/oc0;->a:Ld3/v;

    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Ld3/v;->q(Landroid/view/View;)V

    return-void
.end method

.method public final L5(Lf4/a;)V
    .locals 1

    iget-object v0, p0, Lr4/oc0;->a:Ld3/v;

    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Ld3/v;->F(Landroid/view/View;)V

    return-void
.end method

.method public final P()F
    .locals 1

    iget-object v0, p0, Lr4/oc0;->a:Ld3/v;

    invoke-virtual {v0}, Ld3/v;->e()F

    move-result v0

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/oc0;->a:Ld3/v;

    invoke-virtual {v0}, Ld3/v;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 11

    iget-object v0, p0, Lr4/oc0;->a:Ld3/v;

    invoke-virtual {v0}, Ld3/v;->j()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2/d;

    new-instance v10, Lr4/z10;

    invoke-virtual {v2}, Lv2/d;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2}, Lv2/d;->c()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2}, Lv2/d;->b()D

    move-result-wide v6

    invoke-virtual {v2}, Lv2/d;->d()I

    move-result v8

    invoke-virtual {v2}, Lv2/d;->e()I

    move-result v9

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lr4/z10;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;DII)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-object v1
.end method

.method public final d5(Lf4/a;Lf4/a;Lf4/a;)V
    .locals 1

    invoke-static {p2}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    invoke-static {p3}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/HashMap;

    iget-object v0, p0, Lr4/oc0;->a:Ld3/v;

    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1, p2, p3}, Ld3/v;->E(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public final f()Lr4/p20;
    .locals 9

    iget-object v0, p0, Lr4/oc0;->a:Ld3/v;

    invoke-virtual {v0}, Ld3/v;->i()Lv2/d;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v8, Lr4/z10;

    invoke-virtual {v0}, Lv2/d;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0}, Lv2/d;->c()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0}, Lv2/d;->b()D

    move-result-wide v4

    invoke-virtual {v0}, Lv2/d;->d()I

    move-result v6

    invoke-virtual {v0}, Lv2/d;->e()I

    move-result v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lr4/z10;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;DII)V

    return-object v8

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/oc0;->a:Ld3/v;

    invoke-virtual {v0}, Ld3/v;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/oc0;->a:Ld3/v;

    invoke-virtual {v0}, Ld3/v;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()D
    .locals 2

    iget-object v0, p0, Lr4/oc0;->a:Ld3/v;

    invoke-virtual {v0}, Ld3/v;->o()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/oc0;->a:Ld3/v;

    invoke-virtual {v0}, Ld3/v;->o()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/oc0;->a:Ld3/v;

    invoke-virtual {v0}, Ld3/v;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/oc0;->a:Ld3/v;

    invoke-virtual {v0}, Ld3/v;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/oc0;->a:Ld3/v;

    invoke-virtual {v0}, Ld3/v;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final m()Lf4/a;
    .locals 1

    iget-object v0, p0, Lr4/oc0;->a:Ld3/v;

    invoke-virtual {v0}, Ld3/v;->J()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object v0

    return-object v0
.end method

.method public final n()Z
    .locals 1

    iget-object v0, p0, Lr4/oc0;->a:Ld3/v;

    invoke-virtual {v0}, Ld3/v;->m()Z

    move-result v0

    return v0
.end method

.method public final o()Lf4/a;
    .locals 1

    iget-object v0, p0, Lr4/oc0;->a:Ld3/v;

    invoke-virtual {v0}, Ld3/v;->a()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object v0

    return-object v0
.end method

.method public final p()Lr4/lx;
    .locals 1

    iget-object v0, p0, Lr4/oc0;->a:Ld3/v;

    invoke-virtual {v0}, Ld3/v;->I()Lt2/v;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/oc0;->a:Ld3/v;

    invoke-virtual {v0}, Ld3/v;->I()Lt2/v;

    move-result-object v0

    invoke-virtual {v0}, Lt2/v;->c()Lr4/lx;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final q()Lr4/h20;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final r()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lr4/oc0;->a:Ld3/v;

    invoke-virtual {v0}, Ld3/v;->g()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final t()Z
    .locals 1

    iget-object v0, p0, Lr4/oc0;->a:Ld3/v;

    invoke-virtual {v0}, Ld3/v;->l()Z

    move-result v0

    return v0
.end method

.method public final v()F
    .locals 1

    iget-object v0, p0, Lr4/oc0;->a:Ld3/v;

    invoke-virtual {v0}, Ld3/v;->k()F

    move-result v0

    return v0
.end method

.method public final w()Lf4/a;
    .locals 1

    iget-object v0, p0, Lr4/oc0;->a:Ld3/v;

    invoke-virtual {v0}, Ld3/v;->K()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object v0

    return-object v0
.end method

.method public final z()F
    .locals 1

    iget-object v0, p0, Lr4/oc0;->a:Ld3/v;

    invoke-virtual {v0}, Ld3/v;->f()F

    move-result v0

    return v0
.end method
