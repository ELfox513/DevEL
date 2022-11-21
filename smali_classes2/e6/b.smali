.class public Le6/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le6/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Lorg/json/JSONObject;)Lf6/a;
    .locals 7

    const-string v0, "status"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "reports_url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "ndk_reports_url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "update_required"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    new-instance p0, Lf6/a;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lf6/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p0
.end method

.method public static c(Lorg/json/JSONObject;)Lf6/b;
    .locals 3

    const-string v0, "collect_reports"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "collect_anrs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    new-instance v1, Lf6/b;

    invoke-direct {v1, v0, p0}, Lf6/b;-><init>(ZZ)V

    return-object v1
.end method

.method public static d(Lorg/json/JSONObject;)Lf6/c;
    .locals 2

    const-string v0, "max_custom_exception_events"

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    new-instance v0, Lf6/c;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lf6/c;-><init>(II)V

    return-object v0
.end method

.method public static e(Lx5/q;)Lf6/d;
    .locals 9

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v0}, Le6/b;->d(Lorg/json/JSONObject;)Lf6/c;

    move-result-object v5

    invoke-static {v0}, Le6/b;->c(Lorg/json/JSONObject;)Lf6/b;

    move-result-object v6

    const-wide/16 v1, 0xe10

    invoke-static {p0, v1, v2, v0}, Le6/b;->f(Lx5/q;JLorg/json/JSONObject;)J

    move-result-wide v2

    new-instance p0, Lf6/e;

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xe10

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lf6/e;-><init>(JLf6/a;Lf6/c;Lf6/b;II)V

    return-object p0
.end method

.method public static f(Lx5/q;JLorg/json/JSONObject;)J
    .locals 4

    const-string v0, "expires_at"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lx5/q;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long p1, p1, v2

    add-long/2addr p1, v0

    move-wide p0, p1

    :goto_0
    return-wide p0
.end method


# virtual methods
.method public a(Lx5/q;Lorg/json/JSONObject;)Lf6/e;
    .locals 10

    const-string v0, "settings_version"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    const-string v0, "cache_duration"

    const/16 v1, 0xe10

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    const-string v0, "app"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Le6/b;->b(Lorg/json/JSONObject;)Lf6/a;

    move-result-object v5

    const-string v0, "session"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Le6/b;->d(Lorg/json/JSONObject;)Lf6/c;

    move-result-object v6

    const-string v0, "features"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Le6/b;->c(Lorg/json/JSONObject;)Lf6/b;

    move-result-object v7

    int-to-long v0, v9

    invoke-static {p1, v0, v1, p2}, Le6/b;->f(Lx5/q;JLorg/json/JSONObject;)J

    move-result-wide v3

    new-instance p1, Lf6/e;

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Lf6/e;-><init>(JLf6/a;Lf6/c;Lf6/b;II)V

    return-object p1
.end method
