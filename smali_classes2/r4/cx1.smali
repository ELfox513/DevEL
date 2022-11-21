.class public final Lr4/cx1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/bu0;

.field public final b:Landroid/content/Context;

.field public final c:Lr4/im0;

.field public final d:Lr4/hp2;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Ljava/lang/String;

.field public final g:Lr4/ea1;

.field public final h:Lr4/ia1;


# direct methods
.method public constructor <init>(Lr4/bu0;Landroid/content/Context;Lr4/im0;Lr4/hp2;Ljava/util/concurrent/Executor;Ljava/lang/String;Lr4/ea1;Lr4/ia1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/cx1;->a:Lr4/bu0;

    iput-object p2, p0, Lr4/cx1;->b:Landroid/content/Context;

    iput-object p3, p0, Lr4/cx1;->c:Lr4/im0;

    iput-object p4, p0, Lr4/cx1;->d:Lr4/hp2;

    iput-object p5, p0, Lr4/cx1;->e:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lr4/cx1;->f:Ljava/lang/String;

    iput-object p7, p0, Lr4/cx1;->g:Lr4/ea1;

    iput-object p8, p0, Lr4/cx1;->h:Lr4/ia1;

    return-void
.end method

.method public static synthetic a(Lr4/cx1;)Lr4/ea1;
    .locals 0

    iget-object p0, p0, Lr4/cx1;->g:Lr4/ea1;

    return-object p0
.end method

.method public static synthetic b(Lr4/cx1;)Lr4/ia1;
    .locals 0

    iget-object p0, p0, Lr4/cx1;->h:Lr4/ia1;

    return-object p0
.end method

.method public static final g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p0, "request_id"

    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    return-object v0
.end method


# virtual methods
.method public final c()Lr4/h83;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/h83<",
            "Lr4/bp2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/cx1;->d:Lr4/hp2;

    iget-object v0, v0, Lr4/hp2;->d:Lr4/tt;

    iget-object v0, v0, Lr4/tt;->I:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    sget-object v1, Lr4/rz;->i5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v3

    invoke-virtual {v3, v1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lr4/cx1;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v0, Lr4/rz;->l5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/cx1;->h:Lr4/ia1;

    invoke-virtual {v0, v2}, Lr4/ia1;->Q(Z)V

    :cond_0
    new-instance v0, Lr4/j52;

    const/16 v1, 0xf

    const-string v2, "Invalid ad string."

    invoke-direct {v0, v1, v2}, Lr4/j52;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lr4/y73;->c(Ljava/lang/Throwable;)Lr4/h83;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v3, p0, Lr4/cx1;->a:Lr4/bu0;

    invoke-virtual {v3}, Lr4/bu0;->z()Lh3/m;

    move-result-object v3

    invoke-virtual {v3, v1}, Lh3/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lr4/cx1;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lr4/cx1;->e(Ljava/lang/String;Ljava/lang/String;)Lr4/h83;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_0
    iget-object v0, p0, Lr4/cx1;->d:Lr4/hp2;

    iget-object v0, v0, Lr4/hp2;->d:Lr4/tt;

    iget-object v0, v0, Lr4/tt;->D:Lr4/jt;

    if-eqz v0, :cond_5

    sget-object v1, Lr4/rz;->g5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v3

    invoke-virtual {v3, v1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    iget-object v1, v0, Lr4/jt;->a:Ljava/lang/String;

    invoke-static {v1}, Lr4/cx1;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lr4/jt;->b:Ljava/lang/String;

    invoke-static {v3}, Lr4/cx1;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v2, p0, Lr4/cx1;->a:Lr4/bu0;

    invoke-virtual {v2}, Lr4/bu0;->z()Lh3/m;

    move-result-object v2

    invoke-virtual {v2, v1}, Lh3/m;->d(Ljava/lang/String;)V

    :goto_1
    iget-object v1, v0, Lr4/jt;->a:Ljava/lang/String;

    iget-object v0, v0, Lr4/jt;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lr4/cx1;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lr4/cx1;->e(Ljava/lang/String;Ljava/lang/String;)Lr4/h83;

    move-result-object v0

    return-object v0

    :cond_5
    sget-object v0, Lr4/rz;->l5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lr4/cx1;->h:Lr4/ia1;

    invoke-virtual {v0, v2}, Lr4/ia1;->Q(Z)V

    :cond_6
    new-instance v0, Lr4/j52;

    const/16 v1, 0xe

    const-string v2, "Mismatch request IDs."

    invoke-direct {v0, v1, v2}, Lr4/j52;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lr4/y73;->c(Ljava/lang/Throwable;)Lr4/h83;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lorg/json/JSONObject;)Lr4/h83;
    .locals 3

    new-instance v0, Lr4/bp2;

    new-instance v1, Lr4/yo2;

    iget-object v2, p0, Lr4/cx1;->d:Lr4/hp2;

    invoke-direct {v1, v2}, Lr4/yo2;-><init>(Lr4/hp2;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lr4/ap2;->a(Ljava/io/Reader;)Lr4/ap2;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lr4/bp2;-><init>(Lr4/yo2;Lr4/ap2;)V

    invoke-static {v0}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)Lr4/h83;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lr4/h83<",
            "Lr4/bp2;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lz2/t;->q()Lr4/u90;

    move-result-object v0

    iget-object v1, p0, Lr4/cx1;->b:Landroid/content/Context;

    iget-object v2, p0, Lr4/cx1;->c:Lr4/im0;

    invoke-virtual {v0, v1, v2}, Lr4/u90;->b(Landroid/content/Context;Lr4/im0;)Lr4/ea0;

    move-result-object v0

    sget-object v1, Lr4/ba0;->b:Lr4/y90;

    const-string v2, "google.afma.response.normalize"

    invoke-virtual {v0, v2, v1, v1}, Lr4/ea0;->a(Ljava/lang/String;Lr4/w90;Lr4/v90;)Lr4/t90;

    move-result-object v0

    const-string v1, ""

    invoke-static {v1}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object v1

    new-instance v2, Lr4/yw1;

    invoke-direct {v2, p0, p1, p2}, Lr4/yw1;-><init>(Lr4/cx1;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lr4/cx1;->e:Ljava/util/concurrent/Executor;

    invoke-static {v1, v2, p1}, Lr4/y73;->i(Lr4/h83;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object p1

    new-instance p2, Lr4/zw1;

    invoke-direct {p2, v0}, Lr4/zw1;-><init>(Lr4/t90;)V

    iget-object v0, p0, Lr4/cx1;->e:Ljava/util/concurrent/Executor;

    invoke-static {p1, p2, v0}, Lr4/y73;->i(Lr4/h83;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object p1

    new-instance p2, Lr4/ax1;

    invoke-direct {p2, p0}, Lr4/ax1;-><init>(Lr4/cx1;)V

    iget-object v0, p0, Lr4/cx1;->e:Ljava/util/concurrent/Executor;

    invoke-static {p1, p2, v0}, Lr4/y73;->i(Lr4/h83;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object p1

    sget-object p2, Lr4/rz;->l5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v0

    invoke-virtual {v0, p2}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lr4/bx1;

    invoke-direct {p2, p0}, Lr4/bx1;-><init>(Lr4/cx1;)V

    sget-object v0, Lr4/qm0;->f:Lr4/i83;

    invoke-static {p1, p2, v0}, Lr4/y73;->p(Lr4/h83;Lr4/t73;Ljava/util/concurrent/Executor;)V

    :cond_0
    return-object p1
.end method

.method public final f(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "ad_types"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "unknown"

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v3, p0, Lr4/cx1;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to update the ad types for rendering. "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr4/cm0;->f(Ljava/lang/String;)V

    return-object p1
.end method
