.class public final Lr4/b73;
.super Lr4/y63;
.source "SourceFile"


# direct methods
.method public synthetic constructor <init>(Lr4/z63;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lr4/y63;-><init>(Lr4/z63;)V

    return-void
.end method


# virtual methods
.method public final a(Lr4/c73;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/c73<",
            "*>;",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    monitor-enter p1

    :try_start_0
    invoke-static {p1}, Lr4/c73;->E(Lr4/c73;)Ljava/util/Set;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {p1, p3}, Lr4/c73;->F(Lr4/c73;Ljava/util/Set;)Ljava/util/Set;

    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final b(Lr4/c73;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/c73<",
            "*>;)I"
        }
    .end annotation

    monitor-enter p1

    :try_start_0
    invoke-static {p1}, Lr4/c73;->G(Lr4/c73;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Lr4/c73;->H(Lr4/c73;I)I

    monitor-exit p1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
