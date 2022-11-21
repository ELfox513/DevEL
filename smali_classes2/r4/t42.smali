.class public final Lr4/t42;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/y12;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/y12<",
        "Lr4/zi1;",
        "Lr4/ed0;",
        "Lr4/n32;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lr4/sh1;

.field public c:Lr4/ub0;

.field public final d:Lr4/im0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr4/sh1;Lr4/im0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/t42;->a:Landroid/content/Context;

    iput-object p2, p0, Lr4/t42;->b:Lr4/sh1;

    iput-object p3, p0, Lr4/t42;->d:Lr4/im0;

    return-void
.end method

.method public static synthetic c(Lr4/t42;Lr4/ub0;)Lr4/ub0;
    .locals 0

    iput-object p1, p0, Lr4/t42;->c:Lr4/ub0;

    return-object p1
.end method


# virtual methods
.method public final bridge synthetic a(Lr4/bp2;Lr4/no2;Lr4/t12;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p1, Lr4/bp2;->a:Lr4/yo2;

    iget-object v0, v0, Lr4/yo2;->a:Lr4/hp2;

    iget-object v0, v0, Lr4/hp2;->g:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr4/t42;->c:Lr4/ub0;

    invoke-static {v0}, Lr4/ej1;->B(Lr4/ub0;)Lr4/ej1;

    move-result-object v0

    iget-object v1, p1, Lr4/bp2;->a:Lr4/yo2;

    iget-object v1, v1, Lr4/yo2;->a:Lr4/hp2;

    iget-object v1, v1, Lr4/hp2;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lr4/ej1;->d0()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lr4/t42;->b:Lr4/sh1;

    new-instance v2, Lr4/x31;

    iget-object v3, p3, Lr4/t12;->a:Ljava/lang/String;

    invoke-direct {v2, p1, p2, v3}, Lr4/x31;-><init>(Lr4/bp2;Lr4/no2;Ljava/lang/String;)V

    new-instance p1, Lr4/qj1;

    invoke-direct {p1, v0}, Lr4/qj1;-><init>(Lr4/ej1;)V

    new-instance p2, Lr4/fl1;

    iget-object v0, p0, Lr4/t42;->c:Lr4/ub0;

    const/4 v3, 0x0

    invoke-direct {p2, v3, v3, v0, v3}, Lr4/fl1;-><init>(Lr4/rb0;Lr4/qb0;Lr4/ub0;[B)V

    invoke-virtual {v1, v2, p1, p2}, Lr4/sh1;->d(Lr4/x31;Lr4/qj1;Lr4/fl1;)Lr4/gj1;

    move-result-object p1

    iget-object p2, p3, Lr4/t12;->c:Lr4/u81;

    check-cast p2, Lr4/n32;

    invoke-virtual {p1}, Lr4/j31;->g()Lr4/q62;

    move-result-object p3

    invoke-virtual {p2, p3}, Lr4/n32;->g7(Lr4/lb0;)V

    invoke-virtual {p1}, Lr4/hj1;->h()Lr4/zi1;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lr4/j52;

    const/4 p2, 0x1

    const-string p3, "No corresponding native ad listener"

    invoke-direct {p1, p2, p3}, Lr4/j52;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lr4/j52;

    const/4 p2, 0x2

    const-string p3, "Unified must be used for RTB."

    invoke-direct {p1, p2, p3}, Lr4/j52;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public final b(Lr4/bp2;Lr4/no2;Lr4/t12;)V
    .locals 11
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

    iget-object v0, p0, Lr4/t42;->d:Lr4/im0;

    iget v0, v0, Lr4/im0;->d:I

    sget-object v1, Lr4/rz;->d1:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v2

    invoke-virtual {v2, v1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    iget-object v0, p3, Lr4/t12;->b:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lr4/ed0;

    iget-object v4, p2, Lr4/no2;->Q:Ljava/lang/String;

    iget-object p2, p2, Lr4/no2;->v:Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p1, Lr4/bp2;->a:Lr4/yo2;

    iget-object p1, p1, Lr4/yo2;->a:Lr4/hp2;

    iget-object v6, p1, Lr4/hp2;->d:Lr4/tt;

    iget-object p1, p0, Lr4/t42;->a:Landroid/content/Context;

    invoke-static {p1}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object v7

    new-instance v8, Lr4/r42;

    invoke-direct {v8, p0, p3, v2}, Lr4/r42;-><init>(Lr4/t42;Lr4/t12;Lr4/s42;)V

    iget-object p1, p3, Lr4/t12;->c:Lr4/u81;

    move-object v9, p1

    check-cast v9, Lr4/lb0;

    invoke-interface/range {v3 .. v9}, Lr4/ed0;->y5(Ljava/lang/String;Ljava/lang/String;Lr4/tt;Lf4/a;Lr4/yc0;Lr4/lb0;)V

    return-void

    :cond_0
    iget-object v0, p3, Lr4/t12;->b:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lr4/ed0;

    iget-object v4, p2, Lr4/no2;->Q:Ljava/lang/String;

    iget-object p2, p2, Lr4/no2;->v:Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object p2, p1, Lr4/bp2;->a:Lr4/yo2;

    iget-object p2, p2, Lr4/yo2;->a:Lr4/hp2;

    iget-object v6, p2, Lr4/hp2;->d:Lr4/tt;

    iget-object p2, p0, Lr4/t42;->a:Landroid/content/Context;

    invoke-static {p2}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object v7

    new-instance v8, Lr4/r42;

    invoke-direct {v8, p0, p3, v2}, Lr4/r42;-><init>(Lr4/t42;Lr4/t12;Lr4/s42;)V

    iget-object p2, p3, Lr4/t12;->c:Lr4/u81;

    move-object v9, p2

    check-cast v9, Lr4/lb0;

    iget-object p1, p1, Lr4/bp2;->a:Lr4/yo2;

    iget-object p1, p1, Lr4/yo2;->a:Lr4/hp2;

    iget-object v10, p1, Lr4/hp2;->i:Lr4/d20;

    invoke-interface/range {v3 .. v10}, Lr4/ed0;->T3(Ljava/lang/String;Ljava/lang/String;Lr4/tt;Lf4/a;Lr4/yc0;Lr4/lb0;Lr4/d20;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lr4/mp2;

    invoke-direct {p2, p1}, Lr4/mp2;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
