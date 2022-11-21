.class public final Lr4/ij1;
.super Lr4/jj1;
.source "SourceFile"


# instance fields
.field public final b:Lorg/json/JSONObject;

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lr4/no2;Lorg/json/JSONObject;)V
    .locals 4

    invoke-direct {p0, p1}, Lr4/jj1;-><init>(Lr4/no2;)V

    const/4 p1, 0x2

    new-array v0, p1, [Ljava/lang/String;

    const-string v1, "tracking_urls_and_actions"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "active_view"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {p2, v0}, Lb3/b1;->h(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lr4/ij1;->b:Lorg/json/JSONObject;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "allow_pub_owned_ad_view"

    aput-object v1, v0, v2

    invoke-static {v2, p2, v0}, Lb3/b1;->i(ZLorg/json/JSONObject;[Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lr4/ij1;->c:Z

    new-array p1, p1, [Ljava/lang/String;

    const-string v0, "attribution"

    aput-object v0, p1, v2

    const-string v0, "allow_pub_rendering"

    aput-object v0, p1, v3

    invoke-static {v2, p2, p1}, Lb3/b1;->i(ZLorg/json/JSONObject;[Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lr4/ij1;->d:Z

    new-array p1, v3, [Ljava/lang/String;

    const-string v0, "enable_omid"

    aput-object v0, p1, v2

    invoke-static {v2, p2, p1}, Lb3/b1;->i(ZLorg/json/JSONObject;[Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lr4/ij1;->e:Z

    new-array p1, v3, [Ljava/lang/String;

    const-string v0, "watermark_overlay_png_base64"

    aput-object v0, p1, v2

    const-string v0, ""

    invoke-static {v0, p2, p1}, Lb3/b1;->j(Ljava/lang/String;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lr4/ij1;->g:Ljava/lang/String;

    const-string p1, "overlay"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lr4/ij1;->f:Z

    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 2

    iget-object v0, p0, Lr4/ij1;->b:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lr4/jj1;->a:Lr4/no2;

    iget-object v1, v1, Lr4/no2;->z:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lr4/ij1;->f:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lr4/ij1;->c:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lr4/ij1;->e:Z

    return v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lr4/ij1;->d:Z

    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/ij1;->g:Ljava/lang/String;

    return-object v0
.end method
