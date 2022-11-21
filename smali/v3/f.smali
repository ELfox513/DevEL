.class public Lv3/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final C:Lcom/google/android/gms/common/api/Status;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public static final D:Lcom/google/android/gms/common/api/Status;

.field public static final E:Ljava/lang/Object;

.field public static F:Lv3/f;


# instance fields
.field public final A:Landroid/os/Handler;

.field public volatile B:Z

.field public a:J

.field public b:J

.field public d:J

.field public k:Z

.field public p:Lx3/u;

.field public q:Lx3/w;

.field public final r:Landroid/content/Context;

.field public final s:Lt3/g;

.field public final t:Lx3/h0;

.field public final u:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final v:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final w:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lv3/b<",
            "*>;",
            "Lv3/c0<",
            "*>;>;"
        }
    .end annotation
.end field

.field public x:Lv3/t;

.field public final y:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lv3/b<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final z:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lv3/b<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x4

    const-string v2, "Sign-out occurred while this API call was in progress."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lv3/f;->C:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v2, "The user must be signed in to make this API call."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lv3/f;->D:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lv3/f;->E:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lt3/g;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lv3/f;->a:J

    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lv3/f;->b:J

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lv3/f;->d:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lv3/f;->k:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lv3/f;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lv3/f;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v3, 0x5

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-direct {v1, v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v1, p0, Lv3/f;->w:Ljava/util/Map;

    const/4 v1, 0x0

    iput-object v1, p0, Lv3/f;->x:Lv3/t;

    new-instance v1, Lp/b;

    invoke-direct {v1}, Lp/b;-><init>()V

    iput-object v1, p0, Lv3/f;->y:Ljava/util/Set;

    new-instance v1, Lp/b;

    invoke-direct {v1}, Lp/b;-><init>()V

    iput-object v1, p0, Lv3/f;->z:Ljava/util/Set;

    iput-boolean v2, p0, Lv3/f;->B:Z

    iput-object p1, p0, Lv3/f;->r:Landroid/content/Context;

    new-instance v1, Lw4/e;

    invoke-direct {v1, p2, p0}, Lw4/e;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lv3/f;->A:Landroid/os/Handler;

    iput-object p3, p0, Lv3/f;->s:Lt3/g;

    new-instance p2, Lx3/h0;

    invoke-direct {p2, p3}, Lx3/h0;-><init>(Lt3/h;)V

    iput-object p2, p0, Lv3/f;->t:Lx3/h0;

    invoke-static {p1}, Lc4/j;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lv3/f;->B:Z

    :cond_0
    const/4 p1, 0x6

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static synthetic A(Lv3/f;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lv3/f;->A:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic B(Lv3/f;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lv3/f;->r:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic C(Lv3/f;)J
    .locals 2

    iget-wide v0, p0, Lv3/f;->a:J

    return-wide v0
.end method

.method public static synthetic D(Lv3/f;)J
    .locals 2

    iget-wide v0, p0, Lv3/f;->b:J

    return-wide v0
.end method

.method public static synthetic E(Lv3/f;)Lx3/h0;
    .locals 0

    iget-object p0, p0, Lv3/f;->t:Lx3/h0;

    return-object p0
.end method

.method public static synthetic F()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lv3/f;->E:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic G(Lv3/f;)Lv3/t;
    .locals 0

    iget-object p0, p0, Lv3/f;->x:Lv3/t;

    return-object p0
.end method

.method public static synthetic H(Lv3/f;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lv3/f;->y:Ljava/util/Set;

    return-object p0
.end method

.method public static a()V
    .locals 3

    sget-object v0, Lv3/f;->E:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lv3/f;->F:Lv3/f;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lv3/f;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v1, v1, Lv3/f;->A:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static synthetic b(Lv3/f;Z)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lv3/f;->k:Z

    return p1
.end method

.method public static synthetic c()Lcom/google/android/gms/common/api/Status;
    .locals 1

    sget-object v0, Lv3/f;->D:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public static synthetic d(Lv3/f;)Z
    .locals 0

    iget-boolean p0, p0, Lv3/f;->B:Z

    return p0
.end method

.method public static synthetic e(Lv3/f;)Lt3/g;
    .locals 0

    iget-object p0, p0, Lv3/f;->s:Lt3/g;

    return-object p0
.end method

.method public static synthetic f(Lv3/f;)J
    .locals 2

    iget-wide v0, p0, Lv3/f;->d:J

    return-wide v0
.end method

.method public static synthetic g(Lv3/b;Lt3/b;)Lcom/google/android/gms/common/api/Status;
    .locals 0

    invoke-static {p0, p1}, Lv3/f;->k(Lv3/b;Lt3/b;)Lcom/google/android/gms/common/api/Status;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lv3/f;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lv3/f;->w:Ljava/util/Map;

    return-object p0
.end method

.method public static k(Lv3/b;Lt3/b;)Lcom/google/android/gms/common/api/Status;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/b<",
            "*>;",
            "Lt3/b;",
            ")",
            "Lcom/google/android/gms/common/api/Status;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0}, Lv3/b;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x3f

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "API: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not available on this device. Connection failed with: "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/common/api/Status;-><init>(Lt3/b;Ljava/lang/String;)V

    return-object v0
.end method

.method public static n(Landroid/content/Context;)Lv3/f;
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    sget-object v0, Lv3/f;->E:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lv3/f;->F:Lv3/f;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "GoogleApiHandler"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lv3/f;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lt3/g;->m()Lt3/g;

    move-result-object v3

    invoke-direct {v2, p0, v1, v3}, Lv3/f;-><init>(Landroid/content/Context;Landroid/os/Looper;Lt3/g;)V

    sput-object v2, Lv3/f;->F:Lv3/f;

    :cond_0
    sget-object p0, Lv3/f;->F:Lv3/f;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xd

    const-wide/32 v2, 0x493e0

    const-string v4, "GoogleApiManager"

    const/16 v5, 0x11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v1, 0x1f

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown message id: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :pswitch_0
    iput-boolean v7, p0, Lv3/f;->k:Z

    goto/16 :goto_7

    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lv3/k0;

    iget-wide v0, p1, Lv3/k0;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    new-instance v0, Lx3/u;

    iget v1, p1, Lv3/k0;->b:I

    new-array v2, v8, [Lx3/n;

    iget-object p1, p1, Lv3/k0;->a:Lx3/n;

    aput-object p1, v2, v7

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lx3/u;-><init>(ILjava/util/List;)V

    invoke-virtual {p0}, Lv3/f;->m()Lx3/w;

    move-result-object p1

    invoke-interface {p1, v0}, Lx3/w;->b(Lx3/u;)Lj5/i;

    goto/16 :goto_7

    :cond_0
    iget-object v0, p0, Lv3/f;->p:Lx3/u;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lx3/u;->Y0()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lv3/f;->p:Lx3/u;

    invoke-virtual {v1}, Lx3/u;->X0()I

    move-result v1

    iget v2, p1, Lv3/k0;->b:I

    if-ne v1, v2, :cond_2

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p1, Lv3/k0;->d:I

    if-lt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lv3/f;->p:Lx3/u;

    iget-object v1, p1, Lv3/k0;->a:Lx3/n;

    invoke-virtual {v0, v1}, Lx3/u;->Z0(Lx3/n;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lv3/f;->A:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lv3/f;->l()V

    :cond_3
    :goto_1
    iget-object v0, p0, Lv3/f;->p:Lx3/u;

    if-nez v0, :cond_11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p1, Lv3/k0;->a:Lx3/n;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lx3/u;

    iget v2, p1, Lv3/k0;->b:I

    invoke-direct {v1, v2, v0}, Lx3/u;-><init>(ILjava/util/List;)V

    iput-object v1, p0, Lv3/f;->p:Lx3/u;

    iget-object v0, p0, Lv3/f;->A:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p1, Lv3/k0;->c:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_7

    :pswitch_2
    invoke-virtual {p0}, Lv3/f;->l()V

    goto/16 :goto_7

    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lv3/d0;

    iget-object v0, p0, Lv3/f;->w:Ljava/util/Map;

    invoke-static {p1}, Lv3/d0;->a(Lv3/d0;)Lv3/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lv3/f;->w:Ljava/util/Map;

    invoke-static {p1}, Lv3/d0;->a(Lv3/d0;)Lv3/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv3/c0;

    invoke-static {v0, p1}, Lv3/c0;->I(Lv3/c0;Lv3/d0;)V

    goto/16 :goto_7

    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lv3/d0;

    iget-object v0, p0, Lv3/f;->w:Ljava/util/Map;

    invoke-static {p1}, Lv3/d0;->a(Lv3/d0;)Lv3/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lv3/f;->w:Ljava/util/Map;

    invoke-static {p1}, Lv3/d0;->a(Lv3/d0;)Lv3/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv3/c0;

    invoke-static {v0, p1}, Lv3/c0;->H(Lv3/c0;Lv3/d0;)V

    goto/16 :goto_7

    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lv3/u;

    invoke-virtual {p1}, Lv3/u;->a()Lv3/b;

    move-result-object v0

    iget-object v1, p0, Lv3/f;->w:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lv3/u;->b()Lj5/j;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lj5/j;->c(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_4
    iget-object v1, p0, Lv3/f;->w:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv3/c0;

    invoke-static {v0, v7}, Lv3/c0;->G(Lv3/c0;Z)Z

    move-result v0

    invoke-virtual {p1}, Lv3/u;->b()Lj5/j;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lj5/j;->c(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_6
    iget-object v0, p0, Lv3/f;->w:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lv3/f;->w:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv3/c0;

    invoke-virtual {p1}, Lv3/c0;->y()Z

    goto/16 :goto_7

    :pswitch_7
    iget-object v0, p0, Lv3/f;->w:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lv3/f;->w:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv3/c0;

    invoke-virtual {p1}, Lv3/c0;->x()V

    goto/16 :goto_7

    :pswitch_8
    iget-object p1, p0, Lv3/f;->z:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv3/b;

    iget-object v1, p0, Lv3/f;->w:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv3/c0;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lv3/c0;->r()V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lv3/f;->z:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    goto/16 :goto_7

    :pswitch_9
    iget-object v0, p0, Lv3/f;->w:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lv3/f;->w:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv3/c0;

    invoke-virtual {p1}, Lv3/c0;->w()V

    goto/16 :goto_7

    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lu3/e;

    invoke-virtual {p0, p1}, Lv3/f;->i(Lu3/e;)Lv3/c0;

    goto/16 :goto_7

    :pswitch_b
    iget-object p1, p0, Lv3/f;->r:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_11

    iget-object p1, p0, Lv3/f;->r:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    invoke-static {p1}, Lv3/c;->c(Landroid/app/Application;)V

    invoke-static {}, Lv3/c;->b()Lv3/c;

    move-result-object p1

    new-instance v0, Lv3/x;

    invoke-direct {v0, p0}, Lv3/x;-><init>(Lv3/f;)V

    invoke-virtual {p1, v0}, Lv3/c;->a(Lv3/c$a;)V

    invoke-static {}, Lv3/c;->b()Lv3/c;

    move-result-object p1

    invoke-virtual {p1, v8}, Lv3/c;->e(Z)Z

    move-result p1

    if-nez p1, :cond_11

    iput-wide v2, p0, Lv3/f;->d:J

    goto/16 :goto_7

    :pswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lt3/b;

    iget-object v2, p0, Lv3/f;->w:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv3/c0;

    invoke-virtual {v3}, Lv3/c0;->D()I

    move-result v7

    if-ne v7, v0, :cond_7

    move-object v6, v3

    :cond_8
    if-eqz v6, :cond_a

    invoke-virtual {p1}, Lt3/b;->X0()I

    move-result v0

    if-ne v0, v1, :cond_9

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    iget-object v1, p0, Lv3/f;->s:Lt3/g;

    invoke-virtual {p1}, Lt3/b;->X0()I

    move-result v2

    invoke-virtual {v1, v2}, Lt3/g;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lt3/b;->Y0()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x45

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Error resolution was canceled by the user, original error message: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v5, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-static {v6, v0}, Lv3/c0;->J(Lv3/c0;Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_7

    :cond_9
    invoke-static {v6}, Lv3/c0;->K(Lv3/c0;)Lv3/b;

    move-result-object v0

    invoke-static {v0, p1}, Lv3/f;->k(Lv3/b;Lt3/b;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-static {v6, p1}, Lv3/c0;->J(Lv3/c0;Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_7

    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v1, 0x4c

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Could not find API instance "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " while trying to fail enqueued calls."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-static {v4, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lv3/o0;

    iget-object v0, p0, Lv3/f;->w:Ljava/util/Map;

    iget-object v1, p1, Lv3/o0;->c:Lu3/e;

    invoke-virtual {v1}, Lu3/e;->m()Lv3/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv3/c0;

    if-nez v0, :cond_b

    iget-object v0, p1, Lv3/o0;->c:Lu3/e;

    invoke-virtual {p0, v0}, Lv3/f;->i(Lu3/e;)Lv3/c0;

    move-result-object v0

    :cond_b
    invoke-virtual {v0}, Lv3/c0;->C()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lv3/f;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p1, Lv3/o0;->b:I

    if-eq v1, v2, :cond_c

    iget-object p1, p1, Lv3/o0;->a:Lv3/b1;

    sget-object v1, Lv3/f;->C:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1, v1}, Lv3/b1;->a(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0}, Lv3/c0;->r()V

    goto/16 :goto_7

    :cond_c
    iget-object p1, p1, Lv3/o0;->a:Lv3/b1;

    invoke-virtual {v0, p1}, Lv3/c0;->q(Lv3/b1;)V

    goto/16 :goto_7

    :pswitch_e
    iget-object p1, p0, Lv3/f;->w:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv3/c0;

    invoke-virtual {v0}, Lv3/c0;->u()V

    invoke-virtual {v0}, Lv3/c0;->z()V

    goto :goto_3

    :pswitch_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lv3/c1;

    invoke-virtual {p1}, Lv3/c1;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv3/b;

    iget-object v3, p0, Lv3/f;->w:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv3/c0;

    if-nez v3, :cond_d

    new-instance v0, Lt3/b;

    invoke-direct {v0, v1}, Lt3/b;-><init>(I)V

    invoke-virtual {p1, v2, v0, v6}, Lv3/c1;->b(Lv3/b;Lt3/b;Ljava/lang/String;)V

    goto :goto_7

    :cond_d
    invoke-virtual {v3}, Lv3/c0;->B()Z

    move-result v4

    if-eqz v4, :cond_e

    sget-object v4, Lt3/b;->p:Lt3/b;

    invoke-virtual {v3}, Lv3/c0;->s()Lu3/a$f;

    move-result-object v3

    invoke-interface {v3}, Lu3/a$f;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v4, v3}, Lv3/c1;->b(Lv3/b;Lt3/b;Ljava/lang/String;)V

    goto :goto_4

    :cond_e
    invoke-virtual {v3}, Lv3/c0;->v()Lt3/b;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-virtual {p1, v2, v4, v6}, Lv3/c1;->b(Lv3/b;Lt3/b;Ljava/lang/String;)V

    goto :goto_4

    :cond_f
    invoke-virtual {v3, p1}, Lv3/c0;->A(Lv3/c1;)V

    invoke-virtual {v3}, Lv3/c0;->z()V

    goto :goto_4

    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eq v8, p1, :cond_10

    goto :goto_5

    :cond_10
    const-wide/16 v2, 0x2710

    :goto_5
    iput-wide v2, p0, Lv3/f;->d:J

    iget-object p1, p0, Lv3/f;->A:Landroid/os/Handler;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lv3/f;->w:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv3/b;

    iget-object v2, p0, Lv3/f;->A:Landroid/os/Handler;

    invoke-virtual {v2, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-wide v3, p0, Lv3/f;->d:J

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_6

    :cond_11
    :goto_7
    return v8

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_d
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Lu3/e;)Lv3/c0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu3/e<",
            "*>;)",
            "Lv3/c0<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p1}, Lu3/e;->m()Lv3/b;

    move-result-object v0

    iget-object v1, p0, Lv3/f;->w:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv3/c0;

    if-nez v1, :cond_0

    new-instance v1, Lv3/c0;

    invoke-direct {v1, p0, p1}, Lv3/c0;-><init>(Lv3/f;Lu3/e;)V

    iget-object p1, p0, Lv3/f;->w:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v1}, Lv3/c0;->C()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lv3/f;->z:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v1}, Lv3/c0;->z()V

    return-object v1
.end method

.method public final j(Lj5/j;ILu3/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj5/j<",
            "TT;>;I",
            "Lu3/e;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Lu3/e;->m()Lv3/b;

    move-result-object p3

    invoke-static {p0, p2, p3}, Lv3/j0;->b(Lv3/f;ILv3/b;)Lv3/j0;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lj5/j;->a()Lj5/i;

    move-result-object p1

    iget-object p3, p0, Lv3/f;->A:Landroid/os/Handler;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3}, Lv3/w;->a(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lj5/i;->d(Ljava/util/concurrent/Executor;Lj5/d;)Lj5/i;

    :cond_0
    return-void
.end method

.method public final l()V
    .locals 2

    iget-object v0, p0, Lv3/f;->p:Lx3/u;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lx3/u;->X0()I

    move-result v1

    if-gtz v1, :cond_0

    invoke-virtual {p0}, Lv3/f;->w()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lv3/f;->m()Lx3/w;

    move-result-object v1

    invoke-interface {v1, v0}, Lx3/w;->b(Lx3/u;)Lj5/i;

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lv3/f;->p:Lx3/u;

    :cond_2
    return-void
.end method

.method public final m()Lx3/w;
    .locals 1

    iget-object v0, p0, Lv3/f;->q:Lx3/w;

    if-nez v0, :cond_0

    iget-object v0, p0, Lv3/f;->r:Landroid/content/Context;

    invoke-static {v0}, Lx3/v;->a(Landroid/content/Context;)Lx3/w;

    move-result-object v0

    iput-object v0, p0, Lv3/f;->q:Lx3/w;

    :cond_0
    iget-object v0, p0, Lv3/f;->q:Lx3/w;

    return-object v0
.end method

.method public final o()I
    .locals 1

    iget-object v0, p0, Lv3/f;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method public final p(Lu3/e;)V
    .locals 2
    .param p1    # Lu3/e;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu3/e<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lv3/f;->A:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final q(Lv3/t;)V
    .locals 2

    sget-object v0, Lv3/f;->E:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lv3/f;->x:Lv3/t;

    if-eq v1, p1, :cond_0

    iput-object p1, p0, Lv3/f;->x:Lv3/t;

    iget-object v1, p0, Lv3/f;->y:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    :cond_0
    iget-object v1, p0, Lv3/f;->y:Ljava/util/Set;

    invoke-virtual {p1}, Lv3/t;->u()Lp/b;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final r(Lv3/t;)V
    .locals 2

    sget-object v0, Lv3/f;->E:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lv3/f;->x:Lv3/t;

    if-ne v1, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lv3/f;->x:Lv3/t;

    iget-object p1, p0, Lv3/f;->y:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final s(Lv3/b;)Lv3/c0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/b<",
            "*>;)",
            "Lv3/c0;"
        }
    .end annotation

    iget-object v0, p0, Lv3/f;->w:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv3/c0;

    return-object p1
.end method

.method public final t()V
    .locals 2

    iget-object v0, p0, Lv3/f;->A:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final u(Lu3/e;ILcom/google/android/gms/common/api/internal/a;)V
    .locals 2
    .param p1    # Lu3/e;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/common/api/internal/a;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lu3/a$d;",
            ">(",
            "Lu3/e<",
            "TO;>;I",
            "Lcom/google/android/gms/common/api/internal/a<",
            "+",
            "Lu3/l;",
            "Lu3/a$b;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lv3/y0;

    invoke-direct {v0, p2, p3}, Lv3/y0;-><init>(ILcom/google/android/gms/common/api/internal/a;)V

    iget-object p2, p0, Lv3/f;->A:Landroid/os/Handler;

    new-instance p3, Lv3/o0;

    iget-object v1, p0, Lv3/f;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {p3, v0, v1, p1}, Lv3/o0;-><init>(Lv3/b1;ILu3/e;)V

    const/4 p1, 0x4

    invoke-virtual {p2, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final v(Lu3/e;ILv3/q;Lj5/j;Lv3/o;)V
    .locals 1
    .param p1    # Lu3/e;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Lv3/q;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p4    # Lj5/j;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p5    # Lv3/o;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lu3/a$d;",
            "ResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Lu3/e<",
            "TO;>;I",
            "Lv3/q<",
            "Lu3/a$b;",
            "TResultT;>;",
            "Lj5/j<",
            "TResultT;>;",
            "Lv3/o;",
            ")V"
        }
    .end annotation

    invoke-virtual {p3}, Lv3/q;->e()I

    move-result v0

    invoke-virtual {p0, p4, v0, p1}, Lv3/f;->j(Lj5/j;ILu3/e;)V

    new-instance v0, Lv3/z0;

    invoke-direct {v0, p2, p3, p4, p5}, Lv3/z0;-><init>(ILv3/q;Lj5/j;Lv3/o;)V

    iget-object p2, p0, Lv3/f;->A:Landroid/os/Handler;

    new-instance p3, Lv3/o0;

    iget-object p4, p0, Lv3/f;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p4

    invoke-direct {p3, v0, p4, p1}, Lv3/o0;-><init>(Lv3/b1;ILu3/e;)V

    const/4 p1, 0x4

    invoke-virtual {p2, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final w()Z
    .locals 4

    iget-boolean v0, p0, Lv3/f;->k:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lx3/r;->b()Lx3/r;

    move-result-object v0

    invoke-virtual {v0}, Lx3/r;->a()Lx3/s;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lx3/s;->Z0()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    iget-object v0, p0, Lv3/f;->t:Lx3/h0;

    iget-object v2, p0, Lv3/f;->r:Landroid/content/Context;

    const v3, 0xc1f7c30

    invoke-virtual {v0, v2, v3}, Lx3/h0;->b(Landroid/content/Context;I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    return v1

    :cond_4
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public final x(Lt3/b;I)Z
    .locals 2

    iget-object v0, p0, Lv3/f;->s:Lt3/g;

    iget-object v1, p0, Lv3/f;->r:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lt3/g;->r(Landroid/content/Context;Lt3/b;I)Z

    move-result p1

    return p1
.end method

.method public final y(Lt3/b;I)V
    .locals 3
    .param p1    # Lt3/b;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1, p2}, Lv3/f;->x(Lt3/b;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lv3/f;->A:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final z(Lx3/n;IJI)V
    .locals 8

    iget-object v0, p0, Lv3/f;->A:Landroid/os/Handler;

    new-instance v7, Lv3/k0;

    move-object v1, v7

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lv3/k0;-><init>(Lx3/n;IJI)V

    const/16 p1, 0x12

    invoke-virtual {v0, p1, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
