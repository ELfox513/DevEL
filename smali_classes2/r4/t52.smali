.class public final Lr4/t52;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/y12;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/y12<",
        "Lr4/uo1;",
        "Lr4/ed0;",
        "Lr4/n32;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lr4/ap1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr4/ap1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/t52;->a:Landroid/content/Context;

    iput-object p2, p0, Lr4/t52;->b:Lr4/ap1;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lr4/bp2;Lr4/no2;Lr4/t12;)Ljava/lang/Object;
    .locals 4

    new-instance v0, Lr4/x32;

    iget-object v1, p3, Lr4/t12;->b:Ljava/lang/Object;

    check-cast v1, Lr4/ed0;

    const/4 v2, 0x1

    invoke-direct {v0, p2, v1, v2}, Lr4/x32;-><init>(Lr4/no2;Lr4/ed0;Z)V

    iget-object v1, p0, Lr4/t52;->b:Lr4/ap1;

    new-instance v2, Lr4/x31;

    iget-object v3, p3, Lr4/t12;->a:Ljava/lang/String;

    invoke-direct {v2, p1, p2, v3}, Lr4/x31;-><init>(Lr4/bp2;Lr4/no2;Ljava/lang/String;)V

    new-instance p1, Lr4/wo1;

    invoke-direct {p1, v0}, Lr4/wo1;-><init>(Lr4/dh1;)V

    invoke-virtual {v1, v2, p1}, Lr4/ap1;->b(Lr4/x31;Lr4/wo1;)Lr4/vo1;

    move-result-object p1

    invoke-virtual {p1}, Lr4/j31;->d()Lr4/b81;

    move-result-object p2

    invoke-virtual {v0, p2}, Lr4/x32;->b(Lr4/b81;)V

    iget-object p2, p3, Lr4/t12;->c:Lr4/u81;

    check-cast p2, Lr4/n32;

    invoke-virtual {p1}, Lr4/vo1;->n()Lr4/p62;

    move-result-object p3

    invoke-virtual {p2, p3}, Lr4/n32;->g7(Lr4/lb0;)V

    invoke-virtual {p1}, Lr4/vo1;->h()Lr4/uo1;

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

    iget-object v0, p1, Lr4/bp2;->a:Lr4/yo2;

    iget-object v0, v0, Lr4/yo2;->a:Lr4/hp2;

    iget-object v0, v0, Lr4/hp2;->o:Lr4/xo2;

    iget v0, v0, Lr4/xo2;->a:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

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

    iget-object p1, p0, Lr4/t52;->a:Landroid/content/Context;

    invoke-static {p1}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object v7

    new-instance v8, Lr4/q52;

    invoke-direct {v8, p0, p3, v2}, Lr4/q52;-><init>(Lr4/t52;Lr4/t12;Lr4/s52;)V

    iget-object p1, p3, Lr4/t12;->c:Lr4/u81;

    move-object v9, p1

    check-cast v9, Lr4/lb0;

    invoke-interface/range {v3 .. v9}, Lr4/ed0;->z1(Ljava/lang/String;Ljava/lang/String;Lr4/tt;Lf4/a;Lr4/bd0;Lr4/lb0;)V

    return-void

    :cond_0
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

    iget-object p1, p0, Lr4/t52;->a:Landroid/content/Context;

    invoke-static {p1}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object v7

    new-instance v8, Lr4/q52;

    invoke-direct {v8, p0, p3, v2}, Lr4/q52;-><init>(Lr4/t52;Lr4/t12;Lr4/s52;)V

    iget-object p1, p3, Lr4/t12;->c:Lr4/u81;

    move-object v9, p1

    check-cast v9, Lr4/lb0;

    invoke-interface/range {v3 .. v9}, Lr4/ed0;->a4(Ljava/lang/String;Ljava/lang/String;Lr4/tt;Lf4/a;Lr4/bd0;Lr4/lb0;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Remote exception loading a rewarded RTB ad"

    invoke-static {p2, p1}, Lb3/w1;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
