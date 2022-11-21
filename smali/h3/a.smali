.class public final Lh3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/webkit/WebView;

.field public final c:Lr4/u;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Lr4/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh3/a;->b:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lh3/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lh3/a;->c:Lr4/u;

    return-void
.end method

.method public static synthetic a(Lh3/a;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lh3/a;->b:Landroid/webkit/WebView;

    return-object p0
.end method


# virtual methods
.method public getClickSignals(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lh3/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lr4/rz;->a(Landroid/content/Context;)V

    :try_start_0
    iget-object v0, p0, Lh3/a;->c:Lr4/u;

    invoke-virtual {v0}, Lr4/u;->b()Lr4/q;

    move-result-object v0

    iget-object v1, p0, Lh3/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lh3/a;->b:Landroid/webkit/WebView;

    invoke-interface {v0, v1, p1, v2}, Lr4/q;->b(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "Exception getting click signals. "

    invoke-static {v0, p1}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object v0

    const-string v1, "TaggingLibraryJsInterface.getClickSignals"

    invoke-virtual {v0, p1, v1}, Lr4/nl0;->k(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string p1, ""

    return-object p1
.end method

.method public getQueryInfo()Ljava/lang/String;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "query_info_type"

    const-string v3, "requester_type_6"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lh3/a;->a:Landroid/content/Context;

    sget-object v3, Lt2/b;->a:Lt2/b;

    new-instance v4, Lt2/f$a;

    invoke-direct {v4}, Lt2/f$a;-><init>()V

    const-class v5, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v4, v5, v1}, Lt2/f$a;->b(Ljava/lang/Class;Landroid/os/Bundle;)Lt2/f$a;

    invoke-virtual {v4}, Lt2/f$a;->c()Lt2/f;

    move-result-object v1

    new-instance v4, Lh3/l;

    invoke-direct {v4, p0, v0}, Lh3/l;-><init>(Lh3/a;Ljava/lang/String;)V

    invoke-static {v2, v3, v1, v4}, Li3/b;->a(Landroid/content/Context;Lt2/b;Lt2/f;Li3/c;)V

    return-object v0
.end method

.method public getViewSignals()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lh3/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lr4/rz;->a(Landroid/content/Context;)V

    :try_start_0
    iget-object v0, p0, Lh3/a;->c:Lr4/u;

    invoke-virtual {v0}, Lr4/u;->b()Lr4/q;

    move-result-object v0

    iget-object v1, p0, Lh3/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lh3/a;->b:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lr4/q;->d(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Exception getting view signals. "

    invoke-static {v1, v0}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object v1

    const-string v2, "TaggingLibraryJsInterface.getViewSignals"

    invoke-virtual {v1, v0, v2}, Lr4/nl0;->k(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method

.method public reportTouchEvent(Ljava/lang/String;)V
    .locals 21
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    move-object/from16 v1, p0

    iget-object v0, v1, Lh3/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lr4/rz;->a(Landroid/content/Context;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    move-object/from16 v2, p1

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "x"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "y"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "duration_ms"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "force"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-float v14, v5

    const-string v5, "type"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v7, :cond_2

    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_0

    const/4 v0, -0x1

    const/4 v11, -0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x3

    goto :goto_0

    :cond_1
    const/4 v11, 0x2

    goto :goto_0

    :cond_2
    const/4 v11, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    const/4 v11, 0x0

    :goto_0
    const-wide/16 v7, 0x0

    int-to-long v9, v4

    int-to-float v12, v2

    int-to-float v13, v3

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v7 .. v20}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v2, v1, Lh3/a;->c:Lr4/u;

    invoke-virtual {v2, v0}, Lr4/u;->d(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    const-string v2, "Failed to parse the touch string. "

    invoke-static {v2, v0}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object v2

    const-string v3, "TaggingLibraryJsInterface.reportTouchEvent"

    invoke-virtual {v2, v0, v3}, Lr4/nl0;->k(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method
