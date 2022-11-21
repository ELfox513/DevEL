.class public final Lz6/j;
.super Lz6/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz6/t<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static a:Lz6/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lz6/t;-><init>()V

    return-void
.end method

.method public static declared-synchronized e()Lz6/j;
    .locals 2

    const-class v0, Lz6/j;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lz6/j;->a:Lz6/j;

    if-nez v1, :cond_0

    new-instance v1, Lz6/j;

    invoke-direct {v1}, Lz6/j;-><init>()V

    sput-object v1, Lz6/j;->a:Lz6/j;

    :cond_0
    sget-object v1, Lz6/j;->a:Lz6/j;
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

    const-string v0, "com.google.firebase.perf.SdkEnabled"

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "fpr_enabled"

    return-object v0
.end method

.method public d()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method
