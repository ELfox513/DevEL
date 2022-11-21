.class public final Lr4/hm1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lr4/pl1;

.field public final c:Lr4/u;

.field public final d:Lr4/im0;

.field public final e:Lz2/a;

.field public final f:Lr4/ip;

.field public final g:Ljava/util/concurrent/Executor;

.field public final h:Lr4/d20;

.field public final i:Lr4/an1;

.field public final j:Lr4/rp1;

.field public final k:Ljava/util/concurrent/ScheduledExecutorService;

.field public final l:Lr4/lo1;

.field public final m:Lr4/ls1;

.field public final n:Lr4/xt2;

.field public final o:Lr4/pu2;

.field public final p:Lr4/c12;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr4/pl1;Lr4/u;Lr4/im0;Lz2/a;Lr4/ip;Ljava/util/concurrent/Executor;Lr4/hp2;Lr4/an1;Lr4/rp1;Ljava/util/concurrent/ScheduledExecutorService;Lr4/ls1;Lr4/xt2;Lr4/pu2;Lr4/c12;Lr4/lo1;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lr4/hm1;->a:Landroid/content/Context;

    move-object v1, p2

    iput-object v1, v0, Lr4/hm1;->b:Lr4/pl1;

    move-object v1, p3

    iput-object v1, v0, Lr4/hm1;->c:Lr4/u;

    move-object v1, p4

    iput-object v1, v0, Lr4/hm1;->d:Lr4/im0;

    move-object v1, p5

    iput-object v1, v0, Lr4/hm1;->e:Lz2/a;

    move-object v1, p6

    iput-object v1, v0, Lr4/hm1;->f:Lr4/ip;

    move-object v1, p7

    iput-object v1, v0, Lr4/hm1;->g:Ljava/util/concurrent/Executor;

    move-object v1, p8

    iget-object v1, v1, Lr4/hp2;->i:Lr4/d20;

    iput-object v1, v0, Lr4/hm1;->h:Lr4/d20;

    move-object v1, p9

    iput-object v1, v0, Lr4/hm1;->i:Lr4/an1;

    move-object v1, p10

    iput-object v1, v0, Lr4/hm1;->j:Lr4/rp1;

    move-object v1, p11

    iput-object v1, v0, Lr4/hm1;->k:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v1, p12

    iput-object v1, v0, Lr4/hm1;->m:Lr4/ls1;

    move-object v1, p13

    iput-object v1, v0, Lr4/hm1;->n:Lr4/xt2;

    move-object/from16 v1, p14

    iput-object v1, v0, Lr4/hm1;->o:Lr4/pu2;

    move-object/from16 v1, p15

    iput-object v1, v0, Lr4/hm1;->p:Lr4/c12;

    move-object/from16 v1, p16

    iput-object v1, v0, Lr4/hm1;->l:Lr4/lo1;

    return-void
.end method

.method public static final i(Lorg/json/JSONObject;)Lr4/cy;
    .locals 2

    const-string v0, "mute"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "default_reason"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-static {p0}, Lr4/hm1;->r(Lorg/json/JSONObject;)Lr4/cy;

    move-result-object p0

    return-object p0
.end method

.method public static final j(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lr4/cy;",
            ">;"
        }
    .end annotation

    const-string v0, "mute"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lr4/o33;->q()Lr4/o33;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "reasons"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lr4/hm1;->r(Lorg/json/JSONObject;)Lr4/cy;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lr4/o33;->x(Ljava/util/Collection;)Lr4/o33;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    invoke-static {}, Lr4/o33;->q()Lr4/o33;

    move-result-object p0

    return-object p0
.end method

