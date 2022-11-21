.class public final Lr4/ee0;
.super Lr4/fe0;
.source "SourceFile"

# interfaces
.implements Lr4/u50;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/fe0;",
        "Lr4/u50<",
        "Lr4/cs0;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Lr4/cs0;

.field public final d:Landroid/content/Context;

.field public final e:Landroid/view/WindowManager;

.field public final f:Lr4/az;

.field public g:Landroid/util/DisplayMetrics;

.field public h:F

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I


# direct methods
.method public constructor <init>(Lr4/cs0;Landroid/content/Context;Lr4/az;)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lr4/fe0;-><init>(Lr4/cs0;Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lr4/ee0;->i:I

    iput v0, p0, Lr4/ee0;->j:I

    iput v0, p0, Lr4/ee0;->l:I

    iput v0, p0, Lr4/ee0;->m:I

    iput v0, p0, Lr4/ee0;->n:I

    iput v0, p0, Lr4/ee0;->o:I

    iput-object p1, p0, Lr4/ee0;->c:Lr4/cs0;

    iput-object p2, p0, Lr4/ee0;->d:Landroid/content/Context;

    iput-object p3, p0, Lr4/ee0;->f:Lr4/az;

    const-string p1, "window"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lr4/ee0;->e:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 8

    check-cast p1, Lr4/cs0;

    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object p1, p0, Lr4/ee0;->g:Landroid/util/DisplayMetrics;

    iget-object p1, p0, Lr4/ee0;->e:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object p2, p0, Lr4/ee0;->g:Landroid/util/DisplayMetrics;

    invoke-virtual {p1, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object p2, p0, Lr4/ee0;->g:Landroid/util/DisplayMetrics;

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iput p2, p0, Lr4/ee0;->h:F

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iput p1, p0, Lr4/ee0;->k:I

    invoke-static {}, Lr4/yu;->a()Lr4/vl0;

    iget-object p1, p0, Lr4/ee0;->g:Landroid/util/DisplayMetrics;

    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p1, p2}, Lr4/vl0;->o(Landroid/util/DisplayMetrics;I)I

    move-result p1

    iput p1, p0, Lr4/ee0;->i:I

    invoke-static {}, Lr4/yu;->a()Lr4/vl0;

    iget-object p1, p0, Lr4/ee0;->g:Landroid/util/DisplayMetrics;

    iget p2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p1, p2}, Lr4/vl0;->o(Landroid/util/DisplayMetrics;I)I

    move-result p1

    iput p1, p0, Lr4/ee0;->j:I

    iget-object p1, p0, Lr4/ee0;->c:Lr4/cs0;

    invoke-interface {p1}, Lr4/cs0;->h()Landroid/app/Activity;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lz2/t;->d()Lb3/k2;

    invoke-static {p1}, Lb3/k2;->t(Landroid/app/Activity;)[I

    move-result-object p1

    invoke-static {}, Lr4/yu;->a()Lr4/vl0;

    iget-object v1, p0, Lr4/ee0;->g:Landroid/util/DisplayMetrics;

    aget v2, p1, v0

    invoke-static {v1, v2}, Lr4/vl0;->o(Landroid/util/DisplayMetrics;I)I

    move-result v1

    iput v1, p0, Lr4/ee0;->l:I

    invoke-static {}, Lr4/yu;->a()Lr4/vl0;

    iget-object v1, p0, Lr4/ee0;->g:Landroid/util/DisplayMetrics;

    aget p1, p1, p2

    invoke-static {v1, p1}, Lr4/vl0;->o(Landroid/util/DisplayMetrics;I)I

    move-result p1

    iput p1, p0, Lr4/ee0;->m:I

    goto :goto_1

    :cond_1
    :goto_0
    iget p1, p0, Lr4/ee0;->i:I

    iput p1, p0, Lr4/ee0;->l:I

    iget p1, p0, Lr4/ee0;->j:I

    iput p1, p0, Lr4/ee0;->m:I

    :goto_1
    iget-object p1, p0, Lr4/ee0;->c:Lr4/cs0;

    invoke-interface {p1}, Lr4/cs0;->r()Lr4/vt0;

    move-result-object p1

    invoke-virtual {p1}, Lr4/vt0;->g()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lr4/ee0;->i:I

    iput p1, p0, Lr4/ee0;->n:I

    iget p1, p0, Lr4/ee0;->j:I

    iput p1, p0, Lr4/ee0;->o:I

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lr4/ee0;->c:Lr4/cs0;

    invoke-interface {p1, v0, v0}, Lr4/cs0;->measure(II)V

    :goto_2
    iget v2, p0, Lr4/ee0;->i:I

    iget v3, p0, Lr4/ee0;->j:I

    iget v4, p0, Lr4/ee0;->l:I

    iget v5, p0, Lr4/ee0;->m:I

    iget v6, p0, Lr4/ee0;->h:F

    iget v7, p0, Lr4/ee0;->k:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lr4/fe0;->g(IIIIFI)V

    new-instance p1, Lr4/de0;

    invoke-direct {p1}, Lr4/de0;-><init>()V

    iget-object v1, p0, Lr4/ee0;->f:Lr4/az;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DIAL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "tel:"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lr4/az;->c(Landroid/content/Intent;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lr4/de0;->g(Z)Lr4/de0;

    iget-object v1, p0, Lr4/ee0;->f:Lr4/az;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "sms:"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lr4/az;->c(Landroid/content/Intent;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lr4/de0;->f(Z)Lr4/de0;

    iget-object v1, p0, Lr4/ee0;->f:Lr4/az;

    invoke-virtual {v1}, Lr4/az;->b()Z

    move-result v1

    invoke-virtual {p1, v1}, Lr4/de0;->h(Z)Lr4/de0;

    iget-object v1, p0, Lr4/ee0;->f:Lr4/az;

    invoke-virtual {v1}, Lr4/az;->a()Z

    move-result v1

    invoke-virtual {p1, v1}, Lr4/de0;->i(Z)Lr4/de0;

    invoke-virtual {p1, p2}, Lr4/de0;->j(Z)Lr4/de0;

    invoke-static {p1}, Lr4/de0;->a(Lr4/de0;)Z

    move-result v1

    invoke-static {p1}, Lr4/de0;->b(Lr4/de0;)Z

    move-result v2

    invoke-static {p1}, Lr4/de0;->c(Lr4/de0;)Z

    move-result v3

    invoke-static {p1}, Lr4/de0;->d(Lr4/de0;)Z

    move-result v4

    invoke-static {p1}, Lr4/de0;->e(Lr4/de0;)Z

    move-result p1

    iget-object v5, p0, Lr4/ee0;->c:Lr4/cs0;

    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "sms"

    invoke-virtual {v6, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v6, "tel"

    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "calendar"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "storePicture"

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "inlineVideo"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    const-string v1, "Error occurred while obtaining the MRAID capabilities."

    invoke-static {v1, p1}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_3
    const-string v1, "onDeviceFeaturesReceived"

    invoke-interface {v5, v1, p1}, Lr4/e80;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 p1, 0x2

    new-array v1, p1, [I

    iget-object v2, p0, Lr4/ee0;->c:Lr4/cs0;

    invoke-interface {v2, v1}, Lr4/cs0;->getLocationOnScreen([I)V

    invoke-static {}, Lr4/yu;->a()Lr4/vl0;

    move-result-object v2

    iget-object v3, p0, Lr4/ee0;->d:Landroid/content/Context;

    aget v0, v1, v0

    invoke-virtual {v2, v3, v0}, Lr4/vl0;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-static {}, Lr4/yu;->a()Lr4/vl0;

    move-result-object v2

    iget-object v3, p0, Lr4/ee0;->d:Landroid/content/Context;

    aget p2, v1, p2

    invoke-virtual {v2, v3, p2}, Lr4/vl0;->a(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p0, v0, p2}, Lr4/ee0;->h(II)V

    invoke-static {p1}, Lr4/cm0;->j(I)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Dispatching Ready Event."

    invoke-static {p1}, Lr4/cm0;->e(Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lr4/ee0;->c:Lr4/cs0;

    invoke-interface {p1}, Lr4/cs0;->n()Lr4/im0;

    move-result-object p1

    iget-object p1, p1, Lr4/im0;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lr4/fe0;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final h(II)V
    .locals 6

    iget-object v0, p0, Lr4/ee0;->d:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    iget-object v0, p0, Lr4/ee0;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lb3/k2;->v(Landroid/app/Activity;)[I

    move-result-object v0

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lr4/ee0;->c:Lr4/cs0;

    invoke-interface {v2}, Lr4/cs0;->r()Lr4/vt0;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lr4/ee0;->c:Lr4/cs0;

    invoke-interface {v2}, Lr4/cs0;->r()Lr4/vt0;

    move-result-object v2

    invoke-virtual {v2}, Lr4/vt0;->g()Z

    move-result v2

    if-nez v2, :cond_6

    :cond_1
    iget-object v2, p0, Lr4/ee0;->c:Lr4/cs0;

    invoke-interface {v2}, Lr4/cs0;->getWidth()I

    move-result v2

    iget-object v3, p0, Lr4/ee0;->c:Lr4/cs0;

    invoke-interface {v3}, Lr4/cs0;->getHeight()I

    move-result v3

    sget-object v4, Lr4/rz;->M:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v5

    invoke-virtual {v5, v4}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    if-nez v2, :cond_3

    iget-object v2, p0, Lr4/ee0;->c:Lr4/cs0;

    invoke-interface {v2}, Lr4/cs0;->r()Lr4/vt0;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lr4/ee0;->c:Lr4/cs0;

    invoke-interface {v2}, Lr4/cs0;->r()Lr4/vt0;

    move-result-object v2

    iget v2, v2, Lr4/vt0;->c:I

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_1
    if-nez v3, :cond_4

    iget-object v3, p0, Lr4/ee0;->c:Lr4/cs0;

    invoke-interface {v3}, Lr4/cs0;->r()Lr4/vt0;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v1, p0, Lr4/ee0;->c:Lr4/cs0;

    invoke-interface {v1}, Lr4/cs0;->r()Lr4/vt0;

    move-result-object v1

    iget v1, v1, Lr4/vt0;->b:I

    goto :goto_2

    :cond_4
    move v1, v3

    :cond_5
    :goto_2
    invoke-static {}, Lr4/yu;->a()Lr4/vl0;

    move-result-object v3

    iget-object v4, p0, Lr4/ee0;->d:Landroid/content/Context;

    invoke-virtual {v3, v4, v2}, Lr4/vl0;->a(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lr4/ee0;->n:I

    invoke-static {}, Lr4/yu;->a()Lr4/vl0;

    move-result-object v2

    iget-object v3, p0, Lr4/ee0;->d:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lr4/vl0;->a(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lr4/ee0;->o:I

    :cond_6
    sub-int v0, p2, v0

    iget v1, p0, Lr4/ee0;->n:I

    iget v2, p0, Lr4/ee0;->o:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lr4/fe0;->e(IIII)V

    iget-object v0, p0, Lr4/ee0;->c:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->o0()Lr4/st0;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lr4/st0;->N0(II)V

    return-void
.end method
