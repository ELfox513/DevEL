.class public final Lr4/l62;
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
        "Lr4/zp2;",
        "Lr4/o32;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lr4/ap1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lr4/ap1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/l62;->a:Landroid/content/Context;

    iput-object p2, p0, Lr4/l62;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lr4/l62;->c:Lr4/ap1;

    return-void
.end method

.method public static synthetic c(Lr4/l62;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lr4/l62;->b:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static synthetic d(Lr4/l62;Lr4/bp2;Lr4/no2;Lr4/t12;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/bp2;",
            "Lr4/no2;",
            "Lr4/t12<",
            "Lr4/zp2;",
            "Lr4/o32;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lr4/l62;->e(Lr4/bp2;Lr4/no2;Lr4/t12;)V

    return-void
.end method

.method public static final e(Lr4/bp2;Lr4/no2;Lr4/t12;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/bp2;",
            "Lr4/no2;",
            "Lr4/t12<",
            "Lr4/zp2;",
            "Lr4/o32;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p2, Lr4/t12;->b:Ljava/lang/Object;

    check-cast v0, Lr4/zp2;

    iget-object p0, p0, Lr4/bp2;->a:Lr4/yo2;

    iget-object p0, p0, Lr4/yo2;->a:Lr4/hp2;

    iget-object p0, p0, Lr4/hp2;->d:Lr4/tt;

    iget-object p1, p1, Lr4/no2;->v:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lr4/zp2;->o(Lr4/tt;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    iget-object p1, p2, Lr4/t12;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Fail to load ad from adapter "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1, p0}, Lr4/cm0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lr4/bp2;Lr4/no2;Lr4/t12;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lr4/l62;->c:Lr4/ap1;

    new-instance v1, Lr4/x31;

    iget-object v2, p3, Lr4/t12;->a:Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2}, Lr4/x31;-><init>(Lr4/bp2;Lr4/no2;Ljava/lang/String;)V

    new-instance p1, Lr4/wo1;

    new-instance p2, Lr4/h62;

    invoke-direct {p2, p3}, Lr4/h62;-><init>(Lr4/t12;)V

    invoke-direct {p1, p2}, Lr4/wo1;-><init>(Lr4/dh1;)V

    invoke-virtual {v0, v1, p1}, Lr4/ap1;->b(Lr4/x31;Lr4/wo1;)Lr4/vo1;

    move-result-object p1

    invoke-virtual {p1}, Lr4/j31;->a()Lr4/j81;

    move-result-object p2

    new-instance v0, Lr4/sy0;

    iget-object v1, p3, Lr4/t12;->b:Ljava/lang/Object;

    check-cast v1, Lr4/zp2;

    invoke-direct {v0, v1}, Lr4/sy0;-><init>(Lr4/zp2;)V

    iget-object v1, p0, Lr4/l62;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, v0, v1}, Lr4/yc1;->K0(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p1}, Lr4/j31;->b()Lr4/r81;

    move-result-object v6

    invoke-virtual {p1}, Lr4/j31;->c()Lr4/h71;

    move-result-object v5

    invoke-virtual {p1}, Lr4/vo1;->i()Lr4/r91;

    move-result-object v4

    invoke-virtual {p1}, Lr4/vo1;->k()Lr4/lf1;

    move-result-object v7

    iget-object p2, p3, Lr4/t12;->c:Lr4/u81;

    check-cast p2, Lr4/o32;

    new-instance p3, Lr4/k62;

    move-object v2, p3

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lr4/k62;-><init>(Lr4/l62;Lr4/r91;Lr4/h71;Lr4/r81;Lr4/lf1;)V

    invoke-virtual {p2, p3}, Lr4/o32;->g7(Lr4/qh0;)V

    invoke-virtual {p1}, Lr4/vo1;->h()Lr4/uo1;

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
            "Lr4/o32;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p3, Lr4/t12;->b:Ljava/lang/Object;

    check-cast v0, Lr4/zp2;

    invoke-virtual {v0}, Lr4/zp2;->q()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lr4/j62;

    invoke-direct {v0, p0, p1, p2, p3}, Lr4/j62;-><init>(Lr4/l62;Lr4/bp2;Lr4/no2;Lr4/t12;)V

    iget-object v1, p3, Lr4/t12;->c:Lr4/u81;

    check-cast v1, Lr4/o32;

    invoke-virtual {v1, v0}, Lr4/o32;->h7(Lr4/nf1;)V

    iget-object v0, p3, Lr4/t12;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lr4/zp2;

    iget-object v2, p0, Lr4/l62;->a:Landroid/content/Context;

    iget-object p1, p1, Lr4/bp2;->a:Lr4/yo2;

    iget-object p1, p1, Lr4/yo2;->a:Lr4/hp2;

    iget-object v3, p1, Lr4/hp2;->d:Lr4/tt;

    const/4 v4, 0x0

    iget-object p1, p3, Lr4/t12;->c:Lr4/u81;

    move-object v5, p1

    check-cast v5, Lr4/qh0;

    iget-object p1, p2, Lr4/no2;->v:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lr4/zp2;->n(Landroid/content/Context;Lr4/tt;Ljava/lang/String;Lr4/qh0;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1, p2, p3}, Lr4/l62;->e(Lr4/bp2;Lr4/no2;Lr4/t12;)V

    return-void
.end method
