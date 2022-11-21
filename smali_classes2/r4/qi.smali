.class public final Lr4/qi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/ui;
.implements Lr4/qf;
.implements Lr4/pk;
.implements Lr4/ej;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/ui;",
        "Lr4/qf;",
        "Lr4/pk;",
        "Lr4/ej;"
    }
.end annotation


# instance fields
.field public A:Lr4/wf;

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:I

.field public G:Lr4/mj;

.field public H:J

.field public I:[Z

.field public J:[Z

.field public K:Z

.field public L:J

.field public M:J

.field public N:J

.field public O:I

.field public P:Z

.field public Q:Z

.field public final R:Lr4/jk;

.field public final a:Landroid/net/Uri;

.field public final b:Lr4/fk;

.field public final d:I

.field public final k:Landroid/os/Handler;

.field public final p:Lr4/ri;

.field public final q:Lr4/vi;

.field public final r:J

.field public final s:Lr4/tk;

.field public final t:Lr4/oi;

.field public final u:Lr4/xk;

.field public final v:Ljava/lang/Runnable;

.field public final w:Ljava/lang/Runnable;

.field public final x:Landroid/os/Handler;

.field public final y:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lr4/gj;",
            ">;"
        }
    .end annotation
.end field

.field public z:Lr4/ti;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lr4/fk;[Lr4/pf;ILandroid/os/Handler;Lr4/ri;Lr4/vi;Lr4/jk;Ljava/lang/String;I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/qi;->a:Landroid/net/Uri;

    iput-object p2, p0, Lr4/qi;->b:Lr4/fk;

    iput p4, p0, Lr4/qi;->d:I

    iput-object p5, p0, Lr4/qi;->k:Landroid/os/Handler;

    iput-object p6, p0, Lr4/qi;->p:Lr4/ri;

    iput-object p7, p0, Lr4/qi;->q:Lr4/vi;

    iput-object p8, p0, Lr4/qi;->R:Lr4/jk;

    int-to-long p1, p10

    iput-wide p1, p0, Lr4/qi;->r:J

    new-instance p1, Lr4/tk;

    const-string p2, "Loader:ExtractorMediaPeriod"

    invoke-direct {p1, p2}, Lr4/tk;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lr4/qi;->s:Lr4/tk;

    new-instance p1, Lr4/oi;

    invoke-direct {p1, p3, p0}, Lr4/oi;-><init>([Lr4/pf;Lr4/qf;)V

    iput-object p1, p0, Lr4/qi;->t:Lr4/oi;

    new-instance p1, Lr4/xk;

    invoke-direct {p1}, Lr4/xk;-><init>()V

    iput-object p1, p0, Lr4/qi;->u:Lr4/xk;

    new-instance p1, Lr4/ji;

    invoke-direct {p1, p0}, Lr4/ji;-><init>(Lr4/qi;)V

    iput-object p1, p0, Lr4/qi;->v:Ljava/lang/Runnable;

    new-instance p1, Lr4/ki;

    invoke-direct {p1, p0}, Lr4/ki;-><init>(Lr4/qi;)V

    iput-object p1, p0, Lr4/qi;->w:Ljava/lang/Runnable;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lr4/qi;->x:Landroid/os/Handler;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lr4/qi;->N:J

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lr4/qi;->y:Landroid/util/SparseArray;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lr4/qi;->L:J

    return-void
.end method

.method public static synthetic A(Lr4/qi;)Lr4/ti;
    .locals 0

    iget-object p0, p0, Lr4/qi;->z:Lr4/ti;

    return-object p0
.end method

.method public static synthetic B(Lr4/qi;)Z
    .locals 0

    iget-boolean p0, p0, Lr4/qi;->Q:Z

    return p0
.end method

.method public static synthetic H(Lr4/qi;)V
    .locals 8

    iget-boolean v0, p0, Lr4/qi;->Q:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lr4/qi;->C:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lr4/qi;->A:Lr4/wf;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lr4/qi;->B:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lr4/qi;->y:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lr4/qi;->y:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr4/gj;

    invoke-virtual {v3}, Lr4/gj;->i()Lr4/id;

    move-result-object v3

    if-eqz v3, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lr4/qi;->u:Lr4/xk;

    invoke-virtual {v2}, Lr4/xk;->b()Z

    new-array v2, v0, [Lr4/lj;

    new-array v3, v0, [Z

    iput-object v3, p0, Lr4/qi;->J:[Z

    new-array v3, v0, [Z

    iput-object v3, p0, Lr4/qi;->I:[Z

    iget-object v3, p0, Lr4/qi;->A:Lr4/wf;

    invoke-interface {v3}, Lr4/wf;->a()J

    move-result-wide v3

    iput-wide v3, p0, Lr4/qi;->H:J

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x1

    if-ge v3, v0, :cond_4

    iget-object v5, p0, Lr4/qi;->y:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr4/gj;

    invoke-virtual {v5}, Lr4/gj;->i()Lr4/id;

    move-result-object v5

    new-instance v6, Lr4/lj;

    new-array v7, v4, [Lr4/id;

    aput-object v5, v7, v1

    invoke-direct {v6, v7}, Lr4/lj;-><init>([Lr4/id;)V

    aput-object v6, v2, v3

    iget-object v5, v5, Lr4/id;->q:Ljava/lang/String;

    invoke-static {v5}, Lr4/al;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v5}, Lr4/al;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :cond_3
    :goto_2
    iget-object v5, p0, Lr4/qi;->J:[Z

    aput-boolean v4, v5, v3

    iget-boolean v5, p0, Lr4/qi;->K:Z

    or-int/2addr v4, v5

    iput-boolean v4, p0, Lr4/qi;->K:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    new-instance v0, Lr4/mj;

    invoke-direct {v0, v2}, Lr4/mj;-><init>([Lr4/lj;)V

    iput-object v0, p0, Lr4/qi;->G:Lr4/mj;

    iput-boolean v4, p0, Lr4/qi;->C:Z

    iget-object v0, p0, Lr4/qi;->q:Lr4/vi;

    new-instance v1, Lr4/kj;

    iget-wide v2, p0, Lr4/qi;->H:J

    iget-object v4, p0, Lr4/qi;->A:Lr4/wf;

    invoke-interface {v4}, Lr4/wf;->zza()Z

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lr4/kj;-><init>(JZ)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lr4/vi;->f(Lr4/td;Ljava/lang/Object;)V

    iget-object v0, p0, Lr4/qi;->z:Lr4/ti;

    invoke-interface {v0, p0}, Lr4/ti;->a(Lr4/ui;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public static synthetic v(Lr4/qi;)Lr4/ri;
    .locals 0

    iget-object p0, p0, Lr4/qi;->p:Lr4/ri;

    return-object p0
.end method

.method public static synthetic w(Lr4/qi;)J
    .locals 2

    iget-wide v0, p0, Lr4/qi;->r:J

    return-wide v0
.end method

.method public static synthetic x(Lr4/qi;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lr4/qi;->w:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic y(Lr4/qi;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lr4/qi;->x:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic z(Lr4/qi;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lr4/qi;->y:Landroid/util/SparseArray;

    return-object p0
.end method


# virtual methods
.method public final C()V
    .locals 3

    iget-object v0, p0, Lr4/qi;->t:Lr4/oi;

    iget-object v1, p0, Lr4/qi;->s:Lr4/tk;

    new-instance v2, Lr4/li;

    invoke-direct {v2, p0, v0}, Lr4/li;-><init>(Lr4/qi;Lr4/oi;)V

    invoke-virtual {v1, v2}, Lr4/tk;->h(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lr4/qi;->x:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/qi;->Q:Z

    return-void
.end method

.method public final D(I)Z
    .locals 3

    iget-boolean v0, p0, Lr4/qi;->P:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lr4/qi;->u()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lr4/qi;->y:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/gj;

    invoke-virtual {p1}, Lr4/gj;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final E()V
    .locals 2

    iget-object v0, p0, Lr4/qi;->s:Lr4/tk;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Lr4/tk;->i(I)V

    return-void
.end method

.method public final F(ILr4/jd;Lr4/hf;Z)I
    .locals 7

    iget-boolean v0, p0, Lr4/qi;->E:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lr4/qi;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr4/qi;->y:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lr4/gj;

    iget-boolean v4, p0, Lr4/qi;->P:Z

    iget-wide v5, p0, Lr4/qi;->M:J

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v6}, Lr4/gj;->m(Lr4/jd;Lr4/hf;ZZJ)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x3

    return p1
.end method

.method public final G(IJ)V
    .locals 3

    iget-object v0, p0, Lr4/qi;->y:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/gj;

    iget-boolean v0, p0, Lr4/qi;->P:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lr4/gj;->j()J

    move-result-wide v0

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    invoke-virtual {p1}, Lr4/gj;->k()V

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0}, Lr4/gj;->l(JZ)Z

    return-void
.end method

.method public final bridge synthetic a(Lr4/rk;JJZ)V
    .locals 0

    check-cast p1, Lr4/ni;

    invoke-virtual {p0, p1}, Lr4/qi;->q(Lr4/ni;)V

    if-nez p6, :cond_1

    iget p1, p0, Lr4/qi;->F:I

    if-lez p1, :cond_1

    iget-object p1, p0, Lr4/qi;->y:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    iget-object p3, p0, Lr4/qi;->y:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lr4/gj;

    iget-object p4, p0, Lr4/qi;->I:[Z

    aget-boolean p4, p4, p2

    invoke-virtual {p3, p4}, Lr4/gj;->e(Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lr4/qi;->z:Lr4/ti;

    invoke-interface {p1, p0}, Lr4/ij;->b(Lr4/jj;)V

    :cond_1
    return-void
.end method

.method public final b(Lr4/wf;)V
    .locals 1

    iput-object p1, p0, Lr4/qi;->A:Lr4/wf;

    iget-object p1, p0, Lr4/qi;->x:Landroid/os/Handler;

    iget-object v0, p0, Lr4/qi;->v:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c(Lr4/id;)V
    .locals 1

    iget-object p1, p0, Lr4/qi;->x:Landroid/os/Handler;

    iget-object v0, p0, Lr4/qi;->v:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final d(J)Z
    .locals 0

    iget-boolean p1, p0, Lr4/qi;->P:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lr4/qi;->C:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lr4/qi;->F:I

    if-eqz p1, :cond_2

    :cond_0
    iget-object p1, p0, Lr4/qi;->u:Lr4/xk;

    invoke-virtual {p1}, Lr4/xk;->a()Z

    move-result p1

    iget-object p2, p0, Lr4/qi;->s:Lr4/tk;

    invoke-virtual {p2}, Lr4/tk;->f()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lr4/qi;->r()V

    const/4 p1, 0x1

    :cond_1
    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final e([Lr4/qj;[Z[Lr4/hj;[ZJ)J
    .locals 4

    iget-boolean v0, p0, Lr4/qi;->C:Z

    invoke-static {v0}, Lr4/vk;->d(Z)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    aget-object v2, p3, v1

    if-eqz v2, :cond_1

    aget-object v3, p1, v1

    if-eqz v3, :cond_0

    aget-boolean v3, p2, v1

    if-nez v3, :cond_1

    :cond_0
    check-cast v2, Lr4/pi;

    invoke-static {v2}, Lr4/pi;->e(Lr4/pi;)I

    move-result v2

    iget-object v3, p0, Lr4/qi;->I:[Z

    aget-boolean v3, v3, v2

    invoke-static {v3}, Lr4/vk;->d(Z)V

    iget v3, p0, Lr4/qi;->F:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lr4/qi;->F:I

    iget-object v3, p0, Lr4/qi;->I:[Z

    aput-boolean v0, v3, v2

    iget-object v3, p0, Lr4/qi;->y:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr4/gj;

    invoke-virtual {v2}, Lr4/gj;->g()V

    const/4 v2, 0x0

    aput-object v2, p3, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    const/4 v1, 0x0

    :goto_1
    array-length v2, p1

    const/4 v3, 0x1

    if-ge p2, v2, :cond_5

    aget-object v2, p3, p2

    if-nez v2, :cond_4

    aget-object v2, p1, p2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lr4/qj;->b()I

    invoke-virtual {v2, v0}, Lr4/qj;->d(I)I

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-static {v1}, Lr4/vk;->d(Z)V

    iget-object v1, p0, Lr4/qi;->G:Lr4/mj;

    invoke-virtual {v2}, Lr4/qj;->a()Lr4/lj;

    move-result-object v2

    invoke-virtual {v1, v2}, Lr4/mj;->b(Lr4/lj;)I

    move-result v1

    iget-object v2, p0, Lr4/qi;->I:[Z

    aget-boolean v2, v2, v1

    xor-int/2addr v2, v3

    invoke-static {v2}, Lr4/vk;->d(Z)V

    iget v2, p0, Lr4/qi;->F:I

    add-int/2addr v2, v3

    iput v2, p0, Lr4/qi;->F:I

    iget-object v2, p0, Lr4/qi;->I:[Z

    aput-boolean v3, v2, v1

    new-instance v2, Lr4/pi;

    invoke-direct {v2, p0, v1}, Lr4/pi;-><init>(Lr4/qi;I)V

    aput-object v2, p3, p2

    aput-boolean v3, p4, p2

    const/4 v1, 0x1

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_5
    iget-boolean p1, p0, Lr4/qi;->D:Z

    if-nez p1, :cond_7

    iget-object p1, p0, Lr4/qi;->y:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_3
    if-ge p2, p1, :cond_7

    iget-object v2, p0, Lr4/qi;->I:[Z

    aget-boolean v2, v2, p2

    if-nez v2, :cond_6

    iget-object v2, p0, Lr4/qi;->y:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr4/gj;

    invoke-virtual {v2}, Lr4/gj;->g()V

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_7
    iget p1, p0, Lr4/qi;->F:I

    if-nez p1, :cond_8

    iput-boolean v0, p0, Lr4/qi;->E:Z

    iget-object p1, p0, Lr4/qi;->s:Lr4/tk;

    invoke-virtual {p1}, Lr4/tk;->f()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lr4/qi;->s:Lr4/tk;

    invoke-virtual {p1}, Lr4/tk;->g()V

    goto :goto_6

    :cond_8
    iget-boolean p1, p0, Lr4/qi;->D:Z

    if-eqz p1, :cond_9

    if-eqz v1, :cond_c

    goto :goto_4

    :cond_9
    const-wide/16 p1, 0x0

    cmp-long v1, p5, p1

    if-nez v1, :cond_a

    goto :goto_6

    :cond_a
    :goto_4
    invoke-virtual {p0, p5, p6}, Lr4/qi;->h(J)J

    move-result-wide p5

    :goto_5
    array-length p1, p3

    if-ge v0, p1, :cond_c

    aget-object p1, p3, v0

    if-eqz p1, :cond_b

    aput-boolean v3, p4, v0

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_c
    :goto_6
    iput-boolean v3, p0, Lr4/qi;->D:Z

    return-wide p5
.end method

.method public final f(Lr4/ti;J)V
    .locals 0

    iput-object p1, p0, Lr4/qi;->z:Lr4/ti;

    iget-object p1, p0, Lr4/qi;->u:Lr4/xk;

    invoke-virtual {p1}, Lr4/xk;->a()Z

    invoke-virtual {p0}, Lr4/qi;->r()V

    return-void
.end method

.method public final bridge synthetic g(Lr4/rk;JJLjava/io/IOException;)I
    .locals 5

    check-cast p1, Lr4/ni;

    invoke-virtual {p0, p1}, Lr4/qi;->q(Lr4/ni;)V

    iget-object p2, p0, Lr4/qi;->k:Landroid/os/Handler;

    if-eqz p2, :cond_0

    new-instance p3, Lr4/mi;

    invoke-direct {p3, p0, p6}, Lr4/mi;-><init>(Lr4/qi;Ljava/io/IOException;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    instance-of p2, p6, Lr4/nj;

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    const/4 p3, 0x3

    goto :goto_4

    :cond_1
    invoke-virtual {p0}, Lr4/qi;->s()I

    move-result p2

    iget p4, p0, Lr4/qi;->O:I

    iget-wide p5, p0, Lr4/qi;->L:J

    const-wide/16 v0, -0x1

    const/4 v2, 0x1

    cmp-long v3, p5, v0

    if-nez v3, :cond_6

    iget-object p5, p0, Lr4/qi;->A:Lr4/wf;

    if-eqz p5, :cond_2

    invoke-interface {p5}, Lr4/wf;->a()J

    move-result-wide p5

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, p5, v0

    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    const-wide/16 p5, 0x0

    iput-wide p5, p0, Lr4/qi;->M:J

    iget-boolean v0, p0, Lr4/qi;->C:Z

    iput-boolean v0, p0, Lr4/qi;->E:Z

    iget-object v0, p0, Lr4/qi;->y:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    iget-object v3, p0, Lr4/qi;->y:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr4/gj;

    iget-boolean v4, p0, Lr4/qi;->C:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lr4/qi;->I:[Z

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v3, v4}, Lr4/gj;->e(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p1, p5, p6, p5, p6}, Lr4/ni;->d(JJ)V

    :cond_6
    :goto_3
    invoke-virtual {p0}, Lr4/qi;->s()I

    move-result p1

    iput p1, p0, Lr4/qi;->O:I

    if-gt p2, p4, :cond_7

    :goto_4
    return p3

    :cond_7
    return v2
.end method

.method public final h(J)J
    .locals 5

    iget-object v0, p0, Lr4/qi;->A:Lr4/wf;

    invoke-interface {v0}, Lr4/wf;->zza()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    iput-wide p1, p0, Lr4/qi;->M:J

    iget-object v0, p0, Lr4/qi;->y:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-virtual {p0}, Lr4/qi;->u()Z

    move-result v2

    xor-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-eqz v1, :cond_2

    if-ge v3, v0, :cond_4

    iget-object v4, p0, Lr4/qi;->I:[Z

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_1

    iget-object v1, p0, Lr4/qi;->y:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/gj;

    invoke-virtual {v1, p1, p2, v2}, Lr4/gj;->l(JZ)Z

    move-result v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iput-wide p1, p0, Lr4/qi;->N:J

    iput-boolean v2, p0, Lr4/qi;->P:Z

    iget-object v1, p0, Lr4/qi;->s:Lr4/tk;

    invoke-virtual {v1}, Lr4/tk;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lr4/qi;->s:Lr4/tk;

    invoke-virtual {v0}, Lr4/tk;->g()V

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    iget-object v3, p0, Lr4/qi;->y:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr4/gj;

    iget-object v4, p0, Lr4/qi;->I:[Z

    aget-boolean v4, v4, v1

    invoke-virtual {v3, v4}, Lr4/gj;->e(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    iput-boolean v2, p0, Lr4/qi;->E:Z

    return-wide p1
.end method

.method public final bridge synthetic i(Lr4/rk;JJ)V
    .locals 0

    check-cast p1, Lr4/ni;

    invoke-virtual {p0, p1}, Lr4/qi;->q(Lr4/ni;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr4/qi;->P:Z

    iget-wide p1, p0, Lr4/qi;->H:J

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p5, p1, p3

    if-nez p5, :cond_1

    invoke-virtual {p0}, Lr4/qi;->t()J

    move-result-wide p1

    const-wide/high16 p3, -0x8000000000000000L

    cmp-long p5, p1, p3

    if-nez p5, :cond_0

    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 p3, 0x2710

    add-long/2addr p1, p3

    :goto_0
    iput-wide p1, p0, Lr4/qi;->H:J

    iget-object p3, p0, Lr4/qi;->q:Lr4/vi;

    new-instance p4, Lr4/kj;

    iget-object p5, p0, Lr4/qi;->A:Lr4/wf;

    invoke-interface {p5}, Lr4/wf;->zza()Z

    move-result p5

    invoke-direct {p4, p1, p2, p5}, Lr4/kj;-><init>(JZ)V

    const/4 p1, 0x0

    invoke-interface {p3, p4, p1}, Lr4/vi;->f(Lr4/td;Ljava/lang/Object;)V

    :cond_1
    iget-object p1, p0, Lr4/qi;->z:Lr4/ti;

    invoke-interface {p1, p0}, Lr4/ij;->b(Lr4/jj;)V

    return-void
.end method

.method public final j()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/qi;->B:Z

    iget-object v0, p0, Lr4/qi;->x:Landroid/os/Handler;

    iget-object v1, p0, Lr4/qi;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final k(J)V
    .locals 0

    return-void
.end method

.method public final l()V
    .locals 2

    iget-object v0, p0, Lr4/qi;->s:Lr4/tk;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Lr4/tk;->i(I)V

    return-void
.end method

.method public final m()J
    .locals 8

    iget-boolean v0, p0, Lr4/qi;->P:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    invoke-virtual {p0}, Lr4/qi;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lr4/qi;->N:J

    return-wide v0

    :cond_1
    iget-boolean v0, p0, Lr4/qi;->K:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lr4/qi;->y:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const-wide v3, 0x7fffffffffffffffL

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_4

    iget-object v6, p0, Lr4/qi;->J:[Z

    aget-boolean v6, v6, v5

    if-eqz v6, :cond_2

    iget-object v6, p0, Lr4/qi;->y:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lr4/gj;

    invoke-virtual {v6}, Lr4/gj;->j()J

    move-result-wide v6

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lr4/qi;->t()J

    move-result-wide v3

    :cond_4
    cmp-long v0, v3, v1

    if-nez v0, :cond_5

    iget-wide v0, p0, Lr4/qi;->M:J

    return-wide v0

    :cond_5
    return-wide v3
.end method

.method public final n(II)Lr4/yf;
    .locals 2

    iget-object p2, p0, Lr4/qi;->y:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lr4/gj;

    if-nez p2, :cond_0

    new-instance p2, Lr4/gj;

    iget-object v0, p0, Lr4/qi;->R:Lr4/jk;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lr4/gj;-><init>(Lr4/jk;[B)V

    invoke-virtual {p2, p0}, Lr4/gj;->n(Lr4/ej;)V

    iget-object v0, p0, Lr4/qi;->y:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object p2
.end method

.method public final o()J
    .locals 2

    iget-boolean v0, p0, Lr4/qi;->E:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/qi;->E:Z

    iget-wide v0, p0, Lr4/qi;->M:J

    return-wide v0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final p()Lr4/mj;
    .locals 1

    iget-object v0, p0, Lr4/qi;->G:Lr4/mj;

    return-object v0
.end method

.method public final q(Lr4/ni;)V
    .locals 5

    iget-wide v0, p0, Lr4/qi;->L:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-static {p1}, Lr4/ni;->a(Lr4/ni;)J

    move-result-wide v0

    iput-wide v0, p0, Lr4/qi;->L:J

    :cond_0
    return-void
.end method

.method public final r()V
    .locals 11

    new-instance v6, Lr4/ni;

    iget-object v2, p0, Lr4/qi;->a:Landroid/net/Uri;

    iget-object v3, p0, Lr4/qi;->b:Lr4/fk;

    iget-object v4, p0, Lr4/qi;->t:Lr4/oi;

    iget-object v5, p0, Lr4/qi;->u:Lr4/xk;

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lr4/ni;-><init>(Lr4/qi;Landroid/net/Uri;Lr4/fk;Lr4/oi;Lr4/xk;)V

    iget-boolean v0, p0, Lr4/qi;->C:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lr4/qi;->u()Z

    move-result v0

    invoke-static {v0}, Lr4/vk;->d(Z)V

    iget-wide v3, p0, Lr4/qi;->H:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    iget-wide v7, p0, Lr4/qi;->N:J

    cmp-long v0, v7, v3

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/qi;->P:Z

    iput-wide v1, p0, Lr4/qi;->N:J

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lr4/qi;->A:Lr4/wf;

    iget-wide v3, p0, Lr4/qi;->N:J

    invoke-interface {v0, v3, v4}, Lr4/wf;->b(J)J

    move-result-wide v3

    iget-wide v7, p0, Lr4/qi;->N:J

    invoke-virtual {v6, v3, v4, v7, v8}, Lr4/ni;->d(JJ)V

    iput-wide v1, p0, Lr4/qi;->N:J

    :cond_2
    invoke-virtual {p0}, Lr4/qi;->s()I

    move-result v0

    iput v0, p0, Lr4/qi;->O:I

    iget v0, p0, Lr4/qi;->d:I

    const/4 v3, -0x1

    const/4 v4, 0x6

    const/4 v5, 0x3

    if-ne v0, v3, :cond_5

    iget-boolean v0, p0, Lr4/qi;->C:Z

    if-eqz v0, :cond_4

    iget-wide v7, p0, Lr4/qi;->L:J

    const-wide/16 v9, -0x1

    cmp-long v0, v7, v9

    if-nez v0, :cond_4

    iget-object v0, p0, Lr4/qi;->A:Lr4/wf;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lr4/wf;->a()J

    move-result-wide v7

    cmp-long v0, v7, v1

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x6

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v0, 0x3

    :cond_5
    :goto_2
    iget-object v1, p0, Lr4/qi;->s:Lr4/tk;

    invoke-virtual {v1, v6, p0, v0}, Lr4/tk;->e(Lr4/rk;Lr4/pk;I)J

    return-void
.end method

.method public final s()I
    .locals 4

    iget-object v0, p0, Lr4/qi;->y:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lr4/qi;->y:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr4/gj;

    invoke-virtual {v3}, Lr4/gj;->f()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public final t()J
    .locals 6

    iget-object v0, p0, Lr4/qi;->y:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const-wide/high16 v1, -0x8000000000000000L

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v4, p0, Lr4/qi;->y:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr4/gj;

    invoke-virtual {v4}, Lr4/gj;->j()J

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public final u()Z
    .locals 5

    iget-wide v0, p0, Lr4/qi;->N:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zza()J
    .locals 2

    iget v0, p0, Lr4/qi;->F:I

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lr4/qi;->m()J

    move-result-wide v0

    return-wide v0
.end method
