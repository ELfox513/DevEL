.class public final Lr4/z32;
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
        "Lr4/zp2;",
        "Lr4/n32;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lr4/vg1;

.field public final c:Lr4/im0;

.field public final d:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr4/im0;Lr4/vg1;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/z32;->a:Landroid/content/Context;

    iput-object p2, p0, Lr4/z32;->c:Lr4/im0;

    iput-object p3, p0, Lr4/z32;->b:Lr4/vg1;

    iput-object p4, p0, Lr4/z32;->d:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lr4/bp2;Lr4/no2;Lr4/t12;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lr4/z32;->b:Lr4/vg1;

    new-instance v1, Lr4/x31;

    iget-object v2, p3, Lr4/t12;->a:Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2}, Lr4/x31;-><init>(Lr4/bp2;Lr4/no2;Ljava/lang/String;)V

    new-instance p1, Lr4/bg1;

    new-instance p2, Lr4/y32;

    invoke-direct {p2, p0, p3}, Lr4/y32;-><init>(Lr4/z32;Lr4/t12;)V

    const/4 v2, 0x0

    invoke-direct {p1, p2, v2}, Lr4/bg1;-><init>(Lr4/dh1;Lr4/cs0;)V

    invoke-virtual {v0, v1, p1}, Lr4/vg1;->c(Lr4/x31;Lr4/bg1;)Lr4/yf1;

    move-result-object p1

    invoke-virtual {p1}, Lr4/j31;->a()Lr4/j81;

    move-result-object p2

    new-instance v0, Lr4/sy0;

    iget-object v1, p3, Lr4/t12;->b:Ljava/lang/Object;

    check-cast v1, Lr4/zp2;

    invoke-direct {v0, v1}, Lr4/sy0;-><init>(Lr4/zp2;)V

    iget-object v1, p0, Lr4/z32;->d:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, v0, v1}, Lr4/yc1;->K0(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    iget-object p2, p3, Lr4/t12;->c:Lr4/u81;

    check-cast p2, Lr4/n32;

    invoke-virtual {p1}, Lr4/j31;->f()Lr4/x62;

    move-result-object p3

    invoke-virtual {p2, p3}, Lr4/n32;->g7(Lr4/lb0;)V

    invoke-virtual {p1}, Lr4/yf1;->h()Lr4/xf1;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lr4/bp2;Lr4/no2;Lr4/t12;)V
    .locals 7
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

    iget-object v0, p3, Lr4/t12;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lr4/zp2;

    iget-object v2, p0, Lr4/z32;->a:Landroid/content/Context;

    iget-object p1, p1, Lr4/bp2;->a:Lr4/yo2;

    iget-object p1, p1, Lr4/yo2;->a:Lr4/hp2;

    iget-object v3, p1, Lr4/hp2;->d:Lr4/tt;

    iget-object p1, p2, Lr4/no2;->v:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p2, Lr4/no2;->s:Lr4/uo2;

    invoke-static {p1}, Lb3/b1;->l(Lr4/uo2;)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p3, Lr4/t12;->c:Lr4/u81;

    move-object v6, p1

    check-cast v6, Lr4/lb0;

    invoke-virtual/range {v1 .. v6}, Lr4/zp2;->k(Landroid/content/Context;Lr4/tt;Ljava/lang/String;Ljava/lang/String;Lr4/lb0;)V

    return-void
.end method

.method public final synthetic c(Lr4/t12;ZLandroid/content/Context;Lr4/w71;)V
    .locals 1

    :try_start_0
    iget-object p4, p1, Lr4/t12;->b:Ljava/lang/Object;

    check-cast p4, Lr4/zp2;

    invoke-virtual {p4, p2}, Lr4/zp2;->v(Z)V

    iget-object p2, p0, Lr4/z32;->c:Lr4/im0;

    iget p2, p2, Lr4/im0;->d:I

    sget-object p4, Lr4/rz;->u0:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v0

    invoke-virtual {v0, p4}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-ge p2, p4, :cond_0

    iget-object p1, p1, Lr4/t12;->b:Ljava/lang/Object;

    check-cast p1, Lr4/zp2;

    invoke-virtual {p1}, Lr4/zp2;->g()V

    return-void

    :cond_0
    iget-object p1, p1, Lr4/t12;->b:Ljava/lang/Object;

    check-cast p1, Lr4/zp2;

    invoke-virtual {p1, p3}, Lr4/zp2;->h(Landroid/content/Context;)V
    :try_end_0
    .catch Lr4/mp2; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Cannot show interstitial."

    invoke-static {p2}, Lr4/cm0;->e(Ljava/lang/String;)V

    new-instance p2, Lr4/ch1;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p1}, Lr4/ch1;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
