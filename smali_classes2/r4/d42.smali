.class public final Lr4/d42;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/y12;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/y12<",
        "Lr4/xf1;",
        "Lr4/ed0;",
        "Lr4/n32;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lr4/vg1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr4/vg1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/d42;->a:Landroid/content/Context;

    iput-object p2, p0, Lr4/d42;->b:Lr4/vg1;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lr4/bp2;Lr4/no2;Lr4/t12;)Ljava/lang/Object;
    .locals 4

    new-instance v0, Lr4/x32;

    iget-object v1, p3, Lr4/t12;->b:Ljava/lang/Object;

    check-cast v1, Lr4/ed0;

    const/4 v2, 0x0

    invoke-direct {v0, p2, v1, v2}, Lr4/x32;-><init>(Lr4/no2;Lr4/ed0;Z)V

    iget-object v1, p0, Lr4/d42;->b:Lr4/vg1;

    new-instance v2, Lr4/x31;

    iget-object v3, p3, Lr4/t12;->a:Ljava/lang/String;

    invoke-direct {v2, p1, p2, v3}, Lr4/x31;-><init>(Lr4/bp2;Lr4/no2;Ljava/lang/String;)V

    new-instance p1, Lr4/bg1;

    const/4 p2, 0x0

    invoke-direct {p1, v0, p2}, Lr4/bg1;-><init>(Lr4/dh1;Lr4/cs0;)V

    invoke-virtual {v1, v2, p1}, Lr4/vg1;->c(Lr4/x31;Lr4/bg1;)Lr4/yf1;

    move-result-object p1

    invoke-virtual {p1}, Lr4/yf1;->d()Lr4/b81;

    move-result-object p2

    invoke-virtual {v0, p2}, Lr4/x32;->b(Lr4/b81;)V

    iget-object p2, p3, Lr4/t12;->c:Lr4/u81;

    check-cast p2, Lr4/n32;

    invoke-virtual {p1}, Lr4/j31;->g()Lr4/q62;

    move-result-object p3

    invoke-virtual {p2, p3}, Lr4/n32;->g7(Lr4/lb0;)V

    invoke-virtual {p1}, Lr4/yf1;->h()Lr4/xf1;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lr4/bp2;Lr4/no2;Lr4/t12;)V
    .locals 8
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

    iget-object v0, p3, Lr4/t12;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lr4/ed0;

    iget-object v2, p2, Lr4/no2;->Q:Ljava/lang/String;

    iget-object p2, p2, Lr4/no2;->v:Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p1, Lr4/bp2;->a:Lr4/yo2;

    iget-object p1, p1, Lr4/yo2;->a:Lr4/hp2;

    iget-object v4, p1, Lr4/hp2;->d:Lr4/tt;

    iget-object p1, p0, Lr4/d42;->a:Landroid/content/Context;

    invoke-static {p1}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object v5

    new-instance v6, Lr4/b42;

    const/4 p1, 0x0

    invoke-direct {v6, p0, p3, p1}, Lr4/b42;-><init>(Lr4/d42;Lr4/t12;Lr4/c42;)V

    iget-object p1, p3, Lr4/t12;->c:Lr4/u81;

    move-object v7, p1

    check-cast v7, Lr4/lb0;

    invoke-interface/range {v1 .. v7}, Lr4/ed0;->G4(Ljava/lang/String;Ljava/lang/String;Lr4/tt;Lf4/a;Lr4/vc0;Lr4/lb0;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lr4/mp2;

    invoke-direct {p2, p1}, Lr4/mp2;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
