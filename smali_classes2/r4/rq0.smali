.class public final Lr4/rq0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/u50;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/u50<",
        "Lr4/po0;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x27

    add-int/2addr v3, v0

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Precache invalid numeric parameter \'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\': "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr4/cm0;->f(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 16

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    check-cast v1, Lr4/po0;

    const/4 v2, 0x3

    invoke-static {v2}, Lr4/cm0;->j(I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v3, "google.afma.Notify_dt"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Precache GMSG: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lr4/cm0;->a(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lz2/t;->z()Lr4/iq0;

    move-result-object v2

    const-string v3, "abort"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v1}, Lr4/iq0;->d(Lr4/po0;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "Precache abort but no precache task running."

    invoke-static {v0}, Lr4/cm0;->f(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v3, "src"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "periodicReportIntervalMs"

    invoke-static {v0, v4}, Lr4/rq0;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "exoPlayerRenderingIntervalMs"

    invoke-static {v0, v5}, Lr4/rq0;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "exoPlayerIdleIntervalMs"

    invoke-static {v0, v6}, Lr4/rq0;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lr4/oo0;

    const-string v8, "flags"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v7, v8}, Lr4/oo0;-><init>(Ljava/lang/String;)V

    iget-boolean v8, v7, Lr4/oo0;->n:Z

    if-eqz v3, :cond_12

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    const-string v12, "demuxed"

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    if-eqz v12, :cond_4

    :try_start_0
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10, v12}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v14

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    :goto_0
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v15, v13, :cond_2

    invoke-virtual {v10, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v14, v15
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_2
    move-object v10, v14

    goto :goto_2

    :catch_0
    nop

    const-string v10, "Malformed demuxed URL list for precache: "

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v10, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_3
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v10, v12

    :goto_1
    invoke-static {v10}, Lr4/cm0;->f(Ljava/lang/String;)V

    const/4 v10, 0x0

    :cond_4
    :goto_2
    if-nez v10, :cond_5

    new-array v10, v9, [Ljava/lang/String;

    aput-object v3, v10, v11

    :cond_5
    if-eqz v8, :cond_8

    invoke-virtual {v2}, Lr4/iq0;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lr4/hq0;

    iget-object v9, v8, Lr4/hq0;->c:Lr4/po0;

    if-ne v9, v1, :cond_6

    invoke-virtual {v8}, Lr4/hq0;->d()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    move-object v13, v8

    goto :goto_3

    :cond_7
    const/4 v13, 0x0

    goto :goto_3

    :cond_8
    invoke-virtual {v2, v1}, Lr4/iq0;->e(Lr4/po0;)Lr4/hq0;

    move-result-object v13

    :goto_3
    if-eqz v13, :cond_9

    const-string v0, "Precache task is already running."

    invoke-static {v0}, Lr4/cm0;->f(Ljava/lang/String;)V

    return-void

    :cond_9
    invoke-interface {v1}, Lr4/po0;->i()Lz2/a;

    move-result-object v2

    if-nez v2, :cond_a

    const-string v0, "Precache requires a dependency provider."

    invoke-static {v0}, Lr4/cm0;->f(Ljava/lang/String;)V

    return-void

    :cond_a
    const-string v2, "player"

    invoke-static {v0, v2}, Lr4/rq0;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_b

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_b
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1, v4}, Lr4/po0;->T0(I)V

    :cond_c
    if-eqz v5, :cond_d

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1, v4}, Lr4/po0;->S(I)V

    :cond_d
    if-eqz v6, :cond_e

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1, v4}, Lr4/po0;->b0(I)V

    :cond_e
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1}, Lr4/po0;->i()Lz2/a;

    move-result-object v4

    iget-object v4, v4, Lz2/a;->c:Lr4/bq0;

    if-lez v2, :cond_11

    invoke-static {}, Lr4/fo0;->Q()I

    move-result v2

    iget v4, v7, Lr4/oo0;->h:I

    if-ge v2, v4, :cond_f

    new-instance v2, Lr4/zq0;

    invoke-direct {v2, v1, v7}, Lr4/zq0;-><init>(Lr4/po0;Lr4/oo0;)V

    goto :goto_4

    :cond_f
    iget v4, v7, Lr4/oo0;->b:I

    if-ge v2, v4, :cond_10

    new-instance v2, Lr4/wq0;

    invoke-direct {v2, v1, v7}, Lr4/wq0;-><init>(Lr4/po0;Lr4/oo0;)V

    goto :goto_4

    :cond_10
    new-instance v2, Lr4/uq0;

    invoke-direct {v2, v1}, Lr4/uq0;-><init>(Lr4/po0;)V

    goto :goto_4

    :cond_11
    new-instance v2, Lr4/tq0;

    invoke-direct {v2, v1}, Lr4/tq0;-><init>(Lr4/po0;)V

    :goto_4
    new-instance v4, Lr4/hq0;

    invoke-direct {v4, v1, v2, v3, v10}, Lr4/hq0;-><init>(Lr4/po0;Lr4/qq0;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v4}, Lb3/d0;->c()Lr4/h83;

    goto :goto_5

    :cond_12
    invoke-virtual {v2, v1}, Lr4/iq0;->e(Lr4/po0;)Lr4/hq0;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-object v2, v1, Lr4/hq0;->d:Lr4/qq0;

    :goto_5
    const-string v1, "minBufferMs"

    invoke-static {v0, v1}, Lr4/rq0;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lr4/qq0;->i(I)V

    :cond_13
    const-string v1, "maxBufferMs"

    invoke-static {v0, v1}, Lr4/rq0;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lr4/qq0;->h(I)V

    :cond_14
    const-string v1, "bufferForPlaybackMs"

    invoke-static {v0, v1}, Lr4/rq0;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lr4/qq0;->j(I)V

    :cond_15
    const-string v1, "bufferForPlaybackAfterRebufferMs"

    invoke-static {v0, v1}, Lr4/rq0;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lr4/qq0;->k(I)V

    :cond_16
    return-void

    :cond_17
    const-string v0, "Precache must specify a source."

    invoke-static {v0}, Lr4/cm0;->f(Ljava/lang/String;)V

    return-void
.end method
