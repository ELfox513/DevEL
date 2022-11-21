.class public final Lv3/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu3/f$a;
.implements Lu3/f$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lu3/a$d;",
        ">",
        "Ljava/lang/Object;",
        "Lu3/f$a;",
        "Lu3/f$b;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lv3/b1;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lu3/a$f;

.field public final d:Lv3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv3/b<",
            "TO;>;"
        }
    .end annotation
.end field

.field public final k:Lv3/s;

.field public final p:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lv3/c1;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lv3/i<",
            "*>;",
            "Lv3/p0;",
            ">;"
        }
    .end annotation
.end field

.field public final r:I

.field public final s:Lv3/t0;

.field public t:Z

.field public final u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lv3/d0;",
            ">;"
        }
    .end annotation
.end field

.field public v:Lt3/b;

.field public w:I

.field public final synthetic x:Lv3/f;


# direct methods
.method public constructor <init>(Lv3/f;Lu3/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu3/e<",
            "TO;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lv3/c0;->x:Lv3/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lv3/c0;->a:Ljava/util/Queue;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lv3/c0;->p:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lv3/c0;->q:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lv3/c0;->u:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lv3/c0;->v:Lt3/b;

    const/4 v1, 0x0

    iput v1, p0, Lv3/c0;->w:I

    invoke-static {p1}, Lv3/f;->A(Lv3/f;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {p2, v1, p0}, Lu3/e;->r(Landroid/os/Looper;Lv3/c0;)Lu3/a$f;

    move-result-object v1

    iput-object v1, p0, Lv3/c0;->b:Lu3/a$f;

    invoke-virtual {p2}, Lu3/e;->m()Lv3/b;

    move-result-object v2

    iput-object v2, p0, Lv3/c0;->d:Lv3/b;

    new-instance v2, Lv3/s;

    invoke-direct {v2}, Lv3/s;-><init>()V

    iput-object v2, p0, Lv3/c0;->k:Lv3/s;

    invoke-virtual {p2}, Lu3/e;->s()I

    move-result v2

    iput v2, p0, Lv3/c0;->r:I

    invoke-interface {v1}, Lu3/a$f;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lv3/f;->B(Lv3/f;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lv3/f;->A(Lv3/f;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lu3/e;->t(Landroid/content/Context;Landroid/os/Handler;)Lv3/t0;

    move-result-object p1

    iput-object p1, p0, Lv3/c0;->s:Lv3/t0;

    return-void

    :cond_0
    iput-object v0, p0, Lv3/c0;->s:Lv3/t0;

    return-void
.end method

.method public static synthetic G(Lv3/c0;Z)Z
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lv3/c0;->l(Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic H(Lv3/c0;Lv3/d0;)V
    .locals 1

    iget-object v0, p0, Lv3/c0;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lv3/c0;->t:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lv3/c0;->b:Lu3/a$f;

    invoke-interface {p1}, Lu3/a$f;->isConnected()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lv3/c0;->z()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lv3/c0;->e()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic I(Lv3/c0;Lv3/d0;)V
    .locals 5

    iget-object v0, p0, Lv3/c0;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {v0}, Lv3/f;->A(Lv3/f;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {v0}, Lv3/f;->A(Lv3/f;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-static {p1}, Lv3/d0;->b(Lv3/d0;)Lt3/d;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lv3/c0;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lv3/c0;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv3/b1;

    instance-of v3, v2, Lv3/m0;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lv3/m0;

    invoke-virtual {v3, p0}, Lv3/m0;->f(Lv3/c0;)[Lt3/d;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3, p1}, Lc4/b;->c([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv3/b1;

    iget-object v4, p0, Lv3/c0;->a:Ljava/util/Queue;

    invoke-interface {v4, v3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    new-instance v4, Lu3/n;

    invoke-direct {v4, p1}, Lu3/n;-><init>(Lt3/d;)V

    invoke-virtual {v3, v4}, Lv3/b1;->b(Ljava/lang/Exception;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static synthetic J(Lv3/c0;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    invoke-virtual {p0, p1}, Lv3/c0;->i(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public static synthetic K(Lv3/c0;)Lv3/b;
    .locals 0

    iget-object p0, p0, Lv3/c0;->d:Lv3/b;

    return-object p0
.end method

.method public static synthetic L(Lv3/c0;)V
    .locals 0

    invoke-virtual {p0}, Lv3/c0;->b()V

    return-void
.end method

.method public static synthetic M(Lv3/c0;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lv3/c0;->c(I)V

    return-void
.end method

.method public static synthetic a(Lv3/c0;)Lu3/a$f;
    .locals 0

    iget-object p0, p0, Lv3/c0;->b:Lu3/a$f;

    return-object p0
.end method


# virtual methods
.method public final A(Lv3/c1;)V
    .locals 1

    iget-object v0, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {v0}, Lv3/f;->A(Lv3/f;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lx3/q;->d(Landroid/os/Handler;)V

    iget-object v0, p0, Lv3/c0;->p:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final B()Z
    .locals 1

    iget-object v0, p0, Lv3/c0;->b:Lu3/a$f;

    invoke-interface {v0}, Lu3/a$f;->isConnected()Z

    move-result v0

    return v0
.end method

.method public final C()Z
    .locals 1

    iget-object v0, p0, Lv3/c0;->b:Lu3/a$f;

    invoke-interface {v0}, Lu3/a$f;->n()Z

    move-result v0

    return v0
.end method

.method public final D()I
    .locals 1

    iget v0, p0, Lv3/c0;->r:I

    return v0
.end method

.method public final E()I
    .locals 1

    iget v0, p0, Lv3/c0;->w:I

    return v0
.end method

.method public final F()V
    .locals 1

    iget v0, p0, Lv3/c0;->w:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lv3/c0;->w:I

    return-void
.end method

.method public final b()V
    .locals 2

    invoke-virtual {p0}, Lv3/c0;->u()V

    sget-object v0, Lt3/b;->p:Lt3/b;

    invoke-virtual {p0, v0}, Lv3/c0;->m(Lt3/b;)V

    invoke-virtual {p0}, Lv3/c0;->j()V

    iget-object v0, p0, Lv3/c0;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lv3/c0;->e()V

    invoke-virtual {p0}, Lv3/c0;->k()V

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv3/p0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    throw v0
.end method

.method public final c(I)V
    .locals 3

    invoke-virtual {p0}, Lv3/c0;->u()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lv3/c0;->t:Z

    iget-object v0, p0, Lv3/c0;->k:Lv3/s;

    iget-object v1, p0, Lv3/c0;->b:Lu3/a$f;

    invoke-interface {v1}, Lu3/a$f;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lv3/s;->e(ILjava/lang/String;)V

    iget-object p1, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {p1}, Lv3/f;->A(Lv3/f;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {v0}, Lv3/f;->A(Lv3/f;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lv3/c0;->d:Lv3/b;

    const/16 v2, 0x9

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {v1}, Lv3/f;->C(Lv3/f;)J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p1, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {p1}, Lv3/f;->A(Lv3/f;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {v0}, Lv3/f;->A(Lv3/f;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lv3/c0;->d:Lv3/b;

    const/16 v2, 0xb

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {v1}, Lv3/f;->D(Lv3/f;)J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p1, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {p1}, Lv3/f;->E(Lv3/f;)Lx3/h0;

    move-result-object p1

    invoke-virtual {p1}, Lx3/h0;->c()V

    iget-object p1, p0, Lv3/c0;->q:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv3/p0;

    iget-object v0, v0, Lv3/p0;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d(Lt3/b;)Z
    .locals 3

    invoke-static {}, Lv3/f;->F()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {v1}, Lv3/f;->G(Lv3/f;)Lv3/t;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {v1}, Lv3/f;->H(Lv3/f;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lv3/c0;->d:Lv3/b;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {v1}, Lv3/f;->G(Lv3/f;)Lv3/t;

    move-result-object v1

    iget v2, p0, Lv3/c0;->r:I

    invoke-virtual {v1, p1, v2}, Lv3/h1;->q(Lt3/b;I)V

    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :cond_0
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final e()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lv3/c0;->a:Ljava/util/Queue;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv3/b1;

    iget-object v4, p0, Lv3/c0;->b:Lu3/a$f;

    invoke-interface {v4}, Lu3/a$f;->isConnected()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v3}, Lv3/c0;->f(Lv3/b1;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lv3/c0;->a:Ljava/util/Queue;

    invoke-interface {v4, v3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final f(Lv3/b1;)Z
    .locals 9

    instance-of v0, p1, Lv3/m0;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lv3/c0;->g(Lv3/b1;)V

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lv3/m0;

    invoke-virtual {v0, p0}, Lv3/m0;->f(Lv3/c0;)[Lt3/d;

    move-result-object v2

    invoke-virtual {p0, v2}, Lv3/c0;->n([Lt3/d;)Lt3/d;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p0, p1}, Lv3/c0;->g(Lv3/b1;)V

    return v1

    :cond_1
    iget-object p1, p0, Lv3/c0;->b:Lu3/a$f;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Lt3/d;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lt3/d;->X0()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x4d

    add-int/2addr v6, v7

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " could not execute call because it requires feature ("

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "GoogleApiManager"

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {p1}, Lv3/f;->d(Lv3/f;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v0, p0}, Lv3/m0;->g(Lv3/c0;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Lv3/d0;

    iget-object v0, p0, Lv3/c0;->d:Lv3/b;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v2, v1}, Lv3/d0;-><init>(Lv3/b;Lt3/d;Lv3/x;)V

    iget-object v0, p0, Lv3/c0;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/16 v2, 0xf

    if-ltz v0, :cond_2

    iget-object p1, p0, Lv3/c0;->u:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv3/d0;

    iget-object v0, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {v0}, Lv3/f;->A(Lv3/f;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {v0}, Lv3/f;->A(Lv3/f;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {v1}, Lv3/f;->A(Lv3/f;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v1, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {v1}, Lv3/f;->C(Lv3/f;)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lv3/c0;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {v0}, Lv3/f;->A(Lv3/f;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {v3}, Lv3/f;->A(Lv3/f;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {v3}, Lv3/f;->C(Lv3/f;)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {v0}, Lv3/f;->A(Lv3/f;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {v2}, Lv3/f;->A(Lv3/f;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v2, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {v2}, Lv3/f;->D(Lv3/f;)J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    new-instance p1, Lt3/b;

    const/4 v0, 0x2

    invoke-direct {p1, v0, v1}, Lt3/b;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, p1}, Lv3/c0;->d(Lt3/b;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lv3/c0;->x:Lv3/f;

    iget v1, p0, Lv3/c0;->r:I

    invoke-virtual {v0, p1, v1}, Lv3/f;->x(Lt3/b;I)Z

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_4
    new-instance p1, Lu3/n;

    invoke-direct {p1, v2}, Lu3/n;-><init>(Lt3/d;)V

    invoke-virtual {v0, p1}, Lv3/b1;->b(Ljava/lang/Exception;)V

    return v1
.end method

.method public final g(Lv3/b1;)V
    .locals 3

    iget-object v0, p0, Lv3/c0;->k:Lv3/s;

    invoke-virtual {p0}, Lv3/c0;->C()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lv3/b1;->c(Lv3/s;Z)V

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, p0}, Lv3/b1;->d(Lv3/c0;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lv3/c0;->b:Lu3/a$f;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Error in GoogleApi implementation for client %s."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_0
    invoke-virtual {p0, v0}, Lv3/c0;->j0(I)V

    iget-object p1, p0, Lv3/c0;->b:Lu3/a$f;

    const-string v0, "DeadObjectException thrown while running ApiCallRunner."

    invoke-interface {p1, v0}, Lu3/a$f;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final h(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V
    .locals 4

    iget-object v0, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {v0}, Lv3/f;->A(Lv3/f;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lx3/q;->d(Landroid/os/Handler;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-eq v2, v0, :cond_6

    iget-object v0, p0, Lv3/c0;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv3/b1;

    if-eqz p3, :cond_3

    iget v2, v1, Lv3/b1;->a:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {v1, p1}, Lv3/b1;->a(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v1, p2}, Lv3/b1;->b(Ljava/lang/Exception;)V

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_5
    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Status XOR exception should be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public final i(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {v0}, Lv3/f;->A(Lv3/f;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lx3/q;->d(Landroid/os/Handler;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lv3/c0;->h(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    return-void
.end method

.method public final j()V
    .locals 3

    iget-boolean v0, p0, Lv3/c0;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {v0}, Lv3/f;->A(Lv3/f;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    iget-object v2, p0, Lv3/c0;->d:Lv3/b;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {v0}, Lv3/f;->A(Lv3/f;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    iget-object v2, p0, Lv3/c0;->d:Lv3/b;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lv3/c0;->t:Z

    :cond_0
    return-void
.end method

.method public final j0(I)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {v1}, Lv3/f;->A(Lv3/f;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lv3/c0;->c(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {v0}, Lv3/f;->A(Lv3/f;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lv3/z;

    invoke-direct {v1, p0, p1}, Lv3/z;-><init>(Lv3/c0;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final k()V
    .locals 4

    iget-object v0, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {v0}, Lv3/f;->A(Lv3/f;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lv3/c0;->d:Lv3/b;

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {v0}, Lv3/f;->A(Lv3/f;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {v1}, Lv3/f;->A(Lv3/f;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lv3/c0;->d:Lv3/b;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {v2}, Lv3/f;->f(Lv3/f;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final l(Z)Z
    .locals 2

    iget-object v0, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {v0}, Lv3/f;->A(Lv3/f;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lx3/q;->d(Landroid/os/Handler;)V

    iget-object v0, p0, Lv3/c0;->b:Lu3/a$f;

    invoke-interface {v0}, Lu3/a$f;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lv3/c0;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lv3/c0;->k:Lv3/s;

    invoke-virtual {v0}, Lv3/s;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lv3/c0;->k()V

    :cond_0
    return v1

    :cond_1
    iget-object p1, p0, Lv3/c0;->b:Lu3/a$f;

    const-string v0, "Timing out service connection."

    invoke-interface {p1, v0}, Lu3/a$f;->b(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public final m(Lt3/b;)V
    .locals 4

    iget-object v0, p0, Lv3/c0;->p:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv3/c1;

    sget-object v2, Lt3/b;->p:Lt3/b;

    invoke-static {p1, v2}, Lx3/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lv3/c0;->b:Lu3/a$f;

    invoke-interface {v2}, Lu3/a$f;->d()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lv3/c0;->d:Lv3/b;

    invoke-virtual {v1, v3, p1, v2}, Lv3/c1;->b(Lv3/b;Lt3/b;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lv3/c0;->p:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public final n([Lt3/d;)Lt3/d;
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    iget-object v1, p0, Lv3/c0;->b:Lu3/a$f;

    invoke-interface {v1}, Lu3/a$f;->l()[Lt3/d;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    new-array v1, v2, [Lt3/d;

    :cond_1
    array-length v3, v1

    new-instance v4, Lp/a;

    invoke-direct {v4, v3}, Lp/a;-><init>(I)V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v1, v5

    invoke-virtual {v6}, Lt3/d;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lt3/d;->X0()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    array-length v1, p1

    :goto_1
    if-ge v2, v1, :cond_5

    aget-object v3, p1, v2

    invoke-virtual {v3}, Lt3/d;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3}, Lt3/d;->X0()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-gez v9, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-object v3

    :cond_5
    :goto_3
    return-object v0
.end method

.method public final o(Lt3/b;)V
    .locals 6

    iget-object v0, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {v0}, Lv3/f;->A(Lv3/f;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lx3/q;->d(Landroid/os/Handler;)V

    iget-object v0, p0, Lv3/c0;->b:Lu3/a$f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x19

    add-int/2addr v3, v4

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "onSignInFailed for "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lu3/a$f;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lv3/c0;->p(Lt3/b;Ljava/lang/Exception;)V

    return-void
.end method

.method public final o0(Landroid/os/Bundle;)V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v0, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {v0}, Lv3/f;->A(Lv3/f;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lv3/c0;->b()V

    return-void

    :cond_0
    iget-object p1, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {p1}, Lv3/f;->A(Lv3/f;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lv3/y;

    invoke-direct {v0, p0}, Lv3/y;-><init>(Lv3/c0;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final p(Lt3/b;Ljava/lang/Exception;)V
    .locals 5

    iget-object v0, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {v0}, Lv3/f;->A(Lv3/f;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lx3/q;->d(Landroid/os/Handler;)V

    iget-object v0, p0, Lv3/c0;->s:Lv3/t0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lv3/t0;->A2()V

    :cond_0
    invoke-virtual {p0}, Lv3/c0;->u()V

    iget-object v0, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {v0}, Lv3/f;->E(Lv3/f;)Lx3/h0;

    move-result-object v0

    invoke-virtual {v0}, Lx3/h0;->c()V

    invoke-virtual {p0, p1}, Lv3/c0;->m(Lt3/b;)V

    iget-object v0, p0, Lv3/c0;->b:Lu3/a$f;

    instance-of v0, v0, Lz3/e;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lt3/b;->X0()I

    move-result v0

    const/16 v2, 0x18

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {v0, v1}, Lv3/f;->b(Lv3/f;Z)Z

    iget-object v0, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {v0}, Lv3/f;->A(Lv3/f;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {v2}, Lv3/f;->A(Lv3/f;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/32 v3, 0x493e0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    invoke-virtual {p1}, Lt3/b;->X0()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    invoke-static {}, Lv3/f;->c()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lv3/c0;->i(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :cond_2
    iget-object v0, p0, Lv3/c0;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, Lv3/c0;->v:Lt3/b;

    return-void

    :cond_3
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    iget-object p1, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {p1}, Lv3/f;->A(Lv3/f;)Landroid/os/Handler;

    move-result-object p1

    invoke-static {p1}, Lx3/q;->d(Landroid/os/Handler;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p2, p1}, Lv3/c0;->h(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    return-void

    :cond_4
    iget-object p2, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {p2}, Lv3/f;->d(Lv3/f;)Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p2, p0, Lv3/c0;->d:Lv3/b;

    invoke-static {p2, p1}, Lv3/f;->g(Lv3/b;Lt3/b;)Lcom/google/android/gms/common/api/Status;

    move-result-object p2

    invoke-virtual {p0, p2, v0, v1}, Lv3/c0;->h(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    iget-object p2, p0, Lv3/c0;->a:Ljava/util/Queue;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0, p1}, Lv3/c0;->d(Lt3/b;)Z

    move-result p2

    if-eqz p2, :cond_6

    return-void

    :cond_6
    iget-object p2, p0, Lv3/c0;->x:Lv3/f;

    iget v0, p0, Lv3/c0;->r:I

    invoke-virtual {p2, p1, v0}, Lv3/f;->x(Lt3/b;I)Z

    move-result p2

    if-nez p2, :cond_9

    invoke-virtual {p1}, Lt3/b;->X0()I

    move-result p2

    const/16 v0, 0x12

    if-ne p2, v0, :cond_7

    iput-boolean v1, p0, Lv3/c0;->t:Z

    :cond_7
    iget-boolean p2, p0, Lv3/c0;->t:Z

    if-eqz p2, :cond_8

    iget-object p1, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {p1}, Lv3/f;->A(Lv3/f;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {p2}, Lv3/f;->A(Lv3/f;)Landroid/os/Handler;

    move-result-object p2

    const/16 v0, 0x9

    iget-object v1, p0, Lv3/c0;->d:Lv3/b;

    invoke-static {p2, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    iget-object v0, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {v0}, Lv3/f;->C(Lv3/f;)J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_8
    iget-object p2, p0, Lv3/c0;->d:Lv3/b;

    invoke-static {p2, p1}, Lv3/f;->g(Lv3/b;Lt3/b;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lv3/c0;->i(Lcom/google/android/gms/common/api/Status;)V

    :cond_9
    return-void

    :cond_a
    iget-object p2, p0, Lv3/c0;->d:Lv3/b;

    invoke-static {p2, p1}, Lv3/f;->g(Lv3/b;Lt3/b;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lv3/c0;->i(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final q(Lv3/b1;)V
    .locals 1

    iget-object v0, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {v0}, Lv3/f;->A(Lv3/f;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lx3/q;->d(Landroid/os/Handler;)V

    iget-object v0, p0, Lv3/c0;->b:Lu3/a$f;

    invoke-interface {v0}, Lu3/a$f;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lv3/c0;->f(Lv3/b1;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lv3/c0;->k()V

    return-void

    :cond_0
    iget-object v0, p0, Lv3/c0;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object v0, p0, Lv3/c0;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lv3/c0;->v:Lt3/b;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lt3/b;->a1()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lv3/c0;->v:Lt3/b;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lv3/c0;->p(Lt3/b;Ljava/lang/Exception;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lv3/c0;->z()V

    return-void
.end method

.method public final r()V
    .locals 6

    iget-object v0, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {v0}, Lv3/f;->A(Lv3/f;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lx3/q;->d(Landroid/os/Handler;)V

    sget-object v0, Lv3/f;->C:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lv3/c0;->i(Lcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Lv3/c0;->k:Lv3/s;

    invoke-virtual {v0}, Lv3/s;->d()V

    iget-object v0, p0, Lv3/c0;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lv3/i;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lv3/i;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    new-instance v4, Lv3/a1;

    new-instance v5, Lj5/j;

    invoke-direct {v5}, Lj5/j;-><init>()V

    invoke-direct {v4, v3, v5}, Lv3/a1;-><init>(Lv3/i;Lj5/j;)V

    invoke-virtual {p0, v4}, Lv3/c0;->q(Lv3/b1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lt3/b;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lt3/b;-><init>(I)V

    invoke-virtual {p0, v0}, Lv3/c0;->m(Lt3/b;)V

    iget-object v0, p0, Lv3/c0;->b:Lu3/a$f;

    invoke-interface {v0}, Lu3/a$f;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lv3/c0;->b:Lu3/a$f;

    new-instance v1, Lv3/b0;

    invoke-direct {v1, p0}, Lv3/b0;-><init>(Lv3/c0;)V

    invoke-interface {v0, v1}, Lu3/a$f;->f(Lx3/c$e;)V

    :cond_1
    return-void
.end method

.method public final s()Lu3/a$f;
    .locals 1

    iget-object v0, p0, Lv3/c0;->b:Lu3/a$f;

    return-object v0
.end method

.method public final t()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lv3/i<",
            "*>;",
            "Lv3/p0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lv3/c0;->q:Ljava/util/Map;

    return-object v0
.end method

.method public final t0(Lt3/b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lv3/c0;->p(Lt3/b;Ljava/lang/Exception;)V

    return-void
.end method

.method public final u()V
    .locals 1

    iget-object v0, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {v0}, Lv3/f;->A(Lv3/f;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lx3/q;->d(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lv3/c0;->v:Lt3/b;

    return-void
.end method

.method public final v()Lt3/b;
    .locals 1

    iget-object v0, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {v0}, Lv3/f;->A(Lv3/f;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lx3/q;->d(Landroid/os/Handler;)V

    iget-object v0, p0, Lv3/c0;->v:Lt3/b;

    return-object v0
.end method

.method public final w()V
    .locals 1

    iget-object v0, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {v0}, Lv3/f;->A(Lv3/f;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lx3/q;->d(Landroid/os/Handler;)V

    iget-boolean v0, p0, Lv3/c0;->t:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lv3/c0;->z()V

    :cond_0
    return-void
.end method

.method public final x()V
    .locals 3

    iget-object v0, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {v0}, Lv3/f;->A(Lv3/f;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lx3/q;->d(Landroid/os/Handler;)V

    iget-boolean v0, p0, Lv3/c0;->t:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lv3/c0;->j()V

    iget-object v0, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {v0}, Lv3/f;->e(Lv3/f;)Lt3/g;

    move-result-object v0

    iget-object v1, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {v1}, Lv3/f;->B(Lv3/f;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lt3/g;->g(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x15

    const-string v2, "Connection timed out waiting for Google Play services update to complete."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x16

    const-string v2, "API failed to connect while resuming due to an unknown error."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p0, v0}, Lv3/c0;->i(Lcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Lv3/c0;->b:Lu3/a$f;

    const-string v1, "Timing out connection while resuming."

    invoke-interface {v0, v1}, Lu3/a$f;->b(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final y()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lv3/c0;->l(Z)Z

    move-result v0

    return v0
.end method

.method public final z()V
    .locals 8

    iget-object v0, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {v0}, Lv3/f;->A(Lv3/f;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lx3/q;->d(Landroid/os/Handler;)V

    iget-object v0, p0, Lv3/c0;->b:Lu3/a$f;

    invoke-interface {v0}, Lu3/a$f;->isConnected()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lv3/c0;->b:Lu3/a$f;

    invoke-interface {v0}, Lu3/a$f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0xa

    :try_start_0
    iget-object v1, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {v1}, Lv3/f;->E(Lv3/f;)Lx3/h0;

    move-result-object v1

    iget-object v2, p0, Lv3/c0;->x:Lv3/f;

    invoke-static {v2}, Lv3/f;->B(Lv3/f;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lv3/c0;->b:Lu3/a$f;

    invoke-virtual {v1, v2, v3}, Lx3/h0;->a(Landroid/content/Context;Lu3/a$f;)I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v2, Lt3/b;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lt3/b;-><init>(ILandroid/app/PendingIntent;)V

    const-string v1, "GoogleApiManager"

    iget-object v4, p0, Lv3/c0;->b:Lu3/a$f;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x23

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "The service for "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not available: "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2, v3}, Lv3/c0;->p(Lt3/b;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :cond_1
    new-instance v1, Lv3/f0;

    iget-object v2, p0, Lv3/c0;->x:Lv3/f;

    iget-object v3, p0, Lv3/c0;->b:Lu3/a$f;

    iget-object v4, p0, Lv3/c0;->d:Lv3/b;

    invoke-direct {v1, v2, v3, v4}, Lv3/f0;-><init>(Lv3/f;Lu3/a$f;Lv3/b;)V

    iget-object v2, p0, Lv3/c0;->b:Lu3/a$f;

    invoke-interface {v2}, Lu3/a$f;->n()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lv3/c0;->s:Lv3/t0;

    invoke-static {v2}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv3/t0;

    invoke-virtual {v2, v1}, Lv3/t0;->b2(Lv3/s0;)V

    :cond_2
    :try_start_1
    iget-object v2, p0, Lv3/c0;->b:Lu3/a$f;

    invoke-interface {v2, v1}, Lu3/a$f;->h(Lx3/c$c;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Lt3/b;

    invoke-direct {v2, v0}, Lt3/b;-><init>(I)V

    invoke-virtual {p0, v2, v1}, Lv3/c0;->p(Lt3/b;Ljava/lang/Exception;)V

    return-void

    :catch_1
    move-exception v1

    new-instance v2, Lt3/b;

    invoke-direct {v2, v0}, Lt3/b;-><init>(I)V

    invoke-virtual {p0, v2, v1}, Lv3/c0;->p(Lt3/b;Ljava/lang/Exception;)V

    :cond_3
    :goto_0
    return-void
.end method
