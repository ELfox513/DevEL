.class public final Lr4/sr0;
.super Lr4/fo0;
.source "SourceFile"

# interfaces
.implements Lr4/ho;
.implements Lr4/f61;


# static fields
.field public static final synthetic G:I


# instance fields
.field public final A:Ljava/lang/String;

.field public final B:I

.field public final C:Ljava/lang/Object;

.field public final D:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lr4/jm;",
            ">;"
        }
    .end annotation
.end field

.field public volatile E:Lr4/fr0;

.field public final F:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/ref/WeakReference<",
            "Lr4/br0;",
            ">;>;"
        }
    .end annotation
.end field

.field public final d:Landroid/content/Context;

.field public final k:Lr4/cr0;

.field public final p:Lr4/uv3;

.field public final q:Lr4/oo0;

.field public final r:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lr4/po0;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Lr4/ku3;

.field public t:Lr4/q7;

.field public u:Ljava/nio/ByteBuffer;

.field public v:Z

.field public w:Lr4/eo0;

.field public x:I

.field public y:I

.field public z:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr4/oo0;Lr4/po0;)V
    .locals 4

    invoke-direct {p0}, Lr4/fo0;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lr4/sr0;->C:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lr4/sr0;->F:Ljava/util/Set;

    iput-object p1, p0, Lr4/sr0;->d:Landroid/content/Context;

    iput-object p2, p0, Lr4/sr0;->q:Lr4/oo0;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lr4/sr0;->r:Ljava/lang/ref/WeakReference;

    new-instance v0, Lr4/cr0;

    invoke-direct {v0}, Lr4/cr0;-><init>()V

    iput-object v0, p0, Lr4/sr0;->k:Lr4/cr0;

    new-instance v1, Lr4/uv3;

    invoke-direct {v1, p1}, Lr4/uv3;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lr4/sr0;->p:Lr4/uv3;

    invoke-static {}, Lb3/w1;->m()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OfficialSimpleExoPlayerAdapter initialize "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lb3/w1;->k(Ljava/lang/String;)V

    :cond_0
    sget-object v2, Lr4/fo0;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    new-instance v2, Lr4/q3;

    new-instance v3, Lr4/nr0;

    invoke-direct {v3, p0}, Lr4/nr0;-><init>(Lr4/sr0;)V

    invoke-direct {v2, p1, v3}, Lr4/q3;-><init>(Landroid/content/Context;Lr4/j7;)V

    invoke-virtual {v2, v1}, Lr4/q3;->a(Lr4/aw3;)Lr4/q3;

    invoke-virtual {v2, v0}, Lr4/q3;->b(Lr4/h5;)Lr4/q3;

    invoke-virtual {v2}, Lr4/q3;->c()Lr4/q7;

    move-result-object v0

    iput-object v0, p0, Lr4/sr0;->t:Lr4/q7;

    sget-object v0, Lr4/rz;->o1:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lr4/sr0;->t:Lr4/q7;

    invoke-virtual {v0, v1}, Lr4/q7;->w(Z)V

    :cond_1
    iget-object v0, p0, Lr4/sr0;->t:Lr4/q7;

    invoke-virtual {v0, p0}, Lr4/q7;->h(Lr4/f61;)V

    iput v1, p0, Lr4/sr0;->x:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lr4/sr0;->z:J

    iput v1, p0, Lr4/sr0;->y:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lr4/sr0;->D:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lr4/sr0;->E:Lr4/fr0;

    if-eqz p3, :cond_2

    invoke-interface {p3}, Lr4/po0;->p()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Lr4/po0;->p()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lr4/sr0;->A:Ljava/lang/String;

    if-eqz p3, :cond_3

    invoke-interface {p3}, Lr4/po0;->o()I

    move-result v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lr4/sr0;->B:I

    new-instance v0, Lr4/ku3;

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    move-result-object v2

    invoke-interface {p3}, Lr4/po0;->n()Lr4/im0;

    move-result-object p3

    iget-object p3, p3, Lr4/im0;->a:Ljava/lang/String;

    invoke-virtual {v2, p1, p3}, Lb3/k2;->P(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-boolean p3, p0, Lr4/sr0;->v:Z

    if-eqz p3, :cond_4

    iget-object p3, p0, Lr4/sr0;->u:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/Buffer;->limit()I

    move-result p3

    if-lez p3, :cond_4

    iget-object p1, p0, Lr4/sr0;->u:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    new-array p1, p1, [B

    iget-object p2, p0, Lr4/sr0;->u:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance p2, Lr4/ir0;

    invoke-direct {p2, p1}, Lr4/ir0;-><init>([B)V

    goto :goto_4

    :cond_4
    sget-object p3, Lr4/rz;->q1:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v2

    invoke-virtual {v2, p3}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 v2, 0x1

    if-eqz p3, :cond_5

    sget-object p3, Lr4/rz;->l1:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v3

    invoke-virtual {v3, p3}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_6

    :cond_5
    iget-boolean p3, p2, Lr4/oo0;->j:Z

    if-nez p3, :cond_7

    :cond_6
    const/4 v1, 0x1

    :cond_7
    iget p3, p2, Lr4/oo0;->i:I

    if-lez p3, :cond_8

    new-instance p3, Lr4/jr0;

    invoke-direct {p3, p0, p1, v1}, Lr4/jr0;-><init>(Lr4/sr0;Ljava/lang/String;Z)V

    goto :goto_2

    :cond_8
    new-instance p3, Lr4/kr0;

    invoke-direct {p3, p0, p1, v1}, Lr4/kr0;-><init>(Lr4/sr0;Ljava/lang/String;Z)V

    :goto_2
    iget-boolean p1, p2, Lr4/oo0;->j:Z

    if-eqz p1, :cond_9

    new-instance p1, Lr4/lr0;

    invoke-direct {p1, p0, p3}, Lr4/lr0;-><init>(Lr4/sr0;Lr4/l7;)V

    move-object p2, p1

    goto :goto_3

    :cond_9
    move-object p2, p3

    :goto_3
    iget-object p1, p0, Lr4/sr0;->u:Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    if-lez p1, :cond_a

    iget-object p1, p0, Lr4/sr0;->u:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    new-array p1, p1, [B

    iget-object p3, p0, Lr4/sr0;->u:Ljava/nio/ByteBuffer;

    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance p3, Lr4/mr0;

    invoke-direct {p3, p2, p1}, Lr4/mr0;-><init>(Lr4/l7;[B)V

    move-object p2, p3

    :cond_a
    :goto_4
    sget-object p1, Lr4/rz;->m:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object p3

    invoke-virtual {p3, p1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_b

    sget-object p1, Lr4/or0;->a:Lr4/g04;

    goto :goto_5

    :cond_b
    sget-object p1, Lr4/pr0;->a:Lr4/g04;

    :goto_5
    invoke-direct {v0, p2, p1}, Lr4/ku3;-><init>(Lr4/l7;Lr4/g04;)V

    iput-object v0, p0, Lr4/sr0;->s:Lr4/ku3;

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 1

    iget-object v0, p0, Lr4/sr0;->t:Lr4/q7;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final B()I
    .locals 1

    iget-object v0, p0, Lr4/sr0;->t:Lr4/q7;

    invoke-virtual {v0}, Lr4/q7;->j()I

    move-result v0

    return v0
.end method

.method public final C()J
    .locals 2

    iget-object v0, p0, Lr4/sr0;->t:Lr4/q7;

    invoke-virtual {v0}, Lr4/q7;->O()J

    move-result-wide v0

    return-wide v0
.end method

.method public final D()Z
    .locals 1

    iget-object v0, p0, Lr4/sr0;->t:Lr4/q7;

    invoke-virtual {v0}, Lr4/q7;->n()Z

    move-result v0

    return v0
.end method

.method public final E(Z)V
    .locals 1

    iget-object v0, p0, Lr4/sr0;->t:Lr4/q7;

    invoke-virtual {v0, p1}, Lr4/q7;->m(Z)V

    return-void
.end method

.method public final F(I)V
    .locals 1

    iget-object v0, p0, Lr4/sr0;->k:Lr4/cr0;

    invoke-virtual {v0, p1}, Lr4/cr0;->i(I)V

    return-void
.end method

.method public final G(I)V
    .locals 1

    iget-object v0, p0, Lr4/sr0;->k:Lr4/cr0;

    invoke-virtual {v0, p1}, Lr4/cr0;->j(I)V

    return-void
.end method

.method public final H()J
    .locals 2

    iget-object v0, p0, Lr4/sr0;->t:Lr4/q7;

    invoke-virtual {v0}, Lr4/q7;->s()J

    move-result-wide v0

    return-wide v0
.end method

.method public final I()J
    .locals 2

    invoke-virtual {p0}, Lr4/sr0;->f0()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lr4/sr0;->x:I

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final J()J
    .locals 4

    invoke-virtual {p0}, Lr4/sr0;->f0()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iget-object v0, p0, Lr4/sr0;->E:Lr4/fr0;

    invoke-virtual {v0}, Lr4/fr0;->v()Z

    move-result v0

    if-nez v0, :cond_1

    return-wide v1

    :cond_1
    iget v0, p0, Lr4/sr0;->x:I

    int-to-long v0, v0

    iget-object v2, p0, Lr4/sr0;->E:Lr4/fr0;

    invoke-virtual {v2}, Lr4/fr0;->q()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final K()J
    .locals 10

    invoke-virtual {p0}, Lr4/sr0;->f0()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lr4/sr0;->C:Ljava/lang/Object;

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lr4/sr0;->D:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-wide v1, p0, Lr4/sr0;->z:J

    iget-object v3, p0, Lr4/sr0;->D:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr4/jm;

    invoke-interface {v3}, Lr4/jm;->d()Ljava/util/Map;

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
    iput-wide v1, p0, Lr4/sr0;->z:J

    goto :goto_0

    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-wide v0, p0, Lr4/sr0;->z:J

    return-wide v0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_3
    iget-object v0, p0, Lr4/sr0;->E:Lr4/fr0;

    invoke-virtual {v0}, Lr4/fr0;->x()J

    move-result-wide v0

    return-wide v0
.end method

.method public final L()I
    .locals 1

    iget v0, p0, Lr4/sr0;->y:I

    return v0
.end method

.method public final M(Z)V
    .locals 4

    iget-object v0, p0, Lr4/sr0;->t:Lr4/q7;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lr4/sr0;->t:Lr4/q7;

    invoke-virtual {v1}, Lr4/q7;->r()I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lr4/sr0;->p:Lr4/uv3;

    invoke-virtual {v1}, Lr4/uv3;->i()Lr4/ov3;

    move-result-object v2

    invoke-virtual {v2}, Lr4/ov3;->g()Lr4/pv3;

    move-result-object v2

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v0, v3}, Lr4/pv3;->s(IZ)Lr4/pv3;

    invoke-virtual {v1, v2}, Lr4/uv3;->j(Lr4/pv3;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final N()J
    .locals 2

    iget-object v0, p0, Lr4/sr0;->t:Lr4/q7;

    invoke-virtual {v0}, Lr4/q7;->u()J

    move-result-wide v0

    return-wide v0
.end method

.method public final O()J
    .locals 2

    iget v0, p0, Lr4/sr0;->x:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final R([Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1, v0}, Lr4/sr0;->S([Landroid/net/Uri;Ljava/lang/String;Ljava/nio/ByteBuffer;Z)V

    return-void
.end method

.method public final S([Landroid/net/Uri;Ljava/lang/String;Ljava/nio/ByteBuffer;Z)V
    .locals 1

    iget-object p2, p0, Lr4/sr0;->t:Lr4/q7;

    if-nez p2, :cond_0

    return-void

    :cond_0
    iput-object p3, p0, Lr4/sr0;->u:Ljava/nio/ByteBuffer;

    iput-boolean p4, p0, Lr4/sr0;->v:Z

    array-length p2, p1

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-ne p2, p3, :cond_1

    aget-object p1, p1, p4

    invoke-virtual {p0, p1}, Lr4/sr0;->g0(Landroid/net/Uri;)Lr4/ht3;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-array p2, p2, [Lr4/ht3;

    const/4 p3, 0x0

    :goto_0
    array-length v0, p1

    if-ge p3, v0, :cond_2

    aget-object v0, p1, p3

    invoke-virtual {p0, v0}, Lr4/sr0;->g0(Landroid/net/Uri;)Lr4/ht3;

    move-result-object v0

    aput-object v0, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Lr4/vt3;

    invoke-direct {p1, p4, p4, p2}, Lr4/vt3;-><init>(ZZ[Lr4/ht3;)V

    :goto_1
    iget-object p2, p0, Lr4/sr0;->t:Lr4/q7;

    invoke-virtual {p2, p1}, Lr4/q7;->l(Lr4/ht3;)V

    iget-object p1, p0, Lr4/sr0;->t:Lr4/q7;

    invoke-virtual {p1}, Lr4/q7;->k()V

    sget-object p1, Lr4/fo0;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public final T(Lr4/eo0;)V
    .locals 0

    iput-object p1, p0, Lr4/sr0;->w:Lr4/eo0;

    return-void
.end method

.method public final U()V
    .locals 1

    iget-object v0, p0, Lr4/sr0;->t:Lr4/q7;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lr4/q7;->i(Lr4/f61;)V

    iget-object v0, p0, Lr4/sr0;->t:Lr4/q7;

    invoke-virtual {v0}, Lr4/q7;->o()V

    const/4 v0, 0x0

    iput-object v0, p0, Lr4/sr0;->t:Lr4/q7;

    sget-object v0, Lr4/fo0;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_0
    return-void
.end method

.method public final V(Landroid/view/Surface;Z)V
    .locals 0

    iget-object p2, p0, Lr4/sr0;->t:Lr4/q7;

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2, p1}, Lr4/q7;->i0(Landroid/view/Surface;)V

    return-void
.end method

.method public final W(FZ)V
    .locals 0

    iget-object p2, p0, Lr4/sr0;->t:Lr4/q7;

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2, p1}, Lr4/q7;->g(F)V

    return-void
.end method

.method public final X()V
    .locals 2

    iget-object v0, p0, Lr4/sr0;->t:Lr4/q7;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lr4/a7;->b(Z)V

    return-void
.end method

.method public final Y(J)V
    .locals 2

    iget-object v0, p0, Lr4/sr0;->t:Lr4/q7;

    invoke-interface {v0}, Lr4/a7;->E()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lr4/a7;->a(IJ)V

    return-void
.end method

.method public final Z(I)V
    .locals 1

    iget-object v0, p0, Lr4/sr0;->k:Lr4/cr0;

    invoke-virtual {v0, p1}, Lr4/cr0;->k(I)V

    return-void
.end method

.method public final a(Lr4/o8;Lr4/vc;Z)V
    .locals 0

    return-void
.end method

.method public final a0(I)V
    .locals 1

    iget-object v0, p0, Lr4/sr0;->k:Lr4/cr0;

    invoke-virtual {v0, p1}, Lr4/cr0;->l(I)V

    return-void
.end method

.method public final b(Lr4/d51;Ljava/lang/Object;J)V
    .locals 0

    iget-object p1, p0, Lr4/sr0;->w:Lr4/eo0;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lr4/eo0;->y()V

    :cond_0
    return-void
.end method

.method public final b0(I)V
    .locals 2

    iget-object v0, p0, Lr4/sr0;->F:Ljava/util/Set;

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

    check-cast v1, Lr4/br0;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lr4/br0;->u(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final synthetic c0(ZJ)V
    .locals 1

    iget-object v0, p0, Lr4/sr0;->w:Lr4/eo0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lr4/eo0;->a(ZJ)V

    :cond_0
    return-void
.end method

.method public final synthetic d0(Ljava/lang/String;Z)Lr4/o8;
    .locals 1

    new-instance v0, Lr4/wd;

    invoke-direct {v0}, Lr4/wd;-><init>()V

    invoke-virtual {v0, p1}, Lr4/wd;->a(Ljava/lang/String;)Lr4/wd;

    const/4 p1, 0x1

    if-eq p1, p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    move-object p2, p0

    :goto_0
    invoke-virtual {v0, p2}, Lr4/wd;->e(Lr4/ho;)Lr4/wd;

    iget-object p2, p0, Lr4/sr0;->q:Lr4/oo0;

    iget p2, p2, Lr4/oo0;->d:I

    invoke-virtual {v0, p2}, Lr4/wd;->b(I)Lr4/wd;

    iget-object p2, p0, Lr4/sr0;->q:Lr4/oo0;

    iget p2, p2, Lr4/oo0;->f:I

    invoke-virtual {v0, p2}, Lr4/wd;->c(I)Lr4/wd;

    invoke-virtual {v0, p1}, Lr4/wd;->d(Z)Lr4/wd;

    invoke-virtual {v0}, Lr4/wd;->f()Lr4/bg;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic e0(Ljava/lang/String;Z)Lr4/o8;
    .locals 6

    const/4 v0, 0x1

    if-eq v0, p2, :cond_0

    const/4 p2, 0x0

    move-object v2, p2

    goto :goto_0

    :cond_0
    move-object v2, p0

    :goto_0
    new-instance p2, Lr4/br0;

    iget-object v0, p0, Lr4/sr0;->q:Lr4/oo0;

    iget v3, v0, Lr4/oo0;->d:I

    iget v4, v0, Lr4/oo0;->f:I

    iget v5, v0, Lr4/oo0;->i:I

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lr4/br0;-><init>(Ljava/lang/String;Lr4/ho;III)V

    iget-object p1, p0, Lr4/sr0;->F:Ljava/util/Set;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method public final f(Lr4/o8;Lr4/vc;ZI)V
    .locals 0

    iget p1, p0, Lr4/sr0;->x:I

    add-int/2addr p1, p4

    iput p1, p0, Lr4/sr0;->x:I

    return-void
.end method

.method public final f0()Z
    .locals 1

    iget-object v0, p0, Lr4/sr0;->E:Lr4/fr0;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/sr0;->E:Lr4/fr0;

    invoke-virtual {v0}, Lr4/fr0;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
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

    const-string v1, "OfficialSimpleExoPlayerAdapter finalize "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb3/w1;->k(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final g0(Landroid/net/Uri;)Lr4/ht3;
    .locals 2

    new-instance v0, Lr4/l5;

    invoke-direct {v0}, Lr4/l5;-><init>()V

    invoke-virtual {v0, p1}, Lr4/l5;->b(Landroid/net/Uri;)Lr4/l5;

    invoke-virtual {v0}, Lr4/l5;->c()Lr4/u5;

    move-result-object p1

    iget-object v0, p0, Lr4/sr0;->s:Lr4/ku3;

    iget-object v1, p0, Lr4/sr0;->q:Lr4/oo0;

    iget v1, v1, Lr4/oo0;->g:I

    invoke-virtual {v0, v1}, Lr4/ku3;->a(I)Lr4/ku3;

    invoke-virtual {v0, p1}, Lr4/ku3;->b(Lr4/u5;)Lr4/mu3;

    move-result-object p1

    return-object p1
.end method

.method public final h(Lr4/d51;Lr4/e5;Lr4/iq;)V
    .locals 2

    iget-object p1, p0, Lr4/sr0;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/po0;

    sget-object p3, Lr4/rz;->l1:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v0

    invoke-virtual {v0, p3}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p2, Lr4/e5;->k:Ljava/lang/String;

    const-string v1, "audioMime"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p2, Lr4/e5;->l:Ljava/lang/String;

    const-string v1, "audioSampleMime"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p2, Lr4/e5;->i:Ljava/lang/String;

    const-string v0, "audioCodec"

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "onMetadataEvent"

    invoke-interface {p1, p2, p3}, Lr4/e80;->H0(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final synthetic h0(Landroid/os/Handler;Lr4/zy3;Lr4/wm1;Lr4/ha;Lr4/k8;)[Lr4/g7;
    .locals 20

    move-object/from16 v0, p0

    new-instance v9, Lr4/ff2;

    iget-object v2, v0, Lr4/sr0;->d:Landroid/content/Context;

    sget-object v13, Lr4/u73;->a:Lr4/u73;

    const/4 v14, 0x0

    new-array v1, v14, [Lr4/ja1;

    new-instance v8, Lr4/bb2;

    const/4 v3, 0x0

    invoke-direct {v8, v3, v1, v14}, Lr4/bb2;-><init>(Lr4/g71;[Lr4/ja1;Z)V

    sget-object v12, Lr4/c13;->a:Lr4/c13;

    const/4 v5, 0x0

    move-object v1, v9

    move-object v3, v12

    move-object v4, v13

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    invoke-direct/range {v1 .. v8}, Lr4/ff2;-><init>(Landroid/content/Context;Lr4/c13;Lr4/u73;ZLandroid/os/Handler;Lr4/wm1;Lr4/dt1;)V

    new-instance v1, Lr4/cy3;

    iget-object v11, v0, Lr4/sr0;->d:Landroid/content/Context;

    const-wide/16 v2, 0x0

    const/16 v16, 0x0

    const/16 v19, -0x1

    move-object v10, v1

    const/4 v4, 0x0

    move-wide v14, v2

    move-object/from16 v17, p1

    move-object/from16 v18, p2

    invoke-direct/range {v10 .. v19}, Lr4/cy3;-><init>(Landroid/content/Context;Lr4/c13;Lr4/u73;JZLandroid/os/Handler;Lr4/zy3;I)V

    const/4 v2, 0x2

    new-array v2, v2, [Lr4/g7;

    aput-object v9, v2, v4

    const/4 v3, 0x1

    aput-object v1, v2, v3

    return-object v2
.end method

.method public final i(Lr4/d51;IJ)V
    .locals 0

    iget p1, p0, Lr4/sr0;->y:I

    add-int/2addr p1, p2

    iput p1, p0, Lr4/sr0;->y:I

    return-void
.end method

.method public final synthetic i0(Lr4/l7;)Lr4/o8;
    .locals 8

    new-instance v7, Lr4/fr0;

    iget-object v1, p0, Lr4/sr0;->d:Landroid/content/Context;

    invoke-interface {p1}, Lr4/l7;->zza()Lr4/o8;

    move-result-object v2

    iget-object v3, p0, Lr4/sr0;->A:Ljava/lang/String;

    iget v4, p0, Lr4/sr0;->B:I

    new-instance v6, Lr4/rr0;

    invoke-direct {v6, p0}, Lr4/rr0;-><init>(Lr4/sr0;)V

    move-object v0, v7

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lr4/fr0;-><init>(Landroid/content/Context;Lr4/o8;Ljava/lang/String;ILr4/ho;Lr4/er0;)V

    return-object v7
.end method

.method public final k(Lr4/d51;Lr4/e5;Lr4/iq;)V
    .locals 4

    iget-object p1, p0, Lr4/sr0;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/po0;

    sget-object p3, Lr4/rz;->l1:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v0

    invoke-virtual {v0, p3}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iget v0, p2, Lr4/e5;->s:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "frameRate"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p2, Lr4/e5;->h:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bitRate"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p2, Lr4/e5;->q:I

    iget v1, p2, Lr4/e5;->r:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "resolution"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p2, Lr4/e5;->k:Ljava/lang/String;

    const-string v1, "videoMime"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p2, Lr4/e5;->l:Ljava/lang/String;

    const-string v1, "videoSampleMime"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p2, Lr4/e5;->i:Ljava/lang/String;

    const-string v0, "videoCodec"

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "onMetadataEvent"

    invoke-interface {p1, p2, p3}, Lr4/e80;->H0(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final n(Lr4/d51;I)V
    .locals 0

    iget-object p1, p0, Lr4/sr0;->w:Lr4/eo0;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lr4/eo0;->x(I)V

    :cond_0
    return-void
.end method

.method public final p(Lr4/d51;Lr4/ws3;Lr4/ct3;Ljava/io/IOException;Z)V
    .locals 0

    iget-object p1, p0, Lr4/sr0;->w:Lr4/eo0;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lr4/sr0;->q:Lr4/oo0;

    iget-boolean p2, p2, Lr4/oo0;->l:Z

    if-eqz p2, :cond_0

    const-string p2, "onLoadException"

    invoke-interface {p1, p2, p4}, Lr4/eo0;->c(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    :cond_0
    const-string p2, "onLoadError"

    invoke-interface {p1, p2, p4}, Lr4/eo0;->d(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public final q(Lr4/d51;Lr4/pa4;)V
    .locals 1

    iget-object p1, p0, Lr4/sr0;->w:Lr4/eo0;

    if-eqz p1, :cond_0

    iget v0, p2, Lr4/pa4;->a:I

    iget p2, p2, Lr4/pa4;->b:I

    invoke-interface {p1, v0, p2}, Lr4/eo0;->b(II)V

    :cond_0
    return-void
.end method

.method public final s(Lr4/o8;Lr4/vc;Z)V
    .locals 1

    instance-of p2, p1, Lr4/jm;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lr4/sr0;->C:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object p3, p0, Lr4/sr0;->D:Ljava/util/ArrayList;

    check-cast p1, Lr4/jm;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    instance-of p2, p1, Lr4/fr0;

    if-eqz p2, :cond_1

    check-cast p1, Lr4/fr0;

    iput-object p1, p0, Lr4/sr0;->E:Lr4/fr0;

    iget-object p1, p0, Lr4/sr0;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/po0;

    sget-object p2, Lr4/rz;->l1:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object p3

    invoke-virtual {p3, p2}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lr4/sr0;->E:Lr4/fr0;

    invoke-virtual {p2}, Lr4/fr0;->t()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string p3, "gcacheHit"

    iget-object v0, p0, Lr4/sr0;->E:Lr4/fr0;

    invoke-virtual {v0}, Lr4/fr0;->v()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "gcacheDownloaded"

    iget-object v0, p0, Lr4/sr0;->E:Lr4/fr0;

    invoke-virtual {v0}, Lr4/fr0;->w()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p3, Lb3/k2;->i:Lr4/c03;

    new-instance v0, Lr4/hr0;

    invoke-direct {v0, p1, p2}, Lr4/hr0;-><init>(Lr4/po0;Ljava/util/Map;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final u(Lr4/d51;Lr4/n6;)V
    .locals 1

    iget-object p1, p0, Lr4/sr0;->w:Lr4/eo0;

    if-eqz p1, :cond_0

    const-string v0, "onPlayerError"

    invoke-interface {p1, v0, p2}, Lr4/eo0;->d(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public final y(Lr4/o8;Lr4/vc;Z)V
    .locals 0

    return-void
.end method
