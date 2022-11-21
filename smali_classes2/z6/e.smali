.class public final Lz6/e;
.super Lz6/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz6/t<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static a:Lz6/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lz6/t;-><init>()V

    return-void
.end method

.method public static declared-synchronized e()Lz6/e;
    .locals 2

    const-class v0, Lz6/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lz6/e;->a:Lz6/e;

    if-nez v1, :cond_0

    new-instance v1, Lz6/e;

    invoke-direct {v1}, Lz6/e;-><init>()V

    sput-object v1, Lz6/e;->a:Lz6/e;

    :cond_0
    sget-object v1, Lz6/e;->a:Lz6/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.firebase.perf.NetworkEventCountBackground"

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "fpr_rl_network_event_count_bg"

    return-object v0
.end method

.method public d()Ljava/lang/Long;
    .locals 2

    const-wide/16 v0, 0x46

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
