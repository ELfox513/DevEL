.class public final Lr4/gd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lr4/ti;
.implements Lr4/zj;
.implements Lr4/vi;


# instance fields
.field public A:[Lr4/nd;

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:I

.field public G:I

.field public H:I

.field public I:I

.field public J:J

.field public K:I

.field public L:Lr4/ed;

.field public M:J

.field public N:Lr4/cd;

.field public O:Lr4/cd;

.field public P:Lr4/cd;

.field public Q:Lr4/td;

.field public R:Z

.field public volatile S:I

.field public volatile T:I

.field public final U:Lr4/mp0;

.field public final a:[Lr4/nd;

.field public final b:[Lr4/od;

.field public final d:Lr4/ak;

.field public final k:Lr4/hl;

.field public final p:Landroid/os/Handler;

.field public final q:Landroid/os/HandlerThread;

.field public final r:Landroid/os/Handler;

.field public final s:Lr4/yc;

.field public final t:Lr4/sd;

.field public final u:Lr4/rd;

.field public v:Lr4/dd;

.field public w:Lr4/md;

.field public x:Lr4/nd;

.field public y:Lr4/zk;

.field public z:Lr4/wi;


# direct methods
.method public constructor <init>([Lr4/nd;Lr4/ak;Lr4/mp0;ZILandroid/os/Handler;Lr4/dd;Lr4/yc;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/gd;->a:[Lr4/nd;

    iput-object p2, p0, Lr4/gd;->d:Lr4/ak;

    iput-object p3, p0, Lr4/gd;->U:Lr4/mp0;

    iput-boolean p4, p0, Lr4/gd;->C:Z

    const/4 p3, 0x0

    iput p3, p0, Lr4/gd;->G:I

    iput-object p6, p0, Lr4/gd;->r:Landroid/os/Handler;

    const/4 p4, 0x1

    iput p4, p0, Lr4/gd;->F:I

    iput-object p7, p0, Lr4/gd;->v:Lr4/dd;

    iput-object p8, p0, Lr4/gd;->s:Lr4/yc;

    const/4 p4, 0x2

    new-array p5, p4, [Lr4/od;

    iput-object p5, p0, Lr4/gd;->b:[Lr4/od;

    const/4 p5, 0x0

    :goto_0
    if-ge p5, p4, :cond_0

    aget-object p6, p1, p5

    invoke-interface {p6, p5}, Lr4/nd;->D(I)V

    iget-object p6, p0, Lr4/gd;->b:[Lr4/od;

    aget-object p7, p1, p5

    invoke-interface {p7}, Lr4/nd;->a()Lr4/od;

    move-result-object p7

    aput-object p7, p6, p5

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lr4/hl;

    invoke-direct {p1}, Lr4/hl;-><init>()V

    iput-object p1, p0, Lr4/gd;->k:Lr4/hl;

    new-array p1, p3, [Lr4/nd;

    iput-object p1, p0, Lr4/gd;->A:[Lr4/nd;

    new-instance p1, Lr4/sd;

    invoke-direct {p1}, Lr4/sd;-><init>()V

    iput-object p1, p0, Lr4/gd;->t:Lr4/sd;

    new-instance p1, Lr4/rd;

    invoke-direct {p1}, Lr4/rd;-><init>()V

    iput-object p1, p0, Lr4/gd;->u:Lr4/rd;

    invoke-virtual {p2, p0}, Lr4/ak;->c(Lr4/zj;)V

    sget-object p1, Lr4/md;->d:Lr4/md;

    iput-object p1, p0, Lr4/gd;->w:Lr4/md;

    new-instance p1, Landroid/os/HandlerThread;

    const/16 p2, -0x10

    const-string p3, "ExoPlayerImplInternal:Handler"

    invoke-direct {p1, p3, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lr4/gd;->q:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lr4/gd;->p:Landroid/os/Handler;

    return-void
.end method

.method public static final p(Lr4/nd;)V
    .locals 2

    invoke-interface {p0}, Lr4/nd;->c()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lr4/nd;->q()V

    :cond_0
    return-void
.end method

.method public static final q(Lr4/cd;)V
    .locals 0

    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lr4/cd;->e()V

    iget-object p0, p0, Lr4/cd;->l:Lr4/cd;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final A(I)V
    .locals 0

    iput p1, p0, Lr4/gd;->T:I

    return-void
.end method

.method public final B(I)V
    .locals 3

    iget v0, p0, Lr4/gd;->F:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lr4/gd;->F:I

    iget-object v0, p0, Lr4/gd;->r:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public final C(Z)V
    .locals 3

    iget-boolean v0, p0, Lr4/gd;->E:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lr4/gd;->E:Z

    iget-object v0, p0, Lr4/gd;->r:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public final D()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/gd;->D:Z

    iget-object v1, p0, Lr4/gd;->k:Lr4/hl;

    invoke-virtual {v1}, Lr4/hl;->a()V

    iget-object v1, p0, Lr4/gd;->A:[Lr4/nd;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-interface {v3}, Lr4/nd;->g()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final E()V
    .locals 4

    iget-object v0, p0, Lr4/gd;->k:Lr4/hl;

    invoke-virtual {v0}, Lr4/hl;->b()V

    iget-object v0, p0, Lr4/gd;->A:[Lr4/nd;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-static {v3}, Lr4/gd;->p(Lr4/nd;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final F()V
    .locals 7

    iget-object v0, p0, Lr4/gd;->P:Lr4/cd;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lr4/cd;->a:Lr4/ui;

    invoke-interface {v0}, Lr4/ui;->o()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    invoke-virtual {p0, v0, v1}, Lr4/gd;->I(J)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lr4/gd;->x:Lr4/nd;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lr4/nd;->G()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lr4/gd;->y:Lr4/zk;

    invoke-interface {v0}, Lr4/zk;->r()J

    move-result-wide v0

    iput-wide v0, p0, Lr4/gd;->M:J

    iget-object v2, p0, Lr4/gd;->k:Lr4/hl;

    invoke-virtual {v2, v0, v1}, Lr4/hl;->c(J)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lr4/gd;->k:Lr4/hl;

    invoke-virtual {v0}, Lr4/hl;->r()J

    move-result-wide v0

    iput-wide v0, p0, Lr4/gd;->M:J

    :goto_0
    iget-object v0, p0, Lr4/gd;->P:Lr4/cd;

    iget-wide v1, p0, Lr4/gd;->M:J

    iget-wide v3, v0, Lr4/cd;->f:J

    iget-wide v5, v0, Lr4/cd;->h:J

    sub-long/2addr v3, v5

    sub-long/2addr v1, v3

    move-wide v0, v1

    :goto_1
    iget-object v2, p0, Lr4/gd;->v:Lr4/dd;

    iput-wide v0, v2, Lr4/dd;->c:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lr4/gd;->J:J

    iget-object v0, p0, Lr4/gd;->A:[Lr4/nd;

    array-length v0, v0

    const-wide/high16 v1, -0x8000000000000000L

    if-nez v0, :cond_3

    move-wide v3, v1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lr4/gd;->P:Lr4/cd;

    iget-object v0, v0, Lr4/cd;->a:Lr4/ui;

    invoke-interface {v0}, Lr4/ui;->m()J

    move-result-wide v3

    :goto_2
    iget-object v0, p0, Lr4/gd;->v:Lr4/dd;

    cmp-long v5, v3, v1

    if-nez v5, :cond_4

    iget-object v1, p0, Lr4/gd;->Q:Lr4/td;

    iget-object v2, p0, Lr4/gd;->P:Lr4/cd;

    iget v2, v2, Lr4/cd;->g:I

    iget-object v3, p0, Lr4/gd;->u:Lr4/rd;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lr4/td;->d(ILr4/rd;Z)Lr4/rd;

    move-result-object v1

    iget-wide v3, v1, Lr4/rd;->c:J

    :cond_4
    iput-wide v3, v0, Lr4/dd;->d:J

    return-void
.end method

.method public final G(JJ)V
    .locals 2

    iget-object v0, p0, Lr4/gd;->p:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    add-long/2addr p1, p3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    sub-long/2addr p1, p3

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-gtz v0, :cond_0

    iget-object p1, p0, Lr4/gd;->p:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_0
    iget-object p3, p0, Lr4/gd;->p:Landroid/os/Handler;

    invoke-virtual {p3, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final H(IJ)J
    .locals 7

    invoke-virtual {p0}, Lr4/gd;->E()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/gd;->D:Z

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lr4/gd;->B(I)V

    iget-object v2, p0, Lr4/gd;->P:Lr4/cd;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-object p1, p0, Lr4/gd;->N:Lr4/cd;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lr4/cd;->e()V

    :cond_0
    move-object v4, v3

    goto :goto_2

    :cond_1
    move-object v4, v3

    :goto_0
    if-eqz v2, :cond_3

    iget v5, v2, Lr4/cd;->g:I

    if-ne v5, p1, :cond_2

    iget-boolean v5, v2, Lr4/cd;->j:Z

    if-eqz v5, :cond_2

    move-object v4, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lr4/cd;->e()V

    :goto_1
    iget-object v2, v2, Lr4/cd;->l:Lr4/cd;

    goto :goto_0

    :cond_3
    :goto_2
    iget-object p1, p0, Lr4/gd;->P:Lr4/cd;

    if-ne p1, v4, :cond_4

    iget-object v2, p0, Lr4/gd;->O:Lr4/cd;

    if-eq p1, v2, :cond_6

    :cond_4
    iget-object p1, p0, Lr4/gd;->A:[Lr4/nd;

    array-length v2, p1

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v2, :cond_5

    aget-object v6, p1, v5

    invoke-interface {v6}, Lr4/nd;->o()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    new-array p1, v0, [Lr4/nd;

    iput-object p1, p0, Lr4/gd;->A:[Lr4/nd;

    iput-object v3, p0, Lr4/gd;->y:Lr4/zk;

    iput-object v3, p0, Lr4/gd;->x:Lr4/nd;

    iput-object v3, p0, Lr4/gd;->P:Lr4/cd;

    :cond_6
    if-eqz v4, :cond_8

    iput-object v3, v4, Lr4/cd;->l:Lr4/cd;

    iput-object v4, p0, Lr4/gd;->N:Lr4/cd;

    iput-object v4, p0, Lr4/gd;->O:Lr4/cd;

    invoke-virtual {p0, v4}, Lr4/gd;->n(Lr4/cd;)V

    iget-object p1, p0, Lr4/gd;->P:Lr4/cd;

    iget-boolean v0, p1, Lr4/cd;->k:Z

    if-eqz v0, :cond_7

    iget-object p1, p1, Lr4/cd;->a:Lr4/ui;

    invoke-interface {p1, p2, p3}, Lr4/ui;->h(J)J

    move-result-wide p2

    :cond_7
    invoke-virtual {p0, p2, p3}, Lr4/gd;->I(J)V

    invoke-virtual {p0}, Lr4/gd;->m()V

    goto :goto_4

    :cond_8
    iput-object v3, p0, Lr4/gd;->N:Lr4/cd;

    iput-object v3, p0, Lr4/gd;->O:Lr4/cd;

    iput-object v3, p0, Lr4/gd;->P:Lr4/cd;

    invoke-virtual {p0, p2, p3}, Lr4/gd;->I(J)V

    :goto_4
    iget-object p1, p0, Lr4/gd;->p:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-wide p2
.end method

.method public final I(J)V
    .locals 5

    iget-object v0, p0, Lr4/gd;->P:Lr4/cd;

    if-nez v0, :cond_0

    const-wide/32 v0, 0x3938700

    add-long/2addr p1, v0

    goto :goto_0

    :cond_0
    iget-wide v1, v0, Lr4/cd;->f:J

    iget-wide v3, v0, Lr4/cd;->h:J

    sub-long/2addr v1, v3

    add-long/2addr p1, v1

    :goto_0
    iput-wide p1, p0, Lr4/gd;->M:J

    iget-object v0, p0, Lr4/gd;->k:Lr4/hl;

    invoke-virtual {v0, p1, p2}, Lr4/hl;->c(J)V

    iget-object p1, p0, Lr4/gd;->A:[Lr4/nd;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_1

    aget-object v1, p1, v0

    iget-wide v2, p0, Lr4/gd;->M:J

    invoke-interface {v1, v2, v3}, Lr4/nd;->b(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final J()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lr4/gd;->K(Z)V

    iget-object v1, p0, Lr4/gd;->U:Lr4/mp0;

    invoke-virtual {v1}, Lr4/mp0;->c()V

    invoke-virtual {p0, v0}, Lr4/gd;->B(I)V

    return-void
.end method

.method public final K(Z)V
    .locals 8

    iget-object v0, p0, Lr4/gd;->p:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/gd;->D:Z

    iget-object v1, p0, Lr4/gd;->k:Lr4/hl;

    invoke-virtual {v1}, Lr4/hl;->b()V

    const/4 v1, 0x0

    iput-object v1, p0, Lr4/gd;->y:Lr4/zk;

    iput-object v1, p0, Lr4/gd;->x:Lr4/nd;

    const-wide/32 v2, 0x3938700

    iput-wide v2, p0, Lr4/gd;->M:J

    iget-object v2, p0, Lr4/gd;->A:[Lr4/nd;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    :try_start_0
    invoke-static {v5}, Lr4/gd;->p(Lr4/nd;)V

    invoke-interface {v5}, Lr4/nd;->o()V
    :try_end_0
    .catch Lr4/tc; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    goto :goto_1

    :catch_1
    move-exception v5

    :goto_1
    const-string v6, "ExoPlayerImplInternal"

    const-string v7, "Stop failed."

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-array v2, v0, [Lr4/nd;

    iput-object v2, p0, Lr4/gd;->A:[Lr4/nd;

    iget-object v2, p0, Lr4/gd;->P:Lr4/cd;

    if-nez v2, :cond_1

    iget-object v2, p0, Lr4/gd;->N:Lr4/cd;

    :cond_1
    invoke-static {v2}, Lr4/gd;->q(Lr4/cd;)V

    iput-object v1, p0, Lr4/gd;->N:Lr4/cd;

    iput-object v1, p0, Lr4/gd;->O:Lr4/cd;

    iput-object v1, p0, Lr4/gd;->P:Lr4/cd;

    invoke-virtual {p0, v0}, Lr4/gd;->C(Z)V

    if-eqz p1, :cond_3

    iget-object p1, p0, Lr4/gd;->z:Lr4/wi;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lr4/wi;->e()V

    iput-object v1, p0, Lr4/gd;->z:Lr4/wi;

    :cond_2
    iput-object v1, p0, Lr4/gd;->Q:Lr4/td;

    :cond_3
    return-void
.end method

.method public final L(J)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p1, v2

    if-eqz v4, :cond_1

    iget-object v2, p0, Lr4/gd;->v:Lr4/dd;

    iget-wide v2, v2, Lr4/dd;->c:J

    cmp-long v4, v2, p1

    if-ltz v4, :cond_1

    iget-object p1, p0, Lr4/gd;->P:Lr4/cd;

    iget-object p1, p1, Lr4/cd;->l:Lr4/cd;

    if-eqz p1, :cond_2

    iget-boolean p1, p1, Lr4/cd;->j:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public final M()V
    .locals 4

    iget-object v0, p0, Lr4/gd;->N:Lr4/cd;

    if-eqz v0, :cond_3

    iget-boolean v1, v0, Lr4/cd;->j:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lr4/gd;->O:Lr4/cd;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lr4/cd;->l:Lr4/cd;

    if-ne v1, v0, :cond_3

    :cond_0
    iget-object v0, p0, Lr4/gd;->A:[Lr4/nd;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-interface {v3}, Lr4/nd;->h()Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lr4/gd;->N:Lr4/cd;

    iget-object v0, v0, Lr4/cd;->a:Lr4/ui;

    invoke-interface {v0}, Lr4/ui;->l()V

    :cond_3
    return-void
.end method

.method public final a(Lr4/ui;)V
    .locals 2

    iget-object v0, p0, Lr4/gd;->p:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final bridge synthetic b(Lr4/jj;)V
    .locals 2

    check-cast p1, Lr4/ui;

    iget-object v0, p0, Lr4/gd;->p:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final c(Ljava/lang/Object;I)V
    .locals 4

    new-instance v0, Lr4/dd;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lr4/dd;-><init>(IJ)V

    iput-object v0, p0, Lr4/gd;->v:Lr4/dd;

    invoke-virtual {p0, p1, p2}, Lr4/gd;->d(Ljava/lang/Object;I)V

    new-instance p1, Lr4/dd;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p1, v1, v2, v3}, Lr4/dd;-><init>(IJ)V

    iput-object p1, p0, Lr4/gd;->v:Lr4/dd;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lr4/gd;->B(I)V

    invoke-virtual {p0, v1}, Lr4/gd;->K(Z)V

    return-void
.end method

.method public final d(Ljava/lang/Object;I)V
    .locals 4

    iget-object v0, p0, Lr4/gd;->r:Landroid/os/Handler;

    new-instance v1, Lr4/fd;

    iget-object v2, p0, Lr4/gd;->Q:Lr4/td;

    iget-object v3, p0, Lr4/gd;->v:Lr4/dd;

    invoke-direct {v1, v2, p1, v3, p2}, Lr4/fd;-><init>(Lr4/td;Ljava/lang/Object;Lr4/dd;I)V

    const/4 p1, 0x6

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final e(ILr4/td;Lr4/td;)I
    .locals 6

    invoke-virtual {p2}, Lr4/td;->c()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    :goto_0
    if-ge v2, v0, :cond_0

    if-ne v3, v1, :cond_0

    iget-object v3, p0, Lr4/gd;->u:Lr4/rd;

    iget-object v4, p0, Lr4/gd;->t:Lr4/sd;

    iget v5, p0, Lr4/gd;->G:I

    invoke-virtual {p2, p1, v3, v4, v5}, Lr4/td;->h(ILr4/rd;Lr4/sd;I)I

    move-result p1

    iget-object v3, p0, Lr4/gd;->u:Lr4/rd;

    const/4 v4, 0x1

    invoke-virtual {p2, p1, v3, v4}, Lr4/td;->d(ILr4/rd;Z)Lr4/rd;

    move-result-object v3

    iget-object v3, v3, Lr4/rd;->b:Ljava/lang/Object;

    invoke-virtual {p3, v3}, Lr4/td;->e(Ljava/lang/Object;)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method public final f(Lr4/td;Ljava/lang/Object;)V
    .locals 1

    iget-object p2, p0, Lr4/gd;->p:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    const/4 v0, 0x7

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final g(I)Z
    .locals 5

    iget-object v0, p0, Lr4/gd;->Q:Lr4/td;

    iget-object v1, p0, Lr4/gd;->u:Lr4/rd;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lr4/td;->d(ILr4/rd;Z)Lr4/rd;

    iget-object v0, p0, Lr4/gd;->Q:Lr4/td;

    iget-object v1, p0, Lr4/gd;->t:Lr4/sd;

    invoke-virtual {v0, v2, v1, v2}, Lr4/td;->g(ILr4/sd;Z)Lr4/sd;

    iget-object v0, p0, Lr4/gd;->Q:Lr4/td;

    iget-object v1, p0, Lr4/gd;->u:Lr4/rd;

    iget-object v3, p0, Lr4/gd;->t:Lr4/sd;

    iget v4, p0, Lr4/gd;->G:I

    invoke-virtual {v0, p1, v1, v3, v4}, Lr4/td;->h(ILr4/rd;Lr4/sd;I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v2
.end method

.method public final h(Lr4/ed;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/ed;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p1, Lr4/ed;->a:Lr4/td;

    invoke-virtual {v0}, Lr4/td;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lr4/gd;->Q:Lr4/td;

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-wide v2, p1, Lr4/ed;->c:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lr4/gd;->k(Lr4/td;IJ)Landroid/util/Pair;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lr4/gd;->Q:Lr4/td;

    if-ne v2, v0, :cond_1

    return-object p1

    :cond_1
    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lr4/gd;->u:Lr4/rd;

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v4, v5}, Lr4/td;->d(ILr4/rd;Z)Lr4/rd;

    move-result-object v3

    iget-object v3, v3, Lr4/rd;->b:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lr4/td;->e(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v2, p0, Lr4/gd;->Q:Lr4/td;

    invoke-virtual {p0, p1, v0, v2}, Lr4/gd;->e(ILr4/td;Lr4/td;)I

    move-result p1

    if-eq p1, v3, :cond_3

    iget-object p1, p0, Lr4/gd;->Q:Lr4/td;

    iget-object v0, p0, Lr4/gd;->u:Lr4/rd;

    invoke-virtual {p1, v1, v0, v1}, Lr4/td;->d(ILr4/rd;Z)Lr4/rd;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, v1, v2, v3}, Lr4/gd;->j(IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1

    :catch_0
    new-instance v0, Lr4/kd;

    iget-object v2, p0, Lr4/gd;->Q:Lr4/td;

    iget-wide v3, p1, Lr4/ed;->c:J

    invoke-direct {v0, v2, v1, v3, v4}, Lr4/kd;-><init>(Lr4/td;IJ)V

    throw v0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 33

    move-object/from16 v8, p0

    move-object/from16 v1, p1

    const/4 v10, 0x1

    :try_start_0
    iget v2, v1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Lr4/tc; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v11, 0x7

    const-wide/16 v3, 0x0

    const/4 v14, 0x3

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v15, 0x4

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x2

    const/4 v9, 0x0

    packed-switch v2, :pswitch_data_0

    const/4 v1, 0x0

    return v1

    :pswitch_0
    :try_start_1
    iget v1, v1, Landroid/os/Message;->arg1:I

    iput v1, v8, Lr4/gd;->G:I

    iget-object v2, v8, Lr4/gd;->P:Lr4/cd;

    if-nez v2, :cond_0

    iget-object v2, v8, Lr4/gd;->N:Lr4/cd;

    :cond_0
    if-nez v2, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-object v3, v8, Lr4/gd;->O:Lr4/cd;

    if-ne v2, v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    iget-object v4, v8, Lr4/gd;->N:Lr4/cd;

    if-ne v2, v4, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    iget-object v11, v8, Lr4/gd;->Q:Lr4/td;

    iget v12, v2, Lr4/cd;->g:I

    iget-object v13, v8, Lr4/gd;->u:Lr4/rd;

    iget-object v14, v8, Lr4/gd;->t:Lr4/sd;

    invoke-virtual {v11, v12, v13, v14, v1}, Lr4/td;->h(ILr4/rd;Lr4/sd;I)I

    move-result v11

    :goto_2
    iget-object v12, v2, Lr4/cd;->l:Lr4/cd;

    if-eqz v12, :cond_6

    if-eq v11, v5, :cond_6

    iget v13, v12, Lr4/cd;->g:I

    if-ne v13, v11, :cond_6

    iget-object v2, v8, Lr4/gd;->O:Lr4/cd;

    if-ne v12, v2, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    or-int/2addr v3, v2

    iget-object v2, v8, Lr4/gd;->N:Lr4/cd;

    if-ne v12, v2, :cond_5

    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    or-int/2addr v4, v2

    iget-object v2, v8, Lr4/gd;->Q:Lr4/td;

    iget-object v11, v8, Lr4/gd;->u:Lr4/rd;

    iget-object v14, v8, Lr4/gd;->t:Lr4/sd;

    invoke-virtual {v2, v13, v11, v14, v1}, Lr4/td;->h(ILr4/rd;Lr4/sd;I)I

    move-result v11

    move-object v2, v12

    goto :goto_2

    :cond_6
    if-eqz v12, :cond_7

    invoke-static {v12}, Lr4/gd;->q(Lr4/cd;)V

    iput-object v6, v2, Lr4/cd;->l:Lr4/cd;

    :cond_7
    iget v5, v2, Lr4/cd;->g:I

    invoke-virtual {v8, v5}, Lr4/gd;->g(I)Z

    move-result v5

    iput-boolean v5, v2, Lr4/cd;->i:Z

    if-nez v4, :cond_8

    iput-object v2, v8, Lr4/gd;->N:Lr4/cd;

    :cond_8
    if-nez v3, :cond_9

    iget-object v2, v8, Lr4/gd;->P:Lr4/cd;

    if-eqz v2, :cond_9

    iget v2, v2, Lr4/cd;->g:I

    iget-object v3, v8, Lr4/gd;->v:Lr4/dd;

    iget-wide v3, v3, Lr4/dd;->c:J

    invoke-virtual {v8, v2, v3, v4}, Lr4/gd;->H(IJ)J

    move-result-wide v3

    new-instance v5, Lr4/dd;

    invoke-direct {v5, v2, v3, v4}, Lr4/dd;-><init>(IJ)V

    iput-object v5, v8, Lr4/gd;->v:Lr4/dd;

    :cond_9
    iget v2, v8, Lr4/gd;->F:I

    if-ne v2, v15, :cond_a

    if-eqz v1, :cond_a

    invoke-virtual {v8, v7}, Lr4/gd;->B(I)V

    :cond_a
    :goto_5
    return v10

    :pswitch_1
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Lr4/xc;
    :try_end_1
    .catch Lr4/tc; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    array-length v2, v1

    :goto_6
    if-ge v9, v2, :cond_b

    aget-object v3, v1, v9

    iget-object v4, v3, Lr4/xc;->a:Lr4/wc;

    iget v5, v3, Lr4/xc;->b:I

    iget-object v3, v3, Lr4/xc;->c:Ljava/lang/Object;

    invoke-interface {v4, v5, v3}, Lr4/wc;->f(ILjava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_b
    iget-object v1, v8, Lr4/gd;->z:Lr4/wi;

    if-eqz v1, :cond_c

    iget-object v1, v8, Lr4/gd;->p:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_c
    :try_start_3
    monitor-enter p0
    :try_end_3
    .catch Lr4/tc; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    iget v1, v8, Lr4/gd;->I:I

    add-int/2addr v1, v10

    iput v1, v8, Lr4/gd;->I:I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return v10

    :catchall_0
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1

    :catchall_1
    move-exception v0

    move-object v1, v0

    monitor-enter p0
    :try_end_5
    .catch Lr4/tc; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    :try_start_6
    iget v2, v8, Lr4/gd;->I:I

    add-int/2addr v2, v10

    iput v2, v8, Lr4/gd;->I:I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v1
    :try_end_7
    .catch Lr4/tc; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    :catchall_2
    move-exception v0

    move-object v1, v0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v1

    :pswitch_2
    iget-object v1, v8, Lr4/gd;->P:Lr4/cd;

    if-eqz v1, :cond_1c

    const/4 v2, 0x1

    :goto_7
    if-eqz v1, :cond_1c

    iget-boolean v3, v1, Lr4/cd;->j:Z

    if-nez v3, :cond_d

    goto/16 :goto_f

    :cond_d
    invoke-virtual {v1}, Lr4/cd;->b()Z

    move-result v3

    if-eqz v3, :cond_1a

    if-eqz v2, :cond_17

    iget-object v2, v8, Lr4/gd;->O:Lr4/cd;

    iget-object v3, v8, Lr4/gd;->P:Lr4/cd;

    if-eq v2, v3, :cond_e

    const/4 v2, 0x1

    goto :goto_8

    :cond_e
    const/4 v2, 0x0

    :goto_8
    iget-object v3, v3, Lr4/cd;->l:Lr4/cd;

    invoke-static {v3}, Lr4/gd;->q(Lr4/cd;)V

    iget-object v3, v8, Lr4/gd;->P:Lr4/cd;

    iput-object v6, v3, Lr4/cd;->l:Lr4/cd;

    iput-object v3, v8, Lr4/gd;->N:Lr4/cd;

    iput-object v3, v8, Lr4/gd;->O:Lr4/cd;

    new-array v4, v7, [Z

    iget-object v5, v8, Lr4/gd;->v:Lr4/dd;

    iget-wide v11, v5, Lr4/dd;->c:J

    invoke-virtual {v3, v11, v12, v2, v4}, Lr4/cd;->d(JZ[Z)J

    move-result-wide v2

    iget-object v5, v8, Lr4/gd;->v:Lr4/dd;

    iget-wide v11, v5, Lr4/dd;->c:J

    cmp-long v5, v2, v11

    if-eqz v5, :cond_f

    iget-object v5, v8, Lr4/gd;->v:Lr4/dd;

    iput-wide v2, v5, Lr4/dd;->c:J

    invoke-virtual {v8, v2, v3}, Lr4/gd;->I(J)V

    :cond_f
    new-array v2, v7, [Z

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_9
    if-ge v3, v7, :cond_16

    iget-object v11, v8, Lr4/gd;->a:[Lr4/nd;

    aget-object v11, v11, v3

    invoke-interface {v11}, Lr4/nd;->c()I

    move-result v12

    if-eqz v12, :cond_10

    const/4 v12, 0x1

    goto :goto_a

    :cond_10
    const/4 v12, 0x0

    :goto_a
    aput-boolean v12, v2, v3

    iget-object v13, v8, Lr4/gd;->P:Lr4/cd;

    iget-object v13, v13, Lr4/cd;->d:[Lr4/hj;

    aget-object v13, v13, v3

    if-eqz v13, :cond_11

    add-int/lit8 v5, v5, 0x1

    :cond_11
    if-eqz v12, :cond_15

    invoke-interface {v11}, Lr4/nd;->j()Lr4/hj;

    move-result-object v12

    if-eq v13, v12, :cond_14

    iget-object v12, v8, Lr4/gd;->x:Lr4/nd;

    if-ne v11, v12, :cond_13

    if-nez v13, :cond_12

    iget-object v12, v8, Lr4/gd;->k:Lr4/hl;

    iget-object v13, v8, Lr4/gd;->y:Lr4/zk;

    invoke-virtual {v12, v13}, Lr4/hl;->d(Lr4/zk;)V

    :cond_12
    iput-object v6, v8, Lr4/gd;->y:Lr4/zk;

    iput-object v6, v8, Lr4/gd;->x:Lr4/nd;

    :cond_13
    invoke-static {v11}, Lr4/gd;->p(Lr4/nd;)V

    invoke-interface {v11}, Lr4/nd;->o()V

    goto :goto_b

    :cond_14
    aget-boolean v12, v4, v3

    if-eqz v12, :cond_15

    iget-wide v12, v8, Lr4/gd;->M:J

    invoke-interface {v11, v12, v13}, Lr4/nd;->b(J)V

    :cond_15
    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_16
    iget-object v3, v8, Lr4/gd;->r:Landroid/os/Handler;

    iget-object v1, v1, Lr4/cd;->m:Lr4/bk;

    invoke-virtual {v3, v14, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {v8, v2, v5}, Lr4/gd;->o([ZI)V

    goto :goto_d

    :cond_17
    iput-object v1, v8, Lr4/gd;->N:Lr4/cd;

    iget-object v1, v1, Lr4/cd;->l:Lr4/cd;

    :goto_c
    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lr4/cd;->e()V

    iget-object v1, v1, Lr4/cd;->l:Lr4/cd;

    goto :goto_c

    :cond_18
    iget-object v1, v8, Lr4/gd;->N:Lr4/cd;

    iput-object v6, v1, Lr4/cd;->l:Lr4/cd;

    iget-boolean v2, v1, Lr4/cd;->j:Z

    if-eqz v2, :cond_19

    iget-wide v2, v1, Lr4/cd;->h:J

    iget-wide v4, v8, Lr4/gd;->M:J

    iget-wide v11, v1, Lr4/cd;->f:J

    sub-long/2addr v11, v2

    sub-long/2addr v4, v11

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iget-object v3, v8, Lr4/gd;->N:Lr4/cd;

    invoke-virtual {v3, v1, v2, v9}, Lr4/cd;->c(JZ)J

    :cond_19
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lr4/gd;->m()V

    invoke-virtual/range {p0 .. p0}, Lr4/gd;->F()V

    iget-object v1, v8, Lr4/gd;->p:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_f

    :cond_1a
    iget-object v3, v8, Lr4/gd;->O:Lr4/cd;

    if-ne v1, v3, :cond_1b

    const/4 v3, 0x0

    goto :goto_e

    :cond_1b
    const/4 v3, 0x1

    :goto_e
    and-int/2addr v2, v3

    iget-object v1, v1, Lr4/cd;->l:Lr4/cd;

    goto/16 :goto_7

    :cond_1c
    :goto_f
    return v10

    :pswitch_3
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lr4/ui;

    iget-object v2, v8, Lr4/gd;->N:Lr4/cd;

    if-eqz v2, :cond_1d

    iget-object v2, v2, Lr4/cd;->a:Lr4/ui;

    if-ne v2, v1, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lr4/gd;->m()V

    :cond_1d
    return v10

    :pswitch_4
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lr4/ui;

    iget-object v2, v8, Lr4/gd;->N:Lr4/cd;

    if-eqz v2, :cond_20

    iget-object v3, v2, Lr4/cd;->a:Lr4/ui;

    if-eq v3, v1, :cond_1e

    goto :goto_10

    :cond_1e
    iput-boolean v10, v2, Lr4/cd;->j:Z

    invoke-virtual {v2}, Lr4/cd;->b()Z

    iget-wide v3, v2, Lr4/cd;->h:J

    invoke-virtual {v2, v3, v4, v9}, Lr4/cd;->c(JZ)J

    move-result-wide v3

    iput-wide v3, v2, Lr4/cd;->h:J

    iget-object v1, v8, Lr4/gd;->P:Lr4/cd;

    if-nez v1, :cond_1f

    iget-object v1, v8, Lr4/gd;->N:Lr4/cd;

    iput-object v1, v8, Lr4/gd;->O:Lr4/cd;

    iget-wide v1, v1, Lr4/cd;->h:J

    invoke-virtual {v8, v1, v2}, Lr4/gd;->I(J)V

    iget-object v1, v8, Lr4/gd;->O:Lr4/cd;

    invoke-virtual {v8, v1}, Lr4/gd;->n(Lr4/cd;)V

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lr4/gd;->m()V

    :cond_20
    :goto_10
    return v10

    :pswitch_5
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v8, Lr4/gd;->Q:Lr4/td;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lr4/td;

    iput-object v3, v8, Lr4/gd;->Q:Lr4/td;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v2, :cond_24

    iget v4, v8, Lr4/gd;->K:I

    if-lez v4, :cond_22

    iget-object v3, v8, Lr4/gd;->L:Lr4/ed;

    invoke-virtual {v8, v3}, Lr4/gd;->h(Lr4/ed;)Landroid/util/Pair;

    move-result-object v3

    iget v4, v8, Lr4/gd;->K:I

    iput v9, v8, Lr4/gd;->K:I

    iput-object v6, v8, Lr4/gd;->L:Lr4/ed;

    if-nez v3, :cond_21

    invoke-virtual {v8, v1, v4}, Lr4/gd;->c(Ljava/lang/Object;I)V

    goto/16 :goto_18

    :cond_21
    new-instance v7, Lr4/dd;

    iget-object v11, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-direct {v7, v11, v14, v15}, Lr4/dd;-><init>(IJ)V

    iput-object v7, v8, Lr4/gd;->v:Lr4/dd;

    goto :goto_11

    :cond_22
    iget-object v4, v8, Lr4/gd;->v:Lr4/dd;

    iget-wide v14, v4, Lr4/dd;->b:J

    cmp-long v4, v14, v12

    if-nez v4, :cond_24

    invoke-virtual {v3}, Lr4/td;->f()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-virtual {v8, v1, v9}, Lr4/gd;->c(Ljava/lang/Object;I)V

    goto/16 :goto_18

    :cond_23
    invoke-virtual {v8, v9, v12, v13}, Lr4/gd;->j(IJ)Landroid/util/Pair;

    move-result-object v3

    new-instance v4, Lr4/dd;

    iget-object v7, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-direct {v4, v7, v14, v15}, Lr4/dd;-><init>(IJ)V

    iput-object v4, v8, Lr4/gd;->v:Lr4/dd;

    :cond_24
    const/4 v4, 0x0

    :goto_11
    iget-object v3, v8, Lr4/gd;->P:Lr4/cd;

    if-nez v3, :cond_25

    iget-object v3, v8, Lr4/gd;->N:Lr4/cd;

    :cond_25
    if-nez v3, :cond_26

    invoke-virtual {v8, v1, v4}, Lr4/gd;->d(Ljava/lang/Object;I)V

    goto/16 :goto_18

    :cond_26
    iget-object v7, v8, Lr4/gd;->Q:Lr4/td;

    iget-object v11, v3, Lr4/cd;->b:Ljava/lang/Object;

    invoke-virtual {v7, v11}, Lr4/td;->e(Ljava/lang/Object;)I

    move-result v7

    if-ne v7, v5, :cond_2a

    iget v6, v3, Lr4/cd;->g:I

    iget-object v7, v8, Lr4/gd;->Q:Lr4/td;

    invoke-virtual {v8, v6, v2, v7}, Lr4/gd;->e(ILr4/td;Lr4/td;)I

    move-result v2

    if-ne v2, v5, :cond_27

    invoke-virtual {v8, v1, v4}, Lr4/gd;->c(Ljava/lang/Object;I)V

    goto/16 :goto_18

    :cond_27
    iget-object v2, v8, Lr4/gd;->Q:Lr4/td;

    iget-object v6, v8, Lr4/gd;->u:Lr4/rd;

    invoke-virtual {v2, v9, v6, v9}, Lr4/td;->d(ILr4/rd;Z)Lr4/rd;

    invoke-virtual {v8, v9, v12, v13}, Lr4/gd;->j(IJ)Landroid/util/Pair;

    move-result-object v2

    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iget-object v2, v8, Lr4/gd;->Q:Lr4/td;

    iget-object v7, v8, Lr4/gd;->u:Lr4/rd;

    invoke-virtual {v2, v6, v7, v10}, Lr4/td;->d(ILr4/rd;Z)Lr4/rd;

    iget-object v2, v8, Lr4/gd;->u:Lr4/rd;

    iget-object v2, v2, Lr4/rd;->b:Ljava/lang/Object;

    iput v5, v3, Lr4/cd;->g:I

    :goto_12
    iget-object v3, v3, Lr4/cd;->l:Lr4/cd;

    if-eqz v3, :cond_29

    iget-object v7, v3, Lr4/cd;->b:Ljava/lang/Object;

    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eq v10, v7, :cond_28

    const/4 v7, -0x1

    goto :goto_13

    :cond_28
    move v7, v6

    :goto_13
    iput v7, v3, Lr4/cd;->g:I

    goto :goto_12

    :cond_29
    invoke-virtual {v8, v6, v11, v12}, Lr4/gd;->H(IJ)J

    move-result-wide v2

    new-instance v5, Lr4/dd;

    invoke-direct {v5, v6, v2, v3}, Lr4/dd;-><init>(IJ)V

    iput-object v5, v8, Lr4/gd;->v:Lr4/dd;

    invoke-virtual {v8, v1, v4}, Lr4/gd;->d(Ljava/lang/Object;I)V

    goto/16 :goto_18

    :cond_2a
    invoke-virtual {v8, v9}, Lr4/gd;->g(I)Z

    move-result v2

    iput v9, v3, Lr4/cd;->g:I

    iput-boolean v2, v3, Lr4/cd;->i:Z

    iget-object v2, v8, Lr4/gd;->O:Lr4/cd;

    if-ne v3, v2, :cond_2b

    const/4 v2, 0x1

    goto :goto_14

    :cond_2b
    const/4 v2, 0x0

    :goto_14
    iget-object v11, v8, Lr4/gd;->v:Lr4/dd;

    iget v12, v11, Lr4/dd;->a:I

    if-eqz v12, :cond_2c

    new-instance v12, Lr4/dd;

    iget-wide v13, v11, Lr4/dd;->b:J

    invoke-direct {v12, v9, v13, v14}, Lr4/dd;-><init>(IJ)V

    iget-wide v13, v11, Lr4/dd;->c:J

    iput-wide v13, v12, Lr4/dd;->c:J

    iget-wide v13, v11, Lr4/dd;->d:J

    iput-wide v13, v12, Lr4/dd;->d:J

    iput-object v12, v8, Lr4/gd;->v:Lr4/dd;

    :cond_2c
    :goto_15
    iget-object v11, v3, Lr4/cd;->l:Lr4/cd;

    if-eqz v11, :cond_30

    iget-object v12, v8, Lr4/gd;->Q:Lr4/td;

    iget-object v13, v8, Lr4/gd;->u:Lr4/rd;

    iget-object v14, v8, Lr4/gd;->t:Lr4/sd;

    iget v15, v8, Lr4/gd;->G:I

    invoke-virtual {v12, v7, v13, v14, v15}, Lr4/td;->h(ILr4/rd;Lr4/sd;I)I

    move-result v7

    if-eq v7, v5, :cond_2e

    iget-object v12, v11, Lr4/cd;->b:Ljava/lang/Object;

    iget-object v13, v8, Lr4/gd;->Q:Lr4/td;

    iget-object v14, v8, Lr4/gd;->u:Lr4/rd;

    invoke-virtual {v13, v7, v14, v10}, Lr4/td;->d(ILr4/rd;Z)Lr4/rd;

    move-result-object v13

    iget-object v13, v13, Lr4/rd;->b:Ljava/lang/Object;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2e

    invoke-virtual {v8, v7}, Lr4/gd;->g(I)Z

    move-result v3

    iput v7, v11, Lr4/cd;->g:I

    iput-boolean v3, v11, Lr4/cd;->i:Z

    iget-object v3, v8, Lr4/gd;->O:Lr4/cd;

    if-ne v11, v3, :cond_2d

    const/4 v3, 0x1

    goto :goto_16

    :cond_2d
    const/4 v3, 0x0

    :goto_16
    or-int/2addr v2, v3

    move-object v3, v11

    goto :goto_15

    :cond_2e
    if-nez v2, :cond_2f

    iget-object v2, v8, Lr4/gd;->P:Lr4/cd;

    iget v2, v2, Lr4/cd;->g:I

    iget-object v3, v8, Lr4/gd;->v:Lr4/dd;

    iget-wide v5, v3, Lr4/dd;->c:J

    invoke-virtual {v8, v2, v5, v6}, Lr4/gd;->H(IJ)J

    move-result-wide v5

    new-instance v3, Lr4/dd;

    invoke-direct {v3, v2, v5, v6}, Lr4/dd;-><init>(IJ)V

    iput-object v3, v8, Lr4/gd;->v:Lr4/dd;

    goto :goto_17

    :cond_2f
    iput-object v3, v8, Lr4/gd;->N:Lr4/cd;

    iput-object v6, v3, Lr4/cd;->l:Lr4/cd;

    invoke-static {v11}, Lr4/gd;->q(Lr4/cd;)V

    :cond_30
    :goto_17
    invoke-virtual {v8, v1, v4}, Lr4/gd;->d(Ljava/lang/Object;I)V

    :goto_18
    return v10

    :pswitch_6
    invoke-virtual {v8, v10}, Lr4/gd;->K(Z)V

    iget-object v1, v8, Lr4/gd;->U:Lr4/mp0;

    invoke-virtual {v1}, Lr4/mp0;->d()V

    invoke-virtual {v8, v10}, Lr4/gd;->B(I)V

    monitor-enter p0
    :try_end_9
    .catch Lr4/tc; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2

    :try_start_a
    iput-boolean v10, v8, Lr4/gd;->B:Z

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return v10

    :catchall_3
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v1

    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lr4/gd;->J()V

    return v10

    :pswitch_8
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lr4/md;

    iget-object v2, v8, Lr4/gd;->y:Lr4/zk;

    if-eqz v2, :cond_31

    invoke-interface {v2, v1}, Lr4/zk;->p0(Lr4/md;)Lr4/md;

    move-result-object v1

    goto :goto_19

    :cond_31
    iget-object v2, v8, Lr4/gd;->k:Lr4/hl;

    invoke-virtual {v2, v1}, Lr4/hl;->p0(Lr4/md;)Lr4/md;

    :goto_19
    iput-object v1, v8, Lr4/gd;->w:Lr4/md;

    iget-object v2, v8, Lr4/gd;->r:Landroid/os/Handler;

    invoke-virtual {v2, v11, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return v10

    :pswitch_9
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lr4/ed;

    iget-object v2, v8, Lr4/gd;->Q:Lr4/td;

    if-nez v2, :cond_32

    iget v2, v8, Lr4/gd;->K:I

    add-int/2addr v2, v10

    iput v2, v8, Lr4/gd;->K:I

    iput-object v1, v8, Lr4/gd;->L:Lr4/ed;

    goto/16 :goto_1d

    :cond_32
    invoke-virtual {v8, v1}, Lr4/gd;->h(Lr4/ed;)Landroid/util/Pair;

    move-result-object v2

    if-nez v2, :cond_33

    new-instance v1, Lr4/dd;

    invoke-direct {v1, v9, v3, v4}, Lr4/dd;-><init>(IJ)V

    iput-object v1, v8, Lr4/gd;->v:Lr4/dd;

    iget-object v2, v8, Lr4/gd;->r:Landroid/os/Handler;

    invoke-virtual {v2, v15, v10, v9, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    new-instance v1, Lr4/dd;

    invoke-direct {v1, v9, v12, v13}, Lr4/dd;-><init>(IJ)V

    iput-object v1, v8, Lr4/gd;->v:Lr4/dd;

    invoke-virtual {v8, v15}, Lr4/gd;->B(I)V

    invoke-virtual {v8, v9}, Lr4/gd;->K(Z)V

    goto :goto_1d

    :cond_33
    iget-wide v3, v1, Lr4/ed;->c:J

    cmp-long v1, v3, v12

    if-nez v1, :cond_34

    const/4 v1, 0x1

    goto :goto_1a

    :cond_34
    const/4 v1, 0x0

    :goto_1a
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4
    :try_end_b
    .catch Lr4/tc; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_2

    :try_start_c
    iget-object v2, v8, Lr4/gd;->v:Lr4/dd;

    iget v6, v2, Lr4/dd;->a:I

    if-ne v3, v6, :cond_35

    const-wide/16 v16, 0x3e8

    div-long v6, v4, v16

    iget-wide v11, v2, Lr4/dd;->c:J

    div-long v11, v11, v16
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    cmp-long v2, v6, v11

    if-nez v2, :cond_35

    :try_start_d
    new-instance v2, Lr4/dd;

    invoke-direct {v2, v3, v4, v5}, Lr4/dd;-><init>(IJ)V

    iput-object v2, v8, Lr4/gd;->v:Lr4/dd;

    iget-object v3, v8, Lr4/gd;->r:Landroid/os/Handler;

    invoke-virtual {v3, v15, v1, v9, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    :goto_1b
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_d
    .catch Lr4/tc; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_1d

    :cond_35
    :try_start_e
    invoke-virtual {v8, v3, v4, v5}, Lr4/gd;->H(IJ)J

    move-result-wide v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    cmp-long v2, v4, v6

    if-eqz v2, :cond_36

    const/4 v2, 0x1

    goto :goto_1c

    :cond_36
    const/4 v2, 0x0

    :goto_1c
    or-int/2addr v1, v2

    :try_start_f
    new-instance v2, Lr4/dd;

    invoke-direct {v2, v3, v6, v7}, Lr4/dd;-><init>(IJ)V

    iput-object v2, v8, Lr4/gd;->v:Lr4/dd;

    iget-object v3, v8, Lr4/gd;->r:Landroid/os/Handler;

    invoke-virtual {v3, v15, v1, v9, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    goto :goto_1b

    :goto_1d
    return v10

    :catchall_4
    move-exception v0

    move-object v2, v0

    new-instance v6, Lr4/dd;

    invoke-direct {v6, v3, v4, v5}, Lr4/dd;-><init>(IJ)V

    iput-object v6, v8, Lr4/gd;->v:Lr4/dd;

    iget-object v3, v8, Lr4/gd;->r:Landroid/os/Handler;

    invoke-virtual {v3, v15, v1, v9, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    throw v2

    :pswitch_a
    const-wide/16 v16, 0x3e8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-object v1, v8, Lr4/gd;->Q:Lr4/td;

    if-nez v1, :cond_37

    iget-object v1, v8, Lr4/gd;->z:Lr4/wi;

    invoke-interface {v1}, Lr4/wi;->a()V

    move-wide v11, v5

    goto/16 :goto_2f

    :cond_37
    iget-object v1, v8, Lr4/gd;->N:Lr4/cd;

    if-nez v1, :cond_38

    iget-object v1, v8, Lr4/gd;->v:Lr4/dd;

    iget v1, v1, Lr4/dd;->a:I

    goto :goto_1e

    :cond_38
    iget v2, v1, Lr4/cd;->g:I

    iget-boolean v7, v1, Lr4/cd;->i:Z

    if-nez v7, :cond_40

    invoke-virtual {v1}, Lr4/cd;->a()Z

    move-result v1

    if-eqz v1, :cond_40

    iget-object v1, v8, Lr4/gd;->Q:Lr4/td;

    iget-object v7, v8, Lr4/gd;->u:Lr4/rd;

    invoke-virtual {v1, v2, v7, v9}, Lr4/td;->d(ILr4/rd;Z)Lr4/rd;

    move-result-object v1

    iget-wide v14, v1, Lr4/rd;->c:J

    cmp-long v1, v14, v12

    if-eqz v1, :cond_40

    iget-object v1, v8, Lr4/gd;->P:Lr4/cd;

    if-eqz v1, :cond_39

    iget-object v7, v8, Lr4/gd;->N:Lr4/cd;

    iget v7, v7, Lr4/cd;->c:I

    iget v1, v1, Lr4/cd;->c:I

    sub-int/2addr v7, v1

    const/16 v1, 0x64

    if-eq v7, v1, :cond_40

    :cond_39
    iget-object v1, v8, Lr4/gd;->Q:Lr4/td;

    iget-object v7, v8, Lr4/gd;->u:Lr4/rd;

    iget-object v14, v8, Lr4/gd;->t:Lr4/sd;

    iget v15, v8, Lr4/gd;->G:I

    invoke-virtual {v1, v2, v7, v14, v15}, Lr4/td;->h(ILr4/rd;Lr4/sd;I)I

    move-result v1

    :goto_1e
    iget-object v2, v8, Lr4/gd;->Q:Lr4/td;

    invoke-virtual {v2}, Lr4/td;->c()I

    move-result v2

    if-lt v1, v2, :cond_3a

    iget-object v1, v8, Lr4/gd;->z:Lr4/wi;

    invoke-interface {v1}, Lr4/wi;->a()V

    goto/16 :goto_24

    :cond_3a
    iget-object v2, v8, Lr4/gd;->N:Lr4/cd;

    if-nez v2, :cond_3b

    iget-object v2, v8, Lr4/gd;->v:Lr4/dd;

    iget-wide v3, v2, Lr4/dd;->c:J

    :goto_1f
    move-wide v11, v5

    const/4 v15, 0x2

    goto :goto_20

    :cond_3b
    iget-object v2, v8, Lr4/gd;->Q:Lr4/td;

    iget-object v7, v8, Lr4/gd;->u:Lr4/rd;

    invoke-virtual {v2, v1, v7, v9}, Lr4/td;->d(ILr4/rd;Z)Lr4/rd;

    iget-object v2, v8, Lr4/gd;->Q:Lr4/td;

    iget-object v7, v8, Lr4/gd;->t:Lr4/sd;

    invoke-virtual {v2, v9, v7, v9}, Lr4/td;->g(ILr4/sd;Z)Lr4/sd;

    if-eqz v1, :cond_3c

    goto :goto_1f

    :cond_3c
    iget-object v1, v8, Lr4/gd;->N:Lr4/cd;

    iget-wide v14, v1, Lr4/cd;->f:J

    iget-wide v11, v1, Lr4/cd;->h:J

    sub-long/2addr v14, v11

    iget-object v2, v8, Lr4/gd;->Q:Lr4/td;

    iget v1, v1, Lr4/cd;->g:I

    iget-object v7, v8, Lr4/gd;->u:Lr4/rd;

    invoke-virtual {v2, v1, v7, v9}, Lr4/td;->d(ILr4/rd;Z)Lr4/rd;

    move-result-object v1

    iget-wide v1, v1, Lr4/rd;->c:J

    add-long/2addr v14, v1

    iget-wide v1, v8, Lr4/gd;->M:J

    sub-long/2addr v14, v1

    iget-object v2, v8, Lr4/gd;->Q:Lr4/td;

    const/4 v7, 0x0

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v3, v4, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    move-object/from16 v1, p0

    move v3, v7

    move-wide v6, v5

    move-wide v4, v11

    move-wide v11, v6

    const/4 v15, 0x2

    move-wide v6, v13

    invoke-virtual/range {v1 .. v7}, Lr4/gd;->l(Lr4/td;IJJ)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_41

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move v1, v2

    :goto_20
    iget-object v2, v8, Lr4/gd;->N:Lr4/cd;

    if-nez v2, :cond_3d

    const-wide/32 v5, 0x3938700

    add-long/2addr v5, v3

    :goto_21
    move-wide/from16 v21, v5

    goto :goto_22

    :cond_3d
    iget-wide v5, v2, Lr4/cd;->f:J

    iget-wide v13, v2, Lr4/cd;->h:J

    sub-long/2addr v5, v13

    iget-object v7, v8, Lr4/gd;->Q:Lr4/td;

    iget v2, v2, Lr4/cd;->g:I

    iget-object v13, v8, Lr4/gd;->u:Lr4/rd;

    invoke-virtual {v7, v2, v13, v9}, Lr4/td;->d(ILr4/rd;Z)Lr4/rd;

    move-result-object v2

    iget-wide v13, v2, Lr4/rd;->c:J

    add-long/2addr v5, v13

    goto :goto_21

    :goto_22
    iget-object v2, v8, Lr4/gd;->N:Lr4/cd;

    if-nez v2, :cond_3e

    const/16 v27, 0x0

    goto :goto_23

    :cond_3e
    iget v2, v2, Lr4/cd;->c:I

    add-int/2addr v2, v10

    move/from16 v27, v2

    :goto_23
    invoke-virtual {v8, v1}, Lr4/gd;->g(I)Z

    move-result v29

    iget-object v2, v8, Lr4/gd;->Q:Lr4/td;

    iget-object v5, v8, Lr4/gd;->u:Lr4/rd;

    invoke-virtual {v2, v1, v5, v10}, Lr4/td;->d(ILr4/rd;Z)Lr4/rd;

    new-instance v2, Lr4/cd;

    iget-object v5, v8, Lr4/gd;->a:[Lr4/nd;

    iget-object v6, v8, Lr4/gd;->b:[Lr4/od;

    iget-object v7, v8, Lr4/gd;->d:Lr4/ak;

    iget-object v13, v8, Lr4/gd;->U:Lr4/mp0;

    iget-object v14, v8, Lr4/gd;->z:Lr4/wi;

    iget-object v15, v8, Lr4/gd;->u:Lr4/rd;

    iget-object v15, v15, Lr4/rd;->b:Ljava/lang/Object;

    const/16 v32, 0x0

    move-object/from16 v18, v2

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v23, v7

    move-object/from16 v24, v13

    move-object/from16 v25, v14

    move-object/from16 v26, v15

    move/from16 v28, v1

    move-wide/from16 v30, v3

    invoke-direct/range {v18 .. v32}, Lr4/cd;-><init>([Lr4/nd;[Lr4/od;JLr4/ak;Lr4/mp0;Lr4/wi;Ljava/lang/Object;IIZJ[B)V

    iget-object v1, v8, Lr4/gd;->N:Lr4/cd;

    if-eqz v1, :cond_3f

    iput-object v2, v1, Lr4/cd;->l:Lr4/cd;

    :cond_3f
    iput-object v2, v8, Lr4/gd;->N:Lr4/cd;

    iget-object v1, v2, Lr4/cd;->a:Lr4/ui;

    invoke-interface {v1, v8, v3, v4}, Lr4/ui;->f(Lr4/ti;J)V

    invoke-virtual {v8, v10}, Lr4/gd;->C(Z)V

    goto :goto_25

    :cond_40
    :goto_24
    move-wide v11, v5

    :cond_41
    :goto_25
    iget-object v1, v8, Lr4/gd;->N:Lr4/cd;

    if-eqz v1, :cond_43

    invoke-virtual {v1}, Lr4/cd;->a()Z

    move-result v1

    if-eqz v1, :cond_42

    goto :goto_26

    :cond_42
    iget-object v1, v8, Lr4/gd;->N:Lr4/cd;

    if-eqz v1, :cond_44

    iget-boolean v1, v8, Lr4/gd;->E:Z

    if-nez v1, :cond_44

    invoke-virtual/range {p0 .. p0}, Lr4/gd;->m()V

    goto :goto_27

    :cond_43
    :goto_26
    invoke-virtual {v8, v9}, Lr4/gd;->C(Z)V

    :cond_44
    :goto_27
    iget-object v1, v8, Lr4/gd;->P:Lr4/cd;

    if-eqz v1, :cond_4f

    :goto_28
    iget-object v1, v8, Lr4/gd;->P:Lr4/cd;

    iget-object v2, v8, Lr4/gd;->O:Lr4/cd;

    if-eq v1, v2, :cond_45

    iget-wide v3, v8, Lr4/gd;->M:J

    iget-object v5, v1, Lr4/cd;->l:Lr4/cd;

    iget-wide v5, v5, Lr4/cd;->f:J

    cmp-long v7, v3, v5

    if-ltz v7, :cond_45

    invoke-virtual {v1}, Lr4/cd;->e()V

    iget-object v1, v8, Lr4/gd;->P:Lr4/cd;

    iget-object v1, v1, Lr4/cd;->l:Lr4/cd;

    invoke-virtual {v8, v1}, Lr4/gd;->n(Lr4/cd;)V

    new-instance v1, Lr4/dd;

    iget-object v2, v8, Lr4/gd;->P:Lr4/cd;

    iget v3, v2, Lr4/cd;->g:I

    iget-wide v4, v2, Lr4/cd;->h:J

    invoke-direct {v1, v3, v4, v5}, Lr4/dd;-><init>(IJ)V

    iput-object v1, v8, Lr4/gd;->v:Lr4/dd;

    invoke-virtual/range {p0 .. p0}, Lr4/gd;->F()V

    iget-object v1, v8, Lr4/gd;->r:Landroid/os/Handler;

    const/4 v2, 0x5

    iget-object v3, v8, Lr4/gd;->v:Lr4/dd;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_28

    :cond_45
    iget-boolean v1, v2, Lr4/cd;->i:Z

    if-eqz v1, :cond_47

    const/4 v1, 0x0

    :goto_29
    const/4 v2, 0x2

    if-ge v1, v2, :cond_4f

    iget-object v2, v8, Lr4/gd;->a:[Lr4/nd;

    aget-object v2, v2, v1

    iget-object v3, v8, Lr4/gd;->O:Lr4/cd;

    iget-object v3, v3, Lr4/cd;->d:[Lr4/hj;

    aget-object v3, v3, v1

    if-eqz v3, :cond_46

    invoke-interface {v2}, Lr4/nd;->j()Lr4/hj;

    move-result-object v4

    if-ne v4, v3, :cond_46

    invoke-interface {v2}, Lr4/nd;->h()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-interface {v2}, Lr4/nd;->i()V

    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_47
    const/4 v1, 0x0

    :goto_2a
    const/4 v2, 0x2

    if-ge v1, v2, :cond_49

    iget-object v2, v8, Lr4/gd;->a:[Lr4/nd;

    aget-object v2, v2, v1

    iget-object v3, v8, Lr4/gd;->O:Lr4/cd;

    iget-object v3, v3, Lr4/cd;->d:[Lr4/hj;

    aget-object v3, v3, v1

    invoke-interface {v2}, Lr4/nd;->j()Lr4/hj;

    move-result-object v4

    if-ne v4, v3, :cond_4f

    if-eqz v3, :cond_48

    invoke-interface {v2}, Lr4/nd;->h()Z

    move-result v2

    if-eqz v2, :cond_4f

    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_49
    iget-object v1, v8, Lr4/gd;->O:Lr4/cd;

    iget-object v2, v1, Lr4/cd;->l:Lr4/cd;

    if-eqz v2, :cond_4f

    iget-boolean v3, v2, Lr4/cd;->j:Z

    if-eqz v3, :cond_4f

    iget-object v1, v1, Lr4/cd;->m:Lr4/bk;

    iput-object v2, v8, Lr4/gd;->O:Lr4/cd;

    iget-object v3, v2, Lr4/cd;->m:Lr4/bk;

    iget-object v2, v2, Lr4/cd;->a:Lr4/ui;

    invoke-interface {v2}, Lr4/ui;->o()J

    move-result-wide v4

    const/4 v2, 0x0

    const/4 v6, 0x2

    :goto_2b
    if-ge v2, v6, :cond_4f

    iget-object v6, v8, Lr4/gd;->a:[Lr4/nd;

    aget-object v6, v6, v2

    iget-object v7, v1, Lr4/bk;->b:Lr4/yj;

    invoke-virtual {v7, v2}, Lr4/yj;->a(I)Lr4/qj;

    move-result-object v7

    if-nez v7, :cond_4b

    :cond_4a
    :goto_2c
    move-object/from16 v19, v3

    move-wide/from16 v20, v4

    goto :goto_2e

    :cond_4b
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v4, v13

    if-eqz v7, :cond_4c

    invoke-interface {v6}, Lr4/nd;->i()V

    goto :goto_2c

    :cond_4c
    invoke-interface {v6}, Lr4/nd;->k()Z

    move-result v7

    if-nez v7, :cond_4a

    iget-object v7, v3, Lr4/bk;->b:Lr4/yj;

    invoke-virtual {v7, v2}, Lr4/yj;->a(I)Lr4/qj;

    move-result-object v7

    iget-object v13, v1, Lr4/bk;->d:[Lr4/pd;

    aget-object v13, v13, v2

    iget-object v14, v3, Lr4/bk;->d:[Lr4/pd;

    aget-object v14, v14, v2

    if-eqz v7, :cond_4e

    invoke-virtual {v14, v13}, Lr4/pd;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4e

    invoke-virtual {v7}, Lr4/qj;->b()I

    new-array v13, v10, [Lr4/id;

    const/4 v14, 0x0

    :goto_2d
    if-gtz v14, :cond_4d

    invoke-virtual {v7, v14}, Lr4/qj;->c(I)Lr4/id;

    move-result-object v15

    aput-object v15, v13, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_2d

    :cond_4d
    iget-object v7, v8, Lr4/gd;->O:Lr4/cd;

    iget-object v14, v7, Lr4/cd;->d:[Lr4/hj;

    aget-object v14, v14, v2

    iget-wide v9, v7, Lr4/cd;->f:J

    move-object/from16 v19, v3

    move-wide/from16 v20, v4

    iget-wide v3, v7, Lr4/cd;->h:J

    sub-long/2addr v9, v3

    invoke-interface {v6, v13, v14, v9, v10}, Lr4/nd;->s([Lr4/id;Lr4/hj;J)V

    goto :goto_2e

    :cond_4e
    move-object/from16 v19, v3

    move-wide/from16 v20, v4

    invoke-interface {v6}, Lr4/nd;->i()V

    :goto_2e
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v19

    move-wide/from16 v4, v20

    const/4 v6, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    goto :goto_2b

    :cond_4f
    :goto_2f
    iget-object v1, v8, Lr4/gd;->P:Lr4/cd;

    const-wide/16 v2, 0xa

    if-nez v1, :cond_50

    invoke-virtual/range {p0 .. p0}, Lr4/gd;->M()V

    invoke-virtual {v8, v11, v12, v2, v3}, Lr4/gd;->G(JJ)V

    :goto_30
    const/4 v1, 0x1

    goto/16 :goto_3f

    :cond_50
    const-string v1, "doSomeWork"

    invoke-static {v1}, Lr4/jl;->a(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lr4/gd;->F()V

    iget-object v1, v8, Lr4/gd;->P:Lr4/cd;

    iget-object v1, v1, Lr4/cd;->a:Lr4/ui;

    iget-object v4, v8, Lr4/gd;->v:Lr4/dd;

    iget-wide v4, v4, Lr4/dd;->c:J

    invoke-interface {v1, v4, v5}, Lr4/ui;->k(J)V

    iget-object v1, v8, Lr4/gd;->A:[Lr4/nd;

    array-length v4, v1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    :goto_31
    if-ge v7, v4, :cond_56

    aget-object v9, v1, v7

    iget-wide v13, v8, Lr4/gd;->M:J

    iget-wide v2, v8, Lr4/gd;->J:J

    invoke-interface {v9, v13, v14, v2, v3}, Lr4/nd;->n(JJ)V

    if-eqz v6, :cond_51

    invoke-interface {v9}, Lr4/nd;->G()Z

    move-result v2

    if-eqz v2, :cond_51

    const/4 v6, 0x1

    goto :goto_32

    :cond_51
    const/4 v6, 0x0

    :goto_32
    invoke-interface {v9}, Lr4/nd;->N()Z

    move-result v2

    if-nez v2, :cond_53

    invoke-interface {v9}, Lr4/nd;->G()Z

    move-result v2

    if-eqz v2, :cond_52

    goto :goto_33

    :cond_52
    const/4 v2, 0x0

    goto :goto_34

    :cond_53
    :goto_33
    const/4 v2, 0x1

    :goto_34
    if-nez v2, :cond_54

    invoke-interface {v9}, Lr4/nd;->l()V

    :cond_54
    if-eqz v5, :cond_55

    if-eqz v2, :cond_55

    const/4 v5, 0x1

    goto :goto_35

    :cond_55
    const/4 v5, 0x0

    :goto_35
    add-int/lit8 v7, v7, 0x1

    const-wide/16 v2, 0xa

    goto :goto_31

    :cond_56
    if-nez v5, :cond_57

    invoke-virtual/range {p0 .. p0}, Lr4/gd;->M()V

    :cond_57
    iget-object v1, v8, Lr4/gd;->y:Lr4/zk;

    if-eqz v1, :cond_58

    invoke-interface {v1}, Lr4/zk;->o0()Lr4/md;

    move-result-object v1

    iget-object v2, v8, Lr4/gd;->w:Lr4/md;

    invoke-virtual {v1, v2}, Lr4/md;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_58

    iput-object v1, v8, Lr4/gd;->w:Lr4/md;

    iget-object v2, v8, Lr4/gd;->k:Lr4/hl;

    iget-object v3, v8, Lr4/gd;->y:Lr4/zk;

    invoke-virtual {v2, v3}, Lr4/hl;->d(Lr4/zk;)V

    iget-object v2, v8, Lr4/gd;->r:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_58
    iget-object v1, v8, Lr4/gd;->Q:Lr4/td;

    iget-object v2, v8, Lr4/gd;->P:Lr4/cd;

    iget v2, v2, Lr4/cd;->g:I

    iget-object v3, v8, Lr4/gd;->u:Lr4/rd;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lr4/td;->d(ILr4/rd;Z)Lr4/rd;

    move-result-object v1

    iget-wide v1, v1, Lr4/rd;->c:J

    if-eqz v6, :cond_5a

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v1, v3

    if-eqz v6, :cond_59

    iget-object v3, v8, Lr4/gd;->v:Lr4/dd;

    iget-wide v3, v3, Lr4/dd;->c:J

    cmp-long v6, v1, v3

    if-gtz v6, :cond_5a

    :cond_59
    iget-object v3, v8, Lr4/gd;->P:Lr4/cd;

    iget-boolean v3, v3, Lr4/cd;->i:Z

    if-eqz v3, :cond_5a

    const/4 v3, 0x4

    invoke-virtual {v8, v3}, Lr4/gd;->B(I)V

    invoke-virtual/range {p0 .. p0}, Lr4/gd;->E()V

    goto/16 :goto_3a

    :cond_5a
    iget v3, v8, Lr4/gd;->F:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_60

    iget-object v3, v8, Lr4/gd;->A:[Lr4/nd;

    array-length v3, v3

    if-lez v3, :cond_5f

    if-eqz v5, :cond_62

    iget-boolean v1, v8, Lr4/gd;->D:Z

    iget-object v2, v8, Lr4/gd;->N:Lr4/cd;

    iget-boolean v3, v2, Lr4/cd;->j:Z

    if-nez v3, :cond_5b

    iget-wide v2, v2, Lr4/cd;->h:J

    goto :goto_36

    :cond_5b
    iget-object v2, v2, Lr4/cd;->a:Lr4/ui;

    invoke-interface {v2}, Lr4/ui;->m()J

    move-result-wide v2

    :goto_36
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v2, v4

    if-nez v6, :cond_5d

    iget-object v2, v8, Lr4/gd;->N:Lr4/cd;

    iget-boolean v3, v2, Lr4/cd;->i:Z

    if-eqz v3, :cond_5c

    goto :goto_38

    :cond_5c
    iget-object v3, v8, Lr4/gd;->Q:Lr4/td;

    iget v2, v2, Lr4/cd;->g:I

    iget-object v4, v8, Lr4/gd;->u:Lr4/rd;

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Lr4/td;->d(ILr4/rd;Z)Lr4/rd;

    move-result-object v2

    iget-wide v2, v2, Lr4/rd;->c:J

    :cond_5d
    iget-boolean v4, v8, Lr4/gd;->R:Z

    if-eqz v4, :cond_5e

    iget-object v2, v8, Lr4/gd;->U:Lr4/mp0;

    iget-object v3, v8, Lr4/gd;->v:Lr4/dd;

    iget-wide v3, v3, Lr4/dd;->d:J

    iget-object v5, v8, Lr4/gd;->N:Lr4/cd;

    iget-wide v6, v8, Lr4/gd;->M:J

    iget-wide v9, v5, Lr4/cd;->f:J

    iget-wide v13, v5, Lr4/cd;->h:J

    sub-long/2addr v9, v13

    sub-long/2addr v6, v9

    sub-long/2addr v3, v6

    invoke-virtual {v2, v3, v4, v1}, Lr4/mp0;->e(JZ)Z

    move-result v1

    goto :goto_37

    :cond_5e
    iget-object v4, v8, Lr4/gd;->U:Lr4/mp0;

    iget-object v5, v8, Lr4/gd;->N:Lr4/cd;

    iget-wide v6, v8, Lr4/gd;->M:J

    iget-wide v9, v5, Lr4/cd;->f:J

    iget-wide v13, v5, Lr4/cd;->h:J

    sub-long/2addr v9, v13

    sub-long/2addr v6, v9

    sub-long/2addr v2, v6

    invoke-virtual {v4, v2, v3, v1}, Lr4/mp0;->e(JZ)Z

    move-result v1

    :goto_37
    if-eqz v1, :cond_62

    goto :goto_38

    :cond_5f
    invoke-virtual {v8, v1, v2}, Lr4/gd;->L(J)Z

    move-result v1

    if-eqz v1, :cond_62

    :goto_38
    const/4 v1, 0x3

    invoke-virtual {v8, v1}, Lr4/gd;->B(I)V

    iget-boolean v1, v8, Lr4/gd;->C:Z

    if-eqz v1, :cond_62

    invoke-virtual/range {p0 .. p0}, Lr4/gd;->D()V

    goto :goto_3a

    :cond_60
    const/4 v4, 0x3

    if-ne v3, v4, :cond_62

    iget-object v3, v8, Lr4/gd;->A:[Lr4/nd;

    array-length v3, v3

    if-lez v3, :cond_61

    goto :goto_39

    :cond_61
    invoke-virtual {v8, v1, v2}, Lr4/gd;->L(J)Z

    move-result v5

    :goto_39
    if-nez v5, :cond_62

    iget-boolean v1, v8, Lr4/gd;->C:Z

    iput-boolean v1, v8, Lr4/gd;->D:Z

    const/4 v1, 0x2

    invoke-virtual {v8, v1}, Lr4/gd;->B(I)V

    invoke-virtual/range {p0 .. p0}, Lr4/gd;->E()V

    :cond_62
    :goto_3a
    iget v1, v8, Lr4/gd;->F:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_63

    iget-object v1, v8, Lr4/gd;->A:[Lr4/nd;

    array-length v2, v1

    const/4 v9, 0x0

    :goto_3b
    if-ge v9, v2, :cond_63

    aget-object v3, v1, v9

    invoke-interface {v3}, Lr4/nd;->l()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_3b

    :cond_63
    iget-boolean v1, v8, Lr4/gd;->C:Z

    if-eqz v1, :cond_64

    iget v1, v8, Lr4/gd;->F:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_65

    :cond_64
    iget v1, v8, Lr4/gd;->F:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_67

    :cond_65
    iget v1, v8, Lr4/gd;->S:I

    if-lez v1, :cond_66

    iget v1, v8, Lr4/gd;->S:I

    int-to-long v2, v1

    goto :goto_3c

    :cond_66
    const-wide/16 v2, 0xa

    :goto_3c
    invoke-virtual {v8, v11, v12, v2, v3}, Lr4/gd;->G(JJ)V

    goto :goto_3e

    :cond_67
    iget-object v1, v8, Lr4/gd;->A:[Lr4/nd;

    array-length v1, v1

    if-eqz v1, :cond_69

    iget v1, v8, Lr4/gd;->T:I

    if-lez v1, :cond_68

    iget v1, v8, Lr4/gd;->T:I

    int-to-long v1, v1

    goto :goto_3d

    :cond_68
    move-wide/from16 v1, v16

    :goto_3d
    invoke-virtual {v8, v11, v12, v1, v2}, Lr4/gd;->G(JJ)V

    goto :goto_3e

    :cond_69
    iget-object v1, v8, Lr4/gd;->p:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :goto_3e
    invoke-static {}, Lr4/jl;->b()V

    goto/16 :goto_30

    :goto_3f
    return v1

    :pswitch_b
    iget v1, v1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_6a

    const/4 v1, 0x1

    goto :goto_40

    :cond_6a
    const/4 v1, 0x0

    :goto_40
    const/4 v2, 0x0

    iput-boolean v2, v8, Lr4/gd;->D:Z

    iput-boolean v1, v8, Lr4/gd;->C:Z

    if-nez v1, :cond_6c

    invoke-virtual/range {p0 .. p0}, Lr4/gd;->E()V

    invoke-virtual/range {p0 .. p0}, Lr4/gd;->F()V

    :cond_6b
    :goto_41
    const/4 v1, 0x1

    goto :goto_42

    :cond_6c
    iget v1, v8, Lr4/gd;->F:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6d

    invoke-virtual/range {p0 .. p0}, Lr4/gd;->D()V

    iget-object v1, v8, Lr4/gd;->p:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_41

    :cond_6d
    const/4 v2, 0x2

    if-ne v1, v2, :cond_6b

    iget-object v1, v8, Lr4/gd;->p:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_41

    :goto_42
    return v1

    :pswitch_c
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lr4/wi;

    iget v1, v1, Landroid/os/Message;->arg1:I

    iget-object v3, v8, Lr4/gd;->r:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v3, 0x1

    invoke-virtual {v8, v3}, Lr4/gd;->K(Z)V

    iget-object v3, v8, Lr4/gd;->U:Lr4/mp0;

    invoke-virtual {v3}, Lr4/mp0;->a()V

    if-eqz v1, :cond_6e

    new-instance v1, Lr4/dd;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v4, v5, v6}, Lr4/dd;-><init>(IJ)V

    iput-object v1, v8, Lr4/gd;->v:Lr4/dd;

    :cond_6e
    iput-object v2, v8, Lr4/gd;->z:Lr4/wi;

    iget-object v1, v8, Lr4/gd;->s:Lr4/yc;

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3, v8}, Lr4/wi;->c(Lr4/yc;ZLr4/vi;)V

    const/4 v1, 0x2

    invoke-virtual {v8, v1}, Lr4/gd;->B(I)V

    iget-object v2, v8, Lr4/gd;->p:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_f
    .catch Lr4/tc; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_2

    return v3

    :catch_0
    move-exception v0

    move-object v2, v0

    const/4 v1, 0x1

    const/16 v3, 0x8

    goto :goto_43

    :catch_1
    move-exception v0

    move-object v2, v0

    const/4 v1, 0x1

    const/16 v3, 0x8

    goto :goto_44

    :catch_2
    move-exception v0

    move-object v1, v0

    const-string v2, "ExoPlayerImplInternal"

    const-string v3, "Internal runtime error."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, v8, Lr4/gd;->r:Landroid/os/Handler;

    invoke-static {v1}, Lr4/tc;->c(Ljava/lang/RuntimeException;)Lr4/tc;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual/range {p0 .. p0}, Lr4/gd;->J()V

    const/4 v1, 0x1

    return v1

    :catch_3
    move-exception v0

    const/4 v1, 0x1

    const/16 v3, 0x8

    move-object v2, v0

    :goto_43
    const-string v4, "ExoPlayerImplInternal"

    const-string v5, "Source error."

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v4, v8, Lr4/gd;->r:Landroid/os/Handler;

    invoke-static {v2}, Lr4/tc;->b(Ljava/io/IOException;)Lr4/tc;

    move-result-object v2

    invoke-virtual {v4, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual/range {p0 .. p0}, Lr4/gd;->J()V

    return v1

    :catch_4
    move-exception v0

    const/4 v1, 0x1

    const/16 v3, 0x8

    move-object v2, v0

    :goto_44
    const-string v4, "ExoPlayerImplInternal"

    const-string v5, "Renderer error."

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v4, v8, Lr4/gd;->r:Landroid/os/Handler;

    invoke-virtual {v4, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual/range {p0 .. p0}, Lr4/gd;->J()V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lr4/gd;->p:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final j(IJ)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object p1, p0, Lr4/gd;->Q:Lr4/td;

    const/4 p2, 0x0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, p1, p2, v0, v1}, Lr4/gd;->k(Lr4/td;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final k(Lr4/td;IJ)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/td;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Lr4/gd;->l(Lr4/td;IJJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final l(Lr4/td;IJJ)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/td;",
            "IJJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lr4/td;->a()I

    move-result p2

    const/4 v0, 0x0

    invoke-static {v0, v0, p2}, Lr4/vk;->c(III)I

    iget-object v3, p0, Lr4/gd;->t:Lr4/sd;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move-wide v5, p5

    invoke-virtual/range {v1 .. v6}, Lr4/td;->b(ILr4/sd;ZJ)Lr4/sd;

    const-wide p5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, p3, p5

    if-nez p2, :cond_0

    const-wide/16 p3, 0x0

    :cond_0
    iget-object p2, p0, Lr4/gd;->u:Lr4/rd;

    invoke-virtual {p1, v0, p2, v0}, Lr4/td;->d(ILr4/rd;Z)Lr4/rd;

    move-result-object p1

    iget-wide p1, p1, Lr4/rd;->c:J

    cmp-long v1, p1, p5

    if-eqz v1, :cond_1

    cmp-long p5, p3, p1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final m()V
    .locals 9

    iget-object v0, p0, Lr4/gd;->N:Lr4/cd;

    iget-boolean v1, v0, Lr4/cd;->j:Z

    if-nez v1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lr4/cd;->a:Lr4/ui;

    invoke-interface {v0}, Lr4/ui;->zza()J

    move-result-wide v0

    :goto_0
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lr4/gd;->C(Z)V

    return-void

    :cond_1
    iget-object v2, p0, Lr4/gd;->N:Lr4/cd;

    iget-wide v3, p0, Lr4/gd;->M:J

    iget-wide v5, v2, Lr4/cd;->f:J

    iget-wide v7, v2, Lr4/cd;->h:J

    sub-long/2addr v5, v7

    sub-long/2addr v3, v5

    iget-object v2, p0, Lr4/gd;->U:Lr4/mp0;

    sub-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Lr4/mp0;->f(J)Z

    move-result v0

    invoke-virtual {p0, v0}, Lr4/gd;->C(Z)V

    if-eqz v0, :cond_2

    iget-object v0, p0, Lr4/gd;->N:Lr4/cd;

    iget-object v0, v0, Lr4/cd;->a:Lr4/ui;

    invoke-interface {v0, v3, v4}, Lr4/ui;->d(J)Z

    :cond_2
    return-void
.end method

.method public final n(Lr4/cd;)V
    .locals 8

    iget-object v0, p0, Lr4/gd;->P:Lr4/cd;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_6

    iget-object v5, p0, Lr4/gd;->a:[Lr4/nd;

    aget-object v5, v5, v3

    invoke-interface {v5}, Lr4/nd;->c()I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    aput-boolean v6, v1, v3

    iget-object v6, p1, Lr4/cd;->m:Lr4/bk;

    iget-object v6, v6, Lr4/bk;->b:Lr4/yj;

    invoke-virtual {v6, v3}, Lr4/yj;->a(I)Lr4/qj;

    move-result-object v6

    if-eqz v6, :cond_2

    add-int/lit8 v4, v4, 0x1

    :cond_2
    aget-boolean v7, v1, v3

    if-eqz v7, :cond_5

    if-eqz v6, :cond_3

    invoke-interface {v5}, Lr4/nd;->k()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Lr4/nd;->j()Lr4/hj;

    move-result-object v6

    iget-object v7, p0, Lr4/gd;->P:Lr4/cd;

    iget-object v7, v7, Lr4/cd;->d:[Lr4/hj;

    aget-object v7, v7, v3

    if-ne v6, v7, :cond_5

    :cond_3
    iget-object v6, p0, Lr4/gd;->x:Lr4/nd;

    if-ne v5, v6, :cond_4

    iget-object v6, p0, Lr4/gd;->k:Lr4/hl;

    iget-object v7, p0, Lr4/gd;->y:Lr4/zk;

    invoke-virtual {v6, v7}, Lr4/hl;->d(Lr4/zk;)V

    const/4 v6, 0x0

    iput-object v6, p0, Lr4/gd;->y:Lr4/zk;

    iput-object v6, p0, Lr4/gd;->x:Lr4/nd;

    :cond_4
    invoke-static {v5}, Lr4/gd;->p(Lr4/nd;)V

    invoke-interface {v5}, Lr4/nd;->o()V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    iput-object p1, p0, Lr4/gd;->P:Lr4/cd;

    iget-object v0, p0, Lr4/gd;->r:Landroid/os/Handler;

    const/4 v2, 0x3

    iget-object p1, p1, Lr4/cd;->m:Lr4/bk;

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {p0, v1, v4}, Lr4/gd;->o([ZI)V

    return-void
.end method

.method public final o([ZI)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    new-array v1, v1, [Lr4/nd;

    iput-object v1, v0, Lr4/gd;->A:[Lr4/nd;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    if-ge v2, v4, :cond_8

    iget-object v4, v0, Lr4/gd;->a:[Lr4/nd;

    aget-object v4, v4, v2

    iget-object v5, v0, Lr4/gd;->P:Lr4/cd;

    iget-object v5, v5, Lr4/cd;->m:Lr4/bk;

    iget-object v5, v5, Lr4/bk;->b:Lr4/yj;

    invoke-virtual {v5, v2}, Lr4/yj;->a(I)Lr4/qj;

    move-result-object v5

    if-eqz v5, :cond_7

    add-int/lit8 v14, v3, 0x1

    iget-object v6, v0, Lr4/gd;->A:[Lr4/nd;

    aput-object v4, v6, v3

    invoke-interface {v4}, Lr4/nd;->c()I

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v0, Lr4/gd;->P:Lr4/cd;

    iget-object v3, v3, Lr4/cd;->m:Lr4/bk;

    iget-object v3, v3, Lr4/bk;->d:[Lr4/pd;

    aget-object v6, v3, v2

    iget-boolean v3, v0, Lr4/gd;->C:Z

    const/4 v7, 0x1

    if-eqz v3, :cond_0

    iget v3, v0, Lr4/gd;->F:I

    const/4 v8, 0x3

    if-ne v3, v8, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    aget-boolean v8, p1, v2

    if-nez v8, :cond_1

    if-eqz v3, :cond_1

    const/4 v11, 0x1

    goto :goto_2

    :cond_1
    const/4 v11, 0x0

    :goto_2
    invoke-virtual {v5}, Lr4/qj;->b()I

    new-array v7, v7, [Lr4/id;

    const/4 v8, 0x0

    :goto_3
    if-gtz v8, :cond_2

    invoke-virtual {v5, v8}, Lr4/qj;->c(I)Lr4/id;

    move-result-object v9

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_2
    iget-object v5, v0, Lr4/gd;->P:Lr4/cd;

    iget-object v8, v5, Lr4/cd;->d:[Lr4/hj;

    aget-object v8, v8, v2

    iget-wide v9, v0, Lr4/gd;->M:J

    iget-wide v12, v5, Lr4/cd;->f:J

    move v15, v2

    iget-wide v1, v5, Lr4/cd;->h:J

    sub-long/2addr v12, v1

    move-object v5, v4

    invoke-interface/range {v5 .. v13}, Lr4/nd;->d(Lr4/pd;[Lr4/id;Lr4/hj;JZJ)V

    invoke-interface {v4}, Lr4/nd;->e()Lr4/zk;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v2, v0, Lr4/gd;->y:Lr4/zk;

    if-nez v2, :cond_3

    iput-object v1, v0, Lr4/gd;->y:Lr4/zk;

    iput-object v4, v0, Lr4/gd;->x:Lr4/nd;

    iget-object v2, v0, Lr4/gd;->w:Lr4/md;

    invoke-interface {v1, v2}, Lr4/zk;->p0(Lr4/md;)Lr4/md;

    goto :goto_4

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Multiple renderer media clocks enabled."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lr4/tc;->c(Ljava/lang/RuntimeException;)Lr4/tc;

    move-result-object v1

    throw v1

    :cond_4
    :goto_4
    if-eqz v3, :cond_6

    invoke-interface {v4}, Lr4/nd;->g()V

    goto :goto_5

    :cond_5
    move v15, v2

    :cond_6
    :goto_5
    move v3, v14

    goto :goto_6

    :cond_7
    move v15, v2

    :goto_6
    add-int/lit8 v2, v15, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public final r()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/gd;->R:Z

    return-void
.end method

.method public final s(Lr4/wi;Z)V
    .locals 2

    iget-object p2, p0, Lr4/gd;->p:Landroid/os/Handler;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final t(Z)V
    .locals 3

    iget-object v0, p0, Lr4/gd;->p:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final u(Lr4/td;IJ)V
    .locals 2

    iget-object p2, p0, Lr4/gd;->p:Landroid/os/Handler;

    new-instance v0, Lr4/ed;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p3, p4}, Lr4/ed;-><init>(Lr4/td;IJ)V

    const/4 p1, 0x3

    invoke-virtual {p2, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final v()V
    .locals 2

    iget-object v0, p0, Lr4/gd;->p:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final varargs w([Lr4/xc;)V
    .locals 2

    iget-boolean v0, p0, Lr4/gd;->B:Z

    if-eqz v0, :cond_0

    const-string p1, "ExoPlayerImplInternal"

    const-string v0, "Ignoring messages sent after release."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p0, Lr4/gd;->H:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lr4/gd;->H:I

    iget-object v0, p0, Lr4/gd;->p:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final varargs declared-synchronized x([Lr4/xc;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lr4/gd;->B:Z

    if-eqz v0, :cond_0

    const-string p1, "ExoPlayerImplInternal"

    const-string v0, "Ignoring messages sent after release."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lr4/gd;->H:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lr4/gd;->H:I

    iget-object v1, p0, Lr4/gd;->p:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    iget p1, p0, Lr4/gd;->I:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt p1, v0, :cond_1

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized y()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lr4/gd;->B:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lr4/gd;->p:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    iget-boolean v0, p0, Lr4/gd;->B:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lr4/gd;->q:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final z(I)V
    .locals 0

    iput p1, p0, Lr4/gd;->S:I

    return-void
.end method
