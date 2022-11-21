.class public final Lr4/n92;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/s92;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/s92<",
        "Lr4/i31;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lr4/o92;


# direct methods
.method public constructor <init>(Lr4/o92;)V
    .locals 0

    iput-object p1, p0, Lr4/n92;->a:Lr4/o92;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lr4/n92;->a:Lr4/o92;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/n92;->a:Lr4/o92;

    move-object v2, p1

    check-cast v2, Lr4/i31;

    invoke-virtual {v2}, Lr4/i31;->d()Lr4/b71;

    move-result-object v2

    invoke-static {v1, v2}, Lr4/o92;->a(Lr4/o92;Lr4/hx;)Lr4/hx;

    check-cast p1, Lr4/i31;

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
    .locals 2

    iget-object v0, p0, Lr4/n92;->a:Lr4/o92;

    monitor-enter v0

    :try_start_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
