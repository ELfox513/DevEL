.class public Lx6/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final i:Lc7/a;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lz6/a;

.field public final c:Lj7/d;

.field public d:Ljava/lang/Boolean;

.field public final e:Lm5/c;

.field public final f:Lq6/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq6/b<",
            "Lm7/p;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lr6/g;

.field public final h:Lq6/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq6/b<",
            "Lf2/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lc7/a;->e()Lc7/a;

    move-result-object v0

    sput-object v0, Lx6/c;->i:Lc7/a;

    return-void
.end method

.method public constructor <init>(Lm5/c;Lq6/b;Lr6/g;Lq6/b;Lcom/google/firebase/perf/config/RemoteConfigManager;Lz6/a;Lcom/google/firebase/perf/session/gauges/GaugeManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm5/c;",
            "Lq6/b<",
            "Lm7/p;",
            ">;",
            "Lr6/g;",
            "Lq6/b<",
            "Lf2/g;",
            ">;",
            "Lcom/google/firebase/perf/config/RemoteConfigManager;",
            "Lz6/a;",
            "Lcom/google/firebase/perf/session/gauges/GaugeManager;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lx6/c;->a:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lx6/c;->d:Ljava/lang/Boolean;

    iput-object p1, p0, Lx6/c;->e:Lm5/c;

    iput-object p2, p0, Lx6/c;->f:Lq6/b;

    iput-object p3, p0, Lx6/c;->g:Lr6/g;

    iput-object p4, p0, Lx6/c;->h:Lq6/b;

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lx6/c;->d:Ljava/lang/Boolean;

    iput-object p6, p0, Lx6/c;->b:Lz6/a;

    new-instance p1, Lj7/d;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p1, p2}, Lj7/d;-><init>(Landroid/os/Bundle;)V

    iput-object p1, p0, Lx6/c;->c:Lj7/d;

    return-void

    :cond_0
    invoke-static {}, Li7/k;->k()Li7/k;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p4}, Li7/k;->r(Lm5/c;Lr6/g;Lq6/b;)V

    invoke-virtual {p1}, Lm5/c;->h()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lx6/c;->a(Landroid/content/Context;)Lj7/d;

    move-result-object p4

    iput-object p4, p0, Lx6/c;->c:Lj7/d;

    invoke-virtual {p5, p2}, Lcom/google/firebase/perf/config/RemoteConfigManager;->setFirebaseRemoteConfigProvider(Lq6/b;)V

    iput-object p6, p0, Lx6/c;->b:Lz6/a;

    invoke-virtual {p6, p4}, Lz6/a;->O(Lj7/d;)V

    invoke-virtual {p6, p3}, Lz6/a;->M(Landroid/content/Context;)V

    invoke-virtual {p7, p3}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->setApplicationContext(Landroid/content/Context;)V

    invoke-virtual {p6}, Lz6/a;->h()Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lx6/c;->d:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lx6/c;->d()Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lx6/c;->i:Lc7/a;

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    const/4 p5, 0x0

    invoke-virtual {p1}, Lm5/c;->k()Lm5/i;

    move-result-object p1

    invoke-virtual {p1}, Lm5/i;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lc7/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p4, p5

    const-string p1, "Firebase Performance Monitoring is successfully initialized! In a minute, visit the Firebase console to view your data: %s"

    invoke-static {p1, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lc7/a;->f(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;)Lj7/d;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No perf enable meta data found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "isEnabled"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_1
    new-instance v0, Lj7/d;

    if-eqz p0, :cond_0

    invoke-direct {v0, p0}, Lj7/d;-><init>(Landroid/os/Bundle;)V

    goto :goto_2

    :cond_0
    invoke-direct {v0}, Lj7/d;-><init>()V

    :goto_2
    return-object v0
.end method

.method public static c()Lx6/c;
    .locals 2

    invoke-static {}, Lm5/c;->i()Lm5/c;

    move-result-object v0

    const-class v1, Lx6/c;

    invoke-virtual {v0, v1}, Lm5/c;->g(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx6/c;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lx6/c;->a:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lx6/c;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lm5/c;->i()Lm5/c;

    move-result-object v0

    invoke-virtual {v0}, Lm5/c;->q()Z

    move-result v0

    :goto_0
    return v0
.end method
