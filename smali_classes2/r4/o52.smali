.class public final Lr4/o52;
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
        "Lr4/n32;",
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

    iput-object p1, p0, Lr4/o52;->a:Landroid/content/Context;

    iput-object p2, p0, Lr4/o52;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lr4/o52;->c:Lr4/ap1;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lr4/bp2;Lr4/no2;Lr4/t12;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lr4/o52;->c:Lr4/ap1;

    new-instance v1, Lr4/x31;

    iget-object v2, p3, Lr4/t12;->a:Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2}, Lr4/x31;-><init>(Lr4/bp2;Lr4/no2;Ljava/lang/String;)V

    new-instance p1, Lr4/wo1;

    new-instance p2, Lr4/n52;

    invoke-direct {p2, p3}, Lr4/n52;-><init>(Lr4/t12;)V

    invoke-direct {p1, p2}, Lr4/wo1;-><init>(Lr4/dh1;)V

    invoke-virtual {v0, v1, p1}, Lr4/ap1;->b(Lr4/x31;Lr4/wo1;)Lr4/vo1;

    move-result-object p1

    invoke-virtual {p1}, Lr4/j31;->a()Lr4/j81;

    move-result-object p2

    new-instance v0, Lr4/sy0;

    iget-object v1, p3, Lr4/t12;->b:Ljava/lang/Object;

    check-cast v1, Lr4/zp2;

    invoke-direct {v0, v1}, Lr4/sy0;-><init>(Lr4/zp2;)V

    iget-object v1, p0, Lr4/o52;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, v0, v1}, Lr4/yc1;->K0(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    iget-object p2, p3, Lr4/t12;->c:Lr4/u81;

    check-cast p2, Lr4/n32;

    invoke-virtual {p1}, Lr4/vo1;->m()Lr4/v52;

    move-result-object p3

    invoke-virtual {p2, p3}, Lr4/n32;->g7(Lr4/lb0;)V

    invoke-virtual {p1}, Lr4/vo1;->h()Lr4/uo1;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lr4/bp2;Lr4/no2;Lr4/t12;)V
    .locals 3
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

    :try_start_0
    iget-object p1, p1, Lr4/bp2;->a:Lr4/yo2;

    iget-object p1, p1, Lr4/yo2;->a:Lr4/hp2;

    iget-object v0, p1, Lr4/hp2;->o:Lr4/xo2;

    iget v0, v0, Lr4/xo2;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p3, Lr4/t12;->b:Ljava/lang/Object;

    check-cast v0, Lr4/zp2;

    iget-object v1, p0, Lr4/o52;->a:Landroid/content/Context;

    iget-object p1, p1, Lr4/hp2;->d:Lr4/tt;

    iget-object p2, p2, Lr4/no2;->v:Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p3, Lr4/t12;->c:Lr4/u81;

    check-cast v2, Lr4/lb0;

    invoke-virtual {v0, v1, p1, p2, v2}, Lr4/zp2;->A(Landroid/content/Context;Lr4/tt;Ljava/lang/String;Lr4/lb0;)V

    return-void

    :cond_0
    iget-object v0, p3, Lr4/t12;->b:Ljava/lang/Object;

    check-cast v0, Lr4/zp2;

    iget-object v1, p0, Lr4/o52;->a:Landroid/content/Context;

    iget-object p1, p1, Lr4/hp2;->d:Lr4/tt;

    iget-object p2, p2, Lr4/no2;->v:Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p3, Lr4/t12;->c:Lr4/u81;

    check-cast v2, Lr4/lb0;

    invoke-virtual {v0, v1, p1, p2, v2}, Lr4/zp2;->y(Landroid/content/Context;Lr4/tt;Ljava/lang/String;Lr4/lb0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p3, Lr4/t12;->a:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Fail to load ad from adapter "

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p2, p1}, Lr4/cm0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
