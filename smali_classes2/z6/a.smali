.class public Lz6/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lc7/a;

.field public static volatile e:Lz6/a;


# instance fields
.field public final a:Lcom/google/firebase/perf/config/RemoteConfigManager;

.field public b:Lj7/d;

.field public c:Lz6/v;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lc7/a;->e()Lc7/a;

    move-result-object v0

    sput-object v0, Lz6/a;->d:Lc7/a;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/perf/config/RemoteConfigManager;Lj7/d;Lz6/v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    invoke-static {}, Lcom/google/firebase/perf/config/RemoteConfigManager;->getInstance()Lcom/google/firebase/perf/config/RemoteConfigManager;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lz6/a;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    if-nez p2, :cond_1

    new-instance p2, Lj7/d;

    invoke-direct {p2}, Lj7/d;-><init>()V

    :cond_1
    iput-object p2, p0, Lz6/a;->b:Lj7/d;

    if-nez p3, :cond_2

    invoke-static {}, Lz6/v;->e()Lz6/v;

    move-result-object p3

    :cond_2
    iput-object p3, p0, Lz6/a;->c:Lz6/v;

    return-void
.end method

.method public static declared-synchronized f()Lz6/a;
    .locals 3

    const-class v0, Lz6/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lz6/a;->e:Lz6/a;

    if-nez v1, :cond_0

    new-instance v1, Lz6/a;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Lz6/a;-><init>(Lcom/google/firebase/perf/config/RemoteConfigManager;Lj7/d;Lz6/v;)V

    sput-object v1, Lz6/a;->e:Lz6/a;

    :cond_0
    sget-object v1, Lz6/a;->e:Lz6/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public A()J
    .locals 5

    invoke-static {}, Lz6/o;->e()Lz6/o;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz6/a;->n(Lz6/t;)Lj7/e;

    move-result-object v1

    invoke-virtual {v1}, Lj7/e;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lz6/a;->H(J)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0, v0}, Lz6/a;->u(Lz6/t;)Lj7/e;

    move-result-object v1

    invoke-virtual {v1}, Lj7/e;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lz6/a;->H(J)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lz6/a;->c:Lz6/v;

    invoke-virtual {v0}, Lz6/o;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lz6/v;->k(Ljava/lang/String;J)Z

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_1
    invoke-virtual {p0, v0}, Lz6/a;->d(Lz6/t;)Lj7/e;

    move-result-object v1

    invoke-virtual {v1}, Lj7/e;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lz6/a;->H(J)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_2
    invoke-virtual {v0}, Lz6/o;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public B()F
    .locals 4

    invoke-static {}, Lz6/p;->e()Lz6/p;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz6/a;->m(Lz6/t;)Lj7/e;

    move-result-object v1

    invoke-virtual {v1}, Lj7/e;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-virtual {p0, v1}, Lz6/a;->J(F)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lz6/a;->t(Lz6/t;)Lj7/e;

    move-result-object v1

    invoke-virtual {v1}, Lj7/e;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p0, v2}, Lz6/a;->J(F)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lz6/a;->c:Lz6/v;

    invoke-virtual {v0}, Lz6/p;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, v0, v3}, Lz6/v;->j(Ljava/lang/String;F)Z

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    :cond_1
    invoke-virtual {p0, v0}, Lz6/a;->c(Lz6/t;)Lj7/e;

    move-result-object v1

    invoke-virtual {v1}, Lj7/e;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p0, v2}, Lz6/a;->J(F)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    :cond_2
    invoke-virtual {v0}, Lz6/p;->d()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public C()J
    .locals 5

    invoke-static {}, Lz6/q;->e()Lz6/q;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz6/a;->u(Lz6/t;)Lj7/e;

    move-result-object v1

    invoke-virtual {v1}, Lj7/e;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lz6/a;->F(J)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lz6/a;->c:Lz6/v;

    invoke-virtual {v0}, Lz6/q;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lz6/v;->k(Ljava/lang/String;J)Z

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0, v0}, Lz6/a;->d(Lz6/t;)Lj7/e;

    move-result-object v1

    invoke-virtual {v1}, Lj7/e;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lz6/a;->F(J)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_1
    invoke-virtual {v0}, Lz6/q;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public D()J
    .locals 5

    invoke-static {}, Lz6/r;->e()Lz6/r;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz6/a;->u(Lz6/t;)Lj7/e;

    move-result-object v1

    invoke-virtual {v1}, Lj7/e;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lz6/a;->F(J)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lz6/a;->c:Lz6/v;

    invoke-virtual {v0}, Lz6/r;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lz6/v;->k(Ljava/lang/String;J)Z

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0, v0}, Lz6/a;->d(Lz6/t;)Lj7/e;

    move-result-object v1

    invoke-virtual {v1}, Lj7/e;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lz6/a;->F(J)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_1
    invoke-virtual {v0}, Lz6/r;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public E()F
    .locals 4

    invoke-static {}, Lz6/s;->e()Lz6/s;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz6/a;->t(Lz6/t;)Lj7/e;

    move-result-object v1

    invoke-virtual {v1}, Lj7/e;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p0, v2}, Lz6/a;->J(F)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lz6/a;->c:Lz6/v;

    invoke-virtual {v0}, Lz6/s;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, v0, v3}, Lz6/v;->j(Ljava/lang/String;F)Z

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0, v0}, Lz6/a;->c(Lz6/t;)Lj7/e;

    move-result-object v1

    invoke-virtual {v1}, Lj7/e;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p0, v2}, Lz6/a;->J(F)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    :cond_1
    invoke-virtual {v0}, Lz6/s;->d()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public final F(J)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final G(Ljava/lang/String;)Z
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lx6/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final H(J)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public I()Z
    .locals 2

    invoke-virtual {p0}, Lz6/a;->h()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lz6/a;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final J(F)Z
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final K(J)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final L(J)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public M(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lz6/a;->d:Lc7/a;

    invoke-static {p1}, Lj7/k;->b(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lc7/a;->h(Z)V

    iget-object v0, p0, Lz6/a;->c:Lz6/v;

    invoke-virtual {v0, p1}, Lz6/v;->i(Landroid/content/Context;)V

    return-void
.end method

.method public N(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz6/a;->M(Landroid/content/Context;)V

    return-void
.end method

.method public O(Lj7/d;)V
    .locals 0

    iput-object p1, p0, Lz6/a;->b:Lj7/d;

    return-void
.end method

.method public a()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lz6/d;->e()Lz6/d;

    move-result-object v0

    sget-object v1, Lx6/a;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lz6/d;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lz6/d;->c()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lz6/a;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lcom/google/firebase/perf/config/RemoteConfigManager;->getRemoteConfigValueOrDefault(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    invoke-virtual {v0}, Lz6/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3}, Lz6/d;->g(J)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v2, v3}, Lz6/d;->f(J)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lz6/a;->c:Lz6/v;

    invoke-virtual {v0, v1, v2}, Lz6/v;->l(Ljava/lang/String;Ljava/lang/String;)Z

    return-object v2

    :cond_2
    invoke-virtual {p0, v0}, Lz6/a;->e(Lz6/t;)Lj7/e;

    move-result-object v1

    invoke-virtual {v1}, Lj7/e;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_3
    invoke-virtual {v0}, Lz6/d;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lz6/t;)Lj7/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz6/t<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lj7/e<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz6/a;->c:Lz6/v;

    invoke-virtual {p1}, Lz6/t;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lz6/v;->b(Ljava/lang/String;)Lj7/e;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lz6/t;)Lj7/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz6/t<",
            "Ljava/lang/Float;",
            ">;)",
            "Lj7/e<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz6/a;->c:Lz6/v;

    invoke-virtual {p1}, Lz6/t;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lz6/v;->d(Ljava/lang/String;)Lj7/e;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lz6/t;)Lj7/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz6/t<",
            "Ljava/lang/Long;",
            ">;)",
            "Lj7/e<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz6/a;->c:Lz6/v;

    invoke-virtual {p1}, Lz6/t;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lz6/v;->f(Ljava/lang/String;)Lj7/e;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lz6/t;)Lj7/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz6/t<",
            "Ljava/lang/String;",
            ">;)",
            "Lj7/e<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz6/a;->c:Lz6/v;

    invoke-virtual {p1}, Lz6/t;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lz6/v;->g(Ljava/lang/String;)Lj7/e;

    move-result-object p1

    return-object p1
