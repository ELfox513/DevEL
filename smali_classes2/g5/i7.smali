.class public final Lg5/i7;
.super Lg5/f4;
.source "SourceFile"


# instance fields
.field public c:Lg5/g7;

.field public d:Lg5/c6;

.field public final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lg5/d6;",
            ">;"
        }
    .end annotation
.end field

.field public f:Z

.field public final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/lang/Object;

.field public i:Lg5/h;

.field public j:I

.field public final k:Ljava/util/concurrent/atomic/AtomicLong;

.field public l:J

.field public m:I

.field public final n:Lg5/ra;

.field public o:Z

.field public final p:Lg5/ha;


# direct methods
.method public constructor <init>(Lg5/b5;)V
    .locals 3

    invoke-direct {p0, p1}, Lg5/f4;-><init>(Lg5/b5;)V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lg5/i7;->e:Ljava/util/Set;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lg5/i7;->h:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg5/i7;->o:Z

    new-instance v0, Lg5/v6;

    invoke-direct {v0, p0}, Lg5/v6;-><init>(Lg5/i7;)V

    iput-object v0, p0, Lg5/i7;->p:Lg5/ha;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lg5/i7;->g:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lg5/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lg5/h;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lg5/i7;->i:Lg5/h;

    const/16 v0, 0x64

    iput v0, p0, Lg5/i7;->j:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lg5/i7;->l:J

    iput v0, p0, Lg5/i7;->m:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lg5/i7;->k:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Lg5/ra;

    invoke-direct {v0, p1}, Lg5/ra;-><init>(Lg5/b5;)V

    iput-object v0, p0, Lg5/i7;->n:Lg5/ra;

    return-void
.end method

.method public static bridge synthetic d0(Lg5/i7;Lg5/h;IJZZ)V
    .locals 3

    invoke-virtual {p0}, Lg5/v5;->c()V

    invoke-virtual {p0}, Lg5/f4;->d()V

    iget-wide v0, p0, Lg5/i7;->l:J

    cmp-long v2, p3, v0

    if-gtz v2, :cond_1

    iget v0, p0, Lg5/i7;->m:I

    invoke-static {v0, p2}, Lg5/h;->l(II)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p0}, Lg5/b5;->F()Lg5/q3;

    move-result-object p0

    invoke-virtual {p0}, Lg5/q3;->p()Lg5/o3;

    move-result-object p0

    const-string p2, "Dropped out-of-date consent setting, proposed settings"

    invoke-virtual {p0, p2, p1}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->A()Lg5/g4;

    move-result-object v0

    iget-object v1, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/v5;->c()V

    invoke-virtual {v0, p2}, Lg5/g4;->r(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lg5/g4;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lg5/h;->i()Ljava/lang/String;

    move-result-object p1

    const-string v1, "consent_settings"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "consent_source"

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-wide p3, p0, Lg5/i7;->l:J

    iput p2, p0, Lg5/i7;->m:I

    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->I()Lg5/w8;

    move-result-object p1

    invoke-virtual {p1, p5}, Lg5/w8;->o(Z)V

    if-eqz p6, :cond_2

    iget-object p0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p0}, Lg5/b5;->I()Lg5/w8;

    move-result-object p0

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {p0, p1}, Lg5/w8;->S(Ljava/util/concurrent/atomic/AtomicReference;)V

    :cond_2
    return-void

    :cond_3
    iget-object p0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p0}, Lg5/b5;->F()Lg5/q3;

    move-result-object p0

    invoke-virtual {p0}, Lg5/q3;->p()Lg5/o3;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "Lower precedence consent source ignored, proposed source"

    invoke-virtual {p0, p2, p1}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic e0(Lg5/i7;Ljava/lang/Boolean;Z)V
    .locals 0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lg5/i7;->N(Ljava/lang/Boolean;Z)V

    return-void
.end method

.method public static bridge synthetic f0(Lg5/i7;)V
    .locals 0

    invoke-virtual {p0}, Lg5/i7;->R()V

    return-void
.end method


