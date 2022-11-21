.class public final Lr4/vu1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/m71;
.implements Lr4/ga1;
.implements Lr4/c91;


# instance fields
.field public final a:Lr4/iv1;

.field public final b:Ljava/lang/String;

.field public d:I

.field public k:Lr4/uu1;

.field public p:Lr4/b71;

.field public q:Lr4/lt;


# direct methods
.method public constructor <init>(Lr4/iv1;Lr4/hp2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/vu1;->a:Lr4/iv1;

    iget-object p1, p2, Lr4/hp2;->f:Ljava/lang/String;

    iput-object p1, p0, Lr4/vu1;->b:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lr4/vu1;->d:I

    sget-object p1, Lr4/uu1;->a:Lr4/uu1;

    iput-object p1, p0, Lr4/vu1;->k:Lr4/uu1;

    return-void
.end method

.method public static c(Lr4/b71;)Lorg/json/JSONObject;
    .locals 7

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lr4/b71;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "winningAdapterClassName"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lr4/b71;->f7()J

    move-result-wide v1

    const-string v3, "responseSecsSinceEpoch"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lr4/b71;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "responseId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lr4/rz;->G6:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v2

    invoke-virtual {v2, v1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lr4/b71;->g7()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Bidding data: "

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v2}, Lr4/cm0;->a(Ljava/lang/String;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "biddingData"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0}, Lr4/b71;->g()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr4/cu;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget-object v4, v2, Lr4/cu;->a:Ljava/lang/String;

    const-string v5, "adapterClassName"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-wide v4, v2, Lr4/cu;->b:J

    const-string v6, "latencyMillis"

    invoke-virtual {v3, v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v2, v2, Lr4/cu;->d:Lr4/lt;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-static {v2}, Lr4/vu1;->d(Lr4/lt;)Lorg/json/JSONObject;

    move-result-object v2

    :goto_2
    const-string v4, "error"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_3
    const-string p0, "adNetworks"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public static d(Lr4/lt;)Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lr4/lt;->d:Ljava/lang/String;

    const-string v2, "errorDomain"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v1, p0, Lr4/lt;->a:I

    const-string v2, "errorCode"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lr4/lt;->b:Ljava/lang/String;

    const-string v2, "errorDescription"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p0, p0, Lr4/lt;->k:Lr4/lt;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lr4/vu1;->d(Lr4/lt;)Lorg/json/JSONObject;

    move-result-object p0

    :goto_0
    const-string v1, "underlyingError"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method


# virtual methods
.method public final A0(Lr4/bp2;)V
    .locals 1

    iget-object v0, p1, Lr4/bp2;->b:Lr4/ap2;

    iget-object v0, v0, Lr4/ap2;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p1, Lr4/bp2;->b:Lr4/ap2;

    iget-object p1, p1, Lr4/ap2;->a:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/no2;

    iget p1, p1, Lr4/no2;->b:I

    iput p1, p0, Lr4/vu1;->d:I

    :cond_0
    return-void
.end method

.method public final B(Lr4/lt;)V
    .locals 1

    sget-object v0, Lr4/uu1;->d:Lr4/uu1;

    iput-object v0, p0, Lr4/vu1;->k:Lr4/uu1;

    iput-object p1, p0, Lr4/vu1;->q:Lr4/lt;

    return-void
.end method

.method public final C0(Lr4/i31;)V
    .locals 0

    invoke-virtual {p1}, Lr4/i31;->d()Lr4/b71;

    move-result-object p1

    iput-object p1, p0, Lr4/vu1;->p:Lr4/b71;

    sget-object p1, Lr4/uu1;->b:Lr4/uu1;

    iput-object p1, p0, Lr4/vu1;->k:Lr4/uu1;

    return-void
.end method

.method public final a()Z
    .locals 2

    iget-object v0, p0, Lr4/vu1;->k:Lr4/uu1;

    sget-object v1, Lr4/uu1;->a:Lr4/uu1;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lr4/vu1;->k:Lr4/uu1;

    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v1, p0, Lr4/vu1;->d:I

    invoke-static {v1}, Lr4/no2;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lr4/vu1;->p:Lr4/b71;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1}, Lr4/vu1;->c(Lr4/b71;)Lorg/json/JSONObject;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lr4/vu1;->q:Lr4/lt;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lr4/lt;->p:Landroid/os/IBinder;

    if-eqz v1, :cond_1

    check-cast v1, Lr4/b71;

    invoke-static {v1}, Lr4/vu1;->c(Lr4/b71;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1}, Lr4/b71;->g()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v3, p0, Lr4/vu1;->q:Lr4/lt;

    invoke-static {v3}, Lr4/vu1;->d(Lr4/lt;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v3, "errors"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    :goto_0
    const-string v1, "responseInfo"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public final c0(Lr4/og0;)V
    .locals 1

    iget-object p1, p0, Lr4/vu1;->a:Lr4/iv1;

    iget-object v0, p0, Lr4/vu1;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lr4/iv1;->j(Ljava/lang/String;Lr4/vu1;)V

    return-void
.end method
