.class public final Lr4/lf1;
.super Lr4/yc1;
.source "SourceFile"

# interfaces
.implements Lr4/k60;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/yc1<",
        "Lr4/k60;",
        ">;",
        "Lr4/k60;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lr4/ve1<",
            "Lr4/k60;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lr4/yc1;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final L(Lr4/rh0;)V
    .locals 1

    new-instance v0, Lr4/jf1;

    invoke-direct {v0, p1}, Lr4/jf1;-><init>(Lr4/rh0;)V

    invoke-virtual {p0, v0}, Lr4/yc1;->S0(Lr4/xc1;)V

    return-void
.end method

.method public final b()V
    .locals 1

    sget-object v0, Lr4/kf1;->a:Lr4/xc1;

    invoke-virtual {p0, v0}, Lr4/yc1;->S0(Lr4/xc1;)V

    return-void
.end method

.method public final declared-synchronized zza()V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lr4/if1;->a:Lr4/xc1;

    invoke-virtual {p0, v0}, Lr4/yc1;->S0(Lr4/xc1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