# virtual methods
.method public final A(Landroid/os/Bundle;IJ)V
    .locals 3

    invoke-virtual {p0}, Lg5/f4;->d()V

    invoke-static {p1}, Lg5/h;->h(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->F()Lg5/q3;

    move-result-object v1

    invoke-virtual {v1}, Lg5/q3;->s()Lg5/o3;

    move-result-object v1

    const-string v2, "Ignoring invalid consent setting"

    invoke-virtual {v1, v2, v0}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->s()Lg5/o3;

    move-result-object v0

    const-string v1, "Valid consent values are \'granted\', \'denied\'"

    invoke-virtual {v0, v1}, Lg5/o3;->a(Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Lg5/h;->a(Landroid/os/Bundle;)Lg5/h;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lg5/i7;->B(Lg5/h;IJ)V

    return-void
.end method

.method public final B(Lg5/h;IJ)V
    .locals 14

    move-object v10, p0

    move-object v0, p1

    move/from16 v6, p2

    invoke-virtual {p0}, Lg5/f4;->d()V

    const/16 v1, -0xa

    if-eq v6, v1, :cond_1

    invoke-virtual {p1}, Lg5/h;->e()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lg5/h;->f()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v10, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->s()Lg5/o3;

    move-result-object v0

    const-string v1, "Discarding empty consent settings"

    invoke-virtual {v0, v1}, Lg5/o3;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    iget-object v2, v10, Lg5/i7;->h:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v3, v10, Lg5/i7;->j:I

    invoke-static {v6, v3}, Lg5/h;->l(II)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    iget-object v3, v10, Lg5/i7;->i:Lg5/h;

    invoke-virtual {p1, v3}, Lg5/h;->m(Lg5/h;)Z

    move-result v3

    invoke-virtual {p1}, Lg5/h;->k()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v10, Lg5/i7;->i:Lg5/h;

    invoke-virtual {v7}, Lg5/h;->k()Z

    move-result v7

    if-nez v7, :cond_2

    const/4 v5, 0x1

    :cond_2
    iget-object v7, v10, Lg5/i7;->i:Lg5/h;

    invoke-virtual {p1, v7}, Lg5/h;->d(Lg5/h;)Lg5/h;

    move-result-object v0

    iput-object v0, v10, Lg5/i7;->i:Lg5/h;

    iput v6, v10, Lg5/i7;->j:I

    move v13, v3

    move-object v3, v0

    move v0, v5

    move v5, v13

    goto :goto_1

    :cond_3
    move-object v3, v0

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_4

    iget-object v0, v10, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->p()Lg5/o3;

    move-result-object v0

    const-string v1, "Ignoring lower-priority consent settings, proposed settings"

    invoke-virtual {v0, v1, v3}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_4
    iget-object v2, v10, Lg5/i7;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v7

    if-eqz v5, :cond_5

    iget-object v1, v10, Lg5/i7;->g:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v1, v10, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->P()Lg5/y4;

    move-result-object v11

    new-instance v12, Lg5/b7;

    move-object v1, v12

    move-object v2, p0

    move-wide/from16 v4, p3

    move/from16 v6, p2

    move v9, v0

    invoke-direct/range {v1 .. v9}, Lg5/b7;-><init>(Lg5/i7;Lg5/h;JIJZ)V

    invoke-virtual {v11, v12}, Lg5/y4;->v(Ljava/lang/Runnable;)V

    return-void

    :cond_5
    const/16 v2, 0x1e

    if-eq v6, v2, :cond_7

    if-ne v6, v1, :cond_6

    goto :goto_2

    :cond_6
    iget-object v1, v10, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->P()Lg5/y4;

    move-result-object v9

    new-instance v11, Lg5/d7;

    move-object v1, v11

    move-object v2, p0

    move/from16 v4, p2

    move-wide v5, v7

    move v7, v0

    invoke-direct/range {v1 .. v7}, Lg5/d7;-><init>(Lg5/i7;Lg5/h;IJZ)V

    invoke-virtual {v9, v11}, Lg5/y4;->u(Ljava/lang/Runnable;)V

    return-void

    :cond_7
    :goto_2
    iget-object v1, v10, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->P()Lg5/y4;

    move-result-object v9

    new-instance v11, Lg5/c7;

    move-object v1, v11

    move-object v2, p0

    move/from16 v4, p2

    move-wide v5, v7

    move v7, v0

    invoke-direct/range {v1 .. v7}, Lg5/c7;-><init>(Lg5/i7;Lg5/h;IJZ)V

    invoke-virtual {v9, v11}, Lg5/y4;->v(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final C(Landroid/os/Bundle;J)V
    .locals 3

    invoke-static {}, Lb5/fd;->b()Z

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->u()Lg5/g;

    move-result-object v0

    sget-object v1, Lg5/c3;->w0:Lg5/b3;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lg5/g;->w(Ljava/lang/String;Lg5/b3;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->P()Lg5/y4;

    move-result-object v0

    new-instance v1, Lg5/j6;

    invoke-direct {v1, p0, p1, p2, p3}, Lg5/j6;-><init>(Lg5/i7;Landroid/os/Bundle;J)V

    invoke-virtual {v0, v1}, Lg5/y4;->v(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lg5/i7;->M(Landroid/os/Bundle;J)V

    return-void
.end method

.method public final D(Lg5/c6;)V
    .locals 2

    invoke-virtual {p0}, Lg5/v5;->c()V

    invoke-virtual {p0}, Lg5/f4;->d()V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lg5/i7;->d:Lg5/c6;

    if-eq p1, v0, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "EventInterceptor already set."

    invoke-static {v0, v1}, Lx3/q;->n(ZLjava/lang/Object;)V

    :cond_1
    iput-object p1, p0, Lg5/i7;->d:Lg5/c6;

    return-void
.end method

.method public final E(Ljava/lang/Boolean;)V
    .locals 2

    invoke-virtual {p0}, Lg5/f4;->d()V

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->P()Lg5/y4;

    move-result-object v0

    new-instance v1, Lg5/a7;

    invoke-direct {v1, p0, p1}, Lg5/a7;-><init>(Lg5/i7;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Lg5/y4;->u(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final H(Lg5/h;)V
    .locals 5

    invoke-virtual {p0}, Lg5/v5;->c()V

    invoke-virtual {p1}, Lg5/h;->k()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lg5/h;->j()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->I()Lg5/w8;

    move-result-object p1

    invoke-virtual {p1}, Lg5/w8;->v()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->k()Z

    move-result v0

    if-eq p1, v0, :cond_5

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0, p1}, Lg5/b5;->g(Z)V

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->A()Lg5/g4;

    move-result-object v0

    iget-object v3, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/v5;->c()V

    invoke-virtual {v0}, Lg5/g4;->j()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "measurement_enabled_from_api"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lg5/g4;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lg5/i7;->N(Ljava/lang/Boolean;Z)V

    :cond_5
    return-void
.end method

.method public final I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 7

    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->Q()Lc4/f;

    move-result-object p1

    invoke-interface {p1}, Lc4/f;->a()J

    move-result-wide v5

    const-string v1, "auto"

    const-string v2, "_ldl"

    const/4 v4, 0x1

    move-object v0, p0

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lg5/i7;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V

    return-void
.end method

.method public final J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V
    .locals 15

    move-object v6, p0

    move-object/from16 v2, p2

    move-object/from16 v0, p3

    if-nez p1, :cond_0

    const-string v1, "app"

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    const/4 v3, 0x6

    const/4 v4, 0x0

    const/16 v5, 0x18

    if-eqz p4, :cond_1

    iget-object v3, v6, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v3}, Lg5/b5;->K()Lg5/ia;

    move-result-object v3

    invoke-virtual {v3, v2}, Lg5/ia;->n0(Ljava/lang/String;)I

    move-result v3

    move v11, v3

    goto :goto_2

    :cond_1
    iget-object v7, v6, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v7}, Lg5/b5;->K()Lg5/ia;

    move-result-object v7

    const-string v8, "user property"

    invoke-virtual {v7, v8, v2}, Lg5/ia;->N(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    :goto_1
    const/4 v11, 0x6

    goto :goto_2

    :cond_2
    sget-object v9, Lg5/b6;->a:[Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10, v2}, Lg5/ia;->J(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    const/16 v3, 0xf

    const/16 v11, 0xf

    goto :goto_2

    :cond_3
    iget-object v9, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v9}, Lg5/b5;->u()Lg5/g;

    invoke-virtual {v7, v8, v5, v2}, Lg5/ia;->I(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    const/4 v11, 0x0

    :goto_2
    const/4 v3, 0x1

    if-eqz v11, :cond_6

    iget-object v0, v6, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->K()Lg5/ia;

    move-result-object v0

    iget-object v1, v6, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->u()Lg5/g;

    invoke-virtual {v0, v2, v5, v3}, Lg5/ia;->l(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v13

    if-eqz v2, :cond_5

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    move v14, v4

    goto :goto_3

    :cond_5
    const/4 v14, 0x0

    :goto_3
    iget-object v0, v6, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->K()Lg5/ia;

    move-result-object v8

    iget-object v9, v6, Lg5/i7;->p:Lg5/ha;

    const/4 v10, 0x0

    const-string v12, "_ev"

    invoke-virtual/range {v8 .. v14}, Lg5/ia;->v(Lg5/ha;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_6
    if-eqz v0, :cond_b

    iget-object v7, v6, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v7}, Lg5/b5;->K()Lg5/ia;

    move-result-object v7

    invoke-virtual {v7, v2, v0}, Lg5/ia;->j0(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v11

    if-eqz v11, :cond_9

    iget-object v1, v6, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->K()Lg5/ia;

    move-result-object v1

    iget-object v7, v6, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v7}, Lg5/b5;->u()Lg5/g;

    invoke-virtual {v1, v2, v5, v3}, Lg5/ia;->l(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v13

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_8

    instance-of v1, v0, Ljava/lang/CharSequence;

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    const/4 v14, 0x0

    goto :goto_5

    :cond_8
    :goto_4
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    move v14, v4

    :goto_5
    iget-object v0, v6, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->K()Lg5/ia;

    move-result-object v8

    iget-object v9, v6, Lg5/i7;->p:Lg5/ha;

    const/4 v10, 0x0

    const-string v12, "_ev"

    invoke-virtual/range {v8 .. v14}, Lg5/ia;->v(Lg5/ha;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_9
    iget-object v3, v6, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v3}, Lg5/b5;->K()Lg5/ia;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lg5/ia;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_a

    move-object v0, p0

    move-object/from16 v2, p2

    move-wide/from16 v3, p5

    invoke-virtual/range {v0 .. v5}, Lg5/i7;->w(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :cond_a
    return-void

    :cond_b
    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v2, p2

    move-wide/from16 v3, p5

    invoke-virtual/range {v0 .. v5}, Lg5/i7;->w(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    return-void
.end method

.method public final K(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 8

    invoke-static {p1}, Lx3/q;->f(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lx3/q;->f(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lg5/v5;->c()V

    invoke-virtual {p0}, Lg5/f4;->d()V

    const-string v0, "allow_personalized_ads"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "_npa"

    if-eqz v0, :cond_3

    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_2

    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 p2, 0x1

    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, p3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "false"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const-wide/16 v2, 0x1

    if-eq p2, p3, :cond_0

    const-wide/16 p2, 0x0

    goto :goto_0

    :cond_0
    move-wide p2, v2

    :goto_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    iget-object p2, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->A()Lg5/g4;

    move-result-object p2

    iget-object p2, p2, Lg5/g4;->m:Lg5/e4;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-nez v6, :cond_1

    const-string v0, "true"

    :cond_1
    invoke-virtual {p2, v0}, Lg5/e4;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-nez p3, :cond_3

    iget-object p2, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->A()Lg5/g4;

    move-result-object p2

    iget-object p2, p2, Lg5/g4;->m:Lg5/e4;

    const-string v0, "unset"

    invoke-virtual {p2, v0}, Lg5/e4;->b(Ljava/lang/String;)V

    :goto_1
    move-object v6, p3

    move-object v3, v1

    goto :goto_2

    :cond_3
    move-object v3, p2

    move-object v6, p3

    :goto_2
    iget-object p2, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->j()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->F()Lg5/q3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/q3;->q()Lg5/o3;

    move-result-object p1

    const-string p2, "User property not set since app measurement is disabled"

    invoke-virtual {p1, p2}, Lg5/o3;->a(Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object p2, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->m()Z

    move-result p2

    if-nez p2, :cond_5

    return-void

    :cond_5
    new-instance p2, Lg5/ea;

    move-object v2, p2

    move-wide v4, p4

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lg5/ea;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->I()Lg5/w8;

    move-result-object p1

    invoke-virtual {p1, p2}, Lg5/w8;->t(Lg5/ea;)V

    return-void
.end method

.method public final L(Lg5/d6;)V
    .locals 1

    invoke-virtual {p0}, Lg5/f4;->d()V

    invoke-static {p1}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lg5/i7;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->F()Lg5/q3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/q3;->r()Lg5/o3;

    move-result-object p1

    const-string v0, "OnEventListener had not been registered"

    invoke-virtual {p1, v0}, Lg5/o3;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final M(Landroid/os/Bundle;J)V
    .locals 3

    invoke-static {}, Lb5/fd;->b()Z

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->u()Lg5/g;

    move-result-object v0

    sget-object v1, Lg5/c3;->v0:Lg5/b3;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lg5/g;->w(Ljava/lang/String;Lg5/b3;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->w()Lg5/h3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/h3;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->F()Lg5/q3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/q3;->s()Lg5/o3;

    move-result-object p1

    const-string p2, "Using developer consent only; google app id found"

    invoke-virtual {p1, p2}, Lg5/o3;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lg5/i7;->A(Landroid/os/Bundle;IJ)V

    return-void
.end method

.method public final N(Ljava/lang/Boolean;Z)V
    .locals 2

    invoke-virtual {p0}, Lg5/v5;->c()V

    invoke-virtual {p0}, Lg5/f4;->d()V

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->l()Lg5/o3;

    move-result-object v0

    const-string v1, "Setting app measurement enabled (FE)"

    invoke-virtual {v0, v1, p1}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->A()Lg5/g4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg5/g4;->n(Ljava/lang/Boolean;)V

    if-eqz p2, :cond_1

    iget-object p2, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->A()Lg5/g4;

    move-result-object p2

    iget-object v0, p2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/v5;->c()V

    invoke-virtual {p2}, Lg5/g4;->j()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "measurement_enabled_from_api"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    invoke-interface {p2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    iget-object p2, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->k()Z

    move-result p2

    if-nez p2, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lg5/i7;->R()V

    return-void
.end method

.method public final R()V
    .locals 8

    invoke-virtual {p0}, Lg5/v5;->c()V

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->A()Lg5/g4;

    move-result-object v0

    iget-object v0, v0, Lg5/g4;->m:Lg5/e4;

    invoke-virtual {v0}, Lg5/e4;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "unset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v5, 0x0

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->Q()Lc4/f;

    move-result-object v0

    invoke-interface {v0}, Lc4/f;->a()J

    move-result-wide v6

    const-string v3, "app"

    const-string v4, "_npa"

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lg5/i7;->K(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    const-string v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v1, v0, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x1

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->Q()Lc4/f;

    move-result-object v0

    invoke-interface {v0}, Lc4/f;->a()J

    move-result-wide v6

    const-string v3, "app"

    const-string v4, "_npa"

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lg5/i7;->K(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lg5/i7;->o:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->l()Lg5/o3;

    move-result-object v0

    const-string v1, "Recording app launch after enabling measurement for the first time (FE)"

    invoke-virtual {v0, v1}, Lg5/o3;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lg5/i7;->g0()V

    invoke-static {}, Lb5/ld;->b()Z

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->u()Lg5/g;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lg5/c3;->l0:Lg5/b3;

    invoke-virtual {v0, v1, v2}, Lg5/g;->w(Ljava/lang/String;Lg5/b3;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->J()Lg5/m9;

    move-result-object v0

    iget-object v0, v0, Lg5/m9;->d:Lg5/l9;

    invoke-virtual {v0}, Lg5/l9;->a()V

    :cond_3
    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->P()Lg5/y4;

    move-result-object v0

    new-instance v1, Lg5/l6;

    invoke-direct {v1, p0}, Lg5/l6;-><init>(Lg5/i7;)V

    invoke-virtual {v0, v1}, Lg5/y4;->u(Ljava/lang/Runnable;)V

    return-void

    :cond_4
    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->l()Lg5/o3;

    move-result-object v0

    const-string v1, "Updating Scion state (FE)"

    invoke-virtual {v0, v1}, Lg5/o3;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->I()Lg5/w8;

    move-result-object v0

    invoke-virtual {v0}, Lg5/w8;->r()V

    return-void
.end method

.method public final S(Ljava/lang/String;)I
    .locals 0

    invoke-static {p1}, Lx3/q;->f(Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->u()Lg5/g;

    const/16 p1, 0x19

    return p1
.end method

.method public final T()Ljava/lang/Boolean;
    .locals 6

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->P()Lg5/y4;

    move-result-object v0

    new-instance v5, Lg5/s6;

    invoke-direct {v5, p0, v1}, Lg5/s6;-><init>(Lg5/i7;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-wide/16 v2, 0x3a98

    const-string v4, "boolean test flag value"

    invoke-virtual/range {v0 .. v5}, Lg5/y4;->m(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final U()Ljava/lang/Double;
    .locals 6

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->P()Lg5/y4;

    move-result-object v0

    new-instance v5, Lg5/z6;

    invoke-direct {v5, p0, v1}, Lg5/z6;-><init>(Lg5/i7;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-wide/16 v2, 0x3a98

    const-string v4, "double test flag value"

    invoke-virtual/range {v0 .. v5}, Lg5/y4;->m(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public final V()Ljava/lang/Integer;
    .locals 6

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->P()Lg5/y4;

    move-result-object v0

    new-instance v5, Lg5/y6;

    invoke-direct {v5, p0, v1}, Lg5/y6;-><init>(Lg5/i7;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-wide/16 v2, 0x3a98

    const-string v4, "int test flag value"

    invoke-virtual/range {v0 .. v5}, Lg5/y4;->m(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public final W()Ljava/lang/Long;
    .locals 6

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->P()Lg5/y4;

    move-result-object v0

    new-instance v5, Lg5/x6;

    invoke-direct {v5, p0, v1}, Lg5/x6;-><init>(Lg5/i7;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-wide/16 v2, 0x3a98

    const-string v4, "long test flag value"

    invoke-virtual/range {v0 .. v5}, Lg5/y4;->m(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public final X()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg5/i7;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final Y()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->H()Lg5/w7;

    move-result-object v0

    invoke-virtual {v0}, Lg5/w7;->n()Lg5/p7;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lg5/p7;->b:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final Z()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->H()Lg5/w7;

    move-result-object v0

    invoke-virtual {v0}, Lg5/w7;->n()Lg5/p7;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lg5/p7;->a:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a0()Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->P()Lg5/y4;

    move-result-object v0

    new-instance v5, Lg5/w6;

    invoke-direct {v5, p0, v1}, Lg5/w6;-><init>(Lg5/i7;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-wide/16 v2, 0x3a98

    const-string v4, "String test flag value"

    invoke-virtual/range {v0 .. v5}, Lg5/y4;->m(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final b0(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->P()Lg5/y4;

    move-result-object v0

    invoke-virtual {v0}, Lg5/y4;->x()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->F()Lg5/q3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/q3;->m()Lg5/o3;

    move-result-object p1

    const-string p2, "Cannot get conditional user properties from analytics worker thread"

    invoke-virtual {p1, p2}, Lg5/o3;->a(Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->G()Lg5/b;

    invoke-static {}, Lg5/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->F()Lg5/q3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/q3;->m()Lg5/o3;

    move-result-object p1

    const-string p2, "Cannot get conditional user properties from main thread"

    invoke-virtual {p1, p2}, Lg5/o3;->a(Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->P()Lg5/y4;

    move-result-object v1

    new-instance v8, Lg5/t6;

    const/4 v5, 0x0

    move-object v2, v8

    move-object v3, p0

    move-object v4, v0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lg5/t6;-><init>(Lg5/i7;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x1388

    const-string v6, "get conditional user properties"

    move-object v2, v1

    move-object v3, v0

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Lg5/y4;->m(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_2

    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->F()Lg5/q3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/q3;->m()Lg5/o3;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "Timed out waiting for get conditional user properties"

    invoke-virtual {p1, v0, p2}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lg5/ia;->p(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final c0(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->P()Lg5/y4;

    move-result-object v0

    invoke-virtual {v0}, Lg5/y4;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->F()Lg5/q3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/q3;->m()Lg5/o3;

    move-result-object p1

    const-string p2, "Cannot get user properties from analytics worker thread"

    invoke-virtual {p1, p2}, Lg5/o3;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->G()Lg5/b;

    invoke-static {}, Lg5/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->F()Lg5/q3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/q3;->m()Lg5/o3;

    move-result-object p1

    const-string p2, "Cannot get user properties from main thread"

    invoke-virtual {p1, p2}, Lg5/o3;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    goto/16 :goto_1

    :cond_1
    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->P()Lg5/y4;

    move-result-object v8

    new-instance v9, Lg5/u6;

    const/4 v3, 0x0

    move-object v0, v9

    move-object v1, p0

    move-object v2, v7

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lg5/u6;-><init>(Lg5/i7;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-wide/16 v2, 0x1388

    const-string v4, "get user properties"

    move-object v0, v8

    move-object v1, v7

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Lg5/y4;->m(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_2

    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->F()Lg5/q3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/q3;->m()Lg5/o3;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string p3, "Timed out waiting for handle get user properties, includeInternal"

    invoke-virtual {p1, p3, p2}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance p2, Lp/a;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p2, p3}, Lp/a;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lg5/ea;

    invoke-virtual {p3}, Lg5/ea;->X0()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object p3, p3, Lg5/ea;->b:Ljava/lang/String;

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    move-object p1, p2

    :goto_1
    return-object p1
.end method

.method public final g0()V
    .locals 5

    invoke-virtual {p0}, Lg5/v5;->c()V

    invoke-virtual {p0}, Lg5/f4;->d()V

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->u()Lg5/g;

    move-result-object v0

    sget-object v1, Lg5/c3;->b0:Lg5/b3;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lg5/g;->w(Ljava/lang/String;Lg5/b3;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->u()Lg5/g;

    move-result-object v0

    iget-object v1, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->G()Lg5/b;

    const-string v1, "google_analytics_deferred_deep_link_enabled"

    invoke-virtual {v0, v1}, Lg5/g;->o(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->l()Lg5/o3;

    move-result-object v0

    const-string v1, "Deferred Deep Link feature enabled."

    invoke-virtual {v0, v1}, Lg5/o3;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->P()Lg5/y4;

    move-result-object v0

    new-instance v1, Lg5/g6;

    invoke-direct {v1, p0}, Lg5/g6;-><init>(Lg5/i7;)V

    invoke-virtual {v0, v1}, Lg5/y4;->u(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->I()Lg5/w8;

    move-result-object v0

    invoke-virtual {v0}, Lg5/w8;->L()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg5/i7;->o:Z

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->A()Lg5/g4;

    move-result-object v0

    invoke-virtual {v0}, Lg5/v5;->c()V

    invoke-virtual {v0}, Lg5/g4;->j()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "previous_os_version"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->v()Lg5/o;

    move-result-object v2

    invoke-virtual {v2}, Lg5/w5;->f()V

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Lg5/g4;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->v()Lg5/o;

    move-result-object v0

    invoke-virtual {v0}, Lg5/w5;->f()V

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "_po"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "auto"

    const-string v2, "_ou"

    invoke-virtual {p0, v1, v2, v0}, Lg5/i7;->p(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public final h0(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->Q()Lc4/f;

    move-result-object v0

    invoke-interface {v0}, Lc4/f;->a()J

    move-result-wide v0

    invoke-static {p1}, Lx3/q;->f(Ljava/lang/String;)Ljava/lang/String;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "name"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "creation_timestamp"

    invoke-virtual {v2, p1, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    if-eqz p2, :cond_0

    const-string p1, "expired_event_name"

    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "expired_event_params"

    invoke-virtual {v2, p1, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->P()Lg5/y4;

    move-result-object p1

    new-instance p2, Lg5/r6;

    invoke-direct {p2, p0, v2}, Lg5/r6;-><init>(Lg5/i7;Landroid/os/Bundle;)V

    invoke-virtual {p1, p2}, Lg5/y4;->u(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final j()V
    .locals 2

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->O()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg5/i7;->c:Lg5/g7;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->O()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iget-object v1, p0, Lg5/i7;->c:Lg5/g7;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method public final synthetic k(Landroid/os/Bundle;J)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lg5/i7;->M(Landroid/os/Bundle;J)V

    return-void
.end method

.method public final synthetic l(Landroid/os/Bundle;)V
    .locals 12

    if-nez p1, :cond_0

    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->A()Lg5/g4;

    move-result-object p1

    iget-object p1, p1, Lg5/g4;->w:Lg5/a4;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v0}, Lg5/a4;->b(Landroid/os/Bundle;)V

    return-void

    :cond_0
    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->A()Lg5/g4;

    move-result-object v0

    iget-object v0, v0, Lg5/g4;->w:Lg5/a4;

    invoke-virtual {v0}, Lg5/a4;->a()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    instance-of v4, v3, Ljava/lang/String;

    if-nez v4, :cond_3

    instance-of v4, v3, Ljava/lang/Long;

    if-nez v4, :cond_3

    instance-of v4, v3, Ljava/lang/Double;

    if-nez v4, :cond_3

    iget-object v4, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v4}, Lg5/b5;->K()Lg5/ia;

    move-result-object v4

    invoke-virtual {v4, v3}, Lg5/ia;->T(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v4}, Lg5/b5;->K()Lg5/ia;

    move-result-object v5

    iget-object v6, p0, Lg5/i7;->p:Lg5/ha;

    const/4 v7, 0x0

    const/16 v8, 0x1b

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Lg5/ia;->v(Lg5/ha;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_2
    iget-object v4, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v4}, Lg5/b5;->F()Lg5/q3;

    move-result-object v4

    invoke-virtual {v4}, Lg5/q3;->s()Lg5/o3;

    move-result-object v4

    const-string v5, "Invalid default event parameter type. Name, value"

    invoke-virtual {v4, v5, v2, v3}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {v2}, Lg5/ia;->V(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v3, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v3}, Lg5/b5;->F()Lg5/q3;

    move-result-object v3

    invoke-virtual {v3}, Lg5/q3;->s()Lg5/o3;

    move-result-object v3

    const-string v4, "Invalid default event parameter name. Name"

    invoke-virtual {v3, v4, v2}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    if-nez v3, :cond_5

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v4}, Lg5/b5;->K()Lg5/ia;

    move-result-object v4

    iget-object v5, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v5}, Lg5/b5;->u()Lg5/g;

    const/16 v5, 0x64

    const-string v6, "param"

    invoke-virtual {v4, v6, v2, v5, v3}, Lg5/ia;->K(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v4}, Lg5/b5;->K()Lg5/ia;

    move-result-object v4

    invoke-virtual {v4, v0, v2, v3}, Lg5/ia;->w(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->K()Lg5/ia;

    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->u()Lg5/g;

    move-result-object p1

    invoke-virtual {p1}, Lg5/g;->h()I

    move-result p1

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v1

    if-gt v1, p1, :cond_7

    goto :goto_2

    :cond_7
    new-instance v1, Ljava/util/TreeSet;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_8
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    if-le v2, p1, :cond_8

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->K()Lg5/ia;

    move-result-object v1

    iget-object v2, p0, Lg5/i7;->p:Lg5/ha;

    const/4 v3, 0x0

    const/16 v4, 0x1a

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lg5/ia;->v(Lg5/ha;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->F()Lg5/q3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/q3;->s()Lg5/o3;

    move-result-object p1

    const-string v1, "Too many default event parameters set. Discarding beyond event parameter limit"

    invoke-virtual {p1, v1}, Lg5/o3;->a(Ljava/lang/String;)V

    :goto_2
    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->A()Lg5/g4;

    move-result-object p1

    iget-object p1, p1, Lg5/g4;->w:Lg5/a4;

    invoke-virtual {p1, v0}, Lg5/a4;->b(Landroid/os/Bundle;)V

    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->I()Lg5/w8;

    move-result-object p1

    invoke-virtual {p1, v0}, Lg5/w8;->q(Landroid/os/Bundle;)V

    return-void
.end method

.method public final m(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->Q()Lc4/f;

    move-result-object v0

    invoke-interface {v0}, Lc4/f;->a()J

    move-result-wide v7

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v8}, Lg5/i7;->n(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    return-void
.end method

.method public final n(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V
    .locals 11

    move-object v10, p0

    if-nez p1, :cond_0

    const-string v0, "app"

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    if-nez p3, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, p3

    :goto_1
    const-string v0, "screen_view"

    move-object v2, p2

    invoke-static {p2, v0}, Lg5/ia;->Z(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v10, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->H()Lg5/w7;

    move-result-object v0

    move-wide/from16 v3, p6

    invoke-virtual {v0, v5, v3, v4}, Lg5/w7;->A(Landroid/os/Bundle;J)V

    return-void

    :cond_2
    move-wide/from16 v3, p6

    const/4 v0, 0x1

    if-eqz p5, :cond_4

    iget-object v6, v10, Lg5/i7;->d:Lg5/c6;

    if-eqz v6, :cond_4

    invoke-static {p2}, Lg5/ia;->V(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    const/4 v7, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v7, 0x1

    :goto_3
    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p2

    move-wide/from16 v3, p6

    move/from16 v6, p5

    move v8, p4

    invoke-virtual/range {v0 .. v9}, Lg5/i7;->v(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method public final o(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 10

    invoke-static {}, Lg5/b5;->o()V

    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->Q()Lc4/f;

    move-result-object p1

    invoke-interface {p1}, Lc4/f;->a()J

    move-result-wide v3

    const-string v1, "auto"

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v5, p3

    move-object v9, p4

    invoke-virtual/range {v0 .. v9}, Lg5/i7;->v(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    invoke-virtual {p0}, Lg5/v5;->c()V

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->Q()Lc4/f;

    move-result-object v0

    invoke-interface {v0}, Lc4/f;->a()J

    move-result-wide v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lg5/i7;->q(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    return-void
.end method

.method public final q(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V
    .locals 11

    invoke-virtual {p0}, Lg5/v5;->c()V

    move-object v10, p0

    iget-object v0, v10, Lg5/i7;->d:Lg5/c6;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {p2}, Lg5/ia;->V(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v7, 0x1

    :goto_1
    const/4 v6, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v9}, Lg5/i7;->r(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method public final r(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 19

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-wide/from16 v10, p3

    move-object/from16 v12, p5

    const-string v0, "com.google.android.gms.tagmanager.TagManagerService"

    invoke-static/range {p1 .. p1}, Lx3/q;->f(Ljava/lang/String;)Ljava/lang/String;

    invoke-static/range {p5 .. p5}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lg5/v5;->c()V

    invoke-virtual/range {p0 .. p0}, Lg5/f4;->d()V

    iget-object v1, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->j()Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->w()Lg5/h3;

    move-result-object v1

    invoke-virtual {v1}, Lg5/h3;->q()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->l()Lg5/o3;

    move-result-object v0

    const-string v1, "Dropping non-safelisted event. event name, origin"

    invoke-virtual {v0, v1, v9, v8}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    iget-boolean v1, v7, Lg5/i7;->f:Z

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-nez v1, :cond_3

    iput-boolean v15, v7, Lg5/i7;->f:Z

    :try_start_0
    iget-object v1, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->n()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->O()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v15, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    new-array v1, v15, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v14

    const-string v2, "initialize"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v15, [Ljava/lang/Object;

    iget-object v2, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->O()Landroid/content/Context;

    move-result-object v2

    aput-object v2, v1, v14

    invoke-virtual {v0, v13, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->F()Lg5/q3;

    move-result-object v1

    invoke-virtual {v1}, Lg5/q3;->r()Lg5/o3;

    move-result-object v1

    const-string v2, "Failed to invoke Tag Manager\'s initialize() method"

    invoke-virtual {v1, v2, v0}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    iget-object v0, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->p()Lg5/o3;

    move-result-object v0

    const-string v1, "Tag Manager is not found and thus will not be used"

    invoke-virtual {v0, v1}, Lg5/o3;->a(Ljava/lang/String;)V

    :cond_3
    :goto_2
    const-string v0, "_cmp"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "gclid"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->G()Lg5/b;

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->Q()Lc4/f;

    move-result-object v0

    invoke-interface {v0}, Lc4/f;->a()J

    move-result-wide v5

    const-string v2, "auto"

    const-string v3, "_lgclid"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lg5/i7;->K(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    :cond_4
    iget-object v0, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->G()Lg5/b;

    if-eqz p6, :cond_5

    invoke-static/range {p2 .. p2}, Lg5/ia;->a0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->K()Lg5/ia;

    move-result-object v0

    iget-object v1, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->A()Lg5/g4;

    move-result-object v1

    iget-object v1, v1, Lg5/g4;->w:Lg5/a4;

    invoke-virtual {v1}, Lg5/a4;->a()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Lg5/ia;->t(Landroid/os/Bundle;Landroid/os/Bundle;)V

    :cond_5
    const/16 v0, 0x28

    const/4 v1, 0x2

    if-nez p8, :cond_a

    iget-object v2, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->G()Lg5/b;

    const-string v2, "_iap"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->K()Lg5/ia;

    move-result-object v2

    const-string v3, "event"

    invoke-virtual {v2, v3, v9}, Lg5/ia;->N(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    :goto_3
    const/4 v2, 0x2

    goto :goto_4

    :cond_6
    sget-object v4, Lg5/z5;->a:[Ljava/lang/String;

    sget-object v5, Lg5/z5;->b:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v9}, Lg5/ia;->J(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const/16 v2, 0xd

    goto :goto_4

    :cond_7
    iget-object v4, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v4}, Lg5/b5;->u()Lg5/g;

    invoke-virtual {v2, v3, v0, v9}, Lg5/ia;->I(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_3

    :cond_8
    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_a

    iget-object v1, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->F()Lg5/q3;

    move-result-object v1

    invoke-virtual {v1}, Lg5/q3;->n()Lg5/o3;

    move-result-object v1

    iget-object v3, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v3}, Lg5/b5;->y()Lg5/l3;

    move-result-object v3

    invoke-virtual {v3, v9}, Lg5/l3;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Invalid public event name. Event will not be logged (FE)"

    invoke-virtual {v1, v4, v3}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->K()Lg5/ia;

    move-result-object v1

    iget-object v3, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v3}, Lg5/b5;->u()Lg5/g;

    invoke-virtual {v1, v9, v0, v15}, Lg5/ia;->l(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v9, :cond_9

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v14

    :cond_9
    iget-object v1, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->K()Lg5/ia;

    move-result-object v1

    iget-object v3, v7, Lg5/i7;->p:Lg5/ha;

    const/4 v4, 0x0

    const-string v5, "_ev"

    move-object/from16 p1, v1

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move/from16 p4, v2

    move-object/from16 p5, v5

    move-object/from16 p6, v0

    move/from16 p7, v14

    invoke-virtual/range {p1 .. p7}, Lg5/ia;->v(Lg5/ha;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_a
    invoke-static {}, Lb5/ze;->b()Z

    iget-object v2, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->u()Lg5/g;

    move-result-object v2

    sget-object v3, Lg5/c3;->D0:Lg5/b3;

    invoke-virtual {v2, v13, v3}, Lg5/g;->w(Ljava/lang/String;Lg5/b3;)Z

    move-result v2

    const-string v3, "_sc"

    if-eqz v2, :cond_d

    iget-object v2, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->G()Lg5/b;

    iget-object v2, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->H()Lg5/w7;

    move-result-object v2

    invoke-virtual {v2, v14}, Lg5/w7;->o(Z)Lg5/p7;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    iput-boolean v15, v2, Lg5/p7;->d:Z

    :cond_b
    if-eqz p6, :cond_c

    if-nez p8, :cond_c

    const/4 v4, 0x1

    goto :goto_5

    :cond_c
    const/4 v4, 0x0

    :goto_5
    invoke-static {v2, v12, v4}, Lg5/ia;->s(Lg5/p7;Landroid/os/Bundle;Z)V

    goto :goto_7

    :cond_d
    iget-object v2, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->G()Lg5/b;

    iget-object v2, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->H()Lg5/w7;

    move-result-object v2

    invoke-virtual {v2, v14}, Lg5/w7;->o(Z)Lg5/p7;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    iput-boolean v15, v2, Lg5/p7;->d:Z

    :cond_e
    if-eqz p6, :cond_f

    if-nez p8, :cond_f

    const/4 v4, 0x1

    goto :goto_6

    :cond_f
    const/4 v4, 0x0

    :goto_6
    invoke-static {v2, v12, v4}, Lg5/ia;->s(Lg5/p7;Landroid/os/Bundle;Z)V

    :goto_7
    const-string v2, "am"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static/range {p2 .. p2}, Lg5/ia;->V(Ljava/lang/String;)Z

    move-result v4

    if-eqz p6, :cond_11

    iget-object v5, v7, Lg5/i7;->d:Lg5/c6;

    if-eqz v5, :cond_11

    if-nez v4, :cond_11

    if-eqz v2, :cond_10

    const/16 v16, 0x1

    goto :goto_8

    :cond_10
    iget-object v0, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->l()Lg5/o3;

    move-result-object v0

    iget-object v1, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->y()Lg5/l3;

    move-result-object v1

    invoke-virtual {v1, v9}, Lg5/l3;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->y()Lg5/l3;

    move-result-object v2

    invoke-virtual {v2, v12}, Lg5/l3;->b(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Passing event to registered event handler (FE)"

    invoke-virtual {v0, v3, v1, v2}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v7, Lg5/i7;->d:Lg5/c6;

    invoke-static {v0}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v7, Lg5/i7;->d:Lg5/c6;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move-wide/from16 v5, p3

    invoke-interface/range {v1 .. v6}, Lg5/c6;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    return-void

    :cond_11
    move/from16 v16, v2

    :goto_8
    iget-object v2, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->m()Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->K()Lg5/ia;

    move-result-object v2

    invoke-virtual {v2, v9}, Lg5/ia;->k0(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_13

    iget-object v1, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->F()Lg5/q3;

    move-result-object v1

    invoke-virtual {v1}, Lg5/q3;->n()Lg5/o3;

    move-result-object v1

    iget-object v3, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v3}, Lg5/b5;->y()Lg5/l3;

    move-result-object v3

    invoke-virtual {v3, v9}, Lg5/l3;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Invalid event name. Event will not be logged (FE)"

    invoke-virtual {v1, v4, v3}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->K()Lg5/ia;

    move-result-object v1

    iget-object v3, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v3}, Lg5/b5;->u()Lg5/g;

    invoke-virtual {v1, v9, v0, v15}, Lg5/ia;->l(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v9, :cond_12

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v14

    :cond_12
    iget-object v1, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->K()Lg5/ia;

    move-result-object v1

    iget-object v3, v7, Lg5/i7;->p:Lg5/ha;

    const-string v4, "_ev"

    move-object/from16 p1, v1

    move-object/from16 p2, v3

    move-object/from16 p3, p9

    move/from16 p4, v2

    move-object/from16 p5, v4

    move-object/from16 p6, v0

    move/from16 p7, v14

    invoke-virtual/range {p1 .. p7}, Lg5/ia;->v(Lg5/ha;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_13
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v6, "_o"

    aput-object v6, v0, v14

    const-string v2, "_sn"

    aput-object v2, v0, v15

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const-string v2, "_si"

    aput-object v2, v0, v1

    invoke-static {v0}, Lc4/g;->c([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iget-object v0, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->K()Lg5/ia;

    move-result-object v1

    move-object/from16 v2, p9

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move-object v0, v6

    move/from16 v6, p8

    invoke-virtual/range {v1 .. v6}, Lg5/ia;->v0(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)Landroid/os/Bundle;

    move-result-object v12

    invoke-static {v12}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->G()Lg5/b;

    iget-object v1, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->H()Lg5/w7;

    move-result-object v1

    invoke-virtual {v1, v14}, Lg5/w7;->o(Z)Lg5/p7;

    move-result-object v1

    const-wide/16 v5, 0x0

    const-string v4, "_ae"

    if-eqz v1, :cond_14

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->J()Lg5/m9;

    move-result-object v1

    iget-object v1, v1, Lg5/m9;->e:Lg5/k9;

    iget-object v2, v1, Lg5/k9;->d:Lg5/m9;

    iget-object v2, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->Q()Lc4/f;

    move-result-object v2

    invoke-interface {v2}, Lc4/f;->b()J

    move-result-wide v2

    iget-wide v14, v1, Lg5/k9;->b:J

    sub-long v14, v2, v14

    iput-wide v2, v1, Lg5/k9;->b:J

    cmp-long v1, v14, v5

    if-lez v1, :cond_14

    iget-object v1, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->K()Lg5/ia;

    move-result-object v1

    invoke-virtual {v1, v12, v14, v15}, Lg5/ia;->q(Landroid/os/Bundle;J)V

    :cond_14
    invoke-static {}, Lb5/cd;->b()Z

    iget-object v1, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->u()Lg5/g;

    move-result-object v1

    sget-object v2, Lg5/c3;->k0:Lg5/b3;

    invoke-virtual {v1, v13, v2}, Lg5/g;->w(Ljava/lang/String;Lg5/b3;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "auto"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "_ffr"

    if-nez v1, :cond_18

    const-string v1, "_ssr"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->K()Lg5/ia;

    move-result-object v1

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc4/s;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    move-object v2, v13

    goto :goto_9

    :cond_15
    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :cond_16
    :goto_9
    iget-object v3, v1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v3}, Lg5/b5;->A()Lg5/g4;

    move-result-object v3

    iget-object v3, v3, Lg5/g4;->t:Lg5/e4;

    invoke-virtual {v3}, Lg5/e4;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lg5/ia;->Z(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_17

    iget-object v1, v1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->A()Lg5/g4;

    move-result-object v1

    iget-object v1, v1, Lg5/g4;->t:Lg5/e4;

    invoke-virtual {v1, v2}, Lg5/e4;->b(Ljava/lang/String;)V

    goto :goto_a

    :cond_17
    iget-object v0, v1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->l()Lg5/o3;

    move-result-object v0

    const-string v1, "Not logging duplicate session_start_with_rollout event"

    invoke-virtual {v0, v1}, Lg5/o3;->a(Ljava/lang/String;)V

    return-void

    :cond_18
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->K()Lg5/ia;

    move-result-object v1

    iget-object v1, v1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->A()Lg5/g4;

    move-result-object v1

    iget-object v1, v1, Lg5/g4;->t:Lg5/e4;

    invoke-virtual {v1}, Lg5/e4;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_19

    invoke-virtual {v12, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    :goto_a
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->A()Lg5/g4;

    move-result-object v1

    iget-object v1, v1, Lg5/g4;->o:Lg5/b4;

    invoke-virtual {v1}, Lg5/b4;->a()J

    move-result-wide v1

    cmp-long v3, v1, v5

    if-lez v3, :cond_1a

    iget-object v1, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->A()Lg5/g4;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Lg5/g4;->q(J)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->A()Lg5/g4;

    move-result-object v1

    iget-object v1, v1, Lg5/g4;->q:Lg5/z3;

    invoke-virtual {v1}, Lg5/z3;->b()Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->F()Lg5/q3;

    move-result-object v1

    invoke-virtual {v1}, Lg5/q3;->q()Lg5/o3;

    move-result-object v1

    const-string v2, "Current session is expired, remove the session number, ID, and engagement time"

    invoke-virtual {v1, v2}, Lg5/o3;->a(Ljava/lang/String;)V

    const/4 v15, 0x0

    iget-object v1, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->Q()Lc4/f;

    move-result-object v1

    invoke-interface {v1}, Lc4/f;->a()J

    move-result-wide v17

    const-string v2, "auto"

    const-string v3, "_sid"

    move-object/from16 v1, p0

    move-object v13, v4

    move-object v4, v15

    move-wide v8, v5

    move-wide/from16 v5, v17

    invoke-virtual/range {v1 .. v6}, Lg5/i7;->K(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    const/4 v4, 0x0

    iget-object v1, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->Q()Lc4/f;

    move-result-object v1

    invoke-interface {v1}, Lc4/f;->a()J

    move-result-wide v5

    const-string v2, "auto"

    const-string v3, "_sno"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lg5/i7;->K(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    iget-object v1, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->Q()Lc4/f;

    move-result-object v1

    invoke-interface {v1}, Lc4/f;->a()J

    move-result-wide v5

    const-string v2, "auto"

    const-string v3, "_se"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lg5/i7;->K(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    goto :goto_b

    :cond_1a
    move-object v13, v4

    move-wide v8, v5

    :goto_b
    const-string v1, "extend_session"

    invoke-virtual {v12, v1, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_1b

    iget-object v1, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->F()Lg5/q3;

    move-result-object v1

    invoke-virtual {v1}, Lg5/q3;->q()Lg5/o3;

    move-result-object v1

    const-string v2, "EXTEND_SESSION param attached: initiate a new session or extend the current active session"

    invoke-virtual {v1, v2}, Lg5/o3;->a(Ljava/lang/String;)V

    iget-object v1, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->J()Lg5/m9;

    move-result-object v1

    iget-object v1, v1, Lg5/m9;->d:Lg5/l9;

    const/4 v2, 0x1

    invoke-virtual {v1, v10, v11, v2}, Lg5/l9;->b(JZ)V

    :cond_1b
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v12}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_20

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_1f

    iget-object v5, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v5}, Lg5/b5;->K()Lg5/ia;

    invoke-virtual {v12, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Landroid/os/Bundle;

    if-eqz v6, :cond_1c

    const/4 v6, 0x1

    new-array v8, v6, [Landroid/os/Bundle;

    check-cast v5, Landroid/os/Bundle;

    const/4 v6, 0x0

    aput-object v5, v8, v6

    goto :goto_d

    :cond_1c
    instance-of v6, v5, [Landroid/os/Parcelable;

    if-eqz v6, :cond_1d

    check-cast v5, [Landroid/os/Parcelable;

    array-length v6, v5

    const-class v8, [Landroid/os/Bundle;

    invoke-static {v5, v6, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, [Landroid/os/Bundle;

    goto :goto_d

    :cond_1d
    instance-of v6, v5, Ljava/util/ArrayList;

    if-eqz v6, :cond_1e

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, [Landroid/os/Bundle;

    goto :goto_d

    :cond_1e
    const/4 v8, 0x0

    :goto_d
    if-eqz v8, :cond_1f

    invoke-virtual {v12, v4, v8}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_20
    const/4 v8, 0x0

    :goto_e
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_24

    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    if-eqz v8, :cond_21

    const-string v2, "_ep"

    move-object/from16 v9, p1

    goto :goto_f

    :cond_21
    move-object/from16 v9, p1

    move-object/from16 v2, p2

    :goto_f
    invoke-virtual {v1, v0, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p7, :cond_22

    iget-object v3, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v3}, Lg5/b5;->K()Lg5/ia;

    move-result-object v3

    invoke-virtual {v3, v1}, Lg5/ia;->u0(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    :cond_22
    move-object v12, v1

    new-instance v15, Lg5/u;

    new-instance v3, Lg5/s;

    invoke-direct {v3, v12}, Lg5/s;-><init>(Landroid/os/Bundle;)V

    move-object v1, v15

    move-object/from16 v4, p1

    move-wide/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Lg5/u;-><init>(Ljava/lang/String;Lg5/s;Ljava/lang/String;J)V

    iget-object v1, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->I()Lg5/w8;

    move-result-object v1

    move-object/from16 v5, p9

    invoke-virtual {v1, v15, v5}, Lg5/w8;->j(Lg5/u;Ljava/lang/String;)V

    if-nez v16, :cond_23

    iget-object v1, v7, Lg5/i7;->e:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_10
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg5/d6;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4, v12}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v5, p3

    invoke-interface/range {v1 .. v6}, Lg5/d6;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    move-object/from16 v5, p9

    goto :goto_10

    :cond_23
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    :cond_24
    iget-object v0, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->G()Lg5/b;

    iget-object v0, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->H()Lg5/w7;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg5/w7;->o(Z)Lg5/p7;

    move-result-object v0

    if-eqz v0, :cond_25

    move-object/from16 v1, p2

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->J()Lg5/m9;

    move-result-object v0

    iget-object v1, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->Q()Lc4/f;

    move-result-object v1

    invoke-interface {v1}, Lc4/f;->b()J

    move-result-wide v1

    iget-object v0, v0, Lg5/m9;->e:Lg5/k9;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v3, v1, v2}, Lg5/k9;->d(ZZJ)Z

    :cond_25
    return-void

    :cond_26
    iget-object v0, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->l()Lg5/o3;

    move-result-object v0

    const-string v1, "Event not sent since app measurement is disabled"

    invoke-virtual {v0, v1}, Lg5/o3;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final s(Lg5/d6;)V
    .locals 1

    invoke-virtual {p0}, Lg5/f4;->d()V

    invoke-static {p1}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lg5/i7;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->F()Lg5/q3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/q3;->r()Lg5/o3;

    move-result-object p1

    const-string v0, "OnEventListener already registered"

    invoke-virtual {p1, v0}, Lg5/o3;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final t(J)V
    .locals 2

    iget-object v0, p0, Lg5/i7;->g:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->P()Lg5/y4;

    move-result-object v0

    new-instance v1, Lg5/p6;

    invoke-direct {v1, p0, p1, p2}, Lg5/p6;-><init>(Lg5/i7;J)V

    invoke-virtual {v0, v1}, Lg5/y4;->u(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final u(JZ)V
    .locals 5

    invoke-virtual {p0}, Lg5/v5;->c()V

    invoke-virtual {p0}, Lg5/f4;->d()V

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->l()Lg5/o3;

    move-result-object v0

    const-string v1, "Resetting analytics data (FE)"

    invoke-virtual {v0, v1}, Lg5/o3;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->J()Lg5/m9;

    move-result-object v0

    invoke-virtual {v0}, Lg5/v5;->c()V

    iget-object v0, v0, Lg5/m9;->e:Lg5/k9;

    invoke-virtual {v0}, Lg5/k9;->a()V

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->j()Z

    move-result v0

    iget-object v1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->A()Lg5/g4;

    move-result-object v1

    iget-object v2, v1, Lg5/g4;->e:Lg5/b4;

    invoke-virtual {v2, p1, p2}, Lg5/b4;->b(J)V

    iget-object p1, v1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->A()Lg5/g4;

    move-result-object p1

    iget-object p1, p1, Lg5/g4;->t:Lg5/e4;

    invoke-virtual {p1}, Lg5/e4;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    iget-object p1, v1, Lg5/g4;->t:Lg5/e4;

    invoke-virtual {p1, p2}, Lg5/e4;->b(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lb5/ld;->b()Z

    iget-object p1, v1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->u()Lg5/g;

    move-result-object p1

    sget-object v2, Lg5/c3;->l0:Lg5/b3;

    invoke-virtual {p1, p2, v2}, Lg5/g;->w(Ljava/lang/String;Lg5/b3;)Z

    move-result p1

    const-wide/16 v3, 0x0

    if-eqz p1, :cond_1

    iget-object p1, v1, Lg5/g4;->o:Lg5/b4;

    invoke-virtual {p1, v3, v4}, Lg5/b4;->b(J)V

    :cond_1
    iget-object p1, v1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->u()Lg5/g;

    move-result-object p1

    invoke-virtual {p1}, Lg5/g;->z()Z

    move-result p1

    if-nez p1, :cond_2

    xor-int/lit8 p1, v0, 0x1

    invoke-virtual {v1, p1}, Lg5/g4;->o(Z)V

    :cond_2
    iget-object p1, v1, Lg5/g4;->u:Lg5/e4;

    invoke-virtual {p1, p2}, Lg5/e4;->b(Ljava/lang/String;)V

    iget-object p1, v1, Lg5/g4;->v:Lg5/b4;

    invoke-virtual {p1, v3, v4}, Lg5/b4;->b(J)V

    iget-object p1, v1, Lg5/g4;->w:Lg5/a4;

    invoke-virtual {p1, p2}, Lg5/a4;->b(Landroid/os/Bundle;)V

    if-eqz p3, :cond_3

    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->I()Lg5/w8;

    move-result-object p1

    invoke-virtual {p1}, Lg5/w8;->l()V

    :cond_3
    invoke-static {}, Lb5/ld;->b()Z

    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->u()Lg5/g;

    move-result-object p1

    invoke-virtual {p1, p2, v2}, Lg5/g;->w(Ljava/lang/String;Lg5/b3;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->J()Lg5/m9;

    move-result-object p1

    iget-object p1, p1, Lg5/m9;->d:Lg5/l9;

    invoke-virtual {p1}, Lg5/l9;->a()V

    :cond_4
    xor-int/lit8 p1, v0, 0x1

    iput-boolean p1, p0, Lg5/i7;->o:Z

    return-void
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 14

    new-instance v6, Landroid/os/Bundle;

    move-object/from16 v0, p5

    invoke-direct {v6, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/os/Bundle;

    if-eqz v3, :cond_1

    new-instance v3, Landroid/os/Bundle;

    check-cast v2, Landroid/os/Bundle;

    invoke-direct {v3, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v6, v1, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    instance-of v1, v2, [Landroid/os/Parcelable;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    check-cast v2, [Landroid/os/Parcelable;

    :goto_1
    array-length v1, v2

    if-ge v3, v1, :cond_0

    aget-object v1, v2, v3

    instance-of v4, v1, Landroid/os/Bundle;

    if-eqz v4, :cond_2

    new-instance v4, Landroid/os/Bundle;

    check-cast v1, Landroid/os/Bundle;

    invoke-direct {v4, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    aput-object v4, v2, v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    instance-of v1, v2, Ljava/util/List;

    if-eqz v1, :cond_0

    check-cast v2, Ljava/util/List;

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Landroid/os/Bundle;

    if-eqz v4, :cond_4

    new-instance v4, Landroid/os/Bundle;

    check-cast v1, Landroid/os/Bundle;

    invoke-direct {v4, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v2, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    move-object v11, p0

    iget-object v0, v11, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->P()Lg5/y4;

    move-result-object v12

    new-instance v13, Lg5/n6;

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lg5/n6;-><init>(Lg5/i7;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    invoke-virtual {v12, v13}, Lg5/y4;->u(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final w(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    .locals 9

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->P()Lg5/y4;

    move-result-object v0

    new-instance v8, Lg5/o6;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lg5/o6;-><init>(Lg5/i7;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    invoke-virtual {v0, v8}, Lg5/y4;->u(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final x(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lg5/i7;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final y(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->Q()Lc4/f;

    move-result-object v0

    invoke-interface {v0}, Lc4/f;->a()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lg5/i7;->z(Landroid/os/Bundle;J)V

    return-void
.end method

.method public final z(Landroid/os/Bundle;J)V
    .locals 11

    const-class v0, Ljava/lang/Long;

    const-class v1, Ljava/lang/String;

    invoke-static {p1}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const-string p1, "app_id"

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v3}, Lg5/b5;->F()Lg5/q3;

    move-result-object v3

    invoke-virtual {v3}, Lg5/q3;->r()Lg5/o3;

    move-result-object v3

    const-string v4, "Package name should be null when calling setConditionalUserProperty"

    invoke-virtual {v3, v4}, Lg5/o3;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-static {v2}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v2, p1, v1, v3}, Lg5/y5;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "origin"

    invoke-static {v2, p1, v1, v3}, Lg5/y5;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "name"

    invoke-static {v2, v4, v1, v3}, Lg5/y5;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v5, Ljava/lang/Object;

    const-string v6, "value"

    invoke-static {v2, v6, v5, v3}, Lg5/y5;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "trigger_event_name"

    invoke-static {v2, v5, v1, v3}, Lg5/y5;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "trigger_timeout"

    invoke-static {v2, v8, v0, v7}, Lg5/y5;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "timed_out_event_name"

    invoke-static {v2, v9, v1, v3}, Lg5/y5;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v9, Landroid/os/Bundle;

    const-string v10, "timed_out_event_params"

    invoke-static {v2, v10, v9, v3}, Lg5/y5;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "triggered_event_name"

    invoke-static {v2, v9, v1, v3}, Lg5/y5;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v9, Landroid/os/Bundle;

    const-string v10, "triggered_event_params"

    invoke-static {v2, v10, v9, v3}, Lg5/y5;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "time_to_live"

    invoke-static {v2, v9, v0, v7}, Lg5/y5;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "expired_event_name"

    invoke-static {v2, v0, v1, v3}, Lg5/y5;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Landroid/os/Bundle;

    const-string v1, "expired_event_params"

    invoke-static {v2, v1, v0, v3}, Lg5/y5;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx3/q;->f(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lx3/q;->f(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "creation_timestamp"

    invoke-virtual {v2, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    iget-object p3, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p3}, Lg5/b5;->K()Lg5/ia;

    move-result-object p3

    invoke-virtual {p3, p1}, Lg5/ia;->n0(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_7

    iget-object p3, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p3}, Lg5/b5;->K()Lg5/ia;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lg5/ia;->j0(Ljava/lang/String;Ljava/lang/Object;)I

    move-result p3

    if-nez p3, :cond_6

    iget-object p3, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p3}, Lg5/b5;->K()Lg5/ia;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lg5/ia;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p3}, Lg5/b5;->F()Lg5/q3;

    move-result-object p3

    invoke-virtual {p3}, Lg5/q3;->m()Lg5/o3;

    move-result-object p3

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->y()Lg5/l3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg5/l3;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unable to normalize conditional user property value"

    invoke-virtual {p3, v0, p1, p2}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {v2, p3}, Lg5/y5;->b(Landroid/os/Bundle;Ljava/lang/Object;)V

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p2

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v3, 0x1

    const-wide v5, 0x39ef8b000L

    if-nez v0, :cond_3

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->u()Lg5/g;

    cmp-long v0, p2, v5

    if-gtz v0, :cond_2

    cmp-long v0, p2, v3

    if-ltz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->m()Lg5/o3;

    move-result-object v0

    iget-object v1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->y()Lg5/l3;

    move-result-object v1

    invoke-virtual {v1, p1}, Lg5/l3;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "Invalid conditional user property timeout"

    invoke-virtual {v0, p3, p1, p2}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_3
    :goto_0
    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p2

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->u()Lg5/g;

    cmp-long v0, p2, v5

    if-gtz v0, :cond_5

    cmp-long v0, p2, v3

    if-gez v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->P()Lg5/y4;

    move-result-object p1

    new-instance p2, Lg5/q6;

    invoke-direct {p2, p0, v2}, Lg5/q6;-><init>(Lg5/i7;Landroid/os/Bundle;)V

    invoke-virtual {p1, p2}, Lg5/y4;->u(Ljava/lang/Runnable;)V

    return-void

    :cond_5
    :goto_1
    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->m()Lg5/o3;

    move-result-object v0

    iget-object v1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->y()Lg5/l3;

    move-result-object v1

    invoke-virtual {v1, p1}, Lg5/l3;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "Invalid conditional user property time to live"

    invoke-virtual {v0, p3, p1, p2}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_6
    iget-object p3, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p3}, Lg5/b5;->F()Lg5/q3;

    move-result-object p3

    invoke-virtual {p3}, Lg5/q3;->m()Lg5/o3;

    move-result-object p3

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->y()Lg5/l3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg5/l3;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Invalid conditional user property value"

    invoke-virtual {p3, v0, p1, p2}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_7
    iget-object p2, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->F()Lg5/q3;

    move-result-object p2

    invoke-virtual {p2}, Lg5/q3;->m()Lg5/o3;

    move-result-object p2

    iget-object p3, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p3}, Lg5/b5;->y()Lg5/l3;

    move-result-object p3

    invoke-virtual {p3, p1}, Lg5/l3;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "Invalid conditional user property name"

    invoke-virtual {p2, p3, p1}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
