.class public final Lr4/hz1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/ps2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/ps2<",
        "Lr4/gz1;",
        "Lr4/cz1;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/hz1;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Lr4/gz1;

    invoke-static {p1}, Lr4/gz1;->a(Lr4/gz1;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "http_timeout_millis"

    const v2, 0xea60

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1}, Lr4/gz1;->b(Lr4/gz1;)Lr4/rg0;

    move-result-object v1

    invoke-virtual {v1}, Lr4/rg0;->a()I

    move-result v2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_5

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lr4/gz1;->b(Lr4/gz1;)Lr4/rg0;

    move-result-object v2

    invoke-virtual {v2}, Lr4/rg0;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lr4/hz1;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lr4/hz1;->a:Ljava/lang/String;

    const-string v3, "Cookie"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p1}, Lr4/gz1;->b(Lr4/gz1;)Lr4/rg0;

    move-result-object v2

    invoke-virtual {v2}, Lr4/rg0;->f()Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_3

    invoke-static {p1}, Lr4/gz1;->a(Lr4/gz1;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "pii"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v4, "doritos"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "x-afma-drt-cookie"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v4, "doritos_v2"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "x-afma-drt-v2-cookie"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string v2, "DSID signal does not exist."

    invoke-static {v2}, Lb3/w1;->k(Ljava/lang/String;)V

    :cond_3
    :goto_0
    invoke-static {p1}, Lr4/gz1;->b(Lr4/gz1;)Lr4/rg0;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {p1}, Lr4/gz1;->b(Lr4/gz1;)Lr4/rg0;

    move-result-object v2

    invoke-virtual {v2}, Lr4/rg0;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p1}, Lr4/gz1;->b(Lr4/gz1;)Lr4/rg0;

    move-result-object v2

    invoke-virtual {v2}, Lr4/rg0;->d()Ljava/lang/String;

    move-result-object v3

    :cond_4
    new-instance v2, Lr4/cz1;

    invoke-static {p1}, Lr4/gz1;->b(Lr4/gz1;)Lr4/rg0;

    move-result-object p1

    invoke-virtual {p1}, Lr4/rg0;->e()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v0, v1, v3}, Lr4/cz1;-><init>(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    return-object v2

    :cond_5
    invoke-virtual {v1}, Lr4/rg0;->a()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    invoke-virtual {v1}, Lr4/rg0;->b()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {v1}, Lr4/rg0;->b()Ljava/util/List;

    move-result-object p1

    const-string v0, ", "

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lr4/cm0;->c(Ljava/lang/String;)V

    :cond_6
    new-instance p1, Lr4/sv1;

    const/4 v0, 0x2

    const-string v1, "Error building request URL."

    invoke-direct {p1, v0, v1}, Lr4/sv1;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Lr4/sv1;

    invoke-direct {p1, v0}, Lr4/sv1;-><init>(I)V

    throw p1
.end method
