.class public final Lz6/c;
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
.field public static a:Lz6/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lz6/t;-><init>()V

    return-void
.end method

.method public static declared-synchronized d()Lz6/c;
    .locals 2

    const-class v0, Lz6/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lz6/c;->a:Lz6/c;

    if-nez v1, :cond_0

    new-instance v1, Lz6/c;

    invoke-direct {v1}, Lz6/c;-><init>()V

    sput-object v1, Lz6/c;->a:Lz6/c;

    :cond_0
    sget-object v1, Lz6/c;->a:Lz6/c;
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

    const-string v0, "isEnabled"

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "firebase_performance_collection_enabled"

    return-object v0
.end method
