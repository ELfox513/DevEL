.class public final Lr4/iq2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/m71;


# instance fields
.field public final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lr4/gl0;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/content/Context;

.field public final d:Lr4/rl0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr4/rl0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lr4/iq2;->a:Ljava/util/HashSet;

    iput-object p1, p0, Lr4/iq2;->b:Landroid/content/Context;

    iput-object p2, p0, Lr4/iq2;->d:Lr4/rl0;

    return-void
.end method


# virtual methods
.method public final declared-synchronized B(Lr4/lt;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget p1, p1, Lr4/lt;->a:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lr4/iq2;->d:Lr4/rl0;

    iget-object v0, p0, Lr4/iq2;->a:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Lr4/rl0;->b(Ljava/util/HashSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lr4/gl0;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/iq2;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lr4/iq2;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Lr4/iq2;->d:Lr4/rl0;

    iget-object v1, p0, Lr4/iq2;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lr4/rl0;->j(Landroid/content/Context;Lr4/iq2;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
