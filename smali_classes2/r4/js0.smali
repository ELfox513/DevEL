.class public Lr4/js0;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"

# interfaces
.implements Lr4/st0;


# static fields
.field public static final synthetic N:I


# instance fields
.field public A:Z

.field public B:La3/x;

.field public C:Lr4/ee0;

.field public D:Lz2/b;

.field public E:Lr4/zd0;

.field public F:Lr4/ej0;

.field public G:Lr4/pu2;

.field public H:Z

.field public I:Z

.field public J:I

.field public K:Z

.field public final L:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public M:Landroid/view/View$OnAttachStateChangeListener;

.field public final a:Lr4/cs0;

.field public final b:Lr4/ip;

.field public final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lr4/u50<",
            "-",
            "Lr4/cs0;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final k:Ljava/lang/Object;

.field public p:Lr4/gt;

.field public q:La3/q;

.field public r:Lr4/qt0;

.field public s:Lr4/rt0;

.field public t:Lr4/t40;

.field public u:Lr4/v40;

.field public v:Lr4/cf1;

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Lr4/cs0;Lr4/ip;Z)V
    .locals 4

    new-instance v0, Lr4/ee0;

    invoke-interface {p1}, Lr4/cs0;->D0()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lr4/az;

    invoke-interface {p1}, Lr4/cs0;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lr4/az;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1, v2}, Lr4/ee0;-><init>(Lr4/cs0;Landroid/content/Context;Lr4/az;)V

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lr4/js0;->d:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lr4/js0;->k:Ljava/lang/Object;

    iput-object p2, p0, Lr4/js0;->b:Lr4/ip;

    iput-object p1, p0, Lr4/js0;->a:Lr4/cs0;

    iput-boolean p3, p0, Lr4/js0;->y:Z

    iput-object v0, p0, Lr4/js0;->C:Lr4/ee0;

    const/4 p1, 0x0

    iput-object p1, p0, Lr4/js0;->E:Lr4/zd0;

    new-instance p1, Ljava/util/HashSet;

    sget-object p2, Lr4/rz;->U3:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object p3

    invoke-virtual {p3, p2}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string p3, ","

    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lr4/js0;->L:Ljava/util/HashSet;

    return-void
.end method

