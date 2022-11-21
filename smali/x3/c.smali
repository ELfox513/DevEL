.class public abstract Lx3/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx3/c$d;,
        Lx3/c$e;,
        Lx3/c$c;,
        Lx3/c$b;,
        Lx3/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final O:[Ljava/lang/String;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public static final P:[Lt3/d;


# instance fields
.field public A:Lx3/c$c;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public B:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final C:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lx3/b1<",
            "*>;>;"
        }
    .end annotation
.end field

.field public D:Lx3/d1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx3/d1;"
        }
    .end annotation
.end field

.field public E:I

.field public final F:Lx3/c$a;

.field public final G:Lx3/c$b;

.field public final H:I

.field public final I:Ljava/lang/String;

.field public volatile J:Ljava/lang/String;

.field public K:Lt3/b;

.field public L:Z

.field public volatile M:Lx3/h1;

.field public N:Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public a:I

.field public b:J

.field public d:J

.field public k:I

.field public p:J

.field public volatile q:Ljava/lang/String;

.field public r:Lx3/s1;

.field public final s:Landroid/content/Context;

.field public final t:Landroid/os/Looper;

.field public final u:Lx3/h;

.field public final v:Lt3/h;

.field public final w:Landroid/os/Handler;

.field public final x:Ljava/lang/Object;

.field public final y:Ljava/lang/Object;

