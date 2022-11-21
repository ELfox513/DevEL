.class public final Lr4/f90;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/xm0;


# instance fields
.field public final synthetic a:Lr4/o90;

.field public final synthetic b:Lr4/p90;


# direct methods
.method public constructor <init>(Lr4/p90;Lr4/o90;)V
    .locals 0

    iput-object p1, p0, Lr4/f90;->b:Lr4/p90;

    iput-object p2, p0, Lr4/f90;->a:Lr4/o90;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 3

    iget-object v0, p0, Lr4/f90;->b:Lr4/p90;

    invoke-static {v0}, Lr4/p90;->a(Lr4/p90;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/f90;->b:Lr4/p90;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lr4/p90;->d(Lr4/p90;I)I

    const-string v1, "Failed loading new engine. Marking new engine destroyable."

    invoke-static {v1}, Lb3/w1;->k(Ljava/lang/String;)V

    iget-object v1, p0, Lr4/f90;->a:Lr4/o90;

    invoke-virtual {v1}, Lr4/o90;->h()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
