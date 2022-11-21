.class public final Lz6/s;
.super Lz6/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz6/t<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field public static a:Lz6/s;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lz6/t;-><init>()V

    return-void
.end method

.method public static declared-synchronized e()Lz6/s;
    .locals 2

    const-class v0, Lz6/s;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lz6/s;->a:Lz6/s;

    if-nez v1, :cond_0

    new-instance v1, Lz6/s;

    invoke-direct {v1}, Lz6/s;-><init>()V

    sput-object v1, Lz6/s;->a:Lz6/s;

    :cond_0
    sget-object v1, Lz6/s;->a:Lz6/s;
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

    const-string v0, "com.google.firebase.perf.TraceSamplingRate"

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "fpr_vc_trace_sampling_rate"

    return-object v0
.end method

.method public d()Ljava/lang/Float;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
