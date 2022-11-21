.class public final Lr4/mr2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/t73;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/t73<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lr4/pr2;

.field public final synthetic b:Lr4/qr2;


# direct methods
.method public constructor <init>(Lr4/qr2;Lr4/pr2;)V
    .locals 0

    iput-object p1, p0, Lr4/mr2;->b:Lr4/qr2;

    iput-object p2, p0, Lr4/mr2;->a:Lr4/pr2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    iget-object p1, p0, Lr4/mr2;->b:Lr4/qr2;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lr4/mr2;->b:Lr4/qr2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/qr2;->b(Lr4/qr2;Lr4/xr2;)Lr4/xr2;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Void;

    iget-object p1, p0, Lr4/mr2;->b:Lr4/qr2;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lr4/mr2;->b:Lr4/qr2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/qr2;->b(Lr4/qr2;Lr4/xr2;)Lr4/xr2;

    iget-object v0, p0, Lr4/mr2;->b:Lr4/qr2;

    invoke-static {v0}, Lr4/qr2;->a(Lr4/qr2;)Ljava/util/ArrayDeque;

    move-result-object v0

    iget-object v1, p0, Lr4/mr2;->a:Lr4/pr2;

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    iget-object v0, p0, Lr4/mr2;->b:Lr4/qr2;

    invoke-static {v0}, Lr4/qr2;->g(Lr4/qr2;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lr4/mr2;->b:Lr4/qr2;

    invoke-static {v0}, Lr4/qr2;->e(Lr4/qr2;)V

    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
