.class public final Lz6/d;
.super Lz6/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz6/t<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static a:Lz6/d;

.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz6/d$a;

    invoke-direct {v0}, Lz6/d$a;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lz6/d;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lz6/t;-><init>()V

    return-void
.end method

.method public static declared-synchronized e()Lz6/d;
    .locals 2

    const-class v0, Lz6/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lz6/d;->a:Lz6/d;

    if-nez v1, :cond_0

    new-instance v1, Lz6/d;

    invoke-direct {v1}, Lz6/d;-><init>()V

    sput-object v1, Lz6/d;->a:Lz6/d;

    :cond_0
    sget-object v1, Lz6/d;->a:Lz6/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static f(J)Ljava/lang/String;
    .locals 1

    sget-object v0, Lz6/d;->b:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static g(J)Z
    .locals 1

    sget-object v0, Lz6/d;->b:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.firebase.perf.LogSourceName"

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "fpr_log_source"

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lx6/a;->c:Ljava/lang/String;

    return-object v0
.end method