.end method

.method public g()Ljava/lang/Boolean;
    .locals 3

    invoke-static {}, Lz6/b;->e()Lz6/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz6/a;->l(Lz6/t;)Lj7/e;

    move-result-object v1

    invoke-virtual {v1}, Lj7/e;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lz6/b;->d()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/Boolean;
    .locals 3

    invoke-virtual {p0}, Lz6/a;->g()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_0
    invoke-static {}, Lz6/c;->d()Lz6/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz6/a;->b(Lz6/t;)Lj7/e;

    move-result-object v1

    invoke-virtual {v1}, Lj7/e;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    :cond_1
    invoke-virtual {p0, v0}, Lz6/a;->l(Lz6/t;)Lj7/e;

    move-result-object v0

    invoke-virtual {v0}, Lj7/e;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public final i()Z
    .locals 4

    invoke-static {}, Lz6/j;->e()Lz6/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz6/a;->s(Lz6/t;)Lj7/e;

    move-result-object v1

    invoke-virtual {v1}, Lj7/e;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lz6/a;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    invoke-virtual {v2}, Lcom/google/firebase/perf/config/RemoteConfigManager;->isLastFetchFailed()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v2, p0, Lz6/a;->c:Lz6/v;

    invoke-virtual {v0}, Lz6/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lz6/v;->m(Ljava/lang/String;Z)Z

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1
    invoke-virtual {p0, v0}, Lz6/a;->b(Lz6/t;)Lj7/e;

    move-result-object v1

    invoke-virtual {v1}, Lj7/e;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_2
    invoke-virtual {v0}, Lz6/j;->d()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 4

    invoke-static {}, Lz6/i;->e()Lz6/i;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz6/a;->v(Lz6/t;)Lj7/e;

    move-result-object v1

    invoke-virtual {v1}, Lj7/e;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lz6/a;->c:Lz6/v;

    invoke-virtual {v0}, Lz6/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lz6/v;->l(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lz6/a;->G(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0, v0}, Lz6/a;->e(Lz6/t;)Lj7/e;

    move-result-object v1

    invoke-virtual {v1}, Lj7/e;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lz6/a;->G(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    invoke-virtual {v0}, Lz6/i;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz6/a;->G(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 1

    invoke-virtual {p0}, Lz6/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lz6/a;->j()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final l(Lz6/t;)Lj7/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz6/t<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lj7/e<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz6/a;->b:Lj7/d;

    invoke-virtual {p1}, Lz6/t;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj7/d;->b(Ljava/lang/String;)Lj7/e;

    move-result-object p1

    return-object p1
.end method

.method public final m(Lz6/t;)Lj7/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz6/t<",
            "Ljava/lang/Float;",
            ">;)",
            "Lj7/e<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz6/a;->b:Lj7/d;

    invoke-virtual {p1}, Lz6/t;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj7/d;->c(Ljava/lang/String;)Lj7/e;

    move-result-object p1

    return-object p1
.end method

.method public final n(Lz6/t;)Lj7/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz6/t<",
            "Ljava/lang/Long;",
            ">;)",
            "Lj7/e<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz6/a;->b:Lj7/d;

    invoke-virtual {p1}, Lz6/t;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj7/d;->e(Ljava/lang/String;)Lj7/e;

    move-result-object p1

    return-object p1
.end method

.method public o()J
    .locals 5

    invoke-static {}, Lz6/e;->e()Lz6/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz6/a;->u(Lz6/t;)Lj7/e;

    move-result-object v1

    invoke-virtual {v1}, Lj7/e;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lz6/a;->F(J)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lz6/a;->c:Lz6/v;

    invoke-virtual {v0}, Lz6/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lz6/v;->k(Ljava/lang/String;J)Z

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0, v0}, Lz6/a;->d(Lz6/t;)Lj7/e;

    move-result-object v1

    invoke-virtual {v1}, Lj7/e;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lz6/a;->F(J)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_1
    invoke-virtual {v0}, Lz6/e;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public p()J
    .locals 5

    invoke-static {}, Lz6/f;->e()Lz6/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz6/a;->u(Lz6/t;)Lj7/e;

    move-result-object v1

    invoke-virtual {v1}, Lj7/e;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lz6/a;->F(J)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lz6/a;->c:Lz6/v;

    invoke-virtual {v0}, Lz6/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lz6/v;->k(Ljava/lang/String;J)Z

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0, v0}, Lz6/a;->d(Lz6/t;)Lj7/e;

    move-result-object v1

    invoke-virtual {v1}, Lj7/e;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lz6/a;->F(J)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_1
    invoke-virtual {v0}, Lz6/f;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public q()F
    .locals 4

    invoke-static {}, Lz6/g;->e()Lz6/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz6/a;->t(Lz6/t;)Lj7/e;

    move-result-object v1

    invoke-virtual {v1}, Lj7/e;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p0, v2}, Lz6/a;->J(F)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lz6/a;->c:Lz6/v;

    invoke-virtual {v0}, Lz6/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, v0, v3}, Lz6/v;->j(Ljava/lang/String;F)Z

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0, v0}, Lz6/a;->c(Lz6/t;)Lj7/e;

    move-result-object v1

    invoke-virtual {v1}, Lj7/e;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p0, v2}, Lz6/a;->J(F)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    :cond_1
    invoke-virtual {v0}, Lz6/g;->d()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public r()J
    .locals 5

    invoke-static {}, Lz6/h;->e()Lz6/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz6/a;->u(Lz6/t;)Lj7/e;

    move-result-object v1

    invoke-virtual {v1}, Lj7/e;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lz6/a;->L(J)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lz6/a;->c:Lz6/v;

    invoke-virtual {v0}, Lz6/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lz6/v;->k(Ljava/lang/String;J)Z

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0, v0}, Lz6/a;->d(Lz6/t;)Lj7/e;

    move-result-object v1

    invoke-virtual {v1}, Lj7/e;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lz6/a;->L(J)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_1
    invoke-virtual {v0}, Lz6/h;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final s(Lz6/t;)Lj7/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz6/t<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lj7/e<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz6/a;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    invoke-virtual {p1}, Lz6/t;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/config/RemoteConfigManager;->getBoolean(Ljava/lang/String;)Lj7/e;

    move-result-object p1

    return-object p1
