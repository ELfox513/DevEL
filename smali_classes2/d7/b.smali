.class public final Ld7/b;
.super Ly6/b;
.source "SourceFile"

# interfaces
.implements Lg7/b;


# static fields
.field public static final t:Lc7/a;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg7/a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/google/firebase/perf/session/gauges/GaugeManager;

.field public final d:Li7/k;

.field public final k:Lk7/h$b;

.field public final p:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lg7/b;",
            ">;"
        }
    .end annotation
.end field

.field public q:Ljava/lang/String;

.field public r:Z

.field public s:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lc7/a;->e()Lc7/a;

    move-result-object v0

    sput-object v0, Ld7/b;->t:Lc7/a;

    return-void
.end method

.method public constructor <init>(Li7/k;)V
    .locals 2

    invoke-static {}, Ly6/a;->b()Ly6/a;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->getInstance()Lcom/google/firebase/perf/session/gauges/GaugeManager;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Ld7/b;-><init>(Li7/k;Ly6/a;Lcom/google/firebase/perf/session/gauges/GaugeManager;)V

    return-void
.end method

.method public constructor <init>(Li7/k;Ly6/a;Lcom/google/firebase/perf/session/gauges/GaugeManager;)V
    .locals 0

    invoke-direct {p0, p2}, Ly6/b;-><init>(Ly6/a;)V

    invoke-static {}, Lk7/h;->B0()Lk7/h$b;

    move-result-object p2

    iput-object p2, p0, Ld7/b;->k:Lk7/h$b;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Ld7/b;->p:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Ld7/b;->d:Li7/k;

    iput-object p3, p0, Ld7/b;->b:Lcom/google/firebase/perf/session/gauges/GaugeManager;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ld7/b;->a:Ljava/util/List;

    invoke-virtual {p0}, Ly6/b;->registerForAppState()V

    return-void
.end method

.method public static j(Li7/k;)Ld7/b;
    .locals 1

    new-instance v0, Ld7/b;

    invoke-direct {v0, p0}, Ld7/b;-><init>(Li7/k;)V

    return-object v0
.end method

.method public static x(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x80

    if-le v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x1f

    if-le v2, v3, :cond_2

    const/16 v3, 0x7f

    if-le v2, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public A(I)Ld7/b;
    .locals 1

    iget-object v0, p0, Ld7/b;->k:Lk7/h$b;

    invoke-virtual {v0, p1}, Lk7/h$b;->Z(I)Lk7/h$b;

    return-object p0
.end method

.method public B()Ld7/b;
    .locals 2

    iget-object v0, p0, Ld7/b;->k:Lk7/h$b;

    sget-object v1, Lk7/h$e;->d:Lk7/h$e;

    invoke-virtual {v0, v1}, Lk7/h$b;->a0(Lk7/h$e;)Lk7/h$b;

    return-object p0
.end method

.method public C(J)Ld7/b;
    .locals 1

    iget-object v0, p0, Ld7/b;->k:Lk7/h$b;

    invoke-virtual {v0, p1, p2}, Lk7/h$b;->b0(J)Lk7/h$b;

    return-object p0
.end method

.method public D(J)Ld7/b;
    .locals 3

    invoke-static {}, Lcom/google/firebase/perf/session/SessionManager;->getInstance()Lcom/google/firebase/perf/session/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/perf/session/SessionManager;->perfSession()Lg7/a;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/perf/session/SessionManager;->getInstance()Lcom/google/firebase/perf/session/SessionManager;

    move-result-object v1

    iget-object v2, p0, Ld7/b;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2}, Lcom/google/firebase/perf/session/SessionManager;->registerForSessionUpdates(Ljava/lang/ref/WeakReference;)V

    iget-object v1, p0, Ld7/b;->k:Lk7/h$b;

    invoke-virtual {v1, p1, p2}, Lk7/h$b;->X(J)Lk7/h$b;

    invoke-virtual {p0, v0}, Ld7/b;->a(Lg7/a;)V

    invoke-virtual {v0}, Lg7/a;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ld7/b;->b:Lcom/google/firebase/perf/session/gauges/GaugeManager;

    invoke-virtual {v0}, Lg7/a;->l()Lj7/h;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->collectGaugeMetricOnce(Lj7/h;)V

    :cond_0
    return-object p0
.end method

