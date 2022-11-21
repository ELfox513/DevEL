.class public final Lr4/h82;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/s92;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/s92<",
        "Lr4/h11;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lr4/i82;


# direct methods
.method public constructor <init>(Lr4/i82;)V
    .locals 0

    iput-object p1, p0, Lr4/h82;->a:Lr4/i82;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lr4/h11;

    iget-object v0, p0, Lr4/h82;->a:Lr4/i82;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/h82;->a:Lr4/i82;

    invoke-static {v1}, Lr4/i82;->f7(Lr4/i82;)Lr4/h11;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lr4/h82;->a:Lr4/i82;

    invoke-static {v1}, Lr4/i82;->f7(Lr4/i82;)Lr4/h11;

    move-result-object v1

    invoke-virtual {v1}, Lr4/i31;->b()V

    :cond_0
    iget-object v1, p0, Lr4/h82;->a:Lr4/i82;

    invoke-static {v1, p1}, Lr4/i82;->g7(Lr4/i82;Lr4/h11;)Lr4/h11;

    iget-object p1, p0, Lr4/h82;->a:Lr4/i82;

    invoke-static {p1}, Lr4/i82;->f7(Lr4/i82;)Lr4/h11;

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

    iget-object v0, p0, Lr4/h82;->a:Lr4/i82;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/h82;->a:Lr4/i82;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lr4/i82;->g7(Lr4/i82;Lr4/h11;)Lr4/h11;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
