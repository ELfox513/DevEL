.class public final Lr4/xp0;
.super Lr4/fo0;
.source "SourceFile"

# interfaces
.implements Lr4/uk;
.implements Lr4/ri;
.implements Lr4/hm;
.implements Lr4/ge;
.implements Lr4/uc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/fo0;",
        "Lr4/uk;",
        "Lr4/ri;",
        "Lr4/hm;",
        "Lr4/ge;",
        "Lr4/uc;"
    }
.end annotation


# static fields
.field public static final synthetic H:I


# instance fields
.field public A:J

.field public final B:Ljava/lang/String;

.field public final C:I

.field public final D:Ljava/lang/Object;

.field public final E:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lr4/ok;",
            ">;"
        }
    .end annotation
.end field

.field public volatile F:Lr4/lp0;

.field public final G:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/ref/WeakReference<",
            "Lr4/ip0;",
            ">;>;"
        }
    .end annotation
.end field

.field public final d:Landroid/content/Context;

.field public final k:Lr4/mp0;

.field public final p:Lr4/nd;

.field public final q:Lr4/nd;

.field public final r:Lr4/wj;

.field public final s:Lr4/oo0;

.field public t:Lr4/yc;

.field public u:Ljava/nio/ByteBuffer;

.field public v:Z

.field public final w:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lr4/po0;",
            ">;"
        }
    .end annotation
.end field

