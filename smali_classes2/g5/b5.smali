.class public final Lg5/b5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg5/x5;


# static fields
.field public static volatile H:Lg5/b5;


# instance fields
.field public volatile A:Ljava/lang/Boolean;

.field public B:Ljava/lang/Boolean;

.field public C:Ljava/lang/Boolean;

.field public volatile D:Z

.field public E:I

.field public final F:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final G:J

.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:Lg5/b;

.field public final g:Lg5/g;

.field public final h:Lg5/g4;

.field public final i:Lg5/q3;

.field public final j:Lg5/y4;

.field public final k:Lg5/m9;

.field public final l:Lg5/ia;

.field public final m:Lg5/l3;

.field public final n:Lc4/f;

.field public final o:Lg5/w7;

.field public final p:Lg5/i7;

.field public final q:Lg5/d2;

.field public final r:Lg5/m7;

.field public final s:Ljava/lang/String;

.field public t:Lg5/j3;

.field public u:Lg5/w8;

.field public v:Lg5/o;

.field public w:Lg5/h3;

.field public x:Z

.field public y:Ljava/lang/Boolean;

.field public z:J


# direct methods
.method public constructor <init>(Lg5/f6;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg5/b5;->x:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lg5/b5;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {p1}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lg5/f6;->a:Landroid/content/Context;

    new-instance v2, Lg5/b;

    invoke-direct {v2, v1}, Lg5/b;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lg5/b5;->f:Lg5/b;

    sput-object v2, Lg5/z2;->a:Lg5/b;

    iget-object v1, p1, Lg5/f6;->a:Landroid/content/Context;

    iput-object v1, p0, Lg5/b5;->a:Landroid/content/Context;

    iget-object v2, p1, Lg5/f6;->b:Ljava/lang/String;

    iput-object v2, p0, Lg5/b5;->b:Ljava/lang/String;

    iget-object v2, p1, Lg5/f6;->c:Ljava/lang/String;

    iput-object v2, p0, Lg5/b5;->c:Ljava/lang/String;

    iget-object v2, p1, Lg5/f6;->d:Ljava/lang/String;

    iput-object v2, p0, Lg5/b5;->d:Ljava/lang/String;

    iget-boolean v2, p1, Lg5/f6;->h:Z

    iput-boolean v2, p0, Lg5/b5;->e:Z

    iget-object v2, p1, Lg5/f6;->e:Ljava/lang/Boolean;

    iput-object v2, p0, Lg5/b5;->A:Ljava/lang/Boolean;

    iget-object v2, p1, Lg5/f6;->j:Ljava/lang/String;

    iput-object v2, p0, Lg5/b5;->s:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lg5/b5;->D:Z

    iget-object v3, p1, Lg5/f6;->g:Lb5/o1;

    if-eqz v3, :cond_1

    iget-object v4, v3, Lb5/o1;->r:Landroid/os/Bundle;

    if-eqz v4, :cond_1

    const-string v5, "measurementEnabled"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_0

    check-cast v4, Ljava/lang/Boolean;

    iput-object v4, p0, Lg5/b5;->B:Ljava/lang/Boolean;

    :cond_0
    iget-object v3, v3, Lb5/o1;->r:Landroid/os/Bundle;

    const-string v4, "measurementDeactivated"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    check-cast v3, Ljava/lang/Boolean;

    iput-object v3, p0, Lg5/b5;->C:Ljava/lang/Boolean;

    :cond_1
    invoke-static {v1}, Lb5/r6;->d(Landroid/content/Context;)V

    invoke-static {}, Lc4/i;->d()Lc4/f;

    move-result-object v3

    iput-object v3, p0, Lg5/b5;->n:Lc4/f;

    iget-object v4, p1, Lg5/f6;->i:Ljava/lang/Long;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Lc4/f;->a()J

    move-result-wide v3

    :goto_0
    iput-wide v3, p0, Lg5/b5;->G:J

    new-instance v3, Lg5/g;

    invoke-direct {v3, p0}, Lg5/g;-><init>(Lg5/b5;)V

    iput-object v3, p0, Lg5/b5;->g:Lg5/g;

    new-instance v3, Lg5/g4;

    invoke-direct {v3, p0}, Lg5/g4;-><init>(Lg5/b5;)V

    invoke-virtual {v3}, Lg5/w5;->g()V

    iput-object v3, p0, Lg5/b5;->h:Lg5/g4;

    new-instance v3, Lg5/q3;

    invoke-direct {v3, p0}, Lg5/q3;-><init>(Lg5/b5;)V

    invoke-virtual {v3}, Lg5/w5;->g()V

    iput-object v3, p0, Lg5/b5;->i:Lg5/q3;

    new-instance v3, Lg5/ia;

    invoke-direct {v3, p0}, Lg5/ia;-><init>(Lg5/b5;)V

    invoke-virtual {v3}, Lg5/w5;->g()V

    iput-object v3, p0, Lg5/b5;->l:Lg5/ia;

    new-instance v3, Lg5/e6;

    invoke-direct {v3, p1, p0}, Lg5/e6;-><init>(Lg5/f6;Lg5/b5;)V

    new-instance v4, Lg5/l3;

    invoke-direct {v4, v3}, Lg5/l3;-><init>(Lg5/k3;)V

    iput-object v4, p0, Lg5/b5;->m:Lg5/l3;

    new-instance v3, Lg5/d2;

    invoke-direct {v3, p0}, Lg5/d2;-><init>(Lg5/b5;)V

    iput-object v3, p0, Lg5/b5;->q:Lg5/d2;

    new-instance v3, Lg5/w7;

    invoke-direct {v3, p0}, Lg5/w7;-><init>(Lg5/b5;)V

    invoke-virtual {v3}, Lg5/f4;->e()V

    iput-object v3, p0, Lg5/b5;->o:Lg5/w7;

    new-instance v3, Lg5/i7;

    invoke-direct {v3, p0}, Lg5/i7;-><init>(Lg5/b5;)V

    invoke-virtual {v3}, Lg5/f4;->e()V

    iput-object v3, p0, Lg5/b5;->p:Lg5/i7;

    new-instance v3, Lg5/m9;

    invoke-direct {v3, p0}, Lg5/m9;-><init>(Lg5/b5;)V

    invoke-virtual {v3}, Lg5/f4;->e()V

    iput-object v3, p0, Lg5/b5;->k:Lg5/m9;

    new-instance v3, Lg5/m7;

    invoke-direct {v3, p0}, Lg5/m7;-><init>(Lg5/b5;)V

    invoke-virtual {v3}, Lg5/w5;->g()V

    iput-object v3, p0, Lg5/b5;->r:Lg5/m7;

    new-instance v3, Lg5/y4;

    invoke-direct {v3, p0}, Lg5/y4;-><init>(Lg5/b5;)V

    invoke-virtual {v3}, Lg5/w5;->g()V

    iput-object v3, p0, Lg5/b5;->j:Lg5/y4;

    iget-object v4, p1, Lg5/f6;->g:Lb5/o1;

    if-eqz v4, :cond_3

    iget-wide v4, v4, Lb5/o1;->b:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lg5/b5;->D()Lg5/i7;

    move-result-object v1

    iget-object v2, v1, Lg5/v5;->a:Lg5/b5;

    iget-object v2, v2, Lg5/b5;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Application;

    if-eqz v2, :cond_6

    iget-object v2, v1, Lg5/v5;->a:Lg5/b5;

    iget-object v2, v2, Lg5/b5;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    iget-object v4, v1, Lg5/i7;->c:Lg5/g7;

    if-nez v4, :cond_4

    new-instance v4, Lg5/g7;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lg5/g7;-><init>(Lg5/i7;Lg5/f7;)V

    iput-object v4, v1, Lg5/i7;->c:Lg5/g7;

    :cond_4
    if-eqz v0, :cond_6

    iget-object v0, v1, Lg5/i7;->c:Lg5/g7;

    invoke-virtual {v2, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v0, v1, Lg5/i7;->c:Lg5/g7;

    invoke-virtual {v2, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v0, v1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->q()Lg5/o3;

    move-result-object v0

    const-string v1, "Registered activity lifecycle callback"

    invoke-virtual {v0, v1}, Lg5/o3;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->r()Lg5/o3;

    move-result-object v0

    const-string v1, "Application context is not an Application"

    invoke-virtual {v0, v1}, Lg5/o3;->a(Ljava/lang/String;)V

    :cond_6
    :goto_2
    new-instance v0, Lg5/a5;

    invoke-direct {v0, p0, p1}, Lg5/a5;-><init>(Lg5/b5;Lg5/f6;)V

    invoke-virtual {v3, v0}, Lg5/y4;->u(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static C(Landroid/content/Context;Lb5/o1;Ljava/lang/Long;)Lg5/b5;
    .locals 12

    if-eqz p1, :cond_1

    iget-object v0, p1, Lb5/o1;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lb5/o1;->q:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lb5/o1;

    iget-wide v2, p1, Lb5/o1;->a:J

    iget-wide v4, p1, Lb5/o1;->b:J

    iget-boolean v6, p1, Lb5/o1;->d:Z

    iget-object v7, p1, Lb5/o1;->k:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p1, Lb5/o1;->r:Landroid/os/Bundle;

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lb5/o1;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    move-object p1, v0

    :cond_1
    invoke-static {p0}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lg5/b5;->H:Lg5/b5;

    if-nez v0, :cond_3

    const-class v0, Lg5/b5;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lg5/b5;->H:Lg5/b5;

    if-nez v1, :cond_2

    new-instance v1, Lg5/f6;

    invoke-direct {v1, p0, p1, p2}, Lg5/f6;-><init>(Landroid/content/Context;Lb5/o1;Ljava/lang/Long;)V

    new-instance p0, Lg5/b5;

    invoke-direct {p0, v1}, Lg5/b5;-><init>(Lg5/f6;)V

    sput-object p0, Lg5/b5;->H:Lg5/b5;

    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    if-eqz p1, :cond_4

    iget-object p0, p1, Lb5/o1;->r:Landroid/os/Bundle;

    if-eqz p0, :cond_4

    const-string p2, "dataCollectionDefaultEnabled"

    invoke-virtual {p0, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lg5/b5;->H:Lg5/b5;

    invoke-static {p0}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lg5/b5;->H:Lg5/b5;

    iget-object p1, p1, Lb5/o1;->r:Landroid/os/Bundle;

    const-string p2, "dataCollectionDefaultEnabled"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lg5/b5;->A:Ljava/lang/Boolean;

    :cond_4
    :goto_0
    sget-object p0, Lg5/b5;->H:Lg5/b5;

    invoke-static {p0}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lg5/b5;->H:Lg5/b5;

    return-object p0
.end method

.method public static bridge synthetic a(Lg5/b5;Lg5/f6;)V
    .locals 3

    invoke-virtual {p0}, Lg5/b5;->P()Lg5/y4;

    move-result-object v0

    invoke-virtual {v0}, Lg5/v5;->c()V

    iget-object v0, p0, Lg5/b5;->g:Lg5/g;

    invoke-virtual {v0}, Lg5/g;->r()Ljava/lang/String;

    new-instance v0, Lg5/o;

    invoke-direct {v0, p0}, Lg5/o;-><init>(Lg5/b5;)V

    invoke-virtual {v0}, Lg5/w5;->g()V

    iput-object v0, p0, Lg5/b5;->v:Lg5/o;

    new-instance v0, Lg5/h3;

    iget-wide v1, p1, Lg5/f6;->f:J

    invoke-direct {v0, p0, v1, v2}, Lg5/h3;-><init>(Lg5/b5;J)V

    invoke-virtual {v0}, Lg5/f4;->e()V

    iput-object v0, p0, Lg5/b5;->w:Lg5/h3;

    new-instance p1, Lg5/j3;

    invoke-direct {p1, p0}, Lg5/j3;-><init>(Lg5/b5;)V

    invoke-virtual {p1}, Lg5/f4;->e()V

    iput-object p1, p0, Lg5/b5;->t:Lg5/j3;

    new-instance p1, Lg5/w8;

    invoke-direct {p1, p0}, Lg5/w8;-><init>(Lg5/b5;)V

    invoke-virtual {p1}, Lg5/f4;->e()V

    iput-object p1, p0, Lg5/b5;->u:Lg5/w8;

    iget-object p1, p0, Lg5/b5;->l:Lg5/ia;

    invoke-virtual {p1}, Lg5/w5;->h()V

    iget-object p1, p0, Lg5/b5;->h:Lg5/g4;

    invoke-virtual {p1}, Lg5/w5;->h()V

    iget-object p1, p0, Lg5/b5;->w:Lg5/h3;

    invoke-virtual {p1}, Lg5/f4;->f()V

    invoke-virtual {p0}, Lg5/b5;->F()Lg5/q3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/q3;->p()Lg5/o3;

    move-result-object p1

    iget-object v1, p0, Lg5/b5;->g:Lg5/g;

    invoke-virtual {v1}, Lg5/g;->l()J

    const-wide/32 v1, 0xa822

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "App measurement initialized, version"

    invoke-virtual {p1, v2, v1}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lg5/b5;->F()Lg5/q3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/q3;->p()Lg5/o3;

    move-result-object p1

    const-string v1, "To enable debug logging run: adb shell setprop log.tag.FA VERBOSE"

    invoke-virtual {p1, v1}, Lg5/o3;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lg5/h3;->n()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lg5/b5;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lg5/b5;->K()Lg5/ia;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg5/ia;->S(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg5/b5;->F()Lg5/q3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/q3;->p()Lg5/o3;

    move-result-object p1

    const-string v0, "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none."

    invoke-virtual {p1, v0}, Lg5/o3;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->p()Lg5/o3;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, p1}, Lg5/o3;->a(Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lg5/b5;->F()Lg5/q3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/q3;->l()Lg5/o3;

    move-result-object p1

    const-string v0, "Debug-level message logging enabled"

    invoke-virtual {p1, v0}, Lg5/o3;->a(Ljava/lang/String;)V

    iget p1, p0, Lg5/b5;->E:I

    iget-object v0, p0, Lg5/b5;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq p1, v0, :cond_3

    invoke-virtual {p0}, Lg5/b5;->F()Lg5/q3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/q3;->m()Lg5/o3;

    move-result-object p1

    iget v0, p0, Lg5/b5;->E:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lg5/b5;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Not all components initialized"

    invoke-virtual {p1, v2, v0, v1}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lg5/b5;->x:Z

    return-void
.end method

.method public static final o()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call on client side"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final p(Lg5/v5;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final q(Lg5/f4;)V
    .locals 3

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lg5/f4;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1b

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Component not initialized: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final r(Lg5/w5;)V
    .locals 3

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lg5/w5;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1b

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Component not initialized: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final A()Lg5/g4;
    .locals 1

    iget-object v0, p0, Lg5/b5;->h:Lg5/g4;

    invoke-static {v0}, Lg5/b5;->p(Lg5/v5;)V

    iget-object v0, p0, Lg5/b5;->h:Lg5/g4;

    return-object v0
.end method

.method public final B()Lg5/y4;
    .locals 1

    iget-object v0, p0, Lg5/b5;->j:Lg5/y4;

    return-object v0
.end method

.method public final D()Lg5/i7;
    .locals 1

    iget-object v0, p0, Lg5/b5;->p:Lg5/i7;

    invoke-static {v0}, Lg5/b5;->q(Lg5/f4;)V

    iget-object v0, p0, Lg5/b5;->p:Lg5/i7;

    return-object v0
.end method

.method public final E()Lg5/m7;
    .locals 1

    iget-object v0, p0, Lg5/b5;->r:Lg5/m7;

    invoke-static {v0}, Lg5/b5;->r(Lg5/w5;)V

    iget-object v0, p0, Lg5/b5;->r:Lg5/m7;

    return-object v0
.end method

.method public final F()Lg5/q3;
    .locals 1

    iget-object v0, p0, Lg5/b5;->i:Lg5/q3;

    invoke-static {v0}, Lg5/b5;->r(Lg5/w5;)V

    iget-object v0, p0, Lg5/b5;->i:Lg5/q3;

    return-object v0
.end method

.method public final G()Lg5/b;
    .locals 1

    iget-object v0, p0, Lg5/b5;->f:Lg5/b;

    return-object v0
.end method

.method public final H()Lg5/w7;
    .locals 1

    iget-object v0, p0, Lg5/b5;->o:Lg5/w7;

    invoke-static {v0}, Lg5/b5;->q(Lg5/f4;)V

    iget-object v0, p0, Lg5/b5;->o:Lg5/w7;

    return-object v0
.end method

.method public final I()Lg5/w8;
    .locals 1

    iget-object v0, p0, Lg5/b5;->u:Lg5/w8;

    invoke-static {v0}, Lg5/b5;->q(Lg5/f4;)V

    iget-object v0, p0, Lg5/b5;->u:Lg5/w8;

    return-object v0
.end method

.method public final J()Lg5/m9;
    .locals 1

    iget-object v0, p0, Lg5/b5;->k:Lg5/m9;

    invoke-static {v0}, Lg5/b5;->q(Lg5/f4;)V

    iget-object v0, p0, Lg5/b5;->k:Lg5/m9;

    return-object v0
.end method

.method public final K()Lg5/ia;
    .locals 1

    iget-object v0, p0, Lg5/b5;->l:Lg5/ia;

    invoke-static {v0}, Lg5/b5;->p(Lg5/v5;)V

    iget-object v0, p0, Lg5/b5;->l:Lg5/ia;

    return-object v0
.end method

.method public final L()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg5/b5;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final M()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg5/b5;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final N()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg5/b5;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final O()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lg5/b5;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final P()Lg5/y4;
    .locals 1

    iget-object v0, p0, Lg5/b5;->j:Lg5/y4;

    invoke-static {v0}, Lg5/b5;->r(Lg5/w5;)V

    iget-object v0, p0, Lg5/b5;->j:Lg5/y4;

    return-object v0
.end method

.method public final Q()Lc4/f;
    .locals 1

    iget-object v0, p0, Lg5/b5;->n:Lc4/f;

    return-object v0
.end method

.method public final R()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg5/b5;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lg5/b5;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public final synthetic c(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 6

    const-string p1, "timestamp"

    const-string p5, "gclid"

    const-string v0, ""

    const-string v1, "deeplink"

    const/16 v2, 0x130

    const/16 v3, 0xc8

    if-eq p2, v3, :cond_0

    const/16 v3, 0xcc

    if-eq p2, v3, :cond_0

    if-ne p2, v2, :cond_8

    const/16 p2, 0x130

    :cond_0
    if-nez p3, :cond_8

    invoke-virtual {p0}, Lg5/b5;->A()Lg5/g4;

    move-result-object p2

    iget-object p2, p2, Lg5/g4;->r:Lg5/z3;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lg5/z3;->a(Z)V

    if-eqz p4, :cond_7

    array-length p2, p4

    if-nez p2, :cond_1

    goto/16 :goto_2

    :cond_1
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p4}, Ljava/lang/String;-><init>([B)V

    :try_start_0
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-wide/16 v2, 0x0

    invoke-virtual {p3, p1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lg5/b5;->F()Lg5/q3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/q3;->l()Lg5/o3;

    move-result-object p1

    const-string p2, "Deferred Deep Link is empty."

    invoke-virtual {p1, p2}, Lg5/o3;->a(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lg5/b5;->K()Lg5/ia;

    move-result-object p3

    iget-object v0, p3, Lg5/v5;->a:Lg5/b5;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_1

    :cond_3
    iget-object p3, p3, Lg5/v5;->a:Lg5/b5;

    iget-object p3, p3, Lg5/b5;->a:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v4, 0x0

    invoke-virtual {p3, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_6

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_6

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p3, p5, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "_cis"

    const-string p5, "ddp"

    invoke-virtual {p3, p4, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p4, p0, Lg5/b5;->p:Lg5/i7;

    const-string p5, "auto"

    const-string v0, "_cmp"

    invoke-virtual {p4, p5, v0, p3}, Lg5/i7;->p(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lg5/b5;->K()Lg5/ia;

    move-result-object p3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p4, :cond_4

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object p4, p3, Lg5/v5;->a:Lg5/b5;

    iget-object p4, p4, Lg5/b5;->a:Landroid/content/Context;

    const-string p5, "google.analytics.deferred.deeplink.prefs"

    invoke-virtual {p4, p5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p4

    invoke-interface {p4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p4

    invoke-interface {p4, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-interface {p4, p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p1, :cond_5

    :try_start_2
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.google.analytics.action.DEEPLINK_ACTION"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p2, p3, Lg5/v5;->a:Lg5/b5;

    iget-object p2, p2, Lg5/b5;->a:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_5
    :goto_0
    return-void

    :catch_0
    move-exception p1

    iget-object p2, p3, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->F()Lg5/q3;

    move-result-object p2

    invoke-virtual {p2}, Lg5/q3;->m()Lg5/o3;

    move-result-object p2

    const-string p3, "Failed to persist Deferred Deep Link. exception"

    invoke-virtual {p2, p3, p1}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_6
    :goto_1
    invoke-virtual {p0}, Lg5/b5;->F()Lg5/q3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/q3;->r()Lg5/o3;

    move-result-object p1

    const-string p3, "Deferred Deep Link validation failed. gclid, deep link"

    invoke-virtual {p1, p3, p4, p2}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p1

    invoke-virtual {p0}, Lg5/b5;->F()Lg5/q3;

    move-result-object p2

    invoke-virtual {p2}, Lg5/q3;->m()Lg5/o3;

    move-result-object p2

    const-string p3, "Failed to parse the Deferred Deep Link response. exception"

    invoke-virtual {p2, p3, p1}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_7
    :goto_2
    invoke-virtual {p0}, Lg5/b5;->F()Lg5/q3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/q3;->l()Lg5/o3;

    move-result-object p1

    const-string p2, "Deferred Deep Link response empty."

    invoke-virtual {p1, p2}, Lg5/o3;->a(Ljava/lang/String;)V

    return-void

    :cond_8
    invoke-virtual {p0}, Lg5/b5;->F()Lg5/q3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/q3;->r()Lg5/o3;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p4, "Network Request for Deferred Deep Link failed. response, exception"

    invoke-virtual {p1, p4, p2, p3}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final d()V
    .locals 1

    iget v0, p0, Lg5/b5;->E:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lg5/b5;->E:I

    return-void
.end method

.method public final e()V
    .locals 11

    invoke-virtual {p0}, Lg5/b5;->P()Lg5/y4;

    move-result-object v0

    invoke-virtual {v0}, Lg5/v5;->c()V

    invoke-virtual {p0}, Lg5/b5;->E()Lg5/m7;

    move-result-object v0

    invoke-static {v0}, Lg5/b5;->r(Lg5/w5;)V

    invoke-virtual {p0}, Lg5/b5;->w()Lg5/h3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/h3;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lg5/b5;->A()Lg5/g4;

    move-result-object v1

    invoke-virtual {v1, v0}, Lg5/g4;->k(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, p0, Lg5/b5;->g:Lg5/g;

    invoke-virtual {v2}, Lg5/g;->v()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Lg5/b5;->E()Lg5/m7;

    move-result-object v2

    invoke-virtual {v2}, Lg5/w5;->f()V

    iget-object v2, v2, Lg5/v5;->a:Lg5/b5;

    iget-object v2, v2, Lg5/b5;->a:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    :try_start_0
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_1
    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lg5/b5;->K()Lg5/ia;

    move-result-object v2

    invoke-virtual {p0}, Lg5/b5;->w()Lg5/h3;

    move-result-object v3

    iget-object v3, v3, Lg5/v5;->a:Lg5/b5;

    iget-object v3, v3, Lg5/b5;->g:Lg5/g;

    invoke-virtual {v3}, Lg5/g;->l()J

    const-wide/32 v3, 0xa822

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0}, Lg5/b5;->A()Lg5/g4;

    move-result-object v1

    iget-object v1, v1, Lg5/g4;->s:Lg5/b4;

    invoke-virtual {v1}, Lg5/b4;->a()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    add-long/2addr v6, v8

    move-object v1, v2

    move-wide v2, v3

    move-object v4, v0

    invoke-virtual/range {v1 .. v7}, Lg5/ia;->m(JLjava/lang/String;Ljava/lang/String;J)Ljava/net/URL;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lg5/b5;->E()Lg5/m7;

    move-result-object v2

    new-instance v7, Lg5/z4;

    invoke-direct {v7, p0}, Lg5/z4;-><init>(Lg5/b5;)V

    invoke-virtual {v2}, Lg5/v5;->c()V

    invoke-virtual {v2}, Lg5/w5;->f()V

    invoke-static {v4}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->P()Lg5/y4;

    move-result-object v9

    new-instance v10, Lg5/l7;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, v10

    move-object v3, v0

    invoke-direct/range {v1 .. v8}, Lg5/l7;-><init>(Lg5/m7;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lg5/z4;[B)V

    invoke-virtual {v9, v10}, Lg5/y4;->t(Ljava/lang/Runnable;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->r()Lg5/o3;

    move-result-object v0

    const-string v1, "Network is not available for Deferred Deep Link request. Skipping"

    invoke-virtual {v0, v1}, Lg5/o3;->a(Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->l()Lg5/o3;

    move-result-object v0

    const-string v1, "ADID unavailable to retrieve Deferred Deep Link. Skipping"

    invoke-virtual {v0, v1}, Lg5/o3;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final f(Z)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lg5/b5;->A:Ljava/lang/Boolean;

    return-void
.end method

.method public final g(Z)V
    .locals 1

    invoke-virtual {p0}, Lg5/b5;->P()Lg5/y4;

    move-result-object v0

    invoke-virtual {v0}, Lg5/v5;->c()V

    iput-boolean p1, p0, Lg5/b5;->D:Z

    return-void
.end method

.method public final h(Lb5/o1;)V
    .locals 10

    invoke-virtual {p0}, Lg5/b5;->P()Lg5/y4;

    move-result-object v0

    invoke-virtual {v0}, Lg5/v5;->c()V

    invoke-virtual {p0}, Lg5/b5;->A()Lg5/g4;

    move-result-object v0

    invoke-virtual {v0}, Lg5/g4;->l()Lg5/h;

    move-result-object v0

    invoke-virtual {p0}, Lg5/b5;->A()Lg5/g4;

    move-result-object v1

    iget-object v2, v1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/v5;->c()V

    invoke-virtual {v1}, Lg5/g4;->j()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "consent_source"

    const/16 v3, 0x64

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lg5/b5;->g:Lg5/g;

    iget-object v4, v2, Lg5/v5;->a:Lg5/b5;

    const-string v4, "google_analytics_default_allow_ad_storage"

    invoke-virtual {v2, v4}, Lg5/g;->o(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v4, p0, Lg5/b5;->g:Lg5/g;

    iget-object v5, v4, Lg5/v5;->a:Lg5/b5;

    const-string v5, "google_analytics_default_allow_analytics_storage"

    invoke-virtual {v4, v5}, Lg5/g;->o(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    const/16 v5, -0xa

    const/16 v6, 0x1e

    const/4 v7, 0x0

    if-nez v2, :cond_0

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {p0}, Lg5/b5;->A()Lg5/g4;

    move-result-object v8

    invoke-virtual {v8, v5}, Lg5/g4;->r(I)Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance p1, Lg5/h;

    invoke-direct {p1, v2, v4}, Lg5/h;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    const/16 v3, -0xa

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lg5/b5;->w()Lg5/h3;

    move-result-object v2

    invoke-virtual {v2}, Lg5/h3;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v1, :cond_2

    if-eq v1, v6, :cond_2

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    if-eq v1, v6, :cond_2

    if-eq v1, v6, :cond_2

    const/16 v2, 0x28

    if-ne v1, v2, :cond_4

    :cond_2
    invoke-virtual {p0}, Lg5/b5;->D()Lg5/i7;

    move-result-object p1

    sget-object v1, Lg5/h;->c:Lg5/h;

    iget-wide v8, p0, Lg5/b5;->G:J

    invoke-virtual {p1, v1, v5, v8, v9}, Lg5/i7;->B(Lg5/h;IJ)V

    :cond_3
    move-object p1, v7

    goto :goto_0

    :cond_4
    invoke-static {}, Lb5/fd;->b()Z

    iget-object v1, p0, Lg5/b5;->g:Lg5/g;

    sget-object v2, Lg5/c3;->v0:Lg5/b3;

    invoke-virtual {v1, v7, v2}, Lg5/g;->w(Ljava/lang/String;Lg5/b3;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lg5/b5;->w()Lg5/h3;

    move-result-object v1

    invoke-virtual {v1}, Lg5/h3;->p()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_5
    if-eqz p1, :cond_3

    iget-object v1, p1, Lb5/o1;->r:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lg5/b5;->A()Lg5/g4;

    move-result-object v1

    invoke-virtual {v1, v6}, Lg5/g4;->r(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p1, p1, Lb5/o1;->r:Landroid/os/Bundle;

    invoke-static {p1}, Lg5/h;->a(Landroid/os/Bundle;)Lg5/h;

    move-result-object p1

    sget-object v1, Lg5/h;->c:Lg5/h;

    invoke-virtual {p1, v1}, Lg5/h;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v3, 0x1e

    :goto_0
    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lg5/b5;->D()Lg5/i7;

    move-result-object v0

    iget-wide v1, p0, Lg5/b5;->G:J

    invoke-virtual {v0, p1, v3, v1, v2}, Lg5/i7;->B(Lg5/h;IJ)V

    move-object v0, p1

    :cond_6
    invoke-virtual {p0}, Lg5/b5;->D()Lg5/i7;

    move-result-object p1

    invoke-virtual {p1, v0}, Lg5/i7;->H(Lg5/h;)V

    invoke-virtual {p0}, Lg5/b5;->A()Lg5/g4;

    move-result-object p1

    iget-object p1, p1, Lg5/g4;->e:Lg5/b4;

    invoke-virtual {p1}, Lg5/b4;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lg5/b5;->F()Lg5/q3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/q3;->q()Lg5/o3;

    move-result-object p1

    iget-wide v0, p0, Lg5/b5;->G:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "Persisting first open"

    invoke-virtual {p1, v1, v0}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lg5/b5;->A()Lg5/g4;

    move-result-object p1

    iget-object p1, p1, Lg5/g4;->e:Lg5/b4;

    iget-wide v0, p0, Lg5/b5;->G:J

    invoke-virtual {p1, v0, v1}, Lg5/b4;->b(J)V

    :cond_7
    invoke-virtual {p0}, Lg5/b5;->D()Lg5/i7;

    move-result-object p1

    iget-object p1, p1, Lg5/i7;->n:Lg5/ra;

    invoke-virtual {p1}, Lg5/ra;->c()V

    invoke-virtual {p0}, Lg5/b5;->m()Z

    move-result p1

    if-nez p1, :cond_c

    invoke-virtual {p0}, Lg5/b5;->j()Z

    move-result p1

    if-eqz p1, :cond_16

    invoke-virtual {p0}, Lg5/b5;->K()Lg5/ia;

    move-result-object p1

    const-string v0, "android.permission.INTERNET"

    invoke-virtual {p1, v0}, Lg5/ia;->R(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lg5/b5;->F()Lg5/q3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/q3;->m()Lg5/o3;

    move-result-object p1

    const-string v0, "App is missing INTERNET permission"

    invoke-virtual {p1, v0}, Lg5/o3;->a(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p0}, Lg5/b5;->K()Lg5/ia;

    move-result-object p1

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p1, v0}, Lg5/ia;->R(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {p0}, Lg5/b5;->F()Lg5/q3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/q3;->m()Lg5/o3;

    move-result-object p1

    const-string v0, "App is missing ACCESS_NETWORK_STATE permission"

    invoke-virtual {p1, v0}, Lg5/o3;->a(Ljava/lang/String;)V

    :cond_9
    iget-object p1, p0, Lg5/b5;->a:Landroid/content/Context;

    invoke-static {p1}, Ld4/e;->a(Landroid/content/Context;)Ld4/d;

    move-result-object p1

    invoke-virtual {p1}, Ld4/d;->g()Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lg5/b5;->g:Lg5/g;

    invoke-virtual {p1}, Lg5/g;->B()Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lg5/b5;->a:Landroid/content/Context;

    invoke-static {p1}, Lg5/ia;->X(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {p0}, Lg5/b5;->F()Lg5/q3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/q3;->m()Lg5/o3;

    move-result-object p1

    const-string v0, "AppMeasurementReceiver not registered/enabled"

    invoke-virtual {p1, v0}, Lg5/o3;->a(Ljava/lang/String;)V

    :cond_a
    iget-object p1, p0, Lg5/b5;->a:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lg5/ia;->Y(Landroid/content/Context;Z)Z

    move-result p1

    if-nez p1, :cond_b

    invoke-virtual {p0}, Lg5/b5;->F()Lg5/q3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/q3;->m()Lg5/o3;

    move-result-object p1

    const-string v0, "AppMeasurementService not registered/enabled"

    invoke-virtual {p1, v0}, Lg5/o3;->a(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p0}, Lg5/b5;->F()Lg5/q3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/q3;->m()Lg5/o3;

    move-result-object p1

    const-string v0, "Uploading is not possible. App measurement disabled"

    invoke-virtual {p1, v0}, Lg5/o3;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_c
    invoke-virtual {p0}, Lg5/b5;->w()Lg5/h3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/h3;->p()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Lg5/b5;->w()Lg5/h3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/h3;->m()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_10

    :cond_d
    invoke-virtual {p0}, Lg5/b5;->K()Lg5/ia;

    move-result-object p1

    invoke-virtual {p0}, Lg5/b5;->w()Lg5/h3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/h3;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lg5/b5;->A()Lg5/g4;

    move-result-object v1

    invoke-virtual {v1}, Lg5/v5;->c()V

    invoke-virtual {v1}, Lg5/g4;->j()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "gmp_app_id"

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lg5/b5;->w()Lg5/h3;

    move-result-object v3

    invoke-virtual {v3}, Lg5/h3;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lg5/b5;->A()Lg5/g4;

    move-result-object v4

    invoke-virtual {v4}, Lg5/v5;->c()V

    invoke-virtual {v4}, Lg5/g4;->j()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "admob_app_id"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v0, v1, v3, v4}, Lg5/ia;->b0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lg5/b5;->F()Lg5/q3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/q3;->p()Lg5/o3;

    move-result-object p1

    const-string v0, "Rechecking which service to use due to a GMP App Id change"

    invoke-virtual {p1, v0}, Lg5/o3;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lg5/b5;->A()Lg5/g4;

    move-result-object p1

    invoke-virtual {p1}, Lg5/v5;->c()V

    invoke-virtual {p1}, Lg5/g4;->m()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lg5/g4;->j()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v0, :cond_e

    invoke-virtual {p1, v0}, Lg5/g4;->n(Ljava/lang/Boolean;)V

    :cond_e
    invoke-virtual {p0}, Lg5/b5;->x()Lg5/j3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/j3;->l()V

    iget-object p1, p0, Lg5/b5;->u:Lg5/w8;

    invoke-virtual {p1}, Lg5/w8;->N()V

    iget-object p1, p0, Lg5/b5;->u:Lg5/w8;

    invoke-virtual {p1}, Lg5/w8;->M()V

    invoke-virtual {p0}, Lg5/b5;->A()Lg5/g4;

    move-result-object p1

    iget-object p1, p1, Lg5/g4;->e:Lg5/b4;

    iget-wide v0, p0, Lg5/b5;->G:J

    invoke-virtual {p1, v0, v1}, Lg5/b4;->b(J)V

    invoke-virtual {p0}, Lg5/b5;->A()Lg5/g4;

    move-result-object p1

    iget-object p1, p1, Lg5/g4;->g:Lg5/e4;

    invoke-virtual {p1, v7}, Lg5/e4;->b(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {p0}, Lg5/b5;->A()Lg5/g4;

    move-result-object p1

    invoke-virtual {p0}, Lg5/b5;->w()Lg5/h3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/h3;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lg5/v5;->c()V

    invoke-virtual {p1}, Lg5/g4;->j()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lg5/b5;->A()Lg5/g4;

    move-result-object p1

    invoke-virtual {p0}, Lg5/b5;->w()Lg5/h3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/h3;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lg5/v5;->c()V

    invoke-virtual {p1}, Lg5/g4;->j()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_10
    invoke-virtual {p0}, Lg5/b5;->A()Lg5/g4;

    move-result-object p1

    invoke-virtual {p1}, Lg5/g4;->l()Lg5/h;

    move-result-object p1

    invoke-virtual {p1}, Lg5/h;->k()Z

    move-result p1

    if-nez p1, :cond_11

    invoke-virtual {p0}, Lg5/b5;->A()Lg5/g4;

    move-result-object p1

    iget-object p1, p1, Lg5/g4;->g:Lg5/e4;

    invoke-virtual {p1, v7}, Lg5/e4;->b(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {p0}, Lg5/b5;->D()Lg5/i7;

    move-result-object p1

    invoke-virtual {p0}, Lg5/b5;->A()Lg5/g4;

    move-result-object v0

    iget-object v0, v0, Lg5/g4;->g:Lg5/e4;

    invoke-virtual {v0}, Lg5/e4;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg5/i7;->x(Ljava/lang/String;)V

    invoke-static {}, Lb5/cd;->b()Z

    iget-object p1, p0, Lg5/b5;->g:Lg5/g;

    sget-object v0, Lg5/c3;->k0:Lg5/b3;

    invoke-virtual {p1, v7, v0}, Lg5/g;->w(Ljava/lang/String;Lg5/b3;)Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Lg5/b5;->K()Lg5/ia;

    move-result-object p1

    :try_start_0
    iget-object p1, p1, Lg5/v5;->a:Lg5/b5;

    iget-object p1, p1, Lg5/b5;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const-string v0, "com.google.firebase.remoteconfig.FirebaseRemoteConfig"

    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    invoke-virtual {p0}, Lg5/b5;->A()Lg5/g4;

    move-result-object p1

    iget-object p1, p1, Lg5/g4;->t:Lg5/e4;

    invoke-virtual {p1}, Lg5/e4;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_12

    invoke-virtual {p0}, Lg5/b5;->F()Lg5/q3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/q3;->r()Lg5/o3;

    move-result-object p1

    const-string v0, "Remote config removed with active feature rollouts"

    invoke-virtual {p1, v0}, Lg5/o3;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lg5/b5;->A()Lg5/g4;

    move-result-object p1

    iget-object p1, p1, Lg5/g4;->t:Lg5/e4;

    invoke-virtual {p1, v7}, Lg5/e4;->b(Ljava/lang/String;)V

    :cond_12
    :goto_1
    invoke-virtual {p0}, Lg5/b5;->w()Lg5/h3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/h3;->p()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Lg5/b5;->w()Lg5/h3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/h3;->m()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_16

    :cond_13
    invoke-virtual {p0}, Lg5/b5;->j()Z

    move-result p1

    invoke-virtual {p0}, Lg5/b5;->A()Lg5/g4;

    move-result-object v0

    invoke-virtual {v0}, Lg5/g4;->p()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lg5/b5;->g:Lg5/g;

    invoke-virtual {v0}, Lg5/g;->z()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lg5/b5;->A()Lg5/g4;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lg5/g4;->o(Z)V

    :cond_14
    if-eqz p1, :cond_15

    invoke-virtual {p0}, Lg5/b5;->D()Lg5/i7;

    move-result-object p1

    invoke-virtual {p1}, Lg5/i7;->g0()V

    :cond_15
    invoke-virtual {p0}, Lg5/b5;->J()Lg5/m9;

    move-result-object p1

    iget-object p1, p1, Lg5/m9;->d:Lg5/l9;

    invoke-virtual {p1}, Lg5/l9;->a()V

    invoke-virtual {p0}, Lg5/b5;->I()Lg5/w8;

    move-result-object p1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {p1, v0}, Lg5/w8;->S(Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {p0}, Lg5/b5;->I()Lg5/w8;

    move-result-object p1

    invoke-virtual {p0}, Lg5/b5;->A()Lg5/g4;

    move-result-object v0

    iget-object v0, v0, Lg5/g4;->w:Lg5/a4;

    invoke-virtual {v0}, Lg5/a4;->a()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg5/w8;->q(Landroid/os/Bundle;)V

    :cond_16
    :goto_2
    invoke-virtual {p0}, Lg5/b5;->A()Lg5/g4;

    move-result-object p1

    iget-object p1, p1, Lg5/g4;->n:Lg5/z3;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lg5/z3;->a(Z)V

    return-void
.end method

.method public final i()Z
    .locals 1

    iget-object v0, p0, Lg5/b5;->A:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg5/b5;->A:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j()Z
    .locals 1

    invoke-virtual {p0}, Lg5/b5;->s()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final k()Z
    .locals 1

    invoke-virtual {p0}, Lg5/b5;->P()Lg5/y4;

    move-result-object v0

    invoke-virtual {v0}, Lg5/v5;->c()V

    iget-boolean v0, p0, Lg5/b5;->D:Z

    return v0
.end method

.method public final l()Z
    .locals 1

    iget-object v0, p0, Lg5/b5;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public final m()Z
    .locals 6

    iget-boolean v0, p0, Lg5/b5;->x:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lg5/b5;->P()Lg5/y4;

    move-result-object v0

    invoke-virtual {v0}, Lg5/v5;->c()V

    iget-object v0, p0, Lg5/b5;->y:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lg5/b5;->z:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lg5/b5;->n:Lc4/f;

    invoke-interface {v0}, Lc4/f;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lg5/b5;->z:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-lez v4, :cond_5

    :cond_0
    iget-object v0, p0, Lg5/b5;->n:Lc4/f;

    invoke-interface {v0}, Lc4/f;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lg5/b5;->z:J

    invoke-virtual {p0}, Lg5/b5;->K()Lg5/ia;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lg5/ia;->R(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lg5/b5;->K()Lg5/ia;

    move-result-object v0

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v3}, Lg5/ia;->R(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lg5/b5;->a:Landroid/content/Context;

    invoke-static {v0}, Ld4/e;->a(Landroid/content/Context;)Ld4/d;

    move-result-object v0

    invoke-virtual {v0}, Ld4/d;->g()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lg5/b5;->g:Lg5/g;

    invoke-virtual {v0}, Lg5/g;->B()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lg5/b5;->a:Landroid/content/Context;

    invoke-static {v0}, Lg5/ia;->X(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lg5/b5;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lg5/ia;->Y(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lg5/b5;->y:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lg5/b5;->K()Lg5/ia;

    move-result-object v0

    invoke-virtual {p0}, Lg5/b5;->w()Lg5/h3;

    move-result-object v3

    invoke-virtual {v3}, Lg5/h3;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lg5/b5;->w()Lg5/h3;

    move-result-object v4

    invoke-virtual {v4}, Lg5/h3;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lg5/b5;->w()Lg5/h3;

    move-result-object v5

    invoke-virtual {v5}, Lg5/h3;->o()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lg5/ia;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lg5/b5;->w()Lg5/h3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/h3;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lg5/b5;->y:Ljava/lang/Boolean;

    :cond_5
    iget-object v0, p0, Lg5/b5;->y:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AppMeasurement is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final n()Z
    .locals 1

    iget-boolean v0, p0, Lg5/b5;->e:Z

    return v0
.end method

.method public final s()I
    .locals 4

    invoke-virtual {p0}, Lg5/b5;->P()Lg5/y4;

    move-result-object v0

    invoke-virtual {v0}, Lg5/v5;->c()V

    iget-object v0, p0, Lg5/b5;->g:Lg5/g;

    invoke-virtual {v0}, Lg5/g;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lg5/b5;->C:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    return v0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lg5/b5;->P()Lg5/y4;

    move-result-object v0

    invoke-virtual {v0}, Lg5/v5;->c()V

    iget-boolean v0, p0, Lg5/b5;->D:Z

    if-nez v0, :cond_3

    const/16 v0, 0x8

    return v0

    :cond_3
    invoke-virtual {p0}, Lg5/b5;->A()Lg5/g4;

    move-result-object v0

    invoke-virtual {v0}, Lg5/g4;->m()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x3

    return v0

    :cond_5
    iget-object v0, p0, Lg5/b5;->g:Lg5/g;

    iget-object v2, v0, Lg5/v5;->a:Lg5/b5;

    iget-object v2, v2, Lg5/b5;->f:Lg5/b;

    const-string v2, "firebase_analytics_collection_enabled"

    invoke-virtual {v0, v2}, Lg5/g;->o(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x4

    return v0

    :cond_7
    iget-object v0, p0, Lg5/b5;->B:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x5

    return v0

    :cond_9
    iget-object v0, p0, Lg5/b5;->g:Lg5/g;

    const/4 v2, 0x0

    sget-object v3, Lg5/c3;->U:Lg5/b3;

    invoke-virtual {v0, v2, v3}, Lg5/g;->w(Ljava/lang/String;Lg5/b3;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lg5/b5;->A:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lg5/b5;->A:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    const/4 v0, 0x7

    return v0

    :cond_b
    return v1
.end method

.method public final t()Lg5/d2;
    .locals 2

    iget-object v0, p0, Lg5/b5;->q:Lg5/d2;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Component not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final u()Lg5/g;
    .locals 1

    iget-object v0, p0, Lg5/b5;->g:Lg5/g;

    return-object v0
.end method

.method public final v()Lg5/o;
    .locals 1

    iget-object v0, p0, Lg5/b5;->v:Lg5/o;

    invoke-static {v0}, Lg5/b5;->r(Lg5/w5;)V

    iget-object v0, p0, Lg5/b5;->v:Lg5/o;

    return-object v0
.end method

.method public final w()Lg5/h3;
    .locals 1

    iget-object v0, p0, Lg5/b5;->w:Lg5/h3;

    invoke-static {v0}, Lg5/b5;->q(Lg5/f4;)V

    iget-object v0, p0, Lg5/b5;->w:Lg5/h3;

    return-object v0
.end method

.method public final x()Lg5/j3;
    .locals 1

    iget-object v0, p0, Lg5/b5;->t:Lg5/j3;

    invoke-static {v0}, Lg5/b5;->q(Lg5/f4;)V

    iget-object v0, p0, Lg5/b5;->t:Lg5/j3;

    return-object v0
.end method

.method public final y()Lg5/l3;
    .locals 1

    iget-object v0, p0, Lg5/b5;->m:Lg5/l3;

    return-object v0
.end method

.method public final z()Lg5/q3;
    .locals 1

    iget-object v0, p0, Lg5/b5;->i:Lg5/q3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg5/w5;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg5/b5;->i:Lg5/q3;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
