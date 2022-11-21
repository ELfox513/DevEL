.class public final Lr4/nk2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/s92;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/s92<",
        "Lr4/a11;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lr4/ok2;


# direct methods
.method public constructor <init>(Lr4/ok2;)V
    .locals 0

    iput-object p1, p0, Lr4/nk2;->a:Lr4/ok2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Lr4/a11;

    iget-object v0, p0, Lr4/nk2;->a:Lr4/ok2;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/nk2;->a:Lr4/ok2;

    iget-object v1, v1, Lr4/ok2;->t:Lr4/a11;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lr4/i31;->b()V

    :cond_0
    iget-object v1, p0, Lr4/nk2;->a:Lr4/ok2;

    iput-object p1, v1, Lr4/ok2;->t:Lr4/a11;

    invoke-virtual {p1, v1}, Lr4/a11;->g(Lr4/bo;)V

    iget-object v1, p0, Lr4/nk2;->a:Lr4/ok2;

    invoke-static {v1}, Lr4/ok2;->g7(Lr4/ok2;)Lr4/fk2;

    move-result-object v1

    new-instance v2, Lr4/b11;

    iget-object v3, p0, Lr4/nk2;->a:Lr4/ok2;

    invoke-static {v3}, Lr4/ok2;->g7(Lr4/ok2;)Lr4/fk2;

    move-result-object v4

    invoke-direct {v2, p1, v3, v4}, Lr4/b11;-><init>(Lr4/a11;Lr4/vv;Lr4/fk2;)V

    invoke-virtual {v1, v2}, Lr4/fk2;->z(Lr4/do;)V

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

    iget-object v0, p0, Lr4/nk2;->a:Lr4/ok2;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/nk2;->a:Lr4/ok2;

    const/4 v2, 0x0

    iput-object v2, v1, Lr4/ok2;->t:Lr4/a11;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
