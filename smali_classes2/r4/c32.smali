.class public final Lr4/c32;
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
        "Lr4/ed0;",
        "Lr4/n32;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lr4/f21;

.field public c:Landroid/view/View;

.field public d:Lr4/ob0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr4/f21;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/c32;->a:Landroid/content/Context;

    iput-object p2, p0, Lr4/c32;->b:Lr4/f21;

    return-void
.end method

.method public static synthetic c(Lr4/c32;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lr4/c32;->c:Landroid/view/View;

    return-object p1
.end method

.method public static synthetic d(Lr4/c32;Lr4/ob0;)Lr4/ob0;
    .locals 0

    iput-object p1, p0, Lr4/c32;->d:Lr4/ob0;

    return-object p1
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

    if-eqz v0, :cond_1

    iget-boolean v0, p2, Lr4/no2;->d0:Z

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lr4/c32;->d:Lr4/ob0;

    invoke-interface {v0}, Lr4/ob0;->c()Lf4/a;

    move-result-object v0

    invoke-static {v0}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Lr4/c32;->d:Lr4/ob0;

    invoke-interface {v2}, Lr4/ob0;->d()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_0

    if-eqz v2, :cond_2

    invoke-static {v1}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object v2

    new-instance v3, Lr4/z22;

    invoke-direct {v3, p0, v0, p2}, Lr4/z22;-><init>(Lr4/c32;Landroid/view/View;Lr4/no2;)V

    sget-object v0, Lr4/qm0;->e:Lr4/i83;

    invoke-static {v2, v3, v0}, Lr4/y73;->i(Lr4/h83;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object v0

    :try_start_1
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
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

    const-string p3, "BannerRtbAdapterWrapper interscrollerView should not be null"

    invoke-direct {p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lr4/mp2;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p1

    new-instance p2, Lr4/mp2;

    invoke-direct {p2, p1}, Lr4/mp2;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    iget-object v0, p0, Lr4/c32;->c:Landroid/view/View;

    :cond_2
    :goto_1
    iget-object v2, p0, Lr4/c32;->b:Lr4/f21;

    new-instance v3, Lr4/x31;

    iget-object v4, p3, Lr4/t12;->a:Ljava/lang/String;

    invoke-direct {v3, p1, p2, v4}, Lr4/x31;-><init>(Lr4/bp2;Lr4/no2;Ljava/lang/String;)V

    new-instance p1, Lr4/o11;

    new-instance v4, Lr4/y22;

    invoke-direct {v4, p3}, Lr4/y22;-><init>(Lr4/t12;)V

    iget-object p2, p2, Lr4/no2;->u:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lr4/qo2;

    invoke-direct {p1, v0, v1, v4, p2}, Lr4/o11;-><init>(Landroid/view/View;Lr4/cs0;Lr4/g31;Lr4/qo2;)V

    invoke-virtual {v2, v3, p1}, Lr4/f21;->d(Lr4/x31;Lr4/o11;)Lr4/i11;

    move-result-object p1

    invoke-virtual {p1}, Lr4/i11;->j()Lr4/xe1;

    move-result-object p2

    invoke-virtual {p2, v0}, Lr4/xe1;->T0(Landroid/view/View;)V

    iget-object p2, p3, Lr4/t12;->c:Lr4/u81;

    check-cast p2, Lr4/n32;

    invoke-virtual {p1}, Lr4/j31;->g()Lr4/q62;

    move-result-object p3

    invoke-virtual {p2, p3}, Lr4/n32;->g7(Lr4/lb0;)V

    invoke-virtual {p1}, Lr4/i11;->h()Lr4/h11;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lr4/bp2;Lr4/no2;Lr4/t12;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/bp2;",
            "Lr4/no2;",
            "Lr4/t12<",
            "Lr4/ed0;",
            "Lr4/n32;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p3, Lr4/t12;->b:Ljava/lang/Object;

    check-cast v0, Lr4/ed0;

    iget-object v1, p2, Lr4/no2;->V:Ljava/lang/String;

    invoke-interface {v0, v1}, Lr4/ed0;->J0(Ljava/lang/String;)V

    sget-object v0, Lr4/rz;->B5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lr4/no2;->d0:Z

    if-eqz v0, :cond_0

    iget-object v0, p3, Lr4/t12;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lr4/ed0;

    iget-object v3, p2, Lr4/no2;->Q:Ljava/lang/String;

    iget-object p2, p2, Lr4/no2;->v:Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p2, p1, Lr4/bp2;->a:Lr4/yo2;

    iget-object p2, p2, Lr4/yo2;->a:Lr4/hp2;

    iget-object v5, p2, Lr4/hp2;->d:Lr4/tt;

    iget-object p2, p0, Lr4/c32;->a:Landroid/content/Context;

    invoke-static {p2}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object v6

    new-instance v7, Lr4/a32;

    invoke-direct {v7, p0, p3, v1}, Lr4/a32;-><init>(Lr4/c32;Lr4/t12;Lr4/b32;)V

    iget-object p2, p3, Lr4/t12;->c:Lr4/u81;

    move-object v8, p2

    check-cast v8, Lr4/lb0;

    iget-object p1, p1, Lr4/bp2;->a:Lr4/yo2;

    iget-object p1, p1, Lr4/yo2;->a:Lr4/hp2;

    iget-object v9, p1, Lr4/hp2;->e:Lr4/yt;

    invoke-interface/range {v2 .. v9}, Lr4/ed0;->i6(Ljava/lang/String;Ljava/lang/String;Lr4/tt;Lf4/a;Lr4/sc0;Lr4/lb0;Lr4/yt;)V

    return-void

    :cond_0
    iget-object v0, p3, Lr4/t12;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lr4/ed0;

    iget-object v3, p2, Lr4/no2;->Q:Ljava/lang/String;

    iget-object p2, p2, Lr4/no2;->v:Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p2, p1, Lr4/bp2;->a:Lr4/yo2;

    iget-object p2, p2, Lr4/yo2;->a:Lr4/hp2;

    iget-object v5, p2, Lr4/hp2;->d:Lr4/tt;

    iget-object p2, p0, Lr4/c32;->a:Landroid/content/Context;

    invoke-static {p2}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object v6

    new-instance v7, Lr4/a32;

    invoke-direct {v7, p0, p3, v1}, Lr4/a32;-><init>(Lr4/c32;Lr4/t12;Lr4/b32;)V

    iget-object p2, p3, Lr4/t12;->c:Lr4/u81;

    move-object v8, p2

    check-cast v8, Lr4/lb0;

    iget-object p1, p1, Lr4/bp2;->a:Lr4/yo2;

    iget-object p1, p1, Lr4/yo2;->a:Lr4/hp2;

    iget-object v9, p1, Lr4/hp2;->e:Lr4/yt;

    invoke-interface/range {v2 .. v9}, Lr4/ed0;->K1(Ljava/lang/String;Ljava/lang/String;Lr4/tt;Lf4/a;Lr4/sc0;Lr4/lb0;Lr4/yt;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lr4/mp2;

    invoke-direct {p2, p1}, Lr4/mp2;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final synthetic e(Landroid/view/View;Lr4/no2;Ljava/lang/Object;)Lr4/h83;
    .locals 0

    iget-object p3, p0, Lr4/c32;->a:Landroid/content/Context;

    invoke-static {p3, p1, p2}, Lr4/w21;->a(Landroid/content/Context;Landroid/view/View;Lr4/no2;)Lr4/w21;

    move-result-object p1

    invoke-static {p1}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method
