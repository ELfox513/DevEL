.class public Lt5/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lq6/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq6/a<",
            "Lq5/a;",
            ">;"
        }
    .end annotation
.end field

.field public volatile b:Lv5/a;

.field public volatile c:Lw5/b;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lw5/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq6/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq6/a<",
            "Lq5/a;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lw5/c;

    invoke-direct {v0}, Lw5/c;-><init>()V

    new-instance v1, Lv5/f;

    invoke-direct {v1}, Lv5/f;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lt5/d;-><init>(Lq6/a;Lw5/b;Lv5/a;)V

    return-void
.end method

.method public constructor <init>(Lq6/a;Lw5/b;Lv5/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq6/a<",
            "Lq5/a;",
            ">;",
            "Lw5/b;",
            "Lv5/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt5/d;->a:Lq6/a;

    iput-object p2, p0, Lt5/d;->c:Lw5/b;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lt5/d;->d:Ljava/util/List;

    iput-object p3, p0, Lt5/d;->b:Lv5/a;

    invoke-virtual {p0}, Lt5/d;->f()V

    return-void
.end method

.method public static synthetic a(Lt5/d;Lq6/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lt5/d;->i(Lq6/b;)V

    return-void
.end method

.method public static synthetic b(Lt5/d;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lt5/d;->g(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic c(Lt5/d;Lw5/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lt5/d;->h(Lw5/a;)V

    return-void
.end method

.method private synthetic g(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lt5/d;->b:Lv5/a;

    invoke-interface {v0, p1, p2}, Lv5/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic h(Lw5/a;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lt5/d;->c:Lw5/b;

    instance-of v0, v0, Lw5/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt5/d;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lt5/d;->c:Lw5/b;

    invoke-interface {v0, p1}, Lw5/b;->a(Lw5/a;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private synthetic i(Lq6/b;)V
    .locals 5

    invoke-static {}, Lu5/f;->f()Lu5/f;

    move-result-object v0

    const-string v1, "AnalyticsConnector now available."

    invoke-virtual {v0, v1}, Lu5/f;->b(Ljava/lang/String;)V

    invoke-interface {p1}, Lq6/b;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq5/a;

    new-instance v0, Lv5/e;

    invoke-direct {v0, p1}, Lv5/e;-><init>(Lq5/a;)V

    new-instance v1, Lt5/e;

    invoke-direct {v1}, Lt5/e;-><init>()V

    invoke-static {p1, v1}, Lt5/d;->j(Lq5/a;Lt5/e;)Lq5/a$a;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lu5/f;->f()Lu5/f;

    move-result-object p1

    const-string v2, "Registered Firebase Analytics listener."

    invoke-virtual {p1, v2}, Lu5/f;->b(Ljava/lang/String;)V

    new-instance p1, Lv5/d;

    invoke-direct {p1}, Lv5/d;-><init>()V

    new-instance v2, Lv5/c;

    const/16 v3, 0x1f4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v2, v0, v3, v4}, Lv5/c;-><init>(Lv5/e;ILjava/util/concurrent/TimeUnit;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lt5/d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw5/a;

    invoke-virtual {p1, v3}, Lv5/d;->a(Lw5/a;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Lt5/e;->d(Lv5/b;)V

    invoke-virtual {v1, v2}, Lt5/e;->e(Lv5/b;)V

    iput-object p1, p0, Lt5/d;->c:Lw5/b;

    iput-object v2, p0, Lt5/d;->b:Lv5/a;

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    invoke-static {}, Lu5/f;->f()Lu5/f;

    move-result-object p1

    const-string v0, "Could not register Firebase Analytics listener; a listener is already registered."

    invoke-virtual {p1, v0}, Lu5/f;->k(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static j(Lq5/a;Lt5/e;)Lq5/a$a;
    .locals 2

    const-string v0, "clx"

    invoke-interface {p0, v0, p1}, Lq5/a;->e(Ljava/lang/String;Lq5/a$b;)Lq5/a$a;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lu5/f;->f()Lu5/f;

    move-result-object v0

    const-string v1, "Could not register AnalyticsConnectorListener with Crashlytics origin."

    invoke-virtual {v0, v1}, Lu5/f;->b(Ljava/lang/String;)V

    const-string v0, "crash"

    invoke-interface {p0, v0, p1}, Lq5/a;->e(Ljava/lang/String;Lq5/a$b;)Lq5/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lu5/f;->f()Lu5/f;

    move-result-object p0

    const-string p1, "A new version of the Google Analytics for Firebase SDK is now available. For improved performance and compatibility with Crashlytics, please update to the latest version."

    invoke-virtual {p0, p1}, Lu5/f;->k(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public d()Lv5/a;
    .locals 1

    new-instance v0, Lt5/b;

    invoke-direct {v0, p0}, Lt5/b;-><init>(Lt5/d;)V

    return-object v0
.end method

.method public e()Lw5/b;
    .locals 1

    new-instance v0, Lt5/a;

    invoke-direct {v0, p0}, Lt5/a;-><init>(Lt5/d;)V

    return-object v0
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lt5/d;->a:Lq6/a;

    new-instance v1, Lt5/c;

    invoke-direct {v1, p0}, Lt5/c;-><init>(Lt5/d;)V

    invoke-interface {v0, v1}, Lq6/a;->a(Lq6/a$a;)V

    return-void
.end method
