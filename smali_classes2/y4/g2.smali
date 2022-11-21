.class public final Ly4/g2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/app/Application;

.field public final b:Ly4/d;

.field public final c:Landroid/os/Handler;

.field public final d:Ljava/util/concurrent/Executor;

.field public final e:Ly4/n;

.field public final f:Ly4/c0;

.field public final g:Ly4/y1;

.field public final h:Ly4/k2;

.field public final i:Ly4/s1;


# direct methods
.method public constructor <init>(Landroid/app/Application;Ly4/d;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ly4/n;Ly4/c0;Ly4/y1;Ly4/k2;Ly4/s1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly4/g2;->a:Landroid/app/Application;

    iput-object p2, p0, Ly4/g2;->b:Ly4/d;

    iput-object p3, p0, Ly4/g2;->c:Landroid/os/Handler;

    iput-object p4, p0, Ly4/g2;->d:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Ly4/g2;->e:Ly4/n;

    iput-object p6, p0, Ly4/g2;->f:Ly4/c0;

    iput-object p7, p0, Ly4/g2;->g:Ly4/y1;

    iput-object p8, p0, Ly4/g2;->h:Ly4/k2;

    iput-object p9, p0, Ly4/g2;->i:Ly4/s1;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lk5/c$b;)V
    .locals 2

    iget-object v0, p0, Ly4/g2;->c:Landroid/os/Handler;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ly4/f2;

    invoke-direct {v1, p1}, Ly4/f2;-><init>(Lk5/c$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final synthetic b(Landroid/app/Activity;Lk5/d;Lk5/c$b;Lk5/c$a;)V
    .locals 3

    :try_start_0
    invoke-virtual {p2}, Lk5/d;->a()Lk5/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lk5/a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Ly4/g2;->a:Landroid/app/Application;

    invoke-static {v0}, Ly4/z0;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x5f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Use new ConsentDebugSettings.Builder().addTestDeviceHashedId(\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\") to set this as a debug device."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "UserMessagingPlatform"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Ly4/g2;->g:Ly4/y1;

    invoke-virtual {v0, p1, p2}, Ly4/y1;->d(Landroid/app/Activity;Lk5/d;)Ly4/w0;

    move-result-object p1

    invoke-virtual {p0, p1}, Ly4/g2;->d(Ly4/w0;)Ly4/y0;

    move-result-object p1

    iget-object p2, p0, Ly4/g2;->h:Ly4/k2;

    new-instance v0, Ly4/j2;

    invoke-direct {v0, p2, p1}, Ly4/j2;-><init>(Ly4/k2;Ly4/y0;)V

    invoke-virtual {v0}, Ly4/j2;->a()Ly4/b;

    move-result-object p1

    iget-object p2, p0, Ly4/g2;->e:Ly4/n;

    iget v0, p1, Ly4/b;->a:I

    invoke-virtual {p2, v0}, Ly4/n;->e(I)V

    iget-object p2, p0, Ly4/g2;->f:Ly4/c0;

    iget-object p1, p1, Ly4/b;->b:Ly4/e0;

    invoke-virtual {p2, p1}, Ly4/c0;->b(Ly4/e0;)V

    iget-object p1, p0, Ly4/g2;->i:Ly4/s1;

    invoke-virtual {p1}, Ly4/s1;->a()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Ly4/c2;

    invoke-direct {p2, p0, p3}, Ly4/c2;-><init>(Ly4/g2;Lk5/c$b;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ly4/u1; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ly4/u1;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "Caught exception when trying to request consent info update: "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const/4 p3, 0x1

    invoke-direct {p2, p3, p1}, Ly4/u1;-><init>(ILjava/lang/String;)V

    iget-object p1, p0, Ly4/g2;->c:Landroid/os/Handler;

    new-instance p3, Ly4/e2;

    invoke-direct {p3, p4, p2}, Ly4/e2;-><init>(Lk5/c$a;Ly4/u1;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_1
    move-exception p1

    iget-object p2, p0, Ly4/g2;->c:Landroid/os/Handler;

    new-instance p3, Ly4/d2;

    invoke-direct {p3, p4, p1}, Ly4/d2;-><init>(Lk5/c$a;Ly4/u1;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c(Landroid/app/Activity;Lk5/d;Lk5/c$b;Lk5/c$a;)V
    .locals 8

    iget-object v0, p0, Ly4/g2;->d:Ljava/util/concurrent/Executor;

    new-instance v7, Ly4/b2;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Ly4/b2;-><init>(Ly4/g2;Landroid/app/Activity;Lk5/d;Lk5/c$b;Lk5/c$a;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d(Ly4/w0;)Ly4/y0;
    .locals 11

    const-string v0, "UTF-8"

    const/4 v1, 0x2

    const/4 v2, 0x4

    :try_start_0
    new-instance v3, Ljava/net/URL;

    const-string v4, "https://fundingchoicesmessages.google.com/a/consent"

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    const-string v4, "User-Agent"

    iget-object v5, p0, Ly4/g2;->a:Landroid/app/Application;

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    if-lt v6, v7, :cond_0

    invoke-static {v5}, Lb3/k1;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    new-instance v6, Landroid/webkit/WebView;

    invoke-direct {v6, v5}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v3, v4, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x2710

    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v4, 0x7530

    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const-string v5, "POST"

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v5, "Content-Type"

    const-string v6, "application/json"

    invoke-virtual {v3, v5, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-virtual {v3}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v6, Landroid/util/JsonWriter;

    invoke-direct {v6, v5}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    :try_start_2
    invoke-virtual {v6}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    iget-object v7, p1, Ly4/w0;->a:Ljava/lang/String;

    if-eqz v7, :cond_1

    const-string v8, "admob_app_id"

    invoke-virtual {v6, v8}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {v6, v7}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    :cond_1
    iget-object v7, p1, Ly4/w0;->b:Ljava/lang/Boolean;

    if-eqz v7, :cond_2

    const-string v8, "is_lat"

    invoke-virtual {v6, v8}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    :cond_2
    iget-object v7, p1, Ly4/w0;->c:Ljava/lang/String;

    if-eqz v7, :cond_3

    const-string v8, "adid"

    invoke-virtual {v6, v8}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {v6, v7}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    :cond_3
    iget-object v7, p1, Ly4/w0;->d:Ly4/s0;

    if-eqz v7, :cond_9

    const-string v8, "device_info"

    invoke-virtual {v6, v8}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {v6}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    iget v8, v7, Ly4/s0;->c:I

    if-eq v8, v4, :cond_6

    const-string v9, "os_type"

    invoke-virtual {v6, v9}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    if-eqz v8, :cond_5

    sget-object v9, Ly4/r0;->a:Ly4/r0;

    add-int/lit8 v8, v8, -0x1

    if-eqz v8, :cond_4

    const-string v8, "ANDROID"

    invoke-virtual {v6, v8}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_1

    :cond_4
    const-string v8, "UNKNOWN"

    invoke-virtual {v6, v8}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    throw p1

    :cond_6
    :goto_1
    iget-object v8, v7, Ly4/s0;->a:Ljava/lang/String;

    if-eqz v8, :cond_7

    const-string v9, "model"

    invoke-virtual {v6, v9}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {v6, v8}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    :cond_7
    iget-object v7, v7, Ly4/s0;->b:Ljava/lang/Integer;

    if-eqz v7, :cond_8

    const-string v8, "android_api_level"

    invoke-virtual {v6, v8}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {v6, v7}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    :cond_8
    invoke-virtual {v6}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    :cond_9
    iget-object v7, p1, Ly4/w0;->e:Ljava/lang/String;

    if-eqz v7, :cond_a

    const-string v8, "language_code"

    invoke-virtual {v6, v8}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {v6, v7}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    :cond_a
    iget-object v7, p1, Ly4/w0;->f:Ljava/lang/Boolean;

    if-eqz v7, :cond_b

    const-string v8, "tag_for_under_age_of_consent"

    invoke-virtual {v6, v8}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    :cond_b
    iget-object v7, p1, Ly4/w0;->g:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_d

    const-string v8, "stored_infos_map"

    invoke-virtual {v6, v8}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {v6}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_2

    :cond_c
    invoke-virtual {v6}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    :cond_d
    iget-object v7, p1, Ly4/w0;->h:Ly4/u0;

    if-eqz v7, :cond_17

    const-string v8, "screen_info"

    invoke-virtual {v6, v8}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {v6}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    iget-object v8, v7, Ly4/u0;->a:Ljava/lang/Integer;

    if-eqz v8, :cond_e

    const-string v9, "width"

    invoke-virtual {v6, v9}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {v6, v8}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    :cond_e
    iget-object v8, v7, Ly4/u0;->b:Ljava/lang/Integer;

    if-eqz v8, :cond_f

    const-string v9, "height"

    invoke-virtual {v6, v9}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {v6, v8}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    :cond_f
    iget-object v8, v7, Ly4/u0;->c:Ljava/lang/Double;

    if-eqz v8, :cond_10

    const-string v9, "density"

    invoke-virtual {v6, v9}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {v6, v8}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    :cond_10
    iget-object v7, v7, Ly4/u0;->d:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_16

    const-string v8, "screen_insets"

    invoke-virtual {v6, v8}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {v6}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ly4/t0;

    invoke-virtual {v6}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    iget-object v9, v8, Ly4/t0;->a:Ljava/lang/Integer;

    if-eqz v9, :cond_11

    const-string v10, "top"

    invoke-virtual {v6, v10}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {v6, v9}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    :cond_11
    iget-object v9, v8, Ly4/t0;->b:Ljava/lang/Integer;

    if-eqz v9, :cond_12

    const-string v10, "left"

    invoke-virtual {v6, v10}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {v6, v9}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    :cond_12
    iget-object v9, v8, Ly4/t0;->c:Ljava/lang/Integer;

    if-eqz v9, :cond_13

    const-string v10, "right"

    invoke-virtual {v6, v10}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {v6, v9}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    :cond_13
    iget-object v8, v8, Ly4/t0;->d:Ljava/lang/Integer;

    if-eqz v8, :cond_14

    const-string v9, "bottom"

    invoke-virtual {v6, v9}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {v6, v8}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    :cond_14
    invoke-virtual {v6}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    goto :goto_3

    :cond_15
    invoke-virtual {v6}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    :cond_16
    invoke-virtual {v6}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    :cond_17
    iget-object v7, p1, Ly4/w0;->i:Ly4/q0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    const-string v8, "version"

    if-eqz v7, :cond_1b

    :try_start_3
    const-string v9, "app_info"

    invoke-virtual {v6, v9}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {v6}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    iget-object v9, v7, Ly4/q0;->a:Ljava/lang/String;

    if-eqz v9, :cond_18

    const-string v10, "package_name"

    invoke-virtual {v6, v10}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {v6, v9}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    :cond_18
    iget-object v9, v7, Ly4/q0;->b:Ljava/lang/String;

    if-eqz v9, :cond_19

    const-string v10, "publisher_display_name"

    invoke-virtual {v6, v10}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {v6, v9}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    :cond_19
    iget-object v7, v7, Ly4/q0;->c:Ljava/lang/String;

    if-eqz v7, :cond_1a

    invoke-virtual {v6, v8}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {v6, v7}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    :cond_1a
    invoke-virtual {v6}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    :cond_1b
    iget-object v7, p1, Ly4/w0;->j:Ly4/v0;

    if-eqz v7, :cond_1d

    const-string v9, "sdk_info"

    invoke-virtual {v6, v9}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {v6}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    iget-object v7, v7, Ly4/v0;->a:Ljava/lang/String;

    if-eqz v7, :cond_1c

    invoke-virtual {v6, v8}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {v6, v7}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    :cond_1c
    invoke-virtual {v6}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    :cond_1d
    iget-object p1, p1, Ly4/w0;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_24

    const-string v7, "debug_params"

    invoke-virtual {v6, v7}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {v6}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ly4/r0;

    sget-object v8, Ly4/r0;->a:Ly4/r0;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-eqz v7, :cond_22

    if-eq v7, v4, :cond_21

    if-eq v7, v1, :cond_20

    const/4 v8, 0x3

    if-eq v7, v8, :cond_1f

    if-eq v7, v2, :cond_1e

    goto :goto_4

    :cond_1e
    const-string v7, "PREVIEWING_DEBUG_MESSAGES"

    invoke-virtual {v6, v7}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_4

    :cond_1f
    const-string v7, "GEO_OVERRIDE_NON_EEA"

    invoke-virtual {v6, v7}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_4

    :cond_20
    const-string v7, "GEO_OVERRIDE_EEA"

    invoke-virtual {v6, v7}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_4

    :cond_21
    const-string v7, "ALWAYS_SHOW"

    invoke-virtual {v6, v7}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_4

    :cond_22
    const-string v7, "DEBUG_PARAM_UNKNOWN"

    invoke-virtual {v6, v7}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_4

    :cond_23
    invoke-virtual {v6}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    :cond_24
    invoke-virtual {v6}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    invoke-virtual {v6}, Landroid/util/JsonWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    :try_start_5
    invoke-virtual {v5}, Ljava/io/Writer;->close()V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    const/16 v4, 0xc8

    const-string v5, "\\A"

    if-ne p1, v4, :cond_26

    :try_start_6
    const-string p1, "x-ump-using-header"

    invoke-virtual {v3, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_25

    new-instance v0, Landroid/util/JsonReader;

    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v0}, Ly4/y0;->a(Landroid/util/JsonReader;)Ly4/y0;

    move-result-object p1

    new-instance v0, Ljava/util/Scanner;

    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v5}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Ly4/y0;->a:Ljava/lang/String;

    goto :goto_5

    :cond_25
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v4, v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    new-instance v0, Landroid/util/JsonReader;

    invoke-direct {v0, p1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-static {v0}, Ly4/y0;->a(Landroid/util/JsonReader;)Ly4/y0;

    move-result-object v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    move-object p1, v3

    :goto_5
    return-object p1

    :catchall_0
    move-exception v3

    :try_start_b
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    :try_start_c
    invoke-static {v3, v0}, Lv/f;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_6
    throw v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_d
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception p1

    :try_start_e
    invoke-static {v0, p1}, Lv/f;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_7
    throw v0

    :cond_26
    new-instance v0, Ljava/util/Scanner;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v5}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/IOException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Http error code - "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".\n"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_e
    .catch Ljava/net/SocketTimeoutException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    :catchall_4
    move-exception p1

    :try_start_f
    invoke-virtual {v6}, Landroid/util/JsonWriter;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    goto :goto_8

    :catchall_5
    move-exception v0

    :try_start_10
    invoke-static {p1, v0}, Lv/f;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_8
    throw p1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :catchall_6
    move-exception p1

    :try_start_11
    invoke-virtual {v5}, Ljava/io/Writer;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    goto :goto_9

    :catchall_7
    move-exception v0

    :try_start_12
    invoke-static {p1, v0}, Lv/f;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_9
    throw p1
    :try_end_12
    .catch Ljava/net/SocketTimeoutException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Ly4/u1;

    const-string v2, "Error making request."

    invoke-direct {v0, v1, v2, p1}, Ly4/u1;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    new-instance v0, Ly4/u1;

    const-string v1, "The server timed out."

    invoke-direct {v0, v2, v1, p1}, Ly4/u1;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    :goto_a
    throw v0

    :goto_b
    goto :goto_a
.end method