.method public static final A(ZLr4/cs0;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lr4/cs0;->r()Lr4/vt0;

    move-result-object p0

    invoke-virtual {p0}, Lr4/vt0;->g()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {p1}, Lr4/cs0;->P()Ljava/lang/String;

    move-result-object p0

    const-string p1, "interstitial_mb"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic S(Lr4/js0;Landroid/view/View;Lr4/ej0;I)V
    .locals 0

    const/16 p3, 0xa

    invoke-virtual {p0, p1, p2, p3}, Lr4/js0;->q(Landroid/view/View;Lr4/ej0;I)V

    return-void
.end method

.method public static synthetic j(Lr4/js0;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lr4/u50<",
            "-",
            "Lr4/cs0;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lr4/js0;->z(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static u()Landroid/webkit/WebResourceResponse;
    .locals 3

    sget-object v0, Lr4/rz;->v0:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/webkit/WebResourceResponse;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v2, ""

    invoke-direct {v0, v2, v2, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final A0(Ljava/lang/String;Lr4/u50;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lr4/u50<",
            "-",
            "Lr4/cs0;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lr4/js0;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/js0;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final B()Z
    .locals 2

    iget-object v0, p0, Lr4/js0;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lr4/js0;->z:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final C0(Ljava/lang/String;Lc4/p;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lc4/p<",
            "Lr4/u50<",
            "-",
            "Lr4/cs0;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lr4/js0;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/js0;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr4/u50;

    invoke-interface {p2, v3}, Lc4/p;->apply(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final E0(Landroid/net/Uri;)V
    .locals 5

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lr4/js0;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lr4/rz;->T3:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v4

    invoke-virtual {v4, v3}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lr4/js0;->L:Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    sget-object v3, Lr4/rz;->V3:Lr4/jz;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v4

    invoke-virtual {v4, v3}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v2, v3, :cond_2

    const-string v2, "Parsing gmsg query params on BG thread: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_0
    invoke-static {v2}, Lb3/w1;->k(Ljava/lang/String;)V

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    move-result-object v2

    invoke-virtual {v2, p1}, Lb3/k2;->T(Landroid/net/Uri;)Lr4/h83;

    move-result-object v2

    new-instance v3, Lr4/hs0;

    invoke-direct {v3, p0, v1, v0, p1}, Lr4/hs0;-><init>(Lr4/js0;Ljava/util/List;Ljava/lang/String;Landroid/net/Uri;)V

    sget-object p1, Lr4/qm0;->e:Lr4/i83;

    invoke-static {v2, v3, p1}, Lr4/y73;->p(Lr4/h83;Lr4/t73;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_2
    invoke-static {}, Lz2/t;->d()Lb3/k2;

    invoke-static {p1}, Lb3/k2;->r(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1, v1, v0}, Lr4/js0;->z(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "No GMSG handler found for GMSG: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lb3/w1;->k(Ljava/lang/String;)V

    sget-object p1, Lr4/rz;->a5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, p1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object p1

    invoke-virtual {p1}, Lr4/nl0;->e()Lr4/wz;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x2

    if-ge p1, v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_6
    :goto_2
    const-string p1, "null"

    :goto_3
    sget-object v0, Lr4/qm0;->a:Lr4/i83;

    new-instance v1, Lr4/fs0;

    invoke-direct {v1, p1}, Lr4/fs0;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_7
    :goto_4
    return-void
.end method

.method public final F0()V
    .locals 1

    iget-object v0, p0, Lr4/js0;->p:Lr4/gt;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lr4/gt;->F0()V

    :cond_0
    return-void
.end method

.method public final H0()V
    .locals 4

    iget-object v0, p0, Lr4/js0;->F:Lr4/ej0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lr4/ej0;->g()V

    iput-object v1, p0, Lr4/js0;->F:Lr4/ej0;

    :cond_0
    invoke-virtual {p0}, Lr4/js0;->s()V

    iget-object v0, p0, Lr4/js0;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lr4/js0;->d:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iput-object v1, p0, Lr4/js0;->p:Lr4/gt;

    iput-object v1, p0, Lr4/js0;->q:La3/q;

    iput-object v1, p0, Lr4/js0;->r:Lr4/qt0;

    iput-object v1, p0, Lr4/js0;->s:Lr4/rt0;

    iput-object v1, p0, Lr4/js0;->t:Lr4/t40;

    iput-object v1, p0, Lr4/js0;->u:Lr4/v40;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lr4/js0;->w:Z

    iput-boolean v2, p0, Lr4/js0;->y:Z

    iput-boolean v2, p0, Lr4/js0;->z:Z

    iput-object v1, p0, Lr4/js0;->B:La3/x;

    iput-object v1, p0, Lr4/js0;->D:Lz2/b;

    iput-object v1, p0, Lr4/js0;->C:Lr4/ee0;

    iget-object v2, p0, Lr4/js0;->E:Lr4/zd0;

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lr4/zd0;->i(Z)V

    iput-object v1, p0, Lr4/js0;->E:Lr4/zd0;

    :cond_1
    iput-object v1, p0, Lr4/js0;->G:Lr4/pu2;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final J0(IIZ)V
    .locals 1

    iget-object p3, p0, Lr4/js0;->C:Lr4/ee0;

    if-eqz p3, :cond_0

    invoke-virtual {p3, p1, p2}, Lr4/ee0;->h(II)V

    :cond_0
    iget-object p3, p0, Lr4/js0;->E:Lr4/zd0;

    if-eqz p3, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p3, p1, p2, v0}, Lr4/zd0;->j(IIZ)V

    :cond_1
    return-void
.end method

.method public final L()Z
    .locals 2

    iget-object v0, p0, Lr4/js0;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lr4/js0;->A:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final N()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 2

    iget-object v0, p0, Lr4/js0;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final N0(II)V
    .locals 1

    iget-object v0, p0, Lr4/js0;->E:Lr4/zd0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lr4/zd0;->l(II)V

    :cond_0
    return-void
.end method

.method public final Q()Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .locals 2

    iget-object v0, p0, Lr4/js0;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final U()V
    .locals 6

    iget-object v0, p0, Lr4/js0;->r:Lr4/qt0;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lr4/js0;->H:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lr4/js0;->J:I

    if-lez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lr4/js0;->I:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lr4/js0;->x:Z

    if-eqz v0, :cond_4

    :cond_1
    sget-object v0, Lr4/rz;->l1:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lr4/js0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->m()Lr4/e00;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lr4/js0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->m()Lr4/e00;

    move-result-object v0

    invoke-virtual {v0}, Lr4/e00;->c()Lr4/h00;

    move-result-object v0

    iget-object v3, p0, Lr4/js0;->a:Lr4/cs0;

    invoke-interface {v3}, Lr4/po0;->j()Lr4/d00;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "awfllc"

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lr4/yz;->a(Lr4/h00;Lr4/d00;[Ljava/lang/String;)Z

    :cond_2
    iget-object v0, p0, Lr4/js0;->r:Lr4/qt0;

    iget-boolean v3, p0, Lr4/js0;->I:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lr4/js0;->x:Z

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lr4/qt0;->R(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lr4/js0;->r:Lr4/qt0;

    :cond_4
    iget-object v0, p0, Lr4/js0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->t()V

    return-void
.end method

.method public final V(Lr4/rt0;)V
    .locals 0

    iput-object p1, p0, Lr4/js0;->s:Lr4/rt0;

    return-void
.end method

.method public final Y(La3/e;Z)V
    .locals 11

    iget-object v0, p0, Lr4/js0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->T()Z

    move-result v0

    iget-object v1, p0, Lr4/js0;->a:Lr4/cs0;

    invoke-static {v0, v1}, Lr4/js0;->A(ZLr4/cs0;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    new-instance p2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    move-object v5, v3

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lr4/js0;->p:Lr4/gt;

    move-object v5, v1

    :goto_1
    if-eqz v0, :cond_3

    move-object v6, v3

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lr4/js0;->q:La3/q;

    move-object v6, v0

    :goto_2
    iget-object v7, p0, Lr4/js0;->B:La3/x;

    iget-object v0, p0, Lr4/js0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->n()Lr4/im0;

    move-result-object v8

    iget-object v9, p0, Lr4/js0;->a:Lr4/cs0;

    if-eqz v2, :cond_4

    move-object v10, v3

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lr4/js0;->v:Lr4/cf1;

    move-object v10, v0

    :goto_3
    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(La3/e;Lr4/gt;La3/q;La3/x;Lr4/im0;Lr4/cs0;Lr4/cf1;)V

    invoke-virtual {p0, p2}, Lr4/js0;->m0(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Lr4/js0;->v:Lr4/cf1;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lr4/cf1;->a()V

    :cond_0
    return-void
.end method

.method public final b()Lz2/b;
    .locals 1

    iget-object v0, p0, Lr4/js0;->D:Lz2/b;

    return-object v0
.end method

.method public final b0(Lb3/y0;Lr4/c12;Lr4/ls1;Lr4/xt2;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12

    move-object v0, p0

    new-instance v11, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v0, Lr4/js0;->a:Lr4/cs0;

    invoke-interface {v2}, Lr4/cs0;->n()Lr4/im0;

    move-result-object v3

    move-object v1, v11

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lr4/cs0;Lr4/im0;Lb3/y0;Lr4/c12;Lr4/ls1;Lr4/xt2;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v11}, Lr4/js0;->m0(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/WebResourceResponse;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lr4/g10;->a:Lr4/u00;

    invoke-virtual {v0}, Lr4/u00;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ""

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lr4/js0;->G:Lr4/pu2;

    if-eqz v0, :cond_0

    const-string v0, "oda"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lr4/js0;->G:Lr4/pu2;

    invoke-virtual {p2, p1}, Lr4/pu2;->b(Ljava/lang/String;)V

    new-instance p1, Landroid/webkit/WebResourceResponse;

    new-instance p2, Ljava/io/ByteArrayInputStream;

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-direct {p2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p1, v1, v1, p2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p1

    :cond_0
    iget-object v0, p0, Lr4/js0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v2, p0, Lr4/js0;->K:Z

    invoke-static {p1, v0, v2}, Lr4/kk0;->a(Ljava/lang/String;Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v0, p2}, Lr4/js0;->v(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lr4/to;->X0(Landroid/net/Uri;)Lr4/to;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lz2/t;->j()Lr4/po;

    move-result-object v2

    invoke-virtual {v2, v0}, Lr4/po;->f(Lr4/to;)Lr4/qo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lr4/qo;->zza()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance p1, Landroid/webkit/WebResourceResponse;

    invoke-virtual {v0}, Lr4/qo;->X0()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {p1, v1, v1, p2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p1

    :cond_2
    invoke-static {}, Lr4/bm0;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lr4/c10;->b:Lr4/u00;

    invoke-virtual {v0}, Lr4/u00;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, p2}, Lr4/js0;->v(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object p2

    const-string v0, "AdWebViewClient.interceptRequest"

    invoke-virtual {p2, p1, v0}, Lr4/nl0;->k(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-static {}, Lr4/js0;->u()Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public final c0(ZIZ)V
    .locals 11

    iget-object v0, p0, Lr4/js0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->T()Z

    move-result v0

    iget-object v1, p0, Lr4/js0;->a:Lr4/cs0;

    invoke-static {v0, v1}, Lr4/js0;->A(ZLr4/cs0;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    new-instance p3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move-object v3, v2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lr4/js0;->p:Lr4/gt;

    move-object v3, v0

    :goto_1
    iget-object v4, p0, Lr4/js0;->q:La3/q;

    iget-object v5, p0, Lr4/js0;->B:La3/x;

    iget-object v6, p0, Lr4/js0;->a:Lr4/cs0;

    invoke-interface {v6}, Lr4/cs0;->n()Lr4/im0;

    move-result-object v9

    if-eqz v1, :cond_3

    move-object v10, v2

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lr4/js0;->v:Lr4/cf1;

    move-object v10, v0

    :goto_2
    move-object v2, p3

    move v7, p1

    move v8, p2

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lr4/gt;La3/q;La3/x;Lr4/cs0;ZILr4/im0;Lr4/cf1;)V

    invoke-virtual {p0, p3}, Lr4/js0;->m0(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final d(Z)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lr4/js0;->w:Z

    return-void
.end method

.method public final d0(Lr4/gt;Lr4/t40;La3/q;Lr4/v40;La3/x;ZLr4/x50;Lz2/b;Lr4/ge0;Lr4/ej0;Lr4/c12;Lr4/pu2;Lr4/ls1;Lr4/xt2;Lr4/v50;Lr4/cf1;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p7

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p15

    move-object/from16 v13, p16

    const/4 v14, 0x0

    if-nez p8, :cond_0

    new-instance v6, Lz2/b;

    iget-object v7, v0, Lr4/js0;->a:Lr4/cs0;

    invoke-interface {v7}, Lr4/cs0;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, v5, v14}, Lz2/b;-><init>(Landroid/content/Context;Lr4/ej0;Lr4/bg0;)V

    move-object v15, v6

    goto :goto_0

    :cond_0
    move-object/from16 v15, p8

    :goto_0
    new-instance v6, Lr4/zd0;

    iget-object v7, v0, Lr4/js0;->a:Lr4/cs0;

    invoke-direct {v6, v7, v4}, Lr4/zd0;-><init>(Lr4/cs0;Lr4/ge0;)V

    iput-object v6, v0, Lr4/js0;->E:Lr4/zd0;

    iput-object v5, v0, Lr4/js0;->F:Lr4/ej0;

    sget-object v5, Lr4/rz;->C0:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v6

    invoke-virtual {v6, v5}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Lr4/s40;

    invoke-direct {v5, v1}, Lr4/s40;-><init>(Lr4/t40;)V

    const-string v6, "/adMetadata"

    invoke-virtual {v0, v6, v5}, Lr4/js0;->n0(Ljava/lang/String;Lr4/u50;)V

    :cond_1
    if-eqz v2, :cond_2

    new-instance v5, Lr4/u40;

    invoke-direct {v5, v2}, Lr4/u40;-><init>(Lr4/v40;)V

    const-string v6, "/appEvent"

    invoke-virtual {v0, v6, v5}, Lr4/js0;->n0(Ljava/lang/String;Lr4/u50;)V

    :cond_2
    sget-object v5, Lr4/t50;->j:Lr4/u50;

    const-string v6, "/backButton"

    invoke-virtual {v0, v6, v5}, Lr4/js0;->n0(Ljava/lang/String;Lr4/u50;)V

    sget-object v5, Lr4/t50;->k:Lr4/u50;

    const-string v6, "/refresh"

    invoke-virtual {v0, v6, v5}, Lr4/js0;->n0(Ljava/lang/String;Lr4/u50;)V

    sget-object v5, Lr4/t50;->b:Lr4/u50;

    const-string v6, "/canOpenApp"

    invoke-virtual {v0, v6, v5}, Lr4/js0;->n0(Ljava/lang/String;Lr4/u50;)V

    sget-object v5, Lr4/t50;->a:Lr4/u50;

    const-string v6, "/canOpenURLs"

    invoke-virtual {v0, v6, v5}, Lr4/js0;->n0(Ljava/lang/String;Lr4/u50;)V

    sget-object v5, Lr4/t50;->c:Lr4/u50;

    const-string v6, "/canOpenIntents"

    invoke-virtual {v0, v6, v5}, Lr4/js0;->n0(Ljava/lang/String;Lr4/u50;)V

    sget-object v5, Lr4/t50;->d:Lr4/u50;

    const-string v6, "/close"

    invoke-virtual {v0, v6, v5}, Lr4/js0;->n0(Ljava/lang/String;Lr4/u50;)V

    sget-object v5, Lr4/t50;->e:Lr4/u50;

    const-string v6, "/customClose"

    invoke-virtual {v0, v6, v5}, Lr4/js0;->n0(Ljava/lang/String;Lr4/u50;)V

    sget-object v5, Lr4/t50;->n:Lr4/u50;

    const-string v6, "/instrument"

    invoke-virtual {v0, v6, v5}, Lr4/js0;->n0(Ljava/lang/String;Lr4/u50;)V

    sget-object v5, Lr4/t50;->p:Lr4/u50;

    const-string v6, "/delayPageLoaded"

    invoke-virtual {v0, v6, v5}, Lr4/js0;->n0(Ljava/lang/String;Lr4/u50;)V

    sget-object v5, Lr4/t50;->q:Lr4/u50;

    const-string v6, "/delayPageClosed"

    invoke-virtual {v0, v6, v5}, Lr4/js0;->n0(Ljava/lang/String;Lr4/u50;)V

    sget-object v5, Lr4/t50;->r:Lr4/u50;

    const-string v6, "/getLocationInfo"

    invoke-virtual {v0, v6, v5}, Lr4/js0;->n0(Ljava/lang/String;Lr4/u50;)V

    sget-object v5, Lr4/t50;->g:Lr4/u50;

    const-string v6, "/log"

    invoke-virtual {v0, v6, v5}, Lr4/js0;->n0(Ljava/lang/String;Lr4/u50;)V

    new-instance v5, Lr4/b60;

    iget-object v6, v0, Lr4/js0;->E:Lr4/zd0;

    invoke-direct {v5, v15, v6, v4}, Lr4/b60;-><init>(Lz2/b;Lr4/zd0;Lr4/ge0;)V

    const-string v4, "/mraid"

    invoke-virtual {v0, v4, v5}, Lr4/js0;->n0(Ljava/lang/String;Lr4/u50;)V

    iget-object v4, v0, Lr4/js0;->C:Lr4/ee0;

    if-eqz v4, :cond_3

    const-string v5, "/mraidLoaded"

    invoke-virtual {v0, v5, v4}, Lr4/js0;->n0(Ljava/lang/String;Lr4/u50;)V

    :cond_3
    new-instance v9, Lr4/g60;

    iget-object v6, v0, Lr4/js0;->E:Lr4/zd0;

    move-object v4, v9

    move-object v5, v15

    move-object/from16 v7, p11

    move-object/from16 v8, p13

    move-object v14, v9

    move-object/from16 v9, p14

    invoke-direct/range {v4 .. v9}, Lr4/g60;-><init>(Lz2/b;Lr4/zd0;Lr4/c12;Lr4/ls1;Lr4/xt2;)V

    const-string v4, "/open"

    invoke-virtual {v0, v4, v14}, Lr4/js0;->n0(Ljava/lang/String;Lr4/u50;)V

    new-instance v4, Lr4/rq0;

    invoke-direct {v4}, Lr4/rq0;-><init>()V

    const-string v5, "/precache"

    invoke-virtual {v0, v5, v4}, Lr4/js0;->n0(Ljava/lang/String;Lr4/u50;)V

    sget-object v4, Lr4/t50;->i:Lr4/u50;

    const-string v5, "/touch"

    invoke-virtual {v0, v5, v4}, Lr4/js0;->n0(Ljava/lang/String;Lr4/u50;)V

    sget-object v4, Lr4/t50;->l:Lr4/u50;

    const-string v5, "/video"

    invoke-virtual {v0, v5, v4}, Lr4/js0;->n0(Ljava/lang/String;Lr4/u50;)V

    sget-object v4, Lr4/t50;->m:Lr4/u50;

    const-string v5, "/videoMeta"

    invoke-virtual {v0, v5, v4}, Lr4/js0;->n0(Ljava/lang/String;Lr4/u50;)V

    const-string v4, "/httpTrack"

    const-string v5, "/click"

    if-eqz v10, :cond_4

    if-eqz v11, :cond_4

    invoke-static {v10, v11, v13}, Lr4/rp2;->a(Lr4/c12;Lr4/pu2;Lr4/cf1;)Lr4/u50;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lr4/js0;->n0(Ljava/lang/String;Lr4/u50;)V

    invoke-static/range {p11 .. p12}, Lr4/rp2;->b(Lr4/c12;Lr4/pu2;)Lr4/u50;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lr4/js0;->n0(Ljava/lang/String;Lr4/u50;)V

    goto :goto_1

    :cond_4
    invoke-static/range {p16 .. p16}, Lr4/t50;->b(Lr4/cf1;)Lr4/u50;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lr4/js0;->n0(Ljava/lang/String;Lr4/u50;)V

    sget-object v5, Lr4/t50;->f:Lr4/u50;

    invoke-virtual {v0, v4, v5}, Lr4/js0;->n0(Ljava/lang/String;Lr4/u50;)V

    :goto_1
    invoke-static {}, Lz2/t;->a()Lr4/ik0;

    move-result-object v4

    iget-object v5, v0, Lr4/js0;->a:Lr4/cs0;

    invoke-interface {v5}, Lr4/cs0;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lr4/ik0;->g(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Lr4/a60;

    iget-object v5, v0, Lr4/js0;->a:Lr4/cs0;

    invoke-interface {v5}, Lr4/cs0;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lr4/a60;-><init>(Landroid/content/Context;)V

    const-string v5, "/logScionEvent"

    invoke-virtual {v0, v5, v4}, Lr4/js0;->n0(Ljava/lang/String;Lr4/u50;)V

    :cond_5
    if-eqz v3, :cond_6

    new-instance v4, Lr4/w50;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lr4/w50;-><init>(Lr4/x50;[B)V

    const-string v3, "/setInterstitialProperties"

    invoke-virtual {v0, v3, v4}, Lr4/js0;->n0(Ljava/lang/String;Lr4/u50;)V

    :cond_6
    if-eqz v12, :cond_7

    sget-object v3, Lr4/rz;->p6:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v4

    invoke-virtual {v4, v3}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "/inspectorNetworkExtras"

    invoke-virtual {v0, v3, v12}, Lr4/js0;->n0(Ljava/lang/String;Lr4/u50;)V

    :cond_7
    move-object/from16 v3, p1

    iput-object v3, v0, Lr4/js0;->p:Lr4/gt;

    move-object/from16 v3, p3

    iput-object v3, v0, Lr4/js0;->q:La3/q;

    iput-object v1, v0, Lr4/js0;->t:Lr4/t40;

    iput-object v2, v0, Lr4/js0;->u:Lr4/v40;

    move-object/from16 v1, p5

    iput-object v1, v0, Lr4/js0;->B:La3/x;

    iput-object v15, v0, Lr4/js0;->D:Lz2/b;

    iput-object v13, v0, Lr4/js0;->v:Lr4/cf1;

    move/from16 v1, p6

    iput-boolean v1, v0, Lr4/js0;->w:Z

    iput-object v11, v0, Lr4/js0;->G:Lr4/pu2;

    return-void
.end method

.method public final e()Z
    .locals 2

    iget-object v0, p0, Lr4/js0;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lr4/js0;->y:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final e0(ZILjava/lang/String;Z)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lr4/js0;->a:Lr4/cs0;

    invoke-interface {v1}, Lr4/cs0;->T()Z

    move-result v1

    iget-object v2, v0, Lr4/js0;->a:Lr4/cs0;

    invoke-static {v1, v2}, Lr4/js0;->A(ZLr4/cs0;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    new-instance v15, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    move-object v5, v4

    goto :goto_1

    :cond_2
    iget-object v2, v0, Lr4/js0;->p:Lr4/gt;

    move-object v5, v2

    :goto_1
    if-eqz v1, :cond_3

    move-object v6, v4

    goto :goto_2

    :cond_3
    new-instance v1, Lr4/is0;

    iget-object v2, v0, Lr4/js0;->a:Lr4/cs0;

    iget-object v6, v0, Lr4/js0;->q:La3/q;

    invoke-direct {v1, v2, v6}, Lr4/is0;-><init>(Lr4/cs0;La3/q;)V

    move-object v6, v1

    :goto_2
    iget-object v7, v0, Lr4/js0;->t:Lr4/t40;

    iget-object v8, v0, Lr4/js0;->u:Lr4/v40;

    iget-object v9, v0, Lr4/js0;->B:La3/x;

    iget-object v10, v0, Lr4/js0;->a:Lr4/cs0;

    invoke-interface {v10}, Lr4/cs0;->n()Lr4/im0;

    move-result-object v14

    if-eqz v3, :cond_4

    move-object v1, v4

    goto :goto_3

    :cond_4
    iget-object v1, v0, Lr4/js0;->v:Lr4/cf1;

    :goto_3
    move-object v4, v15

    move/from16 v11, p1

    move/from16 v12, p2

    move-object/from16 v13, p3

    move-object v2, v15

    move-object v15, v1

    invoke-direct/range {v4 .. v15}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lr4/gt;La3/q;Lr4/t40;Lr4/v40;La3/x;Lr4/cs0;ZILjava/lang/String;Lr4/im0;Lr4/cf1;)V

    invoke-virtual {v0, v2}, Lr4/js0;->m0(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final g(Z)V
    .locals 0

    iput-boolean p1, p0, Lr4/js0;->K:Z

    return-void
.end method

.method public final h()V
    .locals 3

    iget-object v0, p0, Lr4/js0;->F:Lr4/ej0;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lr4/js0;->a:Lr4/cs0;

    invoke-interface {v1}, Lr4/cs0;->J()Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {v1}, Ld0/s0;->v(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    invoke-virtual {p0, v1, v0, v2}, Lr4/js0;->q(Landroid/view/View;Lr4/ej0;I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lr4/js0;->s()V

    new-instance v1, Lr4/gs0;

    invoke-direct {v1, p0, v0}, Lr4/gs0;-><init>(Lr4/js0;Lr4/ej0;)V

    iput-object v1, p0, Lr4/js0;->M:Landroid/view/View$OnAttachStateChangeListener;

    iget-object v0, p0, Lr4/js0;->a:Lr4/cs0;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_1
    return-void
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lr4/js0;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lr4/js0;->J:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lr4/js0;->J:I

    invoke-virtual {p0}, Lr4/js0;->U()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final i0(Z)V
    .locals 1

    iget-object p1, p0, Lr4/js0;->k:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lr4/js0;->z:Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final j0(ZILjava/lang/String;Ljava/lang/String;Z)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lr4/js0;->a:Lr4/cs0;

    invoke-interface {v1}, Lr4/cs0;->T()Z

    move-result v1

    iget-object v2, v0, Lr4/js0;->a:Lr4/cs0;

    invoke-static {v1, v2}, Lr4/js0;->A(ZLr4/cs0;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    new-instance v15, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    move-object v5, v4

    goto :goto_1

    :cond_2
    iget-object v2, v0, Lr4/js0;->p:Lr4/gt;

    move-object v5, v2

    :goto_1
    if-eqz v1, :cond_3

    move-object v6, v4

    goto :goto_2

    :cond_3
    new-instance v1, Lr4/is0;

    iget-object v2, v0, Lr4/js0;->a:Lr4/cs0;

    iget-object v6, v0, Lr4/js0;->q:La3/q;

    invoke-direct {v1, v2, v6}, Lr4/is0;-><init>(Lr4/cs0;La3/q;)V

    move-object v6, v1

    :goto_2
    iget-object v7, v0, Lr4/js0;->t:Lr4/t40;

    iget-object v8, v0, Lr4/js0;->u:Lr4/v40;

    iget-object v9, v0, Lr4/js0;->B:La3/x;

    iget-object v10, v0, Lr4/js0;->a:Lr4/cs0;

    invoke-interface {v10}, Lr4/cs0;->n()Lr4/im0;

    move-result-object v1

    if-eqz v3, :cond_4

    move-object/from16 v16, v4

    goto :goto_3

    :cond_4
    iget-object v2, v0, Lr4/js0;->v:Lr4/cf1;

    move-object/from16 v16, v2

    :goto_3
    move-object v4, v15

    move/from16 v11, p1

    move/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object v2, v15

    move-object v15, v1

    invoke-direct/range {v4 .. v16}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lr4/gt;La3/q;Lr4/t40;Lr4/v40;La3/x;Lr4/cs0;ZILjava/lang/String;Ljava/lang/String;Lr4/im0;Lr4/cf1;)V

    invoke-virtual {v0, v2}, Lr4/js0;->m0(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final k()V
    .locals 1

    iget v0, p0, Lr4/js0;->J:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lr4/js0;->J:I

    invoke-virtual {p0}, Lr4/js0;->U()V

    return-void
.end method

.method public final l()V
    .locals 2

    iget-object v0, p0, Lr4/js0;->b:Lr4/ip;

    if-eqz v0, :cond_0

    const/16 v1, 0x2715

    invoke-virtual {v0, v1}, Lr4/ip;->c(I)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/js0;->I:Z

    invoke-virtual {p0}, Lr4/js0;->U()V

    iget-object v0, p0, Lr4/js0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->destroy()V

    return-void
.end method

.method public final m0(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .locals 2

    iget-object v0, p0, Lr4/js0;->E:Lr4/zd0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr4/zd0;->k()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lz2/t;->c()La3/o;

    iget-object v1, p0, Lr4/js0;->a:Lr4/cs0;

    invoke-interface {v1}, Lr4/cs0;->getContext()Landroid/content/Context;

    move-result-object v1

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v1, p1, v0}, La3/o;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    iget-object v0, p0, Lr4/js0;->F:Lr4/ej0;

    if-eqz v0, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->w:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->a:La3/e;

    if-eqz p1, :cond_1

    iget-object v1, p1, La3/e;->b:Ljava/lang/String;

    :cond_1
    invoke-interface {v0, v1}, Lr4/ej0;->A(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final n0(Ljava/lang/String;Lr4/u50;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lr4/u50<",
            "-",
            "Lr4/cs0;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lr4/js0;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/js0;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iget-object v2, p0, Lr4/js0;->d:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final synthetic o()V
    .locals 1

    iget-object v0, p0, Lr4/js0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->E()V

    iget-object v0, p0, Lr4/js0;->a:Lr4/cs0;

    invoke-interface {v0}, Lr4/cs0;->Z()La3/n;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, La3/n;->E()V

    :cond_0
    return-void
.end method

.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Loading resource: "

    if-eqz v0, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Lb3/w1;->k(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p2

    const-string v0, "gmsg"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p2

    const-string v0, "mobileads.google.com"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lr4/js0;->E0(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lr4/js0;->k:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lr4/js0;->a:Lr4/cs0;

    invoke-interface {p2}, Lr4/cs0;->f0()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "Blank page loaded, 1..."

    invoke-static {p2}, Lb3/w1;->k(Ljava/lang/String;)V

    iget-object p2, p0, Lr4/js0;->a:Lr4/cs0;

    invoke-interface {p2}, Lr4/cs0;->W0()V

    monitor-exit p1

    return-void

    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr4/js0;->H:Z

    iget-object p1, p0, Lr4/js0;->s:Lr4/rt0;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lr4/rt0;->a()V

    const/4 p1, 0x0

    iput-object p1, p0, Lr4/js0;->s:Lr4/rt0;

    :cond_1
    invoke-virtual {p0}, Lr4/js0;->U()V

    return-void

    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr4/js0;->x:Z

    return-void
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    iget-object p1, p0, Lr4/js0;->a:Lr4/cs0;

    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result v0

    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->rendererPriorityAtExit()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lr4/cs0;->t0(ZI)Z

    move-result p1

    return p1
.end method

.method public final synthetic p(Landroid/view/View;Lr4/ej0;I)V
    .locals 0

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p0, p1, p2, p3}, Lr4/js0;->q(Landroid/view/View;Lr4/ej0;I)V

    return-void
.end method

.method public final q(Landroid/view/View;Lr4/ej0;I)V
    .locals 2

    invoke-interface {p2}, Lr4/ej0;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    invoke-interface {p2, p1}, Lr4/ej0;->b(Landroid/view/View;)V

    invoke-interface {p2}, Lr4/ej0;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lb3/k2;->i:Lr4/c03;

    new-instance v1, Lr4/ds0;

    invoke-direct {v1, p0, p1, p2, p3}, Lr4/ds0;-><init>(Lr4/js0;Landroid/view/View;Lr4/ej0;I)V

    const-wide/16 p1, 0x64

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final r0(Z)V
    .locals 1

    iget-object v0, p0, Lr4/js0;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lr4/js0;->A:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final s()V
    .locals 2

    iget-object v0, p0, Lr4/js0;->M:Landroid/view/View$OnAttachStateChangeListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lr4/js0;->a:Lr4/cs0;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public final s0(Lr4/qt0;)V
    .locals 0

    iput-object p1, p0, Lr4/js0;->r:Lr4/qt0;

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lr4/js0;->c(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public final shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x4f

    if-eq p1, p2, :cond_0

    const/16 p2, 0xde

    if-eq p1, p2, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/4 p1, 0x0

    return p1

    :cond_0
    :pswitch_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 12

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "AdWebView shouldOverrideUrlLoading: "

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lb3/w1;->k(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gmsg"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mobileads.google.com"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lr4/js0;->E0(Landroid/net/Uri;)V

    goto/16 :goto_5

    :cond_1
    iget-boolean v1, p0, Lr4/js0;->w:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lr4/js0;->a:Lr4/cs0;

    invoke-interface {v1}, Lr4/cs0;->J()Landroid/webkit/WebView;

    move-result-object v1

    if-ne p1, v1, :cond_6

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v3, "http"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "https"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_2
    iget-object v0, p0, Lr4/js0;->p:Lr4/gt;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lr4/gt;->F0()V

    iget-object v0, p0, Lr4/js0;->F:Lr4/ej0;

    if-eqz v0, :cond_3

    invoke-interface {v0, p2}, Lr4/ej0;->A(Ljava/lang/String;)V

    :cond_3
    iput-object v1, p0, Lr4/js0;->p:Lr4/gt;

    :cond_4
    iget-object v0, p0, Lr4/js0;->v:Lr4/cf1;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lr4/cf1;->a()V

    iput-object v1, p0, Lr4/js0;->v:Lr4/cf1;

    :cond_5
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_6
    iget-object p1, p0, Lr4/js0;->a:Lr4/cs0;

    invoke-interface {p1}, Lr4/cs0;->J()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->willNotDraw()Z

    move-result p1

    if-nez p1, :cond_b

    :try_start_0
    iget-object p1, p0, Lr4/js0;->a:Lr4/cs0;

    invoke-interface {p1}, Lr4/cs0;->H()Lr4/u;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1, v0}, Lr4/u;->a(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lr4/js0;->a:Lr4/cs0;

    invoke-interface {v1}, Lr4/cs0;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lr4/js0;->a:Lr4/cs0;

    invoke-interface {v3}, Lr4/cs0;->h()Landroid/app/Activity;

    move-result-object v4

    check-cast v3, Landroid/view/View;

    invoke-virtual {p1, v0, v1, v3, v4}, Lr4/u;->e(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Lr4/v; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unable to append parameter to URL: "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_7
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {p1}, Lr4/cm0;->f(Ljava/lang/String;)V

    :cond_8
    :goto_2
    iget-object p1, p0, Lr4/js0;->D:Lz2/b;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lz2/b;->b()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_3

    :cond_9
    iget-object p1, p0, Lr4/js0;->D:Lz2/b;

    invoke-virtual {p1, p2}, Lz2/b;->c(Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    :goto_3
    new-instance p1, La3/e;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v4, "android.intent.action.VIEW"

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, La3/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La3/v;)V

    invoke-virtual {p0, p1, v2}, Lr4/js0;->Y(La3/e;Z)V

    goto :goto_5

    :cond_b
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "AdWebView unable to handle URL: "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_c
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_4
    invoke-static {p1}, Lr4/cm0;->f(Ljava/lang/String;)V

    :goto_5
    return v2
.end method

.method public final v(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/WebResourceResponse;"
        }
    .end annotation

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x108

    :try_start_0
    invoke-static {p1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    const/4 p1, 0x0

    :goto_0
    add-int/lit8 p1, p1, 0x1

    const/16 v1, 0x14

    if-gt p1, v1, :cond_9

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    instance-of v2, v1, Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_8

    check-cast v1, Ljava/net/HttpURLConnection;

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    move-result-object v3

    iget-object v2, p0, Lr4/js0;->a:Lr4/cs0;

    invoke-interface {v2}, Lr4/cs0;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v2, p0, Lr4/js0;->a:Lr4/cs0;

    invoke-interface {v2}, Lr4/cs0;->n()Lr4/im0;

    move-result-object v2

    iget-object v5, v2, Lr4/im0;->a:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const v9, 0xea60

    move-object v7, v1

    invoke-virtual/range {v3 .. v9}, Lb3/k2;->M(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;ZI)V

    new-instance v2, Lr4/bm0;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lr4/bm0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Lr4/bm0;->a(Ljava/net/HttpURLConnection;[B)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    invoke-virtual {v2, v1, v4}, Lr4/bm0;->c(Ljava/net/HttpURLConnection;I)V

    const/16 v2, 0x12c

    if-lt v4, v2, :cond_7

    const/16 v2, 0x190

    if-ge v4, v2, :cond_7

    const-string v2, "Location"

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v4, "tel:"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return-object v3

    :cond_1
    :try_start_1
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p1, "Protocol is null"

    invoke-static {p1}, Lr4/cm0;->f(Ljava/lang/String;)V

    invoke-static {}, Lr4/js0;->u()Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return-object p1

    :cond_2
    :try_start_2
    const-string v4, "http"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "https"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string p1, "Unsupported scheme: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_2
    invoke-static {p1}, Lr4/cm0;->f(Ljava/lang/String;)V

    invoke-static {}, Lr4/js0;->u()Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return-object p1

    :cond_4
    :try_start_3
    const-string v0, "Redirecting to "

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_3
    invoke-static {v0}, Lr4/cm0;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v3

    goto/16 :goto_0

    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Missing Location header in redirect"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    invoke-static {}, Lz2/t;->d()Lb3/k2;

    invoke-static {v1}, Lb3/k2;->s(Ljava/net/HttpURLConnection;)Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return-object p1

    :cond_8
    :try_start_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid protocol."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_9
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    new-instance p1, Ljava/io/IOException;

    const-string p2, "Too many redirects (20)"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public final y()V
    .locals 3

    iget-object v0, p0, Lr4/js0;->k:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lr4/js0;->w:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lr4/js0;->y:Z

    sget-object v1, Lr4/qm0;->e:Lr4/i83;

    new-instance v2, Lr4/es0;

    invoke-direct {v2, p0}, Lr4/es0;-><init>(Lr4/js0;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final z(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lr4/u50<",
            "-",
            "Lr4/cs0;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lb3/w1;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Received GMSG: "

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p3}, Lb3/w1;->k(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "  "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb3/w1;->k(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lr4/u50;

    iget-object v0, p0, Lr4/js0;->a:Lr4/cs0;

    invoke-interface {p3, v0, p1}, Lr4/u50;->a(Ljava/lang/Object;Ljava/util/Map;)V

    goto :goto_2

    :cond_2
    return-void
.end method