.method public static m(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "r"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "g"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "b"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p1, v0, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static o(Lr4/h83;Ljava/lang/Object;)Lr4/h83;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lr4/h83<",
            "TT;>;TT;)",
            "Lr4/h83<",
            "TT;>;"
        }
    .end annotation

    new-instance p1, Lr4/em1;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lr4/em1;-><init>(Ljava/lang/Object;)V

    const-class v0, Ljava/lang/Exception;

    sget-object v1, Lr4/qm0;->f:Lr4/i83;

    invoke-static {p0, v0, p1, v1}, Lr4/y73;->g(Lr4/h83;Ljava/lang/Class;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object p0

    return-object p0
.end method

.method public static p(ZLr4/h83;Ljava/lang/Object;)Lr4/h83;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z",
            "Lr4/h83<",
            "TT;>;TT;)",
            "Lr4/h83<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance p0, Lr4/fm1;

    invoke-direct {p0, p1}, Lr4/fm1;-><init>(Lr4/h83;)V

    sget-object p2, Lr4/qm0;->f:Lr4/i83;

    invoke-static {p1, p0, p2}, Lr4/y73;->i(Lr4/h83;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-static {p1, p0}, Lr4/hm1;->o(Lr4/h83;Ljava/lang/Object;)Lr4/h83;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final r(Lorg/json/JSONObject;)Lr4/cy;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "reason"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ping_url"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lr4/cy;

    invoke-direct {v0, v1, p0}, Lr4/cy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;Ljava/lang/String;)Lr4/h83;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Lr4/h83<",
            "Lr4/z10;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object p2, p0, Lr4/hm1;->h:Lr4/d20;

    iget-boolean p2, p2, Lr4/d20;->b:Z

    invoke-virtual {p0, p1, p2}, Lr4/hm1;->l(Lorg/json/JSONObject;Z)Lr4/h83;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lorg/json/JSONObject;Ljava/lang/String;)Lr4/h83;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Lr4/h83<",
            "Ljava/util/List<",
            "Lr4/z10;",
            ">;>;"
        }
    .end annotation

    const-string p2, "images"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iget-object p2, p0, Lr4/hm1;->h:Lr4/d20;

    iget-boolean v0, p2, Lr4/d20;->b:Z

    iget-boolean p2, p2, Lr4/d20;->k:Z

    invoke-virtual {p0, p1, v0, p2}, Lr4/hm1;->k(Lorg/json/JSONArray;ZZ)Lr4/h83;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lorg/json/JSONObject;Ljava/lang/String;Lr4/no2;Lr4/so2;)Lr4/h83;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lr4/no2;",
            "Lr4/so2;",
            ")",
            "Lr4/h83<",
            "Lr4/cs0;",
            ">;"
        }
    .end annotation

    sget-object p2, Lr4/rz;->O6:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v0

    invoke-virtual {v0, p2}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-static {v0}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p2, "images"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-gtz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {v0}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v1, "base_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "html"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "width"

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "height"

    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lr4/hm1;->q(II)Lr4/yt;

    move-result-object v4

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {v0}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-static {v0}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object p1

    new-instance p2, Lr4/zl1;

    move-object v2, p2

    move-object v3, p0

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v8}, Lr4/zl1;-><init>(Lr4/hm1;Lr4/yt;Lr4/no2;Lr4/so2;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p3, Lr4/qm0;->e:Lr4/i83;

    invoke-static {p1, p2, p3}, Lr4/y73;->i(Lr4/h83;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object p1

    new-instance p2, Lr4/am1;

    invoke-direct {p2, p1}, Lr4/am1;-><init>(Lr4/h83;)V

    sget-object p3, Lr4/qm0;->f:Lr4/i83;

    invoke-static {p1, p2, p3}, Lr4/y73;->i(Lr4/h83;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    invoke-static {v0}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lorg/json/JSONObject;Ljava/lang/String;)Lr4/h83;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Lr4/h83<",
            "Lr4/w10;",
            ">;"
        }
    .end annotation

    const-string p2, "attribution"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    invoke-static {p2}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "images"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lr4/hm1;->k(Lorg/json/JSONArray;ZZ)Lr4/h83;

    move-result-object v0

    new-instance v1, Lr4/bm1;

    invoke-direct {v1, p0, p1}, Lr4/bm1;-><init>(Lr4/hm1;Lorg/json/JSONObject;)V

    iget-object v2, p0, Lr4/hm1;->g:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lr4/y73;->j(Lr4/h83;Lr4/p03;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object v0

    const-string v1, "require"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1, v0, p2}, Lr4/hm1;->p(ZLr4/h83;Ljava/lang/Object;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lorg/json/JSONObject;Lr4/no2;Lr4/so2;)Lr4/h83;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lr4/no2;",
            "Lr4/so2;",
            ")",
            "Lr4/h83<",
            "Lr4/cs0;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "html_containers"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "instream"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {p1, v0}, Lb3/b1;->h(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "video"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-static {v0}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object p1

    goto :goto_1

    :cond_0
    const-string v1, "vast_xml"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lr4/rz;->N6:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v5

    invoke-virtual {v5, v4}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "html"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v2, :cond_3

    const-string p1, "Required field \'vast_xml\' or \'html\' is missing"

    invoke-static {p1}, Lr4/cm0;->f(Ljava/lang/String;)V

    invoke-static {v0}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object p1

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    iget-object p2, p0, Lr4/hm1;->i:Lr4/an1;

    invoke-virtual {p2, p1}, Lr4/an1;->a(Lorg/json/JSONObject;)Lr4/h83;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lr4/hm1;->n(Lorg/json/JSONObject;Lr4/no2;Lr4/so2;)Lr4/h83;

    move-result-object p1

    :goto_0
    sget-object p2, Lr4/rz;->l2:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object p3

    invoke-virtual {p3, p2}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long p2, p2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lr4/hm1;->k:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {p1, p2, p3, v1, v2}, Lr4/y73;->h(Lr4/h83;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lr4/h83;

    move-result-object p1

    invoke-static {p1, v0}, Lr4/hm1;->o(Lr4/h83;Ljava/lang/Object;)Lr4/h83;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_4
    invoke-virtual {p0, v0, p2, p3}, Lr4/hm1;->n(Lorg/json/JSONObject;Lr4/no2;Lr4/so2;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic f(Ljava/lang/String;Ljava/lang/Object;)Lr4/h83;
    .locals 15

    move-object v0, p0

    invoke-static {}, Lz2/t;->e()Lr4/os0;

    iget-object v1, v0, Lr4/hm1;->a:Landroid/content/Context;

    invoke-static {}, Lr4/vt0;->b()Lr4/vt0;

    move-result-object v2

    iget-object v6, v0, Lr4/hm1;->c:Lr4/u;

    iget-object v8, v0, Lr4/hm1;->d:Lr4/im0;

    iget-object v11, v0, Lr4/hm1;->e:Lz2/a;

    iget-object v12, v0, Lr4/hm1;->f:Lr4/ip;

    const-string v3, "native-omid"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v1 .. v14}, Lr4/os0;->a(Landroid/content/Context;Lr4/vt0;Ljava/lang/String;ZZLr4/u;Lr4/r00;Lr4/im0;Lr4/h00;Lz2/l;Lz2/a;Lr4/ip;Lr4/no2;Lr4/so2;)Lr4/cs0;

    move-result-object v1

    invoke-static {v1}, Lr4/um0;->g(Ljava/lang/Object;)Lr4/um0;

    move-result-object v2

    invoke-interface {v1}, Lr4/cs0;->o0()Lr4/st0;

    move-result-object v3

    new-instance v4, Lr4/gm1;

    invoke-direct {v4, v2}, Lr4/gm1;-><init>(Lr4/um0;)V

    invoke-interface {v3, v4}, Lr4/st0;->s0(Lr4/qt0;)V

    sget-object v3, Lr4/rz;->x3:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v4

    invoke-virtual {v4, v3}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v4, "text/html"

    if-eqz v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v5, 0x1

    invoke-static {v3, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    const-string v5, "base64"

    invoke-interface {v1, v3, v4, v5}, Lr4/cs0;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v3, "UTF-8"

    move-object/from16 v5, p1

    invoke-interface {v1, v5, v4, v3}, Lr4/cs0;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v2
.end method

.method public final synthetic g(Lorg/json/JSONObject;Ljava/util/List;)Lr4/w10;
    .locals 12

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "text"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "bg_color"

    invoke-static {p1, v1}, Lr4/hm1;->m(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    const-string v1, "text_color"

    invoke-static {p1, v1}, Lr4/hm1;->m(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    const/4 v1, -0x1

    const-string v2, "text_size"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "allow_pub_rendering"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v10

    const/16 v2, 0x3e8

    const-string v4, "animation_ms"

    invoke-virtual {p1, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v4, 0xfa0

    const-string v7, "presentation_ms"

    invoke-virtual {p1, v7, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    new-instance v11, Lr4/w10;

    if-lez v1, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    move-object v7, v0

    add-int v8, p1, v2

    iget-object p1, p0, Lr4/hm1;->h:Lr4/d20;

    iget v9, p1, Lr4/d20;->p:I

    move-object v2, v11

    move-object v4, p2

    invoke-direct/range {v2 .. v10}, Lr4/w10;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;IIZ)V

    move-object v0, v11

    :cond_2
    :goto_0
    return-object v0
.end method

.method public final synthetic h(Lr4/yt;Lr4/no2;Lr4/so2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lr4/h83;
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lr4/hm1;->j:Lr4/rp1;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual {v1, v2, v3, v4}, Lr4/rp1;->b(Lr4/yt;Lr4/no2;Lr4/so2;)Lr4/cs0;

    move-result-object v1

    invoke-static {v1}, Lr4/um0;->g(Ljava/lang/Object;)Lr4/um0;

    move-result-object v2

    iget-object v3, v0, Lr4/hm1;->l:Lr4/lo1;

    invoke-virtual {v3}, Lr4/lo1;->b()Lr4/io1;

    move-result-object v9

    move-object v5, v9

    move-object v7, v9

    move-object/from16 v20, v9

    move-object v8, v9

    move-object v6, v9

    invoke-interface {v1}, Lr4/cs0;->o0()Lr4/st0;

    move-result-object v4

    new-instance v3, Lz2/b;

    move-object v12, v3

    iget-object v10, v0, Lr4/hm1;->a:Landroid/content/Context;

    const/4 v14, 0x0

    invoke-direct {v3, v10, v14, v14}, Lz2/b;-><init>(Landroid/content/Context;Lr4/ej0;Lr4/bg0;)V

    iget-object v15, v0, Lr4/hm1;->p:Lr4/c12;

    iget-object v3, v0, Lr4/hm1;->o:Lr4/pu2;

    move-object/from16 v16, v3

    iget-object v3, v0, Lr4/hm1;->m:Lr4/ls1;

    move-object/from16 v17, v3

    iget-object v3, v0, Lr4/hm1;->n:Lr4/xt2;

    move-object/from16 v18, v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v3, 0x0

    move-object v14, v3

    const/16 v19, 0x0

    invoke-interface/range {v4 .. v20}, Lr4/st0;->d0(Lr4/gt;Lr4/t40;La3/q;Lr4/v40;La3/x;ZLr4/x50;Lz2/b;Lr4/ge0;Lr4/ej0;Lr4/c12;Lr4/pu2;Lr4/ls1;Lr4/xt2;Lr4/v50;Lr4/cf1;)V

    sget-object v3, Lr4/rz;->k2:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v4

    invoke-virtual {v4, v3}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lr4/t50;->s:Lr4/u50;

    const-string v4, "/getNativeAdViewSignals"

    invoke-interface {v1, v4, v3}, Lr4/cs0;->g0(Ljava/lang/String;Lr4/u50;)V

    :cond_0
    sget-object v3, Lr4/t50;->t:Lr4/u50;

    const-string v4, "/getNativeClickMeta"

    invoke-interface {v1, v4, v3}, Lr4/cs0;->g0(Ljava/lang/String;Lr4/u50;)V

    invoke-interface {v1}, Lr4/cs0;->o0()Lr4/st0;

    move-result-object v3

    new-instance v4, Lr4/xl1;

    invoke-direct {v4, v2}, Lr4/xl1;-><init>(Lr4/um0;)V

    invoke-interface {v3, v4}, Lr4/st0;->s0(Lr4/qt0;)V

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    const/4 v5, 0x0

    invoke-interface {v1, v3, v4, v5}, Lr4/cs0;->c1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public final k(Lorg/json/JSONArray;ZZ)Lr4/h83;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "ZZ)",
            "Lr4/h83<",
            "Ljava/util/List<",
            "Lr4/z10;",
            ">;>;"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p3

    goto :goto_0

    :cond_1
    const/4 p3, 0x1

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p3, :cond_2

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lr4/hm1;->l(Lorg/json/JSONObject;Z)Lr4/h83;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lr4/y73;->k(Ljava/lang/Iterable;)Lr4/h83;

    move-result-object p1

    sget-object p2, Lr4/wl1;->a:Lr4/p03;

    iget-object p3, p0, Lr4/hm1;->g:Ljava/util/concurrent/Executor;

    invoke-static {p1, p2, p3}, Lr4/y73;->j(Lr4/h83;Lr4/p03;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method

.method public final l(Lorg/json/JSONObject;Z)Lr4/h83;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Z)",
            "Lr4/h83<",
            "Lr4/z10;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-static {v0}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object p1

    return-object p1

    :cond_1
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-string v4, "scale"

    invoke-virtual {p1, v4, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    const/4 v1, 0x1

    const-string v2, "is_transparent"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "width"

    const/4 v4, -0x1

    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    const-string v2, "height"

    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    if-eqz p2, :cond_2

    new-instance p1, Lr4/z10;

    const/4 v6, 0x0

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    move-object v5, p1

    invoke-direct/range {v5 .. v11}, Lr4/z10;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;DII)V

    invoke-static {p1}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p2, p0, Lr4/hm1;->b:Lr4/pl1;

    invoke-virtual {p2, v3, v8, v9, v1}, Lr4/pl1;->a(Ljava/lang/String;DZ)Lr4/h83;

    move-result-object p2

    new-instance v1, Lr4/yl1;

    move-object v2, v1

    move-wide v4, v8

    move v6, v10

    move v7, v11

    invoke-direct/range {v2 .. v7}, Lr4/yl1;-><init>(Ljava/lang/String;DII)V

    iget-object v2, p0, Lr4/hm1;->g:Ljava/util/concurrent/Executor;

    invoke-static {p2, v1, v2}, Lr4/y73;->j(Lr4/h83;Lr4/p03;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object p2

    const-string v1, "require"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1, p2, v0}, Lr4/hm1;->p(ZLr4/h83;Ljava/lang/Object;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method

.method public final n(Lorg/json/JSONObject;Lr4/no2;Lr4/so2;)Lr4/h83;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lr4/no2;",
            "Lr4/so2;",
            ")",
            "Lr4/h83<",
            "Lr4/cs0;",
            ">;"
        }
    .end annotation

    const-string v0, "base_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "html"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "width"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string v4, "height"

    invoke-virtual {p1, v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lr4/hm1;->q(II)Lr4/yt;

    move-result-object v6

    iget-object v1, p0, Lr4/hm1;->i:Lr4/an1;

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Lr4/an1;->b(Ljava/lang/String;Ljava/lang/String;Lr4/no2;Lr4/so2;Lr4/yt;)Lr4/h83;

    move-result-object p1

    new-instance p2, Lr4/dm1;

    invoke-direct {p2, p1}, Lr4/dm1;-><init>(Lr4/h83;)V

    sget-object p3, Lr4/qm0;->f:Lr4/i83;

    invoke-static {p1, p2, p3}, Lr4/y73;->i(Lr4/h83;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method

.method public final q(II)Lr4/yt;
    .locals 3

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lr4/yt;->Y0()Lr4/yt;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    new-instance v0, Lr4/yt;

    iget-object v1, p0, Lr4/hm1;->a:Landroid/content/Context;

    new-instance v2, Lt2/g;

    invoke-direct {v2, p1, p2}, Lt2/g;-><init>(II)V

    invoke-direct {v0, v1, v2}, Lr4/yt;-><init>(Landroid/content/Context;Lt2/g;)V

    return-object v0
.end method