.field public x:Lr4/eo0;

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr4/oo0;Lr4/po0;)V
    .locals 11

    invoke-direct {p0}, Lr4/fo0;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lr4/xp0;->D:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lr4/xp0;->G:Ljava/util/Set;

    iput-object p1, p0, Lr4/xp0;->d:Landroid/content/Context;

    iput-object p2, p0, Lr4/xp0;->s:Lr4/oo0;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lr4/xp0;->w:Ljava/lang/ref/WeakReference;

    new-instance p2, Lr4/mp0;

    invoke-direct {p2}, Lr4/mp0;-><init>()V

    iput-object p2, p0, Lr4/xp0;->k:Lr4/mp0;

    new-instance v8, Lr4/wl;

    sget-object v9, Lr4/oh;->a:Lr4/oh;

    sget-object v10, Lb3/k2;->i:Lr4/c03;

    const-wide/16 v3, 0x0

    const/4 v7, -0x1

    move-object v0, v8

    move-object v1, p1

    move-object v2, v9

    move-object v5, v10

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Lr4/wl;-><init>(Landroid/content/Context;Lr4/oh;JLandroid/os/Handler;Lr4/hm;I)V

    iput-object v8, p0, Lr4/xp0;->p:Lr4/nd;

    new-instance p1, Lr4/xe;

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p1

    move-object v1, v9

    move-object v4, v10

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lr4/xe;-><init>(Lr4/oh;Lr4/mf;ZLandroid/os/Handler;Lr4/ge;)V

    iput-object p1, p0, Lr4/xp0;->q:Lr4/nd;

    new-instance v0, Lr4/sj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lr4/sj;-><init>(Lr4/xj;)V

    iput-object v0, p0, Lr4/xp0;->r:Lr4/wj;

    invoke-static {}, Lb3/w1;->m()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ForkedExoPlayerAdapter initialize "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lb3/w1;->k(Ljava/lang/String;)V

    :cond_0
    sget-object v2, Lr4/fo0;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const/4 v2, 0x2

    new-array v2, v2, [Lr4/nd;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v8, v2, p1

    invoke-static {v2, v0, p2}, Lr4/zc;->a([Lr4/nd;Lr4/ak;Lr4/mp0;)Lr4/yc;

    move-result-object p1

    iput-object p1, p0, Lr4/xp0;->t:Lr4/yc;

    invoke-interface {p1, p0}, Lr4/yc;->e(Lr4/uc;)V

    iput v3, p0, Lr4/xp0;->y:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lr4/xp0;->A:J

    iput v3, p0, Lr4/xp0;->z:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lr4/xp0;->E:Ljava/util/ArrayList;

    iput-object v1, p0, Lr4/xp0;->F:Lr4/lp0;

    if-eqz p3, :cond_1

    invoke-interface {p3}, Lr4/po0;->p()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p3}, Lr4/po0;->p()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lr4/xp0;->B:Ljava/lang/String;

    if-eqz p3, :cond_2

    invoke-interface {p3}, Lr4/po0;->o()I

    move-result v3

    :cond_2
    iput v3, p0, Lr4/xp0;->C:I

    sget-object p1, Lr4/rz;->n:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object p2

    invoke-virtual {p2, p1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lr4/xp0;->t:Lr4/yc;

    invoke-interface {p1}, Lr4/yc;->q()V

    :cond_3
    if-eqz p3, :cond_4

    invoke-interface {p3}, Lr4/po0;->L()I

    move-result p1

    if-lez p1, :cond_4

    iget-object p1, p0, Lr4/xp0;->t:Lr4/yc;

    invoke-interface {p3}, Lr4/po0;->L()I

    move-result p2

    invoke-interface {p1, p2}, Lr4/yc;->a(I)V

    :cond_4
    if-eqz p3, :cond_5

    invoke-interface {p3}, Lr4/po0;->N()I

    move-result p1

    if-lez p1, :cond_5

    iget-object p1, p0, Lr4/xp0;->t:Lr4/yc;

    invoke-interface {p3}, Lr4/po0;->N()I

    move-result p2

    invoke-interface {p1, p2}, Lr4/yc;->g(I)V

    :cond_5
    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 1

    iget-object v0, p0, Lr4/xp0;->t:Lr4/yc;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final B()I
    .locals 1

    iget-object v0, p0, Lr4/xp0;->t:Lr4/yc;

    invoke-interface {v0}, Lr4/yc;->b()I

    move-result v0

    return v0
.end method

.method public final C()J
    .locals 2

    iget-object v0, p0, Lr4/xp0;->t:Lr4/yc;

    invoke-interface {v0}, Lr4/yc;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public final D()Z
    .locals 1

    iget-object v0, p0, Lr4/xp0;->t:Lr4/yc;

    invoke-interface {v0}, Lr4/yc;->d()Z

    move-result v0

    return v0
.end method

.method public final E(Z)V
    .locals 1

    iget-object v0, p0, Lr4/xp0;->t:Lr4/yc;

    invoke-interface {v0, p1}, Lr4/yc;->c(Z)V

    return-void
.end method

.method public final F(I)V
    .locals 1

    iget-object v0, p0, Lr4/xp0;->k:Lr4/mp0;

    invoke-virtual {v0, p1}, Lr4/mp0;->g(I)V

    return-void
.end method

.method public final G(I)V
    .locals 1

    iget-object v0, p0, Lr4/xp0;->k:Lr4/mp0;

    invoke-virtual {v0, p1}, Lr4/mp0;->h(I)V

    return-void
.end method

.method public final H()J
    .locals 2

    iget-object v0, p0, Lr4/xp0;->t:Lr4/yc;

    invoke-interface {v0}, Lr4/yc;->k()J

    move-result-wide v0

    return-wide v0
.end method

.method public final I()J
    .locals 2

    invoke-virtual {p0}, Lr4/xp0;->j0()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lr4/xp0;->y:I

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final J()J
    .locals 4

    invoke-virtual {p0}, Lr4/xp0;->j0()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iget-object v0, p0, Lr4/xp0;->F:Lr4/lp0;

    invoke-virtual {v0}, Lr4/lp0;->h()Z

    move-result v0

    if-nez v0, :cond_1

    return-wide v1

    :cond_1
    iget v0, p0, Lr4/xp0;->y:I

    int-to-long v0, v0

    iget-object v2, p0, Lr4/xp0;->F:Lr4/lp0;

    invoke-virtual {v2}, Lr4/lp0;->j()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final K()J
    .locals 10

    invoke-virtual {p0}, Lr4/xp0;->j0()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lr4/xp0;->D:Ljava/lang/Object;

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lr4/xp0;->E:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-wide v1, p0, Lr4/xp0;->A:J

    iget-object v3, p0, Lr4/xp0;->E:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr4/ok;

    invoke-interface {v3}, Lr4/ok;->c()Ljava/util/Map;

    move-result-object v3

    const-wide/16 v5, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :catch_0
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_0

    :try_start_1
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    const-string v8, "content-length"

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v8, v9}, Lr4/h03;->e(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    add-long/2addr v1, v5

    :try_start_2
    iput-wide v1, p0, Lr4/xp0;->A:J

    goto :goto_0

    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-wide v0, p0, Lr4/xp0;->A:J

    return-wide v0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_3
    iget-object v0, p0, Lr4/xp0;->F:Lr4/lp0;

    invoke-virtual {v0}, Lr4/lp0;->k()J

    move-result-wide v0

    return-wide v0
.end method

.method public final L()I
    .locals 1

    iget v0, p0, Lr4/xp0;->z:I

    return v0
.end method

.method public final M(Z)V
    .locals 3

    iget-object v0, p0, Lr4/xp0;->t:Lr4/yc;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lr4/xp0;->r:Lr4/wj;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v0, v2}, Lr4/wj;->f(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final N()J
    .locals 2

    iget-object v0, p0, Lr4/xp0;->t:Lr4/yc;

    invoke-interface {v0}, Lr4/yc;->p()J

    move-result-wide v0

    return-wide v0
.end method

.method public final O()J
    .locals 2

    iget v0, p0, Lr4/xp0;->y:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final R([Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1, v0}, Lr4/xp0;->S([Landroid/net/Uri;Ljava/lang/String;Ljava/nio/ByteBuffer;Z)V

    return-void
.end method

.method public final S([Landroid/net/Uri;Ljava/lang/String;Ljava/nio/ByteBuffer;Z)V
    .locals 1

    iget-object v0, p0, Lr4/xp0;->t:Lr4/yc;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p3, p0, Lr4/xp0;->u:Ljava/nio/ByteBuffer;

    iput-boolean p4, p0, Lr4/xp0;->v:Z

    array-length p3, p1

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    aget-object p1, p1, p4

    invoke-virtual {p0, p1, p2}, Lr4/xp0;->e0(Landroid/net/Uri;Ljava/lang/String;)Lr4/wi;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-array p3, p3, [Lr4/wi;

    :goto_0
    array-length v0, p1

    if-ge p4, v0, :cond_2

    aget-object v0, p1, p4

    invoke-virtual {p0, v0, p2}, Lr4/xp0;->e0(Landroid/net/Uri;Ljava/lang/String;)Lr4/wi;

    move-result-object v0

    aput-object v0, p3, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Lr4/aj;

    invoke-direct {p1, p3}, Lr4/aj;-><init>([Lr4/wi;)V

    :goto_1
    iget-object p2, p0, Lr4/xp0;->t:Lr4/yc;

    invoke-interface {p2, p1}, Lr4/yc;->n(Lr4/wi;)V

    sget-object p1, Lr4/fo0;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public final T(Lr4/eo0;)V
    .locals 0

    iput-object p1, p0, Lr4/xp0;->x:Lr4/eo0;

    return-void
.end method

.method public final U()V
    .locals 1

    iget-object v0, p0, Lr4/xp0;->t:Lr4/yc;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lr4/yc;->i(Lr4/uc;)V

    iget-object v0, p0, Lr4/xp0;->t:Lr4/yc;

    invoke-interface {v0}, Lr4/yc;->j()V

    const/4 v0, 0x0

    iput-object v0, p0, Lr4/xp0;->t:Lr4/yc;

    sget-object v0, Lr4/fo0;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_0
    return-void
.end method

.method public final V(Landroid/view/Surface;Z)V
    .locals 3

    iget-object v0, p0, Lr4/xp0;->t:Lr4/yc;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lr4/xc;

    iget-object v1, p0, Lr4/xp0;->p:Lr4/nd;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lr4/xc;-><init>(Lr4/wc;ILjava/lang/Object;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lr4/xp0;->t:Lr4/yc;

    new-array v1, v2, [Lr4/xc;

    aput-object v0, v1, p1

    invoke-interface {p2, v1}, Lr4/yc;->h([Lr4/xc;)V

    return-void

    :cond_1
    iget-object p2, p0, Lr4/xp0;->t:Lr4/yc;

    new-array v1, v2, [Lr4/xc;

    aput-object v0, v1, p1

    invoke-interface {p2, v1}, Lr4/yc;->o([Lr4/xc;)V

    return-void
.end method

.method public final W(FZ)V
    .locals 3

    iget-object v0, p0, Lr4/xp0;->t:Lr4/yc;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lr4/xc;

    iget-object v1, p0, Lr4/xp0;->q:Lr4/nd;

    const/4 v2, 0x2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lr4/xc;-><init>(Lr4/wc;ILjava/lang/Object;)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    iget-object p2, p0, Lr4/xp0;->t:Lr4/yc;

    new-array v1, v1, [Lr4/xc;

    aput-object v0, v1, p1

    invoke-interface {p2, v1}, Lr4/yc;->h([Lr4/xc;)V

    return-void

    :cond_1
    iget-object p2, p0, Lr4/xp0;->t:Lr4/yc;

    new-array v1, v1, [Lr4/xc;

    aput-object v0, v1, p1

    invoke-interface {p2, v1}, Lr4/yc;->o([Lr4/xc;)V

    return-void
.end method

.method public final X()V
    .locals 1

    iget-object v0, p0, Lr4/xp0;->t:Lr4/yc;

    invoke-interface {v0}, Lr4/yc;->f()V

    return-void
.end method

.method public final Y(J)V
    .locals 1

    iget-object v0, p0, Lr4/xp0;->t:Lr4/yc;

    invoke-interface {v0, p1, p2}, Lr4/yc;->m(J)V

    return-void
.end method

.method public final Z(I)V
    .locals 1

    iget-object v0, p0, Lr4/xp0;->k:Lr4/mp0;

    invoke-virtual {v0, p1}, Lr4/mp0;->i(I)V

    return-void
.end method

.method public final a0(I)V
    .locals 1

    iget-object v0, p0, Lr4/xp0;->k:Lr4/mp0;

    invoke-virtual {v0, p1}, Lr4/mp0;->j(I)V

    return-void
.end method

.method public final b0(I)V
    .locals 2

    iget-object v0, p0, Lr4/xp0;->G:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/ip0;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lr4/ip0;->g(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c(Ljava/io/IOException;)V
    .locals 2

    iget-object v0, p0, Lr4/xp0;->x:Lr4/eo0;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lr4/xp0;->s:Lr4/oo0;

    iget-boolean v1, v1, Lr4/oo0;->l:Z

    if-eqz v1, :cond_0

    const-string v1, "onLoadException"

    invoke-interface {v0, v1, p1}, Lr4/eo0;->c(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    :cond_0
    const-string v1, "onLoadError"

    invoke-interface {v0, v1, p1}, Lr4/eo0;->d(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public final c0(Lr4/fk;Lr4/ik;)V
    .locals 2

    instance-of p2, p1, Lr4/ok;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lr4/xp0;->D:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lr4/xp0;->E:Ljava/util/ArrayList;

    check-cast p1, Lr4/ok;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    instance-of p2, p1, Lr4/lp0;

    if-eqz p2, :cond_1

    check-cast p1, Lr4/lp0;

    iput-object p1, p0, Lr4/xp0;->F:Lr4/lp0;

    iget-object p1, p0, Lr4/xp0;->w:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/po0;

    sget-object p2, Lr4/rz;->l1:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v0

    invoke-virtual {v0, p2}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lr4/xp0;->F:Lr4/lp0;

    invoke-virtual {p2}, Lr4/lp0;->f()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "gcacheHit"

    iget-object v1, p0, Lr4/xp0;->F:Lr4/lp0;

    invoke-virtual {v1}, Lr4/lp0;->h()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "gcacheDownloaded"

    iget-object v1, p0, Lr4/xp0;->F:Lr4/lp0;

    invoke-virtual {v1}, Lr4/lp0;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lb3/k2;->i:Lr4/c03;

    new-instance v1, Lr4/np0;

    invoke-direct {v1, p1, p2}, Lr4/np0;-><init>(Lr4/po0;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final d0(Lr4/fk;I)V
    .locals 0

    iget p1, p0, Lr4/xp0;->y:I

    add-int/2addr p1, p2

    iput p1, p0, Lr4/xp0;->y:I

    return-void
.end method

.method public final e(Lr4/id;)V
    .locals 4

    iget-object v0, p0, Lr4/xp0;->w:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/po0;

    sget-object v1, Lr4/rz;->l1:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v2

    invoke-virtual {v2, v1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p1, Lr4/id;->p:Ljava/lang/String;

    const-string v3, "audioMime"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lr4/id;->q:Ljava/lang/String;

    const-string v3, "audioSampleMime"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lr4/id;->d:Ljava/lang/String;

    const-string v2, "audioCodec"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onMetadataEvent"

    invoke-interface {v0, p1, v1}, Lr4/e80;->H0(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final e0(Landroid/net/Uri;Ljava/lang/String;)Lr4/wi;
    .locals 10

    new-instance v9, Lr4/si;

    iget-boolean v0, p0, Lr4/xp0;->v:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr4/xp0;->u:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    if-lez v0, :cond_1

    iget-object p2, p0, Lr4/xp0;->u:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result p2

    new-array p2, p2, [B

    iget-object v0, p0, Lr4/xp0;->u:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v0, Lr4/pp0;

    invoke-direct {v0, p2}, Lr4/pp0;-><init>([B)V

    :cond_0
    move-object v2, v0

    goto :goto_2

    :cond_1
    sget-object v0, Lr4/rz;->q1:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    sget-object v0, Lr4/rz;->l1:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v2

    invoke-virtual {v2, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Lr4/xp0;->s:Lr4/oo0;

    iget-boolean v0, v0, Lr4/oo0;->j:Z

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_0
    iget-object v0, p0, Lr4/xp0;->s:Lr4/oo0;

    iget v0, v0, Lr4/oo0;->i:I

    if-lez v0, :cond_5

    new-instance v0, Lr4/qp0;

    invoke-direct {v0, p0, p2, v1}, Lr4/qp0;-><init>(Lr4/xp0;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_5
    new-instance v0, Lr4/rp0;

    invoke-direct {v0, p0, p2, v1}, Lr4/rp0;-><init>(Lr4/xp0;Ljava/lang/String;Z)V

    :goto_1
    iget-object p2, p0, Lr4/xp0;->s:Lr4/oo0;

    iget-boolean p2, p2, Lr4/oo0;->j:Z

    if-eqz p2, :cond_6

    new-instance p2, Lr4/sp0;

    invoke-direct {p2, p0, v0}, Lr4/sp0;-><init>(Lr4/xp0;Lr4/ek;)V

    move-object v0, p2

    :cond_6
    iget-object p2, p0, Lr4/xp0;->u:Ljava/nio/ByteBuffer;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result p2

    if-lez p2, :cond_0

    iget-object p2, p0, Lr4/xp0;->u:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result p2

    new-array p2, p2, [B

    iget-object v1, p0, Lr4/xp0;->u:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v1, Lr4/tp0;

    invoke-direct {v1, v0, p2}, Lr4/tp0;-><init>(Lr4/ek;[B)V

    move-object v2, v1

    :goto_2
    sget-object p2, Lr4/rz;->m:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v0

    invoke-virtual {v0, p2}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_7

    sget-object p2, Lr4/up0;->a:Lr4/rf;

    goto :goto_3

    :cond_7
    sget-object p2, Lr4/vp0;->a:Lr4/rf;

    :goto_3
    move-object v3, p2

    iget-object p2, p0, Lr4/xp0;->s:Lr4/oo0;

    iget v4, p2, Lr4/oo0;->k:I

    sget-object v5, Lb3/k2;->i:Lr4/c03;

    const/4 v7, 0x0

    iget v8, p2, Lr4/oo0;->g:I

    move-object v0, v9

    move-object v1, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v8}, Lr4/si;-><init>(Landroid/net/Uri;Lr4/ek;Lr4/rf;ILandroid/os/Handler;Lr4/ri;Ljava/lang/String;I)V

    return-object v9
.end method

.method public final synthetic f0(Lr4/ek;)Lr4/fk;
    .locals 8

    new-instance v7, Lr4/lp0;

    iget-object v1, p0, Lr4/xp0;->d:Landroid/content/Context;

    invoke-interface {p1}, Lr4/ek;->zza()Lr4/fk;

    move-result-object v2

    iget-object v3, p0, Lr4/xp0;->B:Ljava/lang/String;

    iget v4, p0, Lr4/xp0;->C:I

    new-instance v6, Lr4/wp0;

    invoke-direct {v6, p0}, Lr4/wp0;-><init>(Lr4/xp0;)V

    move-object v0, v7

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lr4/lp0;-><init>(Landroid/content/Context;Lr4/fk;Ljava/lang/String;ILr4/uk;Lr4/kp0;)V

    return-object v7
.end method

.method public final finalize()V
    .locals 2

    sget-object v0, Lr4/fo0;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-static {}, Lb3/w1;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ForkedExoPlayerAdapter finalize "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb3/w1;->k(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final g(Landroid/view/Surface;)V
    .locals 0

    iget-object p1, p0, Lr4/xp0;->x:Lr4/eo0;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lr4/eo0;->y()V

    :cond_0
    return-void
.end method

.method public final synthetic g0(ZJ)V
    .locals 1

    iget-object v0, p0, Lr4/xp0;->x:Lr4/eo0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lr4/eo0;->a(ZJ)V

    :cond_0
    return-void
.end method

.method public final synthetic h0(Ljava/lang/String;Z)Lr4/fk;
    .locals 8

    const/4 v0, 0x1

    if-eq v0, p2, :cond_0

    const/4 p2, 0x0

    move-object v3, p2

    goto :goto_0

    :cond_0
    move-object v3, p0

    :goto_0
    new-instance p2, Lr4/kk;

    iget-object v0, p0, Lr4/xp0;->s:Lr4/oo0;

    const/4 v2, 0x0

    iget v4, v0, Lr4/oo0;->d:I

    iget v5, v0, Lr4/oo0;->f:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lr4/kk;-><init>(Ljava/lang/String;Lr4/fl;Lr4/uk;IIZLr4/nk;)V

    return-object p2
.end method

.method public final synthetic i0(Ljava/lang/String;Z)Lr4/fk;
    .locals 6

    const/4 v0, 0x1

    if-eq v0, p2, :cond_0

    const/4 p2, 0x0

    move-object v2, p2

    goto :goto_0

    :cond_0
    move-object v2, p0

    :goto_0
    new-instance p2, Lr4/ip0;

    iget-object v0, p0, Lr4/xp0;->s:Lr4/oo0;

    iget v3, v0, Lr4/oo0;->d:I

    iget v4, v0, Lr4/oo0;->f:I

    iget v5, v0, Lr4/oo0;->i:I

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lr4/ip0;-><init>(Ljava/lang/String;Lr4/uk;III)V

    iget-object p1, p0, Lr4/xp0;->G:Ljava/util/Set;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method public final j(IIIF)V
    .locals 0

    iget-object p3, p0, Lr4/xp0;->x:Lr4/eo0;

    if-eqz p3, :cond_0

    invoke-interface {p3, p1, p2}, Lr4/eo0;->b(II)V

    :cond_0
    return-void
.end method

.method public final j0()Z
    .locals 1

    iget-object v0, p0, Lr4/xp0;->F:Lr4/lp0;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/xp0;->F:Lr4/lp0;

    invoke-virtual {v0}, Lr4/lp0;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic l(Ljava/lang/Object;Lr4/ik;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lr4/xp0;->c0(Lr4/fk;Lr4/ik;)V

    return-void
.end method

.method public final m(Lr4/tc;)V
    .locals 2

    iget-object v0, p0, Lr4/xp0;->x:Lr4/eo0;

    if-eqz v0, :cond_0

    const-string v1, "onPlayerError"

    invoke-interface {v0, v1, p1}, Lr4/eo0;->d(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public final o(Lr4/id;)V
    .locals 6

    iget-object v0, p0, Lr4/xp0;->w:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/po0;

    sget-object v1, Lr4/rz;->l1:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v2

    invoke-virtual {v2, v1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget v2, p1, Lr4/id;->w:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "frameRate"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p1, Lr4/id;->b:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "bitRate"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p1, Lr4/id;->u:I

    iget v3, p1, Lr4/id;->v:I

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x17

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "resolution"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lr4/id;->p:Ljava/lang/String;

    const-string v3, "videoMime"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lr4/id;->q:Ljava/lang/String;

    const-string v3, "videoSampleMime"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lr4/id;->d:Ljava/lang/String;

    const-string v2, "videoCodec"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onMetadataEvent"

    invoke-interface {v0, p1, v1}, Lr4/e80;->H0(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final o0(Z)V
    .locals 0

    return-void
.end method

.method public final r(Lr4/mj;Lr4/yj;)V
    .locals 0

    return-void
.end method

.method public final t(ZI)V
    .locals 0

    iget-object p1, p0, Lr4/xp0;->x:Lr4/eo0;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lr4/eo0;->x(I)V

    :cond_0
    return-void
.end method

.method public final v(Lr4/td;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic w(Ljava/lang/Object;I)V
    .locals 0

    iget p1, p0, Lr4/xp0;->y:I

    add-int/2addr p1, p2

    iput p1, p0, Lr4/xp0;->y:I

    return-void
.end method

.method public final x(IJ)V
    .locals 0

    iget p2, p0, Lr4/xp0;->z:I

    add-int/2addr p2, p1

    iput p2, p0, Lr4/xp0;->z:I

    return-void
.end method

.method public final z(Lr4/md;)V
    .locals 0

    return-void
.end method
