.class public final Lr4/bd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/yc;


# instance fields
.field public final a:[Lr4/nd;

.field public final b:Lr4/ak;

.field public final c:Lr4/yj;

.field public final d:Landroid/os/Handler;

.field public final e:Lr4/gd;

.field public final f:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lr4/uc;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lr4/sd;

.field public final h:Lr4/rd;

.field public i:Z

.field public j:Z

.field public k:I

.field public l:I

.field public m:I

.field public n:Z

.field public o:Lr4/td;

.field public p:Ljava/lang/Object;

.field public q:Lr4/mj;

.field public r:Lr4/yj;

.field public s:Lr4/md;

.field public t:Lr4/dd;

.field public u:J


# direct methods
.method public constructor <init>([Lr4/nd;Lr4/ak;Lr4/mp0;[B)V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p4, Lr4/ll;->e:Ljava/lang/String;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1a

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Init ExoPlayerLib/2.4.2 ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "]"

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "ExoPlayerImpl"

    invoke-static {v0, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object p4, p1

    check-cast p4, [Lr4/nd;

    iput-object p4, p0, Lr4/bd;->a:[Lr4/nd;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lr4/bd;->b:Lr4/ak;

    const/4 p4, 0x0

    iput-boolean p4, p0, Lr4/bd;->j:Z

    const/4 v0, 0x1

    iput v0, p0, Lr4/bd;->k:I

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lr4/bd;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v0, Lr4/yj;

    const/4 v1, 0x2

    new-array v1, v1, [Lr4/qj;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr4/yj;-><init>([Lr4/qj;[B)V

    iput-object v0, p0, Lr4/bd;->c:Lr4/yj;

    sget-object v1, Lr4/td;->a:Lr4/td;

    iput-object v1, p0, Lr4/bd;->o:Lr4/td;

    new-instance v1, Lr4/sd;

    invoke-direct {v1}, Lr4/sd;-><init>()V

    iput-object v1, p0, Lr4/bd;->g:Lr4/sd;

    new-instance v1, Lr4/rd;

    invoke-direct {v1}, Lr4/rd;-><init>()V

    iput-object v1, p0, Lr4/bd;->h:Lr4/rd;

    sget-object v1, Lr4/mj;->d:Lr4/mj;

    iput-object v1, p0, Lr4/bd;->q:Lr4/mj;

    iput-object v0, p0, Lr4/bd;->r:Lr4/yj;

    sget-object v0, Lr4/md;->d:Lr4/md;

    iput-object v0, p0, Lr4/bd;->s:Lr4/md;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    new-instance v7, Lr4/ad;

    invoke-direct {v7, p0, v0}, Lr4/ad;-><init>(Lr4/bd;Landroid/os/Looper;)V

    iput-object v7, p0, Lr4/bd;->d:Landroid/os/Handler;

    new-instance v8, Lr4/dd;

    const-wide/16 v0, 0x0

    invoke-direct {v8, p4, v0, v1}, Lr4/dd;-><init>(IJ)V

    iput-object v8, p0, Lr4/bd;->t:Lr4/dd;

    new-instance p4, Lr4/gd;

    iget-boolean v5, p0, Lr4/bd;->j:Z

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object v1, p4

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v9, p0

    invoke-direct/range {v1 .. v10}, Lr4/gd;-><init>([Lr4/nd;Lr4/ak;Lr4/mp0;ZILandroid/os/Handler;Lr4/dd;Lr4/yc;[B)V

    iput-object p4, p0, Lr4/bd;->e:Lr4/gd;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lr4/bd;->e:Lr4/gd;

    invoke-virtual {v0, p1}, Lr4/gd;->z(I)V

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lr4/bd;->k:I

    return v0
.end method

.method public final c(Z)V
    .locals 3

    iget-boolean v0, p0, Lr4/bd;->j:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lr4/bd;->j:Z

    iget-object v0, p0, Lr4/bd;->e:Lr4/gd;

    invoke-virtual {v0, p1}, Lr4/gd;->t(Z)V

    iget-object v0, p0, Lr4/bd;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/uc;

    iget v2, p0, Lr4/bd;->k:I

    invoke-interface {v1, p1, v2}, Lr4/uc;->t(ZI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lr4/bd;->j:Z

    return v0
.end method

.method public final e(Lr4/uc;)V
    .locals 1

    iget-object v0, p0, Lr4/bd;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lr4/bd;->e:Lr4/gd;

    invoke-virtual {v0}, Lr4/gd;->v()V

    return-void
.end method

.method public final g(I)V
    .locals 1

    iget-object v0, p0, Lr4/bd;->e:Lr4/gd;

    invoke-virtual {v0, p1}, Lr4/gd;->A(I)V

    return-void
.end method

.method public final varargs h([Lr4/xc;)V
    .locals 1

    iget-object v0, p0, Lr4/bd;->e:Lr4/gd;

    invoke-virtual {v0, p1}, Lr4/gd;->x([Lr4/xc;)V

    return-void
.end method

.method public final i(Lr4/uc;)V
    .locals 1

    iget-object v0, p0, Lr4/bd;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final j()V
    .locals 2

    iget-object v0, p0, Lr4/bd;->e:Lr4/gd;

    invoke-virtual {v0}, Lr4/gd;->y()V

    iget-object v0, p0, Lr4/bd;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final k()J
    .locals 3

    iget-object v0, p0, Lr4/bd;->o:Lr4/td;

    invoke-virtual {v0}, Lr4/td;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    :cond_0
    iget-object v0, p0, Lr4/bd;->o:Lr4/td;

    invoke-virtual {p0}, Lr4/bd;->r()I

    iget-object v1, p0, Lr4/bd;->g:Lr4/sd;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2}, Lr4/td;->g(ILr4/sd;Z)Lr4/sd;

    move-result-object v0

    iget-wide v0, v0, Lr4/sd;->a:J

    invoke-static {v0, v1}, Lr4/sc;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final l()J
    .locals 4

    iget-object v0, p0, Lr4/bd;->o:Lr4/td;

    invoke-virtual {v0}, Lr4/td;->f()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lr4/bd;->l:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr4/bd;->o:Lr4/td;

    iget-object v1, p0, Lr4/bd;->t:Lr4/dd;

    iget v1, v1, Lr4/dd;->a:I

    iget-object v2, p0, Lr4/bd;->h:Lr4/rd;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lr4/td;->d(ILr4/rd;Z)Lr4/rd;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lr4/sc;->a(J)J

    move-result-wide v0

    iget-object v2, p0, Lr4/bd;->t:Lr4/dd;

    iget-wide v2, v2, Lr4/dd;->c:J

    invoke-static {v2, v3}, Lr4/sc;->a(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    :cond_1
    :goto_0
    iget-wide v0, p0, Lr4/bd;->u:J

    return-wide v0
.end method

.method public final m(J)V
    .locals 8

    invoke-virtual {p0}, Lr4/bd;->r()I

    iget-object v0, p0, Lr4/bd;->o:Lr4/td;

    invoke-virtual {v0}, Lr4/td;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lr4/bd;->o:Lr4/td;

    invoke-virtual {v0}, Lr4/td;->a()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lr4/kd;

    iget-object v2, p0, Lr4/bd;->o:Lr4/td;

    invoke-direct {v0, v2, v1, p1, p2}, Lr4/kd;-><init>(Lr4/td;IJ)V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Lr4/bd;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lr4/bd;->l:I

    iget-object v0, p0, Lr4/bd;->o:Lr4/td;

    invoke-virtual {v0}, Lr4/td;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lr4/bd;->o:Lr4/td;

    iget-object v2, p0, Lr4/bd;->g:Lr4/sd;

    invoke-virtual {v0, v1, v2, v1}, Lr4/td;->g(ILr4/sd;Z)Lr4/sd;

    invoke-static {p1, p2}, Lr4/sc;->b(J)J

    move-result-wide v2

    iget-object v0, p0, Lr4/bd;->o:Lr4/td;

    iget-object v4, p0, Lr4/bd;->h:Lr4/rd;

    invoke-virtual {v0, v1, v4, v1}, Lr4/td;->d(ILr4/rd;Z)Lr4/rd;

    move-result-object v0

    iget-wide v4, v0, Lr4/rd;->c:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v6

    if-eqz v0, :cond_3

    cmp-long v0, v2, v4

    :cond_3
    :goto_1
    iput-wide p1, p0, Lr4/bd;->u:J

    iget-object v0, p0, Lr4/bd;->e:Lr4/gd;

    iget-object v2, p0, Lr4/bd;->o:Lr4/td;

    invoke-static {p1, p2}, Lr4/sc;->b(J)J

    move-result-wide p1

    invoke-virtual {v0, v2, v1, p1, p2}, Lr4/gd;->u(Lr4/td;IJ)V

    iget-object p1, p0, Lr4/bd;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lr4/uc;

    invoke-interface {p2}, Lr4/uc;->d()V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final n(Lr4/wi;)V
    .locals 5

    iget-object v0, p0, Lr4/bd;->o:Lr4/td;

    invoke-virtual {v0}, Lr4/td;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/bd;->p:Ljava/lang/Object;

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lr4/td;->a:Lr4/td;

    iput-object v0, p0, Lr4/bd;->o:Lr4/td;

    iput-object v1, p0, Lr4/bd;->p:Ljava/lang/Object;

    iget-object v0, p0, Lr4/bd;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr4/uc;

    iget-object v3, p0, Lr4/bd;->o:Lr4/td;

    iget-object v4, p0, Lr4/bd;->p:Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lr4/uc;->v(Lr4/td;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lr4/bd;->i:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/bd;->i:Z

    sget-object v0, Lr4/mj;->d:Lr4/mj;

    iput-object v0, p0, Lr4/bd;->q:Lr4/mj;

    iget-object v0, p0, Lr4/bd;->c:Lr4/yj;

    iput-object v0, p0, Lr4/bd;->r:Lr4/yj;

    iget-object v0, p0, Lr4/bd;->b:Lr4/ak;

    invoke-virtual {v0, v1}, Lr4/ak;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lr4/bd;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/uc;

    iget-object v2, p0, Lr4/bd;->q:Lr4/mj;

    iget-object v3, p0, Lr4/bd;->r:Lr4/yj;

    invoke-interface {v1, v2, v3}, Lr4/uc;->r(Lr4/mj;Lr4/yj;)V

    goto :goto_1

    :cond_2
    iget v0, p0, Lr4/bd;->m:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lr4/bd;->m:I

    iget-object v0, p0, Lr4/bd;->e:Lr4/gd;

    invoke-virtual {v0, p1, v1}, Lr4/gd;->s(Lr4/wi;Z)V

    return-void
.end method

.method public final varargs o([Lr4/xc;)V
    .locals 1

    iget-object v0, p0, Lr4/bd;->e:Lr4/gd;

    invoke-virtual {v0, p1}, Lr4/gd;->w([Lr4/xc;)V

    return-void
.end method

.method public final p()J
    .locals 4

    iget-object v0, p0, Lr4/bd;->o:Lr4/td;

    invoke-virtual {v0}, Lr4/td;->f()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lr4/bd;->l:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr4/bd;->o:Lr4/td;

    iget-object v1, p0, Lr4/bd;->t:Lr4/dd;

    iget v1, v1, Lr4/dd;->a:I

    iget-object v2, p0, Lr4/bd;->h:Lr4/rd;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lr4/td;->d(ILr4/rd;Z)Lr4/rd;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lr4/sc;->a(J)J

    move-result-wide v0

    iget-object v2, p0, Lr4/bd;->t:Lr4/dd;

    iget-wide v2, v2, Lr4/dd;->d:J

    invoke-static {v2, v3}, Lr4/sc;->a(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    :cond_1
    :goto_0
    iget-wide v0, p0, Lr4/bd;->u:J

    return-wide v0
.end method

.method public final q()V
    .locals 1

    iget-object v0, p0, Lr4/bd;->e:Lr4/gd;

    invoke-virtual {v0}, Lr4/gd;->r()V

    return-void
.end method

.method public final r()I
    .locals 4

    iget-object v0, p0, Lr4/bd;->o:Lr4/td;

    invoke-virtual {v0}, Lr4/td;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Lr4/bd;->l:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr4/bd;->o:Lr4/td;

    iget-object v2, p0, Lr4/bd;->t:Lr4/dd;

    iget v2, v2, Lr4/dd;->a:I

    iget-object v3, p0, Lr4/bd;->h:Lr4/rd;

    invoke-virtual {v0, v2, v3, v1}, Lr4/td;->d(ILr4/rd;Z)Lr4/rd;

    :cond_1
    :goto_0
    return v1
.end method

.method public final s(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lr4/tc;

    iget-object v0, p0, Lr4/bd;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/uc;

    invoke-interface {v1, p1}, Lr4/uc;->m(Lr4/tc;)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lr4/md;

    iget-object v0, p0, Lr4/bd;->s:Lr4/md;

    invoke-virtual {v0, p1}, Lr4/md;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lr4/bd;->s:Lr4/md;

    iget-object v0, p0, Lr4/bd;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/uc;

    invoke-interface {v1, p1}, Lr4/uc;->z(Lr4/md;)V

    goto :goto_1

    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lr4/fd;

    iget v0, p0, Lr4/bd;->l:I

    iget v1, p1, Lr4/fd;->d:I

    sub-int/2addr v0, v1

    iput v0, p0, Lr4/bd;->l:I

    iget v0, p0, Lr4/bd;->m:I

    if-nez v0, :cond_1

    iget-object v0, p1, Lr4/fd;->a:Lr4/td;

    iput-object v0, p0, Lr4/bd;->o:Lr4/td;

    iget-object v0, p1, Lr4/fd;->b:Ljava/lang/Object;

    iput-object v0, p0, Lr4/bd;->p:Ljava/lang/Object;

    iget-object p1, p1, Lr4/fd;->c:Lr4/dd;

    iput-object p1, p0, Lr4/bd;->t:Lr4/dd;

    iget-object p1, p0, Lr4/bd;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/uc;

    iget-object v1, p0, Lr4/bd;->o:Lr4/td;

    iget-object v2, p0, Lr4/bd;->p:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lr4/uc;->v(Lr4/td;Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_3
    iget v0, p0, Lr4/bd;->l:I

    if-nez v0, :cond_1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lr4/dd;

    iput-object p1, p0, Lr4/bd;->t:Lr4/dd;

    iget-object p1, p0, Lr4/bd;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/uc;

    invoke-interface {v0}, Lr4/uc;->d()V

    goto :goto_3

    :pswitch_4
    iget v0, p0, Lr4/bd;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lr4/bd;->l:I

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lr4/dd;

    iput-object v0, p0, Lr4/bd;->t:Lr4/dd;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_1

    iget-object p1, p0, Lr4/bd;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/uc;

    invoke-interface {v0}, Lr4/uc;->d()V

    goto :goto_4

    :pswitch_5
    iget v0, p0, Lr4/bd;->m:I

    if-nez v0, :cond_1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lr4/bk;

    iput-boolean v1, p0, Lr4/bd;->i:Z

    iget-object v0, p1, Lr4/bk;->a:Lr4/mj;

    iput-object v0, p0, Lr4/bd;->q:Lr4/mj;

    iget-object v0, p1, Lr4/bk;->b:Lr4/yj;

    iput-object v0, p0, Lr4/bd;->r:Lr4/yj;

    iget-object v0, p0, Lr4/bd;->b:Lr4/ak;

    iget-object p1, p1, Lr4/bk;->c:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lr4/ak;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lr4/bd;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/uc;

    iget-object v1, p0, Lr4/bd;->q:Lr4/mj;

    iget-object v2, p0, Lr4/bd;->r:Lr4/yj;

    invoke-interface {v0, v1, v2}, Lr4/uc;->r(Lr4/mj;Lr4/yj;)V

    goto :goto_5

    :pswitch_6
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_0

    goto :goto_6

    :cond_0
    const/4 v1, 0x0

    :goto_6
    iput-boolean v1, p0, Lr4/bd;->n:Z

    iget-object p1, p0, Lr4/bd;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/uc;

    iget-boolean v1, p0, Lr4/bd;->n:Z

    invoke-interface {v0, v1}, Lr4/uc;->o0(Z)V

    goto :goto_7

    :pswitch_7
    iget p1, p1, Landroid/os/Message;->arg1:I

    iput p1, p0, Lr4/bd;->k:I

    iget-object p1, p0, Lr4/bd;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/uc;

    iget-boolean v1, p0, Lr4/bd;->j:Z

    iget v2, p0, Lr4/bd;->k:I

    invoke-interface {v0, v1, v2}, Lr4/uc;->t(ZI)V

    goto :goto_8

    :cond_1
    return-void

    :pswitch_8
    iget p1, p0, Lr4/bd;->m:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lr4/bd;->m:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
