.class public final Lr4/pd0;
.super Lr4/dd0;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

.field public b:Ld3/l;

.field public d:Ld3/q;

.field public k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;)V
    .locals 1

    invoke-direct {p0}, Lr4/dd0;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lr4/pd0;->k:Ljava/lang/String;

    iput-object p1, p0, Lr4/pd0;->a:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    return-void
.end method

.method public static final h7(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Server parameters: "

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lr4/cm0;->f(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    move-object v0, p0

    :cond_2
    return-object v0

    :catch_0
    move-exception p0

    const-string v0, ""

    invoke-static {v0, p0}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static final i7(Lr4/tt;)Z
    .locals 0

    iget-boolean p0, p0, Lr4/tt;->q:Z

    if-nez p0, :cond_1

    invoke-static {}, Lr4/yu;->a()Lr4/vl0;

    invoke-static {}, Lr4/vl0;->k()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final j7(Ljava/lang/String;Lr4/tt;)Ljava/lang/String;
    .locals 1

    iget-object p1, p1, Lr4/tt;->F:Ljava/lang/String;

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "max_ad_content_rating"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p1
.end method


# virtual methods
.method public final G4(Ljava/lang/String;Ljava/lang/String;Lr4/tt;Lf4/a;Lr4/vc0;Lr4/lb0;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    :try_start_0
    new-instance v2, Lr4/ld0;

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    invoke-direct {v2, v1, v3, v4}, Lr4/ld0;-><init>(Lr4/pd0;Lr4/vc0;Lr4/lb0;)V

    iget-object v3, v1, Lr4/pd0;->a:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    new-instance v15, Ld3/m;

    invoke-static/range {p4 .. p4}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroid/content/Context;

    invoke-static/range {p2 .. p2}, Lr4/pd0;->h7(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v1, v0}, Lr4/pd0;->g7(Lr4/tt;)Landroid/os/Bundle;

    move-result-object v8

    invoke-static/range {p3 .. p3}, Lr4/pd0;->i7(Lr4/tt;)Z

    move-result v9

    iget-object v10, v0, Lr4/tt;->v:Landroid/location/Location;

    iget v11, v0, Lr4/tt;->r:I

    iget v12, v0, Lr4/tt;->E:I

    invoke-static/range {p2 .. p3}, Lr4/pd0;->j7(Ljava/lang/String;Lr4/tt;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v1, Lr4/pd0;->k:Ljava/lang/String;

    move-object v4, v15

    move-object/from16 v6, p1

    invoke-direct/range {v4 .. v14}, Ld3/m;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v15, v2}, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;->loadRtbInterstitialAd(Ld3/m;Ld3/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v2, "Adapter failed to render interstitial ad."

    invoke-static {v2, v0}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final J0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lr4/pd0;->k:Ljava/lang/String;

    return-void
.end method

.method public final K1(Ljava/lang/String;Ljava/lang/String;Lr4/tt;Lf4/a;Lr4/sc0;Lr4/lb0;Lr4/yt;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    move-object/from16 v2, p7

    :try_start_0
    new-instance v3, Lr4/jd0;

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    invoke-direct {v3, v1, v4, v5}, Lr4/jd0;-><init>(Lr4/pd0;Lr4/sc0;Lr4/lb0;)V

    iget-object v4, v1, Lr4/pd0;->a:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    new-instance v15, Ld3/h;

    invoke-static/range {p4 .. p4}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroid/content/Context;

    invoke-static/range {p2 .. p2}, Lr4/pd0;->h7(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v1, v0}, Lr4/pd0;->g7(Lr4/tt;)Landroid/os/Bundle;

    move-result-object v9

    invoke-static/range {p3 .. p3}, Lr4/pd0;->i7(Lr4/tt;)Z

    move-result v10

    iget-object v11, v0, Lr4/tt;->v:Landroid/location/Location;

    iget v12, v0, Lr4/tt;->r:I

    iget v13, v0, Lr4/tt;->E:I

    invoke-static/range {p2 .. p3}, Lr4/pd0;->j7(Ljava/lang/String;Lr4/tt;)Ljava/lang/String;

    move-result-object v14

    iget v0, v2, Lr4/yt;->p:I

    iget v5, v2, Lr4/yt;->b:I

    iget-object v2, v2, Lr4/yt;->a:Ljava/lang/String;

    invoke-static {v0, v5, v2}, Lt2/x;->a(IILjava/lang/String;)Lt2/g;

    move-result-object v0

    iget-object v2, v1, Lr4/pd0;->k:Ljava/lang/String;

    move-object v5, v15

    move-object/from16 v7, p1

    move-object v1, v15

    move-object v15, v0

    move-object/from16 v16, v2

    invoke-direct/range {v5 .. v16}, Ld3/h;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Lt2/g;Ljava/lang/String;)V

    invoke-virtual {v4, v1, v3}, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;->loadRtbBannerAd(Ld3/h;Ld3/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "Adapter failed to render banner ad."

    invoke-static {v1, v0}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final T0(Lf4/a;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lr4/yt;Lr4/hd0;)V
    .locals 7

    :try_start_0
    new-instance v0, Lr4/nd0;

    invoke-direct {v0, p0, p6}, Lr4/nd0;-><init>(Lr4/pd0;Lr4/hd0;)V

    iget-object p6, p0, Lr4/pd0;->a:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    new-instance v1, Ld3/j;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "rewarded_interstitial"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    goto :goto_1

    :sswitch_1
    const-string v2, "interstitial"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_1

    :sswitch_2
    const-string v2, "rewarded"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_1

    :sswitch_3
    const-string v2, "native"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    goto :goto_1

    :sswitch_4
    const-string v2, "banner"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p2, -0x1

    :goto_1
    if-eqz p2, :cond_5

    if-eq p2, v6, :cond_4

    if-eq p2, v5, :cond_3

    if-eq p2, v4, :cond_2

    if-ne p2, v3, :cond_1

    :try_start_1
    sget-object p2, Lt2/b;->p:Lt2/b;

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Internal Error"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    sget-object p2, Lt2/b;->k:Lt2/b;

    goto :goto_2

    :cond_3
    sget-object p2, Lt2/b;->d:Lt2/b;

    goto :goto_2

    :cond_4
    sget-object p2, Lt2/b;->b:Lt2/b;

    goto :goto_2

    :cond_5
    sget-object p2, Lt2/b;->a:Lt2/b;

    :goto_2
    invoke-direct {v1, p2, p4}, Ld3/j;-><init>(Lt2/b;Landroid/os/Bundle;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p4, Lf3/a;

    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget v1, p5, Lr4/yt;->p:I

    iget v2, p5, Lr4/yt;->b:I

    iget-object p5, p5, Lr4/yt;->a:Ljava/lang/String;

    invoke-static {v1, v2, p5}, Lt2/x;->a(IILjava/lang/String;)Lt2/g;

    move-result-object p5

    invoke-direct {p4, p1, p2, p3, p5}, Lf3/a;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;Lt2/g;)V

    invoke-virtual {p6, p4, v0}, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;->collectSignals(Lf3/a;Lf3/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "Error generating signals for RTB"

    invoke-static {p2, p1}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1

    :sswitch_data_0
    .sparse-switch
        -0x533a80d4 -> :sswitch_4
        -0x3ebdafe9 -> :sswitch_3
        -0xe47b3f2 -> :sswitch_2
        0x240b672c -> :sswitch_1
        0x71ef0bbd -> :sswitch_0
    .end sparse-switch
.end method

.method public final T3(Ljava/lang/String;Ljava/lang/String;Lr4/tt;Lf4/a;Lr4/yc0;Lr4/lb0;Lr4/d20;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    :try_start_0
    new-instance v2, Lr4/md0;

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    invoke-direct {v2, v1, v3, v4}, Lr4/md0;-><init>(Lr4/pd0;Lr4/yc0;Lr4/lb0;)V

    iget-object v3, v1, Lr4/pd0;->a:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    new-instance v15, Ld3/o;

    invoke-static/range {p4 .. p4}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroid/content/Context;

    invoke-static/range {p2 .. p2}, Lr4/pd0;->h7(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v1, v0}, Lr4/pd0;->g7(Lr4/tt;)Landroid/os/Bundle;

    move-result-object v8

    invoke-static/range {p3 .. p3}, Lr4/pd0;->i7(Lr4/tt;)Z

    move-result v9

    iget-object v10, v0, Lr4/tt;->v:Landroid/location/Location;

    iget v11, v0, Lr4/tt;->r:I

    iget v12, v0, Lr4/tt;->E:I

    invoke-static/range {p2 .. p3}, Lr4/pd0;->j7(Ljava/lang/String;Lr4/tt;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v1, Lr4/pd0;->k:Ljava/lang/String;

    move-object v4, v15

    move-object/from16 v6, p1

    move-object v0, v15

    move-object/from16 v15, p7

    invoke-direct/range {v4 .. v15}, Ld3/o;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;Lr4/d20;)V

    invoke-virtual {v3, v0, v2}, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;->loadRtbNativeAd(Ld3/o;Ld3/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v2, "Adapter failed to render native ad."

    invoke-static {v2, v0}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final a4(Ljava/lang/String;Ljava/lang/String;Lr4/tt;Lf4/a;Lr4/bd0;Lr4/lb0;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    :try_start_0
    new-instance v2, Lr4/od0;

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    invoke-direct {v2, v1, v3, v4}, Lr4/od0;-><init>(Lr4/pd0;Lr4/bd0;Lr4/lb0;)V

    iget-object v3, v1, Lr4/pd0;->a:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    new-instance v15, Ld3/r;

    invoke-static/range {p4 .. p4}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroid/content/Context;

    invoke-static/range {p2 .. p2}, Lr4/pd0;->h7(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v1, v0}, Lr4/pd0;->g7(Lr4/tt;)Landroid/os/Bundle;

    move-result-object v8

    invoke-static/range {p3 .. p3}, Lr4/pd0;->i7(Lr4/tt;)Z

    move-result v9

    iget-object v10, v0, Lr4/tt;->v:Landroid/location/Location;

    iget v11, v0, Lr4/tt;->r:I

    iget v12, v0, Lr4/tt;->E:I

    invoke-static/range {p2 .. p3}, Lr4/pd0;->j7(Ljava/lang/String;Lr4/tt;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v1, Lr4/pd0;->k:Ljava/lang/String;

    move-object v4, v15

    move-object/from16 v6, p1

    invoke-direct/range {v4 .. v14}, Ld3/r;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v15, v2}, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;->loadRtbRewardedAd(Ld3/r;Ld3/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v2, "Adapter failed to render rewarded ad."

    invoke-static {v2, v0}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final d()Lr4/rd0;
    .locals 1

    iget-object v0, p0, Lr4/pd0;->a:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    invoke-virtual {v0}, Ld3/a;->getVersionInfo()Ld3/w;

    const/4 v0, 0x0

    invoke-static {v0}, Lr4/rd0;->X0(Ld3/w;)Lr4/rd0;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lr4/lx;
    .locals 3

    iget-object v0, p0, Lr4/pd0;->a:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    instance-of v1, v0, Ld3/y;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    check-cast v0, Ld3/y;

    invoke-interface {v0}, Ld3/y;->getVideoController()Lr4/lx;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object v2
.end method

.method public final g()Lr4/rd0;
    .locals 1

    iget-object v0, p0, Lr4/pd0;->a:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    invoke-virtual {v0}, Ld3/a;->getSDKVersionInfo()Ld3/w;

    const/4 v0, 0x0

    invoke-static {v0}, Lr4/rd0;->X0(Ld3/w;)Lr4/rd0;

    move-result-object v0

    return-object v0
.end method

.method public final g7(Lr4/tt;)Landroid/os/Bundle;
    .locals 1

    iget-object p1, p1, Lr4/tt;->x:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lr4/pd0;->a:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    return-object p1
.end method

.method public final i6(Ljava/lang/String;Ljava/lang/String;Lr4/tt;Lf4/a;Lr4/sc0;Lr4/lb0;Lr4/yt;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    move-object/from16 v2, p7

    :try_start_0
    new-instance v3, Lr4/kd0;

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    invoke-direct {v3, v1, v4, v5}, Lr4/kd0;-><init>(Lr4/pd0;Lr4/sc0;Lr4/lb0;)V

    iget-object v4, v1, Lr4/pd0;->a:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    new-instance v15, Ld3/h;

    invoke-static/range {p4 .. p4}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroid/content/Context;

    invoke-static/range {p2 .. p2}, Lr4/pd0;->h7(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v1, v0}, Lr4/pd0;->g7(Lr4/tt;)Landroid/os/Bundle;

    move-result-object v9

    invoke-static/range {p3 .. p3}, Lr4/pd0;->i7(Lr4/tt;)Z

    move-result v10

    iget-object v11, v0, Lr4/tt;->v:Landroid/location/Location;

    iget v12, v0, Lr4/tt;->r:I

    iget v13, v0, Lr4/tt;->E:I

    invoke-static/range {p2 .. p3}, Lr4/pd0;->j7(Ljava/lang/String;Lr4/tt;)Ljava/lang/String;

    move-result-object v14

    iget v0, v2, Lr4/yt;->p:I

    iget v5, v2, Lr4/yt;->b:I

    iget-object v2, v2, Lr4/yt;->a:Ljava/lang/String;

    invoke-static {v0, v5, v2}, Lt2/x;->a(IILjava/lang/String;)Lt2/g;

    move-result-object v0

    iget-object v2, v1, Lr4/pd0;->k:Ljava/lang/String;

    move-object v5, v15

    move-object/from16 v7, p1

    move-object v1, v15

    move-object v15, v0

    move-object/from16 v16, v2

    invoke-direct/range {v5 .. v16}, Ld3/h;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Lt2/g;Ljava/lang/String;)V

    invoke-virtual {v4, v1, v3}, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;->loadRtbInterscrollerAd(Ld3/h;Ld3/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "Adapter failed to render interscroller ad."

    invoke-static {v1, v0}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final s0(Lf4/a;)Z
    .locals 1

    iget-object v0, p0, Lr4/pd0;->b:Ld3/l;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-interface {v0, p1}, Ld3/l;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, ""

    invoke-static {v0, p1}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final u3(Lf4/a;)Z
    .locals 1

    iget-object v0, p0, Lr4/pd0;->d:Ld3/q;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-interface {v0, p1}, Ld3/q;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, ""

    invoke-static {v0, p1}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final y5(Ljava/lang/String;Ljava/lang/String;Lr4/tt;Lf4/a;Lr4/yc0;Lr4/lb0;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lr4/pd0;->T3(Ljava/lang/String;Ljava/lang/String;Lr4/tt;Lf4/a;Lr4/yc0;Lr4/lb0;Lr4/d20;)V

    return-void
.end method

.method public final z1(Ljava/lang/String;Ljava/lang/String;Lr4/tt;Lf4/a;Lr4/bd0;Lr4/lb0;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    :try_start_0
    new-instance v2, Lr4/od0;

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    invoke-direct {v2, v1, v3, v4}, Lr4/od0;-><init>(Lr4/pd0;Lr4/bd0;Lr4/lb0;)V

    iget-object v3, v1, Lr4/pd0;->a:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    new-instance v15, Ld3/r;

    invoke-static/range {p4 .. p4}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroid/content/Context;

    invoke-static/range {p2 .. p2}, Lr4/pd0;->h7(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v1, v0}, Lr4/pd0;->g7(Lr4/tt;)Landroid/os/Bundle;

    move-result-object v8

    invoke-static/range {p3 .. p3}, Lr4/pd0;->i7(Lr4/tt;)Z

    move-result v9

    iget-object v10, v0, Lr4/tt;->v:Landroid/location/Location;

    iget v11, v0, Lr4/tt;->r:I

    iget v12, v0, Lr4/tt;->E:I

    invoke-static/range {p2 .. p3}, Lr4/pd0;->j7(Ljava/lang/String;Lr4/tt;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v1, Lr4/pd0;->k:Ljava/lang/String;

    move-object v4, v15

    move-object/from16 v6, p1

    invoke-direct/range {v4 .. v14}, Ld3/r;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v15, v2}, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;->loadRtbRewardedInterstitialAd(Ld3/r;Ld3/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v2, "Adapter failed to render rewarded interstitial ad."

    invoke-static {v2, v0}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method
