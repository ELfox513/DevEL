.class public final synthetic Lr4/rl1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final a:Lr4/tl1;

.field public final b:Lr4/bp2;

.field public final c:Lr4/no2;

.field public final d:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lr4/tl1;Lr4/bp2;Lr4/no2;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/rl1;->a:Lr4/tl1;

    iput-object p2, p0, Lr4/rl1;->b:Lr4/bp2;

    iput-object p3, p0, Lr4/rl1;->c:Lr4/no2;

    iput-object p4, p0, Lr4/rl1;->d:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lr4/rl1;->b:Lr4/bp2;

    iget-object v1, p0, Lr4/rl1;->c:Lr4/no2;

    iget-object v2, p0, Lr4/rl1;->d:Lorg/json/JSONObject;

    new-instance v3, Lr4/ej1;

    invoke-direct {v3}, Lr4/ej1;-><init>()V

    const-string v4, "template_id"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lr4/ej1;->A(I)V

    const-string v4, "custom_template_id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lr4/ej1;->T(Ljava/lang/String;)V

    const-string v4, "omid_settings"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    const-string v6, "omid_partner_name"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    invoke-virtual {v3, v4}, Lr4/ej1;->b0(Ljava/lang/String;)V

    iget-object v0, v0, Lr4/bp2;->a:Lr4/yo2;

    iget-object v0, v0, Lr4/yo2;->a:Lr4/hp2;

    iget-object v4, v0, Lr4/hp2;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lr4/ej1;->d0()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lr4/ej1;->d0()I

    move-result v4

    const/4 v7, 0x3

    if-ne v4, v7, :cond_3

    invoke-virtual {v3}, Lr4/ej1;->q()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v0, v0, Lr4/hp2;->h:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lr4/ej1;->q()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lr4/j52;

    const-string v1, "Unexpected custom template id in the response."

    invoke-direct {v0, v6, v1}, Lr4/j52;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lr4/j52;

    const-string v1, "No custom template id for custom template ad response."

    invoke-direct {v0, v6, v1}, Lr4/j52;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    const-string v0, "rating"

    invoke-virtual {v2, v0, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lr4/ej1;->Q(D)V

    const-string v0, "headline"

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-boolean v1, v1, Lr4/no2;->I:Z

    if-eqz v1, :cond_4

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    invoke-static {}, Lb3/k2;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    add-int/2addr v6, v7

    add-int/2addr v6, v8

    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_4
    invoke-virtual {v3, v0, v4}, Lr4/ej1;->Y(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lr4/ej1;->Y(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "call_to_action"

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lr4/ej1;->Y(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "store"

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lr4/ej1;->Y(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "price"

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lr4/ej1;->Y(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "advertiser"

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lr4/ej1;->Y(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_5
    new-instance v0, Lr4/j52;

    invoke-virtual {v3}, Lr4/ej1;->d0()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invalid template ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v6, v1}, Lr4/j52;-><init>(ILjava/lang/String;)V

    throw v0
.end method
