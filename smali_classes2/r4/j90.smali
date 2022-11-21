.class public final Lr4/j90;
.super Lr4/cn0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/cn0<",
        "Lr4/q90;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Ljava/lang/Object;

.field public final d:Lr4/o90;

.field public e:Z


# direct methods
.method public constructor <init>(Lr4/o90;)V
    .locals 1

    invoke-direct {p0}, Lr4/cn0;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lr4/j90;->c:Ljava/lang/Object;

    iput-object p1, p0, Lr4/j90;->d:Lr4/o90;

    return-void
.end method

.method public static synthetic f(Lr4/j90;)Lr4/o90;
    .locals 0

    iget-object p0, p0, Lr4/j90;->d:Lr4/o90;

    return-object p0
.end method


# virtual methods
.method public final g()V
    .locals 3

    iget-object v0, p0, Lr4/j90;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lr4/j90;->e:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lr4/j90;->e:Z

    new-instance v1, Lr4/g90;

    invoke-direct {v1, p0}, Lr4/g90;-><init>(Lr4/j90;)V

    new-instance v2, Lr4/ym0;

    invoke-direct {v2}, Lr4/ym0;-><init>()V

    invoke-virtual {p0, v1, v2}, Lr4/cn0;->b(Lr4/zm0;Lr4/xm0;)V

    new-instance v1, Lr4/h90;

    invoke-direct {v1, p0}, Lr4/h90;-><init>(Lr4/j90;)V

    new-instance v2, Lr4/i90;

    invoke-direct {v2, p0}, Lr4/i90;-><init>(Lr4/j90;)V

    invoke-virtual {p0, v1, v2}, Lr4/cn0;->b(Lr4/zm0;Lr4/xm0;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