.end method

.method public final t(Lz6/t;)Lj7/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz6/t<",
            "Ljava/lang/Float;",
            ">;)",
            "Lj7/e<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz6/a;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    invoke-virtual {p1}, Lz6/t;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/config/RemoteConfigManager;->getFloat(Ljava/lang/String;)Lj7/e;

    move-result-object p1

    return-object p1
.end method

.method public final u(Lz6/t;)Lj7/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz6/t<",
            "Ljava/lang/Long;",
            ">;)",
            "Lj7/e<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz6/a;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    invoke-virtual {p1}, Lz6/t;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/config/RemoteConfigManager;->getLong(Ljava/lang/String;)Lj7/e;

    move-result-object p1

    return-object p1
.end method

.method public final v(Lz6/t;)Lj7/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz6/t<",
            "Ljava/lang/String;",
            ">;)",
            "Lj7/e<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz6/a;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    invoke-virtual {p1}, Lz6/t;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/config/RemoteConfigManager;->getString(Ljava/lang/String;)Lj7/e;

    move-result-object p1

    return-object p1
.end method

.method public w()J
    .locals 5

    invoke-static {}, Lz6/k;->e()Lz6/k;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz6/a;->n(Lz6/t;)Lj7/e;

    move-result-object v1

    invoke-virtual {v1}, Lj7/e;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lz6/a;->H(J)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0, v0}, Lz6/a;->u(Lz6/t;)Lj7/e;

    move-result-object v1

    invoke-virtual {v1}, Lj7/e;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lz6/a;->H(J)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lz6/a;->c:Lz6/v;

    invoke-virtual {v0}, Lz6/k;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lz6/v;->k(Ljava/lang/String;J)Z

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_1
    invoke-virtual {p0, v0}, Lz6/a;->d(Lz6/t;)Lj7/e;

    move-result-object v1

    invoke-virtual {v1}, Lj7/e;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lz6/a;->H(J)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_2
    invoke-virtual {v0}, Lz6/k;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public x()J
    .locals 5

    invoke-static {}, Lz6/l;->e()Lz6/l;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz6/a;->n(Lz6/t;)Lj7/e;

    move-result-object v1

    invoke-virtual {v1}, Lj7/e;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lz6/a;->H(J)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0, v0}, Lz6/a;->u(Lz6/t;)Lj7/e;

    move-result-object v1

    invoke-virtual {v1}, Lj7/e;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lz6/a;->H(J)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lz6/a;->c:Lz6/v;

    invoke-virtual {v0}, Lz6/l;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lz6/v;->k(Ljava/lang/String;J)Z

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_1
    invoke-virtual {p0, v0}, Lz6/a;->d(Lz6/t;)Lj7/e;

    move-result-object v1

    invoke-virtual {v1}, Lj7/e;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lz6/a;->H(J)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_2
    invoke-virtual {v0}, Lz6/l;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public y()J
    .locals 5

    invoke-static {}, Lz6/m;->e()Lz6/m;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz6/a;->n(Lz6/t;)Lj7/e;

    move-result-object v1

    invoke-virtual {v1}, Lj7/e;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lz6/a;->K(J)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0, v0}, Lz6/a;->u(Lz6/t;)Lj7/e;

    move-result-object v1

    invoke-virtual {v1}, Lj7/e;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lz6/a;->K(J)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lz6/a;->c:Lz6/v;

    invoke-virtual {v0}, Lz6/m;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lz6/v;->k(Ljava/lang/String;J)Z

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_1
    invoke-virtual {p0, v0}, Lz6/a;->d(Lz6/t;)Lj7/e;

    move-result-object v1

    invoke-virtual {v1}, Lj7/e;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lz6/a;->K(J)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_2
    invoke-virtual {v0}, Lz6/m;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public z()J
    .locals 5

    invoke-static {}, Lz6/n;->e()Lz6/n;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz6/a;->n(Lz6/t;)Lj7/e;

    move-result-object v1

    invoke-virtual {v1}, Lj7/e;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lz6/a;->H(J)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0, v0}, Lz6/a;->u(Lz6/t;)Lj7/e;

    move-result-object v1

    invoke-virtual {v1}, Lj7/e;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lz6/a;->H(J)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lz6/a;->c:Lz6/v;

    invoke-virtual {v0}, Lz6/n;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lz6/v;->k(Ljava/lang/String;J)Z

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_1
    invoke-virtual {p0, v0}, Lz6/a;->d(Lz6/t;)Lj7/e;

    move-result-object v1

    invoke-virtual {v1}, Lj7/e;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lz6/a;->H(J)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lj7/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_2
    invoke-virtual {v0}, Lz6/n;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