.field public z:Lx3/m;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Lt3/d;

    sput-object v1, Lx3/c;->P:[Lt3/d;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "service_esmobile"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string v2, "service_googleme"

    aput-object v2, v1, v0

    sput-object v1, Lx3/c;->O:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILx3/c$a;Lx3/c$b;Ljava/lang/String;)V
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lx3/h;->b(Landroid/content/Context;)Lx3/h;

    move-result-object v3

    invoke-static {}, Lt3/h;->f()Lt3/h;

    move-result-object v4

    invoke-static {p4}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p5}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lx3/c;-><init>(Landroid/content/Context;Landroid/os/Looper;Lx3/h;Lt3/h;ILx3/c$a;Lx3/c$b;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lx3/h;Lt3/h;ILx3/c$a;Lx3/c$b;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Lx3/h;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p4    # Lt3/h;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lx3/c;->q:Ljava/lang/String;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lx3/c;->x:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lx3/c;->y:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lx3/c;->C:Ljava/util/ArrayList;

    const/4 v1, 0x1

    iput v1, p0, Lx3/c;->E:I

    iput-object v0, p0, Lx3/c;->K:Lt3/b;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lx3/c;->L:Z

    iput-object v0, p0, Lx3/c;->M:Lx3/h1;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lx3/c;->N:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "Context must not be null"

    invoke-static {p1, v0}, Lx3/q;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lx3/c;->s:Landroid/content/Context;

    const-string p1, "Looper must not be null"

    invoke-static {p2, p1}, Lx3/q;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lx3/c;->t:Landroid/os/Looper;

    const-string p1, "Supervisor must not be null"

    invoke-static {p3, p1}, Lx3/q;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lx3/c;->u:Lx3/h;

    const-string p1, "API availability must not be null"

    invoke-static {p4, p1}, Lx3/q;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p4, p0, Lx3/c;->v:Lt3/h;

    new-instance p1, Lx3/a1;

    invoke-direct {p1, p0, p2}, Lx3/a1;-><init>(Lx3/c;Landroid/os/Looper;)V

    iput-object p1, p0, Lx3/c;->w:Landroid/os/Handler;

    iput p5, p0, Lx3/c;->H:I

    iput-object p6, p0, Lx3/c;->F:Lx3/c$a;

    iput-object p7, p0, Lx3/c;->G:Lx3/c$b;

    iput-object p8, p0, Lx3/c;->I:Ljava/lang/String;

    return-void
.end method

.method public static synthetic T(Lx3/c;I)V
    .locals 2

    iget-object p1, p0, Lx3/c;->x:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget v0, p0, Lx3/c;->E:I

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x3

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lx3/c;->L:Z

    const/4 p1, 0x5

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    iget-object v0, p0, Lx3/c;->w:Landroid/os/Handler;

    iget-object p0, p0, Lx3/c;->N:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const/16 v1, 0x10

    invoke-virtual {v0, p1, p0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static synthetic U(Lx3/c;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lx3/c;->y:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic V(Lx3/c;Lx3/m;)Lx3/m;
    .locals 0

    iput-object p1, p0, Lx3/c;->z:Lx3/m;

    return-object p1
.end method

.method public static synthetic W(Lx3/c;Lt3/b;)Lt3/b;
    .locals 0

    iput-object p1, p0, Lx3/c;->K:Lt3/b;

    return-object p1
.end method

.method public static synthetic X(Lx3/c;)Z
    .locals 2

    iget-boolean v0, p0, Lx3/c;->L:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lx3/c;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lx3/c;->z()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lx3/c;->C()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :catch_0
    :goto_0
    return v1
.end method

.method public static synthetic Y(Lx3/c;)Z
    .locals 0

    iget-boolean p0, p0, Lx3/c;->L:Z

    return p0
.end method

.method public static synthetic Z(Lx3/c;ILandroid/os/IInterface;)V
    .locals 0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lx3/c;->g0(ILandroid/os/IInterface;)V

    return-void
.end method

.method public static synthetic a0(Lx3/c;)Lt3/b;
    .locals 0

    iget-object p0, p0, Lx3/c;->K:Lt3/b;

    return-object p0
.end method

.method public static synthetic b0(Lx3/c;)Lx3/c$a;
    .locals 0

    iget-object p0, p0, Lx3/c;->F:Lx3/c$a;

    return-object p0
.end method

.method public static synthetic c0(Lx3/c;IILandroid/os/IInterface;)Z
    .locals 2

    iget-object v0, p0, Lx3/c;->x:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lx3/c;->E:I

    if-eq v1, p1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2, p3}, Lx3/c;->g0(ILandroid/os/IInterface;)V

    monitor-exit v0

    const/4 p0, 0x1

    :goto_0
    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static synthetic d0(Lx3/c;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lx3/c;->C:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic e0(Lx3/c;)Lx3/c$b;
    .locals 0

    iget-object p0, p0, Lx3/c;->G:Lx3/c$b;

    return-object p0
.end method

.method public static synthetic f0(Lx3/c;Lx3/h1;)V
    .locals 0

    iput-object p1, p0, Lx3/c;->M:Lx3/h1;

    invoke-virtual {p0}, Lx3/c;->Q()Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lx3/h1;->k:Lx3/e;

    invoke-static {}, Lx3/r;->b()Lx3/r;

    move-result-object p1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lx3/e;->c1()Lx3/s;

    move-result-object p0

    :goto_0
    invoke-virtual {p1, p0}, Lx3/r;->c(Lx3/s;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public A()Ljava/util/Set;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final B()Landroid/os/IInterface;
    .locals 3
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lx3/c;->x:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lx3/c;->E:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lx3/c;->q()V

    iget-object v1, p0, Lx3/c;->B:Landroid/os/IInterface;

    const-string v2, "Client is connected but service is null"

    invoke-static {v1, v2}, Lx3/q;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :cond_0
    new-instance v1, Landroid/os/DeadObjectException;

    invoke-direct {v1}, Landroid/os/DeadObjectException;-><init>()V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public abstract C()Ljava/lang/String;
.end method

.method public abstract D()Ljava/lang/String;
.end method

.method public E()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    const-string v0, "com.google.android.gms"

    return-object v0
.end method

.method public F()Lx3/e;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    iget-object v0, p0, Lx3/c;->M:Lx3/h1;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lx3/h1;->k:Lx3/e;

    return-object v0
.end method

.method public G()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public H()Z
    .locals 1

    iget-object v0, p0, Lx3/c;->M:Lx3/h1;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public I(Landroid/os/IInterface;)V
    .locals 2
    .param p1    # Landroid/os/IInterface;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lx3/c;->d:J

    return-void
.end method

.method public J(Lt3/b;)V
    .locals 2
    .param p1    # Lt3/b;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lt3/b;->X0()I

    move-result p1

    iput p1, p0, Lx3/c;->k:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lx3/c;->p:J

    return-void
.end method

.method public K(I)V
    .locals 2

    iput p1, p0, Lx3/c;->a:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lx3/c;->b:J

    return-void
.end method

.method public L(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 2

    iget-object v0, p0, Lx3/c;->w:Landroid/os/Handler;

    new-instance v1, Lx3/e1;

    invoke-direct {v1, p0, p1, p2, p3}, Lx3/e1;-><init>(Lx3/c;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    const/4 p2, -0x1

    invoke-virtual {v0, p1, p4, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public M()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public N(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lx3/c;->J:Ljava/lang/String;

    return-void
.end method

.method public O(I)V
    .locals 3

    iget-object v0, p0, Lx3/c;->w:Landroid/os/Handler;

    iget-object v1, p0, Lx3/c;->N:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public P(Lx3/c$c;ILandroid/app/PendingIntent;)V
    .locals 2
    .param p1    # Lx3/c$c;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    const-string v0, "Connection progress callbacks cannot be null."

    invoke-static {p1, v0}, Lx3/q;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lx3/c;->A:Lx3/c$c;

    iget-object p1, p0, Lx3/c;->w:Landroid/os/Handler;

    iget-object v0, p0, Lx3/c;->N:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public Q()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final R()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iget-object v0, p0, Lx3/c;->I:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lx3/c;->s:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final S(ILandroid/os/Bundle;I)V
    .locals 2

    iget-object p2, p0, Lx3/c;->w:Landroid/os/Handler;

    new-instance v0, Lx3/f1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lx3/f1;-><init>(Lx3/c;ILandroid/os/Bundle;)V

    const/4 p1, 0x7

    const/4 v1, -0x1

    invoke-virtual {p2, p1, p3, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lx3/c;->q:Ljava/lang/String;

    invoke-virtual {p0}, Lx3/c;->e()V

    return-void
.end method

.method public c()Z
    .locals 4

    iget-object v0, p0, Lx3/c;->x:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lx3/c;->E:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    invoke-virtual {p0}, Lx3/c;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lx3/c;->r:Lx3/s1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lx3/s1;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to connect when checking package"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()V
    .locals 4

    iget-object v0, p0, Lx3/c;->N:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lx3/c;->C:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lx3/c;->C:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lx3/c;->C:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lx3/b1;

    invoke-virtual {v3}, Lx3/b1;->e()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lx3/c;->C:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lx3/c;->y:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lx3/c;->z:Lx3/m;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lx3/c;->g0(ILandroid/os/IInterface;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public f(Lx3/c$e;)V
    .locals 0
    .param p1    # Lx3/c$e;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-interface {p1}, Lx3/c$e;->O0()V

    return-void
.end method

.method public final g0(ILandroid/os/IInterface;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    if-nez p2, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    :goto_1
    if-ne v3, v4, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-static {v1}, Lx3/q;->a(Z)V

    iget-object v1, p0, Lx3/c;->x:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lx3/c;->E:I

    iput-object p2, p0, Lx3/c;->B:Landroid/os/IInterface;

    const/4 v3, 0x0

    if-eq p1, v2, :cond_9

    const/4 v2, 0x2

    const/4 v4, 0x3

    if-eq p1, v2, :cond_4

    if-eq p1, v4, :cond_4

    if-eq p1, v0, :cond_3

    goto/16 :goto_4

    :cond_3
    invoke-static {p2}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lx3/c;->I(Landroid/os/IInterface;)V

    goto/16 :goto_4

    :cond_4
    iget-object v9, p0, Lx3/c;->D:Lx3/d1;

    if-eqz v9, :cond_5

    iget-object p1, p0, Lx3/c;->r:Lx3/s1;

    if-eqz p1, :cond_5

    const-string p2, "GmsClient"

    invoke-virtual {p1}, Lx3/s1;->a()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lx3/c;->r:Lx3/s1;

    invoke-virtual {v0}, Lx3/s1;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x46

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Calling connect() while still connected, missing disconnect() for "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " on "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lx3/c;->u:Lx3/h;

    iget-object p1, p0, Lx3/c;->r:Lx3/s1;

    invoke-virtual {p1}, Lx3/s1;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lx3/c;->r:Lx3/s1;

    invoke-virtual {p1}, Lx3/s1;->b()Ljava/lang/String;

    move-result-object v7

    iget-object p1, p0, Lx3/c;->r:Lx3/s1;

    invoke-virtual {p1}, Lx3/s1;->c()I

    move-result v8

    invoke-virtual {p0}, Lx3/c;->R()Ljava/lang/String;

    move-result-object v10

    iget-object p1, p0, Lx3/c;->r:Lx3/s1;

    invoke-virtual {p1}, Lx3/s1;->d()Z

    move-result v11

    invoke-virtual/range {v5 .. v11}, Lx3/h;->c(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ServiceConnection;Ljava/lang/String;Z)V

    iget-object p1, p0, Lx3/c;->N:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_5
    new-instance p1, Lx3/d1;

    iget-object p2, p0, Lx3/c;->N:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-direct {p1, p0, p2}, Lx3/d1;-><init>(Lx3/c;I)V

    iput-object p1, p0, Lx3/c;->D:Lx3/d1;

    iget p2, p0, Lx3/c;->E:I

    if-ne p2, v4, :cond_6

    invoke-virtual {p0}, Lx3/c;->z()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    new-instance p2, Lx3/s1;

    invoke-virtual {p0}, Lx3/c;->w()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lx3/c;->z()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {}, Lx3/h;->a()I

    move-result v8

    const/4 v9, 0x0

    move-object v4, p2

    invoke-direct/range {v4 .. v9}, Lx3/s1;-><init>(Ljava/lang/String;Ljava/lang/String;ZIZ)V

    goto :goto_2

    :cond_6
    new-instance p2, Lx3/s1;

    invoke-virtual {p0}, Lx3/c;->E()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lx3/c;->D()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {}, Lx3/h;->a()I

    move-result v8

    invoke-virtual {p0}, Lx3/c;->G()Z

    move-result v9

    move-object v4, p2

    invoke-direct/range {v4 .. v9}, Lx3/s1;-><init>(Ljava/lang/String;Ljava/lang/String;ZIZ)V

    :goto_2
    iput-object p2, p0, Lx3/c;->r:Lx3/s1;

    invoke-virtual {p2}, Lx3/s1;->d()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {p0}, Lx3/c;->k()I

    move-result p2

    const v0, 0x1110e58

    if-ge p2, v0, :cond_8

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: "

    iget-object v0, p0, Lx3/c;->r:Lx3/s1;

    invoke-virtual {v0}, Lx3/s1;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p2, v0

    :goto_3
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    iget-object p2, p0, Lx3/c;->u:Lx3/h;

    iget-object v0, p0, Lx3/c;->r:Lx3/s1;

    invoke-virtual {v0}, Lx3/s1;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lx3/c;->r:Lx3/s1;

    invoke-virtual {v2}, Lx3/s1;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lx3/c;->r:Lx3/s1;

    invoke-virtual {v4}, Lx3/s1;->c()I

    move-result v4

    invoke-virtual {p0}, Lx3/c;->R()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lx3/c;->r:Lx3/s1;

    invoke-virtual {v6}, Lx3/s1;->d()Z

    move-result v6

    new-instance v7, Lx3/l1;

    invoke-direct {v7, v0, v2, v4, v6}, Lx3/l1;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {p2, v7, p1, v5}, Lx3/h;->d(Lx3/l1;Landroid/content/ServiceConnection;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a

    const-string p1, "GmsClient"

    iget-object p2, p0, Lx3/c;->r:Lx3/s1;

    invoke-virtual {p2}, Lx3/s1;->a()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lx3/c;->r:Lx3/s1;

    invoke-virtual {v0}, Lx3/s1;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x22

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "unable to connect to service: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " on "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x10

    iget-object p2, p0, Lx3/c;->N:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-virtual {p0, p1, v3, p2}, Lx3/c;->S(ILandroid/os/Bundle;I)V

    goto :goto_4

    :cond_9
    iget-object v8, p0, Lx3/c;->D:Lx3/d1;

    if-eqz v8, :cond_a

    iget-object v4, p0, Lx3/c;->u:Lx3/h;

    iget-object p1, p0, Lx3/c;->r:Lx3/s1;

    invoke-virtual {p1}, Lx3/s1;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lx3/c;->r:Lx3/s1;

    invoke-virtual {p1}, Lx3/s1;->b()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lx3/c;->r:Lx3/s1;

    invoke-virtual {p1}, Lx3/s1;->c()I

    move-result v7

    invoke-virtual {p0}, Lx3/c;->R()Ljava/lang/String;

    move-result-object v9

    iget-object p1, p0, Lx3/c;->r:Lx3/s1;

    invoke-virtual {p1}, Lx3/s1;->d()Z

    move-result v10

    invoke-virtual/range {v4 .. v10}, Lx3/h;->c(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ServiceConnection;Ljava/lang/String;Z)V

    iput-object v3, p0, Lx3/c;->D:Lx3/d1;

    :cond_a
    :goto_4
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public h(Lx3/c$c;)V
    .locals 1
    .param p1    # Lx3/c$c;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    const-string v0, "Connection progress callbacks cannot be null."

    invoke-static {p1, v0}, Lx3/q;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lx3/c;->A:Lx3/c$c;

    const/4 p1, 0x2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lx3/c;->g0(ILandroid/os/IInterface;)V

    return-void
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isConnected()Z
    .locals 3

    iget-object v0, p0, Lx3/c;->x:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lx3/c;->E:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public k()I
    .locals 1

    sget v0, Lt3/h;->a:I

    return v0
.end method

.method public final l()[Lt3/d;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    iget-object v0, p0, Lx3/c;->M:Lx3/h1;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lx3/h1;->b:[Lt3/d;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    iget-object v0, p0, Lx3/c;->q:Ljava/lang/String;

    return-object v0
.end method

.method public n()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o(Lx3/j;Ljava/util/Set;)V
    .locals 4
    .param p2    # Ljava/util/Set;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx3/j;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lx3/c;->y()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lx3/f;

    iget v2, p0, Lx3/c;->H:I

    iget-object v3, p0, Lx3/c;->J:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lx3/f;-><init>(ILjava/lang/String;)V

    iget-object v2, p0, Lx3/c;->s:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lx3/f;->k:Ljava/lang/String;

    iput-object v0, v1, Lx3/f;->r:Landroid/os/Bundle;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/android/gms/common/api/Scope;

    iput-object p2, v1, Lx3/f;->q:[Lcom/google/android/gms/common/api/Scope;

    :cond_0
    invoke-virtual {p0}, Lx3/c;->n()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lx3/c;->t()Landroid/accounts/Account;

    move-result-object p2

    if-nez p2, :cond_1

    new-instance p2, Landroid/accounts/Account;

    const-string v0, "<<default account>>"

    const-string v2, "com.google"

    invoke-direct {p2, v0, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iput-object p2, v1, Lx3/f;->s:Landroid/accounts/Account;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, v1, Lx3/f;->p:Landroid/os/IBinder;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lx3/c;->M()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lx3/c;->t()Landroid/accounts/Account;

    move-result-object p1

    iput-object p1, v1, Lx3/f;->s:Landroid/accounts/Account;

    :cond_3
    :goto_0
    sget-object p1, Lx3/c;->P:[Lt3/d;

    iput-object p1, v1, Lx3/f;->t:[Lt3/d;

    invoke-virtual {p0}, Lx3/c;->u()[Lt3/d;

    move-result-object p1

    iput-object p1, v1, Lx3/f;->u:[Lt3/d;

    invoke-virtual {p0}, Lx3/c;->Q()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    iput-boolean p1, v1, Lx3/f;->x:Z

    :cond_4
    :try_start_0
    iget-object p1, p0, Lx3/c;->y:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p2, p0, Lx3/c;->z:Lx3/m;

    if-eqz p2, :cond_5

    new-instance v0, Lx3/c1;

    iget-object v2, p0, Lx3/c;->N:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-direct {v0, p0, v2}, Lx3/c1;-><init>(Lx3/c;I)V

    invoke-interface {p2, v0, v1}, Lx3/m;->X2(Lx3/l;Lx3/f;)V

    goto :goto_1

    :cond_5
    const-string p2, "GmsClient"

    const-string v0, "mServiceBroker is null, client disconnected"

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    :goto_2
    const-string p2, "GmsClient"

    const-string v0, "IGmsServiceBroker.getService failed"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p1, 0x8

    iget-object p2, p0, Lx3/c;->N:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Lx3/c;->L(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    return-void

    :catch_2
    move-exception p1

    throw p1

    :catch_3
    move-exception p1

    const-string p2, "GmsClient"

    const-string v0, "IGmsServiceBroker.getService failed"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lx3/c;->O(I)V

    return-void
.end method

.method public p()V
    .locals 3

    iget-object v0, p0, Lx3/c;->v:Lt3/h;

    iget-object v1, p0, Lx3/c;->s:Landroid/content/Context;

    invoke-virtual {p0}, Lx3/c;->k()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lt3/h;->h(Landroid/content/Context;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lx3/c;->g0(ILandroid/os/IInterface;)V

    new-instance v1, Lx3/c$d;

    invoke-direct {v1, p0}, Lx3/c$d;-><init>(Lx3/c;)V

    invoke-virtual {p0, v1, v0, v2}, Lx3/c;->P(Lx3/c$c;ILandroid/app/PendingIntent;)V

    return-void

    :cond_0
    new-instance v0, Lx3/c$d;

    invoke-direct {v0, p0}, Lx3/c$d;-><init>(Lx3/c;)V

    invoke-virtual {p0, v0}, Lx3/c;->h(Lx3/c$c;)V

    return-void
.end method

.method public final q()V
    .locals 2

    invoke-virtual {p0}, Lx3/c;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract r(Landroid/os/IBinder;)Landroid/os/IInterface;
    .param p1    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method

.method public s()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public t()Landroid/accounts/Account;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public u()[Lt3/d;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    sget-object v0, Lx3/c;->P:[Lt3/d;

    return-object v0
.end method

.method public v()Landroid/os/Bundle;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final w()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iget-object v0, p0, Lx3/c;->s:Landroid/content/Context;

    return-object v0
.end method

.method public x()I
    .locals 1

    iget v0, p0, Lx3/c;->H:I

    return v0
.end method

.method public y()Landroid/os/Bundle;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public z()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