.method public E(Ljava/lang/String;)Ld7/b;
    .locals 3

    if-nez p1, :cond_0

    iget-object p1, p0, Ld7/b;->k:Lk7/h$b;

    invoke-virtual {p1}, Lk7/h$b;->S()Lk7/h$b;

    return-object p0

    :cond_0
    invoke-static {p1}, Ld7/b;->x(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld7/b;->k:Lk7/h$b;

    invoke-virtual {v0, p1}, Lk7/h$b;->c0(Ljava/lang/String;)Lk7/h$b;

    goto :goto_0

    :cond_1
    sget-object v0, Ld7/b;->t:Lc7/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The content type of the response is not a valid content-type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lc7/a;->i(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public F(J)Ld7/b;
    .locals 1

    iget-object v0, p0, Ld7/b;->k:Lk7/h$b;

    invoke-virtual {v0, p1, p2}, Lk7/h$b;->d0(J)Lk7/h$b;

    return-object p0
.end method

.method public I(J)Ld7/b;
    .locals 1

    iget-object v0, p0, Ld7/b;->k:Lk7/h$b;

    invoke-virtual {v0, p1, p2}, Lk7/h$b;->e0(J)Lk7/h$b;

    return-object p0
.end method

.method public J(J)Ld7/b;
    .locals 1

    iget-object v0, p0, Ld7/b;->k:Lk7/h$b;

    invoke-virtual {v0, p1, p2}, Lk7/h$b;->f0(J)Lk7/h$b;

    invoke-static {}, Lcom/google/firebase/perf/session/SessionManager;->getInstance()Lcom/google/firebase/perf/session/SessionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/perf/session/SessionManager;->perfSession()Lg7/a;

    move-result-object p1

    invoke-virtual {p1}, Lg7/a;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ld7/b;->b:Lcom/google/firebase/perf/session/gauges/GaugeManager;

    invoke-static {}, Lcom/google/firebase/perf/session/SessionManager;->getInstance()Lcom/google/firebase/perf/session/SessionManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/perf/session/SessionManager;->perfSession()Lg7/a;

    move-result-object p2

    invoke-virtual {p2}, Lg7/a;->l()Lj7/h;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->collectGaugeMetricOnce(Lj7/h;)V

    :cond_0
    return-object p0
.end method

.method public K(J)Ld7/b;
    .locals 1

    iget-object v0, p0, Ld7/b;->k:Lk7/h$b;

    invoke-virtual {v0, p1, p2}, Lk7/h$b;->g0(J)Lk7/h$b;

    return-object p0
.end method

.method public L(Ljava/lang/String;)Ld7/b;
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {p1}, Lj7/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Ld7/b;->k:Lk7/h$b;

    const/16 v1, 0x7d0

    invoke-static {p1, v1}, Lj7/k;->e(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lk7/h$b;->h0(Ljava/lang/String;)Lk7/h$b;

    :cond_0
    return-object p0
.end method

.method public P(Ljava/lang/String;)Ld7/b;
    .locals 0

    iput-object p1, p0, Ld7/b;->q:Ljava/lang/String;

    return-object p0
.end method

.method public a(Lg7/a;)V
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Ld7/b;->t:Lc7/a;

    const-string v0, "Unable to add new SessionId to the Network Trace. Continuing without it."

    invoke-virtual {p1, v0}, Lc7/a;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Ld7/b;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ld7/b;->v()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ld7/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public h()Lk7/h;
    .locals 3

    invoke-static {}, Lcom/google/firebase/perf/session/SessionManager;->getInstance()Lcom/google/firebase/perf/session/SessionManager;

    move-result-object v0

    iget-object v1, p0, Ld7/b;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/session/SessionManager;->unregisterForSessionUpdates(Ljava/lang/ref/WeakReference;)V

    invoke-virtual {p0}, Ly6/b;->unregisterForAppState()V

    invoke-virtual {p0}, Ld7/b;->l()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lg7/a;->h(Ljava/util/List;)[Lk7/k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Ld7/b;->k:Lk7/h$b;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lk7/h$b;->Q(Ljava/lang/Iterable;)Lk7/h$b;

    :cond_0
    iget-object v0, p0, Ld7/b;->k:Lk7/h$b;

    invoke-virtual {v0}, Lo7/y$a;->D()Lo7/y;

    move-result-object v0

    check-cast v0, Lk7/h;

    iget-object v1, p0, Ld7/b;->q:Ljava/lang/String;

    invoke-static {v1}, Lf7/k;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Ld7/b;->t:Lc7/a;

    const-string v2, "Dropping network request from a \'User-Agent\' that is not allowed"

    invoke-virtual {v1, v2}, Lc7/a;->a(Ljava/lang/String;)V

    return-object v0

    :cond_1
    iget-boolean v1, p0, Ld7/b;->r:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Ld7/b;->d:Li7/k;

    invoke-virtual {p0}, Ly6/b;->getAppState()Lk7/d;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Li7/k;->B(Lk7/h;Lk7/d;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Ld7/b;->r:Z

    return-object v0

    :cond_2
    iget-boolean v1, p0, Ld7/b;->s:Z

    if-eqz v1, :cond_3

    sget-object v1, Ld7/b;->t:Lc7/a;

    const-string v2, "This metric has already been queued for transmission.  Please create a new HttpMetric for each request/response"

    invoke-virtual {v1, v2}, Lc7/a;->a(Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method

.method public l()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lg7/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ld7/b;->a:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Ld7/b;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg7/a;

    if-eqz v3, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public n()J
    .locals 2

    iget-object v0, p0, Ld7/b;->k:Lk7/h$b;

    invoke-virtual {v0}, Lk7/h$b;->T()J

    move-result-wide v0

    return-wide v0
.end method

.method public p()Z
    .locals 1

    iget-object v0, p0, Ld7/b;->k:Lk7/h$b;

    invoke-virtual {v0}, Lk7/h$b;->V()Z

    move-result v0

    return v0
.end method

.method public final u()Z
    .locals 1

    iget-object v0, p0, Ld7/b;->k:Lk7/h$b;

    invoke-virtual {v0}, Lk7/h$b;->U()Z

    move-result v0

    return v0
.end method

.method public final v()Z
    .locals 1

    iget-object v0, p0, Ld7/b;->k:Lk7/h$b;

    invoke-virtual {v0}, Lk7/h$b;->W()Z

    move-result v0

    return v0
.end method

.method public z(Ljava/lang/String;)Ld7/b;
    .locals 2

    if-eqz p1, :cond_9

    sget-object v0, Lk7/h$d;->b:Lk7/h$d;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "DELETE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "CONNECT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_2
    const-string v1, "TRACE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_3
    const-string v1, "PATCH"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_4
    const-string v1, "POST"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "HEAD"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_6
    const-string v1, "PUT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_7
    const-string v1, "GET"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_8
    const-string v1, "OPTIONS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget-object p1, Lk7/h$d;->b:Lk7/h$d;

    goto :goto_1

    :pswitch_0
    sget-object p1, Lk7/h$d;->q:Lk7/h$d;

    goto :goto_1

    :pswitch_1
    sget-object p1, Lk7/h$d;->v:Lk7/h$d;

    goto :goto_1

    :pswitch_2
    sget-object p1, Lk7/h$d;->u:Lk7/h$d;

    goto :goto_1

    :pswitch_3
    sget-object p1, Lk7/h$d;->s:Lk7/h$d;

    goto :goto_1

    :pswitch_4
    sget-object p1, Lk7/h$d;->p:Lk7/h$d;

    goto :goto_1

    :pswitch_5
    sget-object p1, Lk7/h$d;->r:Lk7/h$d;

    goto :goto_1

    :pswitch_6
    sget-object p1, Lk7/h$d;->k:Lk7/h$d;

    goto :goto_1

    :pswitch_7
    sget-object p1, Lk7/h$d;->d:Lk7/h$d;

    goto :goto_1

    :pswitch_8
    sget-object p1, Lk7/h$d;->t:Lk7/h$d;

    :goto_1
    iget-object v0, p0, Ld7/b;->k:Lk7/h$b;

    invoke-virtual {v0, p1}, Lk7/h$b;->Y(Lk7/h$d;)Lk7/h$b;

    :cond_9
    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x1faded82 -> :sswitch_8
        0x11336 -> :sswitch_7
        0x136ef -> :sswitch_6
        0x21c5e0 -> :sswitch_5
        0x2590a0 -> :sswitch_4
        0x4862828 -> :sswitch_3
        0x4c5f925 -> :sswitch_2
        0x638004ca -> :sswitch_1
        0x77f979ab -> :sswitch_0
    .end sparse-switch

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
