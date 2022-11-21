.class public final Lr4/w22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/y12;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/y12<",
        "Lr4/h11;",
        "Lr4/zp2;",
        "Lr4/n32;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lr4/f21;

.field public final c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr4/f21;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/w22;->a:Landroid/content/Context;

    iput-object p2, p0, Lr4/w22;->b:Lr4/f21;

    iput-object p3, p0, Lr4/w22;->c:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lr4/bp2;Lr4/no2;Lr4/t12;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lr4/rz;->B5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p2, Lr4/no2;->d0:Z

    if-eqz v0, :cond_2

    iget-object v0, p3, Lr4/t12;->b:Ljava/lang/Object;

    check-cast v0, Lr4/zp2;

    invoke-virtual {v0}, Lr4/zp2;->f()Lr4/ob0;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0}, Lr4/ob0;->c()Lf4/a;

    move-result-object v2

    invoke-static {v2}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-interface {v0}, Lr4/ob0;->d()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_3

    invoke-static {v1}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object v0

    new-instance v3, Lr4/v22;

    invoke-direct {v3, p0, v2, p2}, Lr4/v22;-><init>(Lr4/w22;Landroid/view/View;Lr4/no2;)V

    sget-object v2, Lr4/qm0;->e:Lr4/i83;

    invoke-static {v0, v3, v2}, Lr4/y73;->i(Lr4/h83;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object v0

    :try_start_1
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance p2, Lr4/mp2;

    invoke-direct {p2, p1}, Lr4/mp2;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    new-instance p1, Lr4/mp2;

    new-instance p2, Ljava/lang/Exception;

    const-string p3, "BannerAdapterWrapper interscrollerView should not be null"

    invoke-direct {p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lr4/mp2;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p1

    new-instance p2, Lr4/mp2;

    invoke-direct {p2, p1}, Lr4/mp2;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    const-string p1, "getInterscrollerAd should not be null after loadInterscrollerAd loaded ad."

    invoke-static {p1}, Lr4/cm0;->c(Ljava/lang/String;)V

    new-instance p2, Lr4/mp2;

    new-instance p3, Ljava/lang/Exception;

    invoke-direct {p3, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Lr4/mp2;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    iget-object v0, p3, Lr4/t12;->b:Ljava/lang/Object;

    check-cast v0, Lr4/zp2;

    invoke-virtual {v0}, Lr4/zp2;->d()Landroid/view/View;

    move-result-object v2

    :cond_3
    :goto_1
    iget-object v0, p0, Lr4/w22;->b:Lr4/f21;

    new-instance v3, Lr4/x31;

    iget-object v4, p3, Lr4/t12;->a:Ljava/lang/String;

    invoke-direct {v3, p1, p2, v4}, Lr4/x31;-><init>(Lr4/bp2;Lr4/no2;Ljava/lang/String;)V

    new-instance p1, Lr4/o11;

    iget-object v4, p3, Lr4/t12;->b:Ljava/lang/Object;

    check-cast v4, Lr4/zp2;

    invoke-static {v4}, Lr4/u22;->a(Lr4/zp2;)Lr4/g31;

    move-result-object v4

    iget-object p2, p2, Lr4/no2;->u:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lr4/qo2;

    invoke-direct {p1, v2, v1, v4, p2}, Lr4/o11;-><init>(Landroid/view/View;Lr4/cs0;Lr4/g31;Lr4/qo2;)V

    invoke-virtual {v0, v3, p1}, Lr4/f21;->d(Lr4/x31;Lr4/o11;)Lr4/i11;

    move-result-object p1

    invoke-virtual {p1}, Lr4/i11;->j()Lr4/xe1;

    move-result-object p2

    invoke-virtual {p2, v2}, Lr4/xe1;->T0(Landroid/view/View;)V

    invoke-virtual {p1}, Lr4/j31;->a()Lr4/j81;

    move-result-object p2

    new-instance v0, Lr4/sy0;

    iget-object v1, p3, Lr4/t12;->b:Ljava/lang/Object;

    check-cast v1, Lr4/zp2;

    invoke-direct {v0, v1}, Lr4/sy0;-><init>(Lr4/zp2;)V

    iget-object v1, p0, Lr4/w22;->c:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, v0, v1}, Lr4/yc1;->K0(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    iget-object p2, p3, Lr4/t12;->c:Lr4/u81;

    check-cast p2, Lr4/n32;

    invoke-virtual {p1}, Lr4/j31;->f()Lr4/x62;

    move-result-object p3

    invoke-virtual {p2, p3}, Lr4/n32;->g7(Lr4/lb0;)V

    invoke-virtual {p1}, Lr4/i11;->h()Lr4/h11;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lr4/bp2;Lr4/no2;Lr4/t12;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/bp2;",
            "Lr4/no2;",
            "Lr4/t12<",
            "Lr4/zp2;",
            "Lr4/n32;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p1, Lr4/bp2;->a:Lr4/yo2;

    iget-object v0, v0, Lr4/yo2;->a:Lr4/hp2;

    iget-object v0, v0, Lr4/hp2;->e:Lr4/yt;

    iget-boolean v1, v0, Lr4/yt;->y:Z

    if-eqz v1, :cond_0

    new-instance v1, Lr4/yt;

    iget-object v2, p0, Lr4/w22;->a:Landroid/content/Context;

    iget v3, v0, Lr4/yt;->p:I

    iget v0, v0, Lr4/yt;->b:I

    invoke-static {v3, v0}, Lt2/x;->b(II)Lt2/g;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lr4/yt;-><init>(Landroid/content/Context;Lt2/g;)V

    :goto_0
    move-object v4, v1

    goto :goto_1

    :cond_0
    sget-object v1, Lr4/rz;->B5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v2

    invoke-virtual {v2, v1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p2, Lr4/no2;->d0:Z

    if-eqz v1, :cond_1

    new-instance v1, Lr4/yt;

    iget-object v2, p0, Lr4/w22;->a:Landroid/content/Context;

    iget v3, v0, Lr4/yt;->p:I

    iget v0, v0, Lr4/yt;->b:I

    invoke-static {v3, v0}, Lt2/x;->c(II)Lt2/g;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lr4/yt;-><init>(Landroid/content/Context;Lt2/g;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lr4/w22;->a:Landroid/content/Context;

    iget-object v1, p2, Lr4/no2;->u:Ljava/util/List;

    invoke-static {v0, v1}, Lr4/lp2;->b(Landroid/content/Context;Ljava/util/List;)Lr4/yt;

    move-result-object v1

    goto :goto_0

    :goto_1
    sget-object v0, Lr4/rz;->B5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p2, Lr4/no2;->d0:Z

    if-eqz v0, :cond_2

    iget-object v0, p3, Lr4/t12;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lr4/zp2;

    iget-object v3, p0, Lr4/w22;->a:Landroid/content/Context;

    iget-object p1, p1, Lr4/bp2;->a:Lr4/yo2;

    iget-object p1, p1, Lr4/yo2;->a:Lr4/hp2;

    iget-object v5, p1, Lr4/hp2;->d:Lr4/tt;

    iget-object p1, p2, Lr4/no2;->v:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p2, Lr4/no2;->s:Lr4/uo2;

    invoke-static {p1}, Lb3/b1;->l(Lr4/uo2;)Ljava/lang/String;

    move-result-object v7

    iget-object p1, p3, Lr4/t12;->c:Lr4/u81;

    move-object v8, p1

    check-cast v8, Lr4/lb0;

    invoke-virtual/range {v2 .. v8}, Lr4/zp2;->e(Landroid/content/Context;Lr4/yt;Lr4/tt;Ljava/lang/String;Ljava/lang/String;Lr4/lb0;)V

    return-void

    :cond_2
    iget-object v0, p3, Lr4/t12;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lr4/zp2;

    iget-object v3, p0, Lr4/w22;->a:Landroid/content/Context;

    iget-object p1, p1, Lr4/bp2;->a:Lr4/yo2;

    iget-object p1, p1, Lr4/yo2;->a:Lr4/hp2;

    iget-object v5, p1, Lr4/hp2;->d:Lr4/tt;

    iget-object p1, p2, Lr4/no2;->v:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p2, Lr4/no2;->s:Lr4/uo2;

    invoke-static {p1}, Lb3/b1;->l(Lr4/uo2;)Ljava/lang/String;

    move-result-object v7

    iget-object p1, p3, Lr4/t12;->c:Lr4/u81;

    move-object v8, p1

    check-cast v8, Lr4/lb0;

    invoke-virtual/range {v2 .. v8}, Lr4/zp2;->j(Landroid/content/Context;Lr4/yt;Lr4/tt;Ljava/lang/String;Ljava/lang/String;Lr4/lb0;)V

    return-void
.end method

.method public final synthetic c(Landroid/view/View;Lr4/no2;Ljava/lang/Object;)Lr4/h83;
    .locals 0

    iget-object p3, p0, Lr4/w22;->a:Landroid/content/Context;

    invoke-static {p3, p1, p2}, Lr4/w21;->a(Landroid/content/Context;Landroid/view/View;Lr4/no2;)Lr4/w21;

    move-result-object p1

    invoke-static {p1}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method
