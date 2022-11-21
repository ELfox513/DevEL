.class public final Lz6/i;
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
.field public static a:Lz6/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lz6/t;-><init>()V

    return-void
.end method

.method public static declared-synchronized e()Lz6/i;
    .locals 2

    const-class v0, Lz6/i;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lz6/i;->a:Lz6/i;

    if-nez v1, :cond_0

    new-instance v1, Lz6/i;

    invoke-direct {v1}, Lz6/i;-><init>()V

    sput-object v1, Lz6/i;->a:Lz6/i;

    :cond_0
    sget-object v1, Lz6/i;->a:Lz6/i;
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

    const-string v0, "com.google.firebase.perf.SdkDisabledVersions"

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "fpr_disabled_android_versions"

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
