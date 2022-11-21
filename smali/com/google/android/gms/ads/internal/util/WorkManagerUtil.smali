.class public Lcom/google/android/gms/ads/internal/util/WorkManagerUtil;
.super Lb3/x0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation build Lcom/google/android/apps/common/proguard/UsedByReflection;
        value = "This class must be instantiated reflectively so that the default class loader can be used."
    .end annotation

    invoke-direct {p0}, Lb3/x0;-><init>()V

    return-void
.end method

.method public static f7(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Landroidx/work/a$b;

    invoke-direct {v0}, Landroidx/work/a$b;-><init>()V

    invoke-virtual {v0}, Landroidx/work/a$b;->a()Landroidx/work/a;

    move-result-object v0

    invoke-static {p0, v0}, Lw0/t;->h(Landroid/content/Context;Landroidx/work/a;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public final zze(Lf4/a;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1    # Lf4/a;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/WorkManagerUtil;->f7(Landroid/content/Context;)V

    new-instance v0, Lw0/b$a;

    invoke-direct {v0}, Lw0/b$a;-><init>()V

    sget-object v1, Lw0/k;->b:Lw0/k;

    invoke-virtual {v0, v1}, Lw0/b$a;->b(Lw0/k;)Lw0/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lw0/b$a;->a()Lw0/b;

    move-result-object v0

    new-instance v1, Landroidx/work/b$a;

    invoke-direct {v1}, Landroidx/work/b$a;-><init>()V

    const-string v2, "uri"

    invoke-virtual {v1, v2, p2}, Landroidx/work/b$a;->f(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/b$a;

    move-result-object p2

    const-string v1, "gws_query_id"

    invoke-virtual {p2, v1, p3}, Landroidx/work/b$a;->f(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/b$a;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/work/b$a;->a()Landroidx/work/b;

    move-result-object p2

    new-instance p3, Lw0/l$a;

    const-class v1, Lcom/google/android/gms/ads/internal/offline/buffering/OfflineNotificationPoster;

    invoke-direct {p3, v1}, Lw0/l$a;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p3, v0}, Lw0/u$a;->e(Lw0/b;)Lw0/u$a;

    move-result-object p3

    check-cast p3, Lw0/l$a;

    invoke-virtual {p3, p2}, Lw0/u$a;->g(Landroidx/work/b;)Lw0/u$a;

    move-result-object p2

    check-cast p2, Lw0/l$a;

    const-string p3, "offline_notification_work"

    invoke-virtual {p2, p3}, Lw0/u$a;->a(Ljava/lang/String;)Lw0/u$a;

    move-result-object p2

    check-cast p2, Lw0/l$a;

    invoke-virtual {p2}, Lw0/u$a;->b()Lw0/u;

    move-result-object p2

    check-cast p2, Lw0/l;

    :try_start_0
    invoke-static {p1}, Lw0/t;->g(Landroid/content/Context;)Lw0/t;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1, p2}, Lw0/t;->f(Lw0/u;)Lw0/m;

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string p2, "Failed to instantiate WorkManager."

    invoke-static {p2, p1}, Lr4/cm0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final zzf(Lf4/a;)V
    .locals 4
    .param p1    # Lf4/a;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/WorkManagerUtil;->f7(Landroid/content/Context;)V

    :try_start_0
    invoke-static {p1}, Lw0/t;->g(Landroid/content/Context;)Lw0/t;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "offline_ping_sender_work"

    invoke-virtual {p1, v0}, Lw0/t;->c(Ljava/lang/String;)Lw0/m;

    new-instance v1, Lw0/b$a;

    invoke-direct {v1}, Lw0/b$a;-><init>()V

    sget-object v2, Lw0/k;->b:Lw0/k;

    invoke-virtual {v1, v2}, Lw0/b$a;->b(Lw0/k;)Lw0/b$a;

    move-result-object v1

    invoke-virtual {v1}, Lw0/b$a;->a()Lw0/b;

    move-result-object v1

    new-instance v2, Lw0/l$a;

    const-class v3, Lcom/google/android/gms/ads/internal/offline/buffering/OfflinePingSender;

    invoke-direct {v2, v3}, Lw0/l$a;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v2, v1}, Lw0/u$a;->e(Lw0/b;)Lw0/u$a;

    move-result-object v1

    check-cast v1, Lw0/l$a;

    invoke-virtual {v1, v0}, Lw0/u$a;->a(Ljava/lang/String;)Lw0/u$a;

    move-result-object v0

    check-cast v0, Lw0/l$a;

    invoke-virtual {v0}, Lw0/u$a;->b()Lw0/u;

    move-result-object v0

    check-cast v0, Lw0/l;

    invoke-virtual {p1, v0}, Lw0/t;->f(Lw0/u;)Lw0/m;

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Failed to instantiate WorkManager."

    invoke-static {v0, p1}, Lr4/cm0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
