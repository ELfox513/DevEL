.class public final Lz6/f;
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
.field public static a:Lz6/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lz6/t;-><init>()V

    return-void
.end method

.method public static declared-synchronized e()Lz6/f;
    .locals 2

    const-class v0, Lz6/f;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lz6/f;->a:Lz6/f;

    if-nez v1, :cond_0

    new-instance v1, Lz6/f;

    invoke-direct {v1}, Lz6/f;-><init>()V

    sput-object v1, Lz6/f;->a:Lz6/f;

    :cond_0
    sget-object v1, Lz6/f;->a:Lz6/f;
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

    const-string v0, "com.google.firebase.perf.NetworkEventCountForeground"

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "fpr_rl_network_event_count_fg"

    return-object v0
.end method

.method public d()Ljava/lang/Long;
    .locals 2

    const-wide/16 v0, 0x2bc

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
