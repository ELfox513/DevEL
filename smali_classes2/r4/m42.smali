.class public final Lr4/m42;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/g42;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/g42<",
        "Lr4/zi1;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/sh1;

.field public final b:Lr4/i83;

.field public final c:Lr4/tl1;

.field public final d:Lr4/aq2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/aq2<",
            "Lr4/fo1;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lr4/lo1;


# direct methods
.method public constructor <init>(Lr4/sh1;Lr4/i83;Lr4/tl1;Lr4/aq2;Lr4/lo1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/sh1;",
            "Lr4/i83;",
            "Lr4/tl1;",
            "Lr4/aq2<",
            "Lr4/fo1;",
            ">;",
            "Lr4/lo1;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/m42;->a:Lr4/sh1;

    iput-object p2, p0, Lr4/m42;->b:Lr4/i83;

    iput-object p3, p0, Lr4/m42;->c:Lr4/tl1;

    iput-object p4, p0, Lr4/m42;->d:Lr4/aq2;

    iput-object p5, p0, Lr4/m42;->e:Lr4/lo1;

    return-void
.end method


# virtual methods
.method public final a(Lr4/bp2;Lr4/no2;)Z
    .locals 0

    iget-object p1, p2, Lr4/no2;->s:Lr4/uo2;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lr4/uo2;->c:Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lr4/bp2;Lr4/no2;)Lr4/h83;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/bp2;",
            "Lr4/no2;",
            ")",
            "Lr4/h83<",
            "Ljava/util/List<",
            "Lr4/h83<",
            "Lr4/zi1;",
            ">;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lr4/m42;->d:Lr4/aq2;

    invoke-virtual {v0}, Lr4/aq2;->b()Lr4/h83;

    move-result-object v0

    new-instance v1, Lr4/h42;

    invoke-direct {v1, p0, p2}, Lr4/h42;-><init>(Lr4/m42;Lr4/no2;)V

    iget-object v2, p0, Lr4/m42;->b:Lr4/i83;

    invoke-static {v0, v1, v2}, Lr4/y73;->i(Lr4/h83;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object v0

    new-instance v1, Lr4/i42;

    invoke-direct {v1, p0, p1, p2}, Lr4/i42;-><init>(Lr4/m42;Lr4/bp2;Lr4/no2;)V

    iget-object p1, p0, Lr4/m42;->b:Lr4/i83;

    invoke-static {v0, v1, p1}, Lr4/y73;->i(Lr4/h83;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c(Lr4/h83;Lr4/h83;Lr4/bp2;Lr4/no2;Lorg/json/JSONObject;)Lr4/zi1;
    .locals 3

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/ej1;

    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lr4/fo1;

    iget-object v0, p0, Lr4/m42;->a:Lr4/sh1;

    new-instance v1, Lr4/x31;

    const/4 v2, 0x0

    invoke-direct {v1, p3, p4, v2}, Lr4/x31;-><init>(Lr4/bp2;Lr4/no2;Ljava/lang/String;)V

    new-instance p3, Lr4/qj1;

    invoke-direct {p3, p1}, Lr4/qj1;-><init>(Lr4/ej1;)V

    new-instance p4, Lr4/fi1;

    invoke-direct {p4, p5, p2}, Lr4/fi1;-><init>(Lorg/json/JSONObject;Lr4/fo1;)V

    invoke-virtual {v0, v1, p3, p4}, Lr4/sh1;->c(Lr4/x31;Lr4/qj1;Lr4/fi1;)Lr4/fj1;

    move-result-object p3

    invoke-virtual {p3}, Lr4/fj1;->i()Lr4/qn1;

    move-result-object p4

    invoke-virtual {p4}, Lr4/qn1;->b()V

    invoke-virtual {p3}, Lr4/fj1;->j()Lr4/bo1;

    move-result-object p4

    invoke-virtual {p4, p2}, Lr4/bo1;->a(Lr4/fo1;)V

    invoke-virtual {p3}, Lr4/fj1;->k()Lr4/zm1;

    move-result-object p2

    invoke-virtual {p1}, Lr4/ej1;->r()Lr4/cs0;

    move-result-object p1

    invoke-virtual {p2, p1}, Lr4/zm1;->a(Lr4/cs0;)V

    invoke-virtual {p3}, Lr4/fj1;->l()Lr4/ko1;

    move-result-object p1

    iget-object p2, p0, Lr4/m42;->e:Lr4/lo1;

    invoke-virtual {p1, p2}, Lr4/ko1;->a(Lr4/lo1;)V

    invoke-virtual {p3}, Lr4/hj1;->h()Lr4/zi1;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic d(Lr4/fo1;Lorg/json/JSONObject;)Lr4/h83;
    .locals 1

    iget-object v0, p0, Lr4/m42;->d:Lr4/aq2;

    invoke-static {p1}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object p1

    invoke-virtual {v0, p1}, Lr4/aq2;->c(Lr4/h83;)V

    const-string p1, "success"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "json"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "ads"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lr4/s90;

    const-string p2, "process json failed"

    invoke-direct {p1, p2}, Lr4/s90;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic e(Lr4/bp2;Lr4/no2;Lorg/json/JSONArray;)Lr4/h83;
    .locals 5

    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    new-instance p1, Lr4/sv1;

    invoke-direct {p1, v1}, Lr4/sv1;-><init>(I)V

    invoke-static {p1}, Lr4/y73;->c(Ljava/lang/Throwable;)Lr4/h83;

    move-result-object p1

    goto :goto_2

    :cond_0
    iget-object v0, p1, Lr4/bp2;->a:Lr4/yo2;

    iget-object v0, v0, Lr4/yo2;->a:Lr4/hp2;

    iget v0, v0, Lr4/hp2;->k:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v3, :cond_3

    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v0

    iget-object v3, p0, Lr4/m42;->d:Lr4/aq2;

    iget-object v4, p1, Lr4/bp2;->a:Lr4/yo2;

    iget-object v4, v4, Lr4/yo2;->a:Lr4/hp2;

    iget v4, v4, Lr4/hp2;->k:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lr4/aq2;->a(I)V

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p1, Lr4/bp2;->a:Lr4/yo2;

    iget-object v4, v4, Lr4/yo2;->a:Lr4/hp2;

    iget v4, v4, Lr4/hp2;->k:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    iget-object v4, p1, Lr4/bp2;->a:Lr4/yo2;

    iget-object v4, v4, Lr4/yo2;->a:Lr4/hp2;

    iget v4, v4, Lr4/hp2;->k:I

    if-ge v2, v4, :cond_2

    if-ge v2, v0, :cond_1

    invoke-virtual {p3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {p0, p1, p2, v4}, Lr4/m42;->g(Lr4/bp2;Lr4/no2;Lorg/json/JSONObject;)Lr4/h83;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v4, Lr4/sv1;

    invoke-direct {v4, v1}, Lr4/sv1;-><init>(I)V

    invoke-static {v4}, Lr4/y73;->c(Ljava/lang/Throwable;)Lr4/h83;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v3}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object p1

    goto :goto_2

    :cond_3
    invoke-virtual {p3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lr4/m42;->g(Lr4/bp2;Lr4/no2;Lorg/json/JSONObject;)Lr4/h83;

    move-result-object p1

    sget-object p2, Lr4/k42;->a:Lr4/p03;

    iget-object p3, p0, Lr4/m42;->b:Lr4/i83;

    invoke-static {p1, p2, p3}, Lr4/y73;->j(Lr4/h83;Lr4/p03;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public final synthetic f(Lr4/no2;Lr4/fo1;)Lr4/h83;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "isNonagon"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    sget-object v1, Lr4/rz;->f6:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v3

    invoke-virtual {v3, v1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lc4/o;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "skipDeepLinkValidation"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object p1, p1, Lr4/no2;->s:Lr4/uo2;

    iget-object p1, p1, Lr4/uo2;->c:Lorg/json/JSONObject;

    const-string v2, "response"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "sdk_params"

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "google.afma.nativeAds.preProcessJson"

    invoke-virtual {p2, p1, v1}, Lr4/fo1;->d(Ljava/lang/String;Lorg/json/JSONObject;)Lr4/h83;

    move-result-object p1

    new-instance v0, Lr4/j42;

    invoke-direct {v0, p0, p2}, Lr4/j42;-><init>(Lr4/m42;Lr4/fo1;)V

    iget-object p2, p0, Lr4/m42;->b:Lr4/i83;

    invoke-static {p1, v0, p2}, Lr4/y73;->i(Lr4/h83;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method

.method public final g(Lr4/bp2;Lr4/no2;Lorg/json/JSONObject;)Lr4/h83;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/bp2;",
            "Lr4/no2;",
            "Lorg/json/JSONObject;",
            ")",
            "Lr4/h83<",
            "Lr4/zi1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/m42;->d:Lr4/aq2;

    invoke-virtual {v0}, Lr4/aq2;->b()Lr4/h83;

    move-result-object v4

    iget-object v0, p0, Lr4/m42;->c:Lr4/tl1;

    invoke-virtual {v0, p1, p2, p3}, Lr4/tl1;->a(Lr4/bp2;Lr4/no2;Lorg/json/JSONObject;)Lr4/h83;

    move-result-object v3

    const/4 v0, 0x2

    new-array v0, v0, [Lr4/h83;

    const/4 v1, 0x0

    aput-object v4, v0, v1

    const/4 v1, 0x1

    aput-object v3, v0, v1

    invoke-static {v0}, Lr4/y73;->n([Lr4/h83;)Lr4/w73;

    move-result-object v0

    new-instance v8, Lr4/l42;

    move-object v1, v8

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lr4/l42;-><init>(Lr4/m42;Lr4/h83;Lr4/h83;Lr4/bp2;Lr4/no2;Lorg/json/JSONObject;)V

    iget-object p1, p0, Lr4/m42;->b:Lr4/i83;

    invoke-virtual {v0, v8, p1}, Lr4/w73;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method
