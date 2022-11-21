.class public abstract Lr4/y42;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/q12;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lr4/q12<",
        "TAdT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    if-nez p0, :cond_0

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final a(Lr4/bp2;Lr4/no2;)Z
    .locals 1

    iget-object p1, p2, Lr4/no2;->v:Lorg/json/JSONObject;

    const-string p2, "pubid"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lr4/bp2;Lr4/no2;)Lr4/h83;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/bp2;",
            "Lr4/no2;",
            ")",
            "Lr4/h83<",
            "TAdT;>;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    iget-object v2, v1, Lr4/no2;->v:Lorg/json/JSONObject;

    const-string v3, "pubid"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lr4/bp2;->a:Lr4/yo2;

    iget-object v3, v3, Lr4/yo2;->a:Lr4/hp2;

    new-instance v4, Lr4/fp2;

    invoke-direct {v4}, Lr4/fp2;-><init>()V

    invoke-virtual {v4, v3}, Lr4/fp2;->k(Lr4/hp2;)Lr4/fp2;

    invoke-virtual {v4, v2}, Lr4/fp2;->L(Ljava/lang/String;)Lr4/fp2;

    iget-object v2, v3, Lr4/hp2;->d:Lr4/tt;

    iget-object v2, v2, Lr4/tt;->x:Landroid/os/Bundle;

    invoke-static {v2}, Lr4/y42;->d(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v6}, Lr4/y42;->d(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9

    const-string v6, "gw"

    const/4 v15, 0x1

    invoke-virtual {v9, v6, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v6, v1, Lr4/no2;->v:Lorg/json/JSONObject;

    const-string v7, "mad_hac"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v9, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v6, v1, Lr4/no2;->v:Lorg/json/JSONObject;

    const-string v7, "adJson"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string v7, "_ad"

    invoke-virtual {v9, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v6, "_noRefresh"

    invoke-virtual {v9, v6, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v6, v1, Lr4/no2;->D:Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v10, v1, Lr4/no2;->D:Lorg/json/JSONObject;

    invoke-virtual {v10, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v7, :cond_2

    invoke-virtual {v9, v7, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v5, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v14, Lr4/tt;

    move-object v5, v14

    iget-object v3, v3, Lr4/hp2;->d:Lr4/tt;

    iget v6, v3, Lr4/tt;->a:I

    iget-wide v7, v3, Lr4/tt;->b:J

    iget v10, v3, Lr4/tt;->k:I

    iget-object v11, v3, Lr4/tt;->p:Ljava/util/List;

    iget-boolean v12, v3, Lr4/tt;->q:Z

    iget v13, v3, Lr4/tt;->r:I

    iget-boolean v15, v3, Lr4/tt;->s:Z

    move-object v1, v14

    move v14, v15

    iget-object v15, v3, Lr4/tt;->t:Ljava/lang/String;

    iget-object v0, v3, Lr4/tt;->u:Lr4/uy;

    move-object/from16 v16, v0

    iget-object v0, v3, Lr4/tt;->v:Landroid/location/Location;

    move-object/from16 v17, v0

    iget-object v0, v3, Lr4/tt;->w:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v3, Lr4/tt;->y:Landroid/os/Bundle;

    move-object/from16 v20, v0

    iget-object v0, v3, Lr4/tt;->z:Ljava/util/List;

    move-object/from16 v21, v0

    iget-object v0, v3, Lr4/tt;->A:Ljava/lang/String;

    move-object/from16 v22, v0

    iget-object v0, v3, Lr4/tt;->B:Ljava/lang/String;

    move-object/from16 v23, v0

    iget-boolean v0, v3, Lr4/tt;->C:Z

    move/from16 v24, v0

    iget-object v0, v3, Lr4/tt;->D:Lr4/jt;

    move-object/from16 v25, v0

    iget v0, v3, Lr4/tt;->E:I

    move/from16 v26, v0

    iget-object v0, v3, Lr4/tt;->F:Ljava/lang/String;

    move-object/from16 v27, v0

    iget-object v0, v3, Lr4/tt;->G:Ljava/util/List;

    move-object/from16 v28, v0

    iget v0, v3, Lr4/tt;->H:I

    move/from16 v29, v0

    iget-object v0, v3, Lr4/tt;->I:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v19, v2

    invoke-direct/range {v5 .. v30}, Lr4/tt;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lr4/uy;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLr4/jt;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    invoke-virtual {v4, v1}, Lr4/fp2;->G(Lr4/tt;)Lr4/fp2;

    invoke-virtual {v4}, Lr4/fp2;->l()Lr4/hp2;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v2, p1

    iget-object v3, v2, Lr4/bp2;->b:Lr4/ap2;

    iget-object v3, v3, Lr4/ap2;->b:Lr4/so2;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v3, Lr4/so2;->a:Ljava/util/List;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v6, "nofill_urls"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget v5, v3, Lr4/so2;->c:I

    const-string v6, "refresh_interval"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, v3, Lr4/so2;->b:Ljava/lang/String;

    const-string v5, "gws_query_id"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "parent_common_config"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v2, v2, Lr4/bp2;->a:Lr4/yo2;

    iget-object v2, v2, Lr4/yo2;->a:Lr4/hp2;

    iget-object v2, v2, Lr4/hp2;->f:Ljava/lang/String;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "initial_ad_unit_id"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, p2

    iget-object v4, v2, Lr4/no2;->w:Ljava/lang/String;

    const-string v5, "allocation_id"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v2, Lr4/no2;->c:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v5, "click_urls"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v2, Lr4/no2;->d:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v5, "imp_urls"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v2, Lr4/no2;->p:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v5, "manual_tracking_urls"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v2, Lr4/no2;->n:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v5, "fill_urls"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v2, Lr4/no2;->h:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v5, "video_start_urls"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v2, Lr4/no2;->i:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v5, "video_reward_urls"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v2, Lr4/no2;->j:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v5, "video_complete_urls"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v4, v2, Lr4/no2;->k:Ljava/lang/String;

    const-string v5, "transaction_id"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v2, Lr4/no2;->l:Ljava/lang/String;

    const-string v5, "valid_from_timestamp"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v4, v2, Lr4/no2;->L:Z

    const-string v5, "is_closable_area_disabled"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v4, v2, Lr4/no2;->m:Lr4/rh0;

    if-eqz v4, :cond_4

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iget-object v5, v2, Lr4/no2;->m:Lr4/rh0;

    iget v5, v5, Lr4/rh0;->b:I

    const-string v6, "rb_amount"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, v2, Lr4/no2;->m:Lr4/rh0;

    iget-object v2, v2, Lr4/rh0;->a:Ljava/lang/String;

    const-string v5, "rb_type"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/os/Bundle;

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const-string v4, "rewards"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_4
    const-string v2, "parent_ad_config"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    move-object/from16 v2, p0

    invoke-virtual {v2, v0, v1}, Lr4/y42;->c(Lr4/hp2;Landroid/os/Bundle;)Lr4/h83;

    move-result-object v0

    return-object v0
.end method

.method public abstract c(Lr4/hp2;Landroid/os/Bundle;)Lr4/h83;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/hp2;",
            "Landroid/os/Bundle;",
            ")",
            "Lr4/h83<",
            "TAdT;>;"
        }
    .end annotation
.end method
