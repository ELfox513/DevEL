.class public final Lr4/tl1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/i83;

.field public final b:Lr4/hm1;

.field public final c:Lr4/mm1;


# direct methods
.method public constructor <init>(Lr4/i83;Lr4/hm1;Lr4/mm1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/tl1;->a:Lr4/i83;

    iput-object p2, p0, Lr4/tl1;->b:Lr4/hm1;

    iput-object p3, p0, Lr4/tl1;->c:Lr4/mm1;

    return-void
.end method


# virtual methods
.method public final a(Lr4/bp2;Lr4/no2;Lorg/json/JSONObject;)Lr4/h83;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/bp2;",
            "Lr4/no2;",
            "Lorg/json/JSONObject;",
            ")",
            "Lr4/h83<",
            "Lr4/ej1;",
            ">;"
        }
    .end annotation

    move-object v12, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v7, p3

    iget-object v2, v12, Lr4/tl1;->a:Lr4/i83;

    new-instance v3, Lr4/rl1;

    invoke-direct {v3, p0, v0, v1, v7}, Lr4/rl1;-><init>(Lr4/tl1;Lr4/bp2;Lr4/no2;Lorg/json/JSONObject;)V

    invoke-interface {v2, v3}, Lr4/i83;->c(Ljava/util/concurrent/Callable;)Lr4/h83;

    move-result-object v2

    iget-object v3, v12, Lr4/tl1;->b:Lr4/hm1;

    const-string v4, "images"

    invoke-virtual {v3, v7, v4}, Lr4/hm1;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lr4/h83;

    move-result-object v3

    iget-object v5, v12, Lr4/tl1;->b:Lr4/hm1;

    iget-object v6, v0, Lr4/bp2;->b:Lr4/ap2;

    iget-object v6, v6, Lr4/ap2;->b:Lr4/so2;

    invoke-virtual {v5, v7, v4, v1, v6}, Lr4/hm1;->c(Lorg/json/JSONObject;Ljava/lang/String;Lr4/no2;Lr4/so2;)Lr4/h83;

    move-result-object v9

    iget-object v4, v12, Lr4/tl1;->b:Lr4/hm1;

    const-string v5, "secondary_image"

    invoke-virtual {v4, v7, v5}, Lr4/hm1;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lr4/h83;

    move-result-object v5

    iget-object v4, v12, Lr4/tl1;->b:Lr4/hm1;

    const-string v6, "app_icon"

    invoke-virtual {v4, v7, v6}, Lr4/hm1;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lr4/h83;

    move-result-object v4

    iget-object v6, v12, Lr4/tl1;->b:Lr4/hm1;

    const-string v8, "attribution"

    invoke-virtual {v6, v7, v8}, Lr4/hm1;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lr4/h83;

    move-result-object v6

    iget-object v8, v12, Lr4/tl1;->b:Lr4/hm1;

    iget-object v0, v0, Lr4/bp2;->b:Lr4/ap2;

    iget-object v0, v0, Lr4/ap2;->b:Lr4/so2;

    invoke-virtual {v8, v7, v1, v0}, Lr4/hm1;->e(Lorg/json/JSONObject;Lr4/no2;Lr4/so2;)Lr4/h83;

    move-result-object v8

    iget-object v0, v12, Lr4/tl1;->b:Lr4/hm1;

    const-string v1, "enable_omid"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v10, 0x0

    if-nez v1, :cond_0

    invoke-static {v10}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object v0

    :goto_0
    move-object v10, v0

    goto :goto_1

    :cond_0
    const-string v1, "omid_settings"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {v10}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v11, "omid_html"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v10}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {v10}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object v10

    new-instance v11, Lr4/cm1;

    invoke-direct {v11, v0, v1}, Lr4/cm1;-><init>(Lr4/hm1;Ljava/lang/String;)V

    sget-object v0, Lr4/qm0;->e:Lr4/i83;

    invoke-static {v10, v11, v0}, Lr4/y73;->i(Lr4/h83;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v0, v12, Lr4/tl1;->c:Lr4/mm1;

    const-string v1, "custom_assets"

    invoke-virtual {v0, v7, v1}, Lr4/mm1;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lr4/h83;

    move-result-object v11

    const/16 v0, 0x9

    new-array v0, v0, [Lr4/h83;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v3, v0, v1

    const/4 v1, 0x2

    aput-object v9, v0, v1

    const/4 v1, 0x3

    aput-object v5, v0, v1

    const/4 v1, 0x4

    aput-object v4, v0, v1

    const/4 v1, 0x5

    aput-object v6, v0, v1

    const/4 v1, 0x6

    aput-object v8, v0, v1

    const/4 v1, 0x7

    aput-object v10, v0, v1

    const/16 v1, 0x8

    aput-object v11, v0, v1

    invoke-static {v0}, Lr4/y73;->l([Lr4/h83;)Lr4/w73;

    move-result-object v13

    new-instance v14, Lr4/sl1;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v7, p3

    invoke-direct/range {v0 .. v11}, Lr4/sl1;-><init>(Lr4/tl1;Lr4/h83;Lr4/h83;Lr4/h83;Lr4/h83;Lr4/h83;Lorg/json/JSONObject;Lr4/h83;Lr4/h83;Lr4/h83;Lr4/h83;)V

    iget-object v0, v12, Lr4/tl1;->a:Lr4/i83;

    invoke-virtual {v13, v14, v0}, Lr4/w73;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object v0

    return-object v0
.end method
