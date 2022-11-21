.class public final Lh1/a$h;
.super Lh1/a$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lh1/a$b;-><init>(Lh1/a$a;)V

    return-void
.end method


# virtual methods
.method public a(Lh1/a;Lh1/a$e;Lh1/a$e;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh1/a<",
            "*>;",
            "Lh1/a$e;",
            "Lh1/a$e;",
            ")Z"
        }
    .end annotation

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lh1/a;->b:Lh1/a$e;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Lh1/a;->b:Lh1/a$e;

    const/4 p2, 0x1

    monitor-exit p1

    return p2

    :cond_0
    const/4 p2, 0x0

    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public b(Lh1/a;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh1/a<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lh1/a;->a:Ljava/lang/Object;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Lh1/a;->a:Ljava/lang/Object;

    const/4 p2, 0x1

    monitor-exit p1

    return p2

    :cond_0
    const/4 p2, 0x0

    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public c(Lh1/a;Lh1/a$i;Lh1/a$i;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh1/a<",
            "*>;",
            "Lh1/a$i;",
            "Lh1/a$i;",
            ")Z"
        }
    .end annotation

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lh1/a;->d:Lh1/a$i;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Lh1/a;->d:Lh1/a$i;

    const/4 p2, 0x1

    monitor-exit p1

    return p2

    :cond_0
    const/4 p2, 0x0

    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public d(Lh1/a$i;Lh1/a$i;)V
    .locals 0

    iput-object p2, p1, Lh1/a$i;->b:Lh1/a$i;

    return-void
.end method

.method public e(Lh1/a$i;Ljava/lang/Thread;)V
    .locals 0

    iput-object p2, p1, Lh1/a$i;->a:Ljava/lang/Thread;

    return-void
.end method
