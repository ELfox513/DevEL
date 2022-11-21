.class public final Lr4/k92;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/s92;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/s92<",
        "Lr4/xf1;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lr4/l92;


# direct methods
.method public constructor <init>(Lr4/l92;)V
    .locals 0

    iput-object p1, p0, Lr4/k92;->a:Lr4/l92;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lr4/xf1;

    iget-object v0, p0, Lr4/k92;->a:Lr4/l92;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/k92;->a:Lr4/l92;

    invoke-static {v1, p1}, Lr4/l92;->f7(Lr4/l92;Lr4/xf1;)Lr4/xf1;

    iget-object p1, p0, Lr4/k92;->a:Lr4/l92;

    invoke-static {p1}, Lr4/l92;->g7(Lr4/l92;)Lr4/xf1;

    move-result-object p1

    invoke-virtual {p1}, Lr4/i31;->a()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zza()V
    .locals 3

    iget-object v0, p0, Lr4/k92;->a:Lr4/l92;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/k92;->a:Lr4/l92;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lr4/l92;->f7(Lr4/l92;Lr4/xf1;)Lr4/xf1;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
