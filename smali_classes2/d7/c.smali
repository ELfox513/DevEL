.class public Ld7/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/firebase/perf/metrics/Trace;


# direct methods
.method public constructor <init>(Lcom/google/firebase/perf/metrics/Trace;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld7/c;->a:Lcom/google/firebase/perf/metrics/Trace;

    return-void
.end method


# virtual methods
.method public a()Lk7/m;
    .locals 6

    invoke-static {}, Lk7/m;->v0()Lk7/m$b;

    move-result-object v0

    iget-object v1, p0, Ld7/c;->a:Lcom/google/firebase/perf/metrics/Trace;

    invoke-virtual {v1}, Lcom/google/firebase/perf/metrics/Trace;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lk7/m$b;->a0(Ljava/lang/String;)Lk7/m$b;

    move-result-object v0

    iget-object v1, p0, Ld7/c;->a:Lcom/google/firebase/perf/metrics/Trace;

    invoke-virtual {v1}, Lcom/google/firebase/perf/metrics/Trace;->p()Lj7/h;

    move-result-object v1

    invoke-virtual {v1}, Lj7/h;->l()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lk7/m$b;->Y(J)Lk7/m$b;

    move-result-object v0

    iget-object v1, p0, Ld7/c;->a:Lcom/google/firebase/perf/metrics/Trace;

    invoke-virtual {v1}, Lcom/google/firebase/perf/metrics/Trace;->p()Lj7/h;

    move-result-object v1

    iget-object v2, p0, Ld7/c;->a:Lcom/google/firebase/perf/metrics/Trace;

    invoke-virtual {v2}, Lcom/google/firebase/perf/metrics/Trace;->l()Lj7/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lj7/h;->j(Lj7/h;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lk7/m$b;->Z(J)Lk7/m$b;

    move-result-object v0

    iget-object v1, p0, Ld7/c;->a:Lcom/google/firebase/perf/metrics/Trace;

    invoke-virtual {v1}, Lcom/google/firebase/perf/metrics/Trace;->j()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld7/a;

    invoke-virtual {v2}, Ld7/a;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ld7/a;->a()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lk7/m$b;->X(Ljava/lang/String;J)Lk7/m$b;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ld7/c;->a:Lcom/google/firebase/perf/metrics/Trace;

    invoke-virtual {v1}, Lcom/google/firebase/perf/metrics/Trace;->u()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/perf/metrics/Trace;

    new-instance v3, Ld7/c;

    invoke-direct {v3, v2}, Ld7/c;-><init>(Lcom/google/firebase/perf/metrics/Trace;)V

    invoke-virtual {v3}, Ld7/c;->a()Lk7/m;

    move-result-object v2

    invoke-virtual {v0, v2}, Lk7/m$b;->U(Lk7/m;)Lk7/m$b;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Ld7/c;->a:Lcom/google/firebase/perf/metrics/Trace;

    invoke-virtual {v1}, Lcom/google/firebase/perf/metrics/Trace;->getAttributes()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lk7/m$b;->W(Ljava/util/Map;)Lk7/m$b;

    iget-object v1, p0, Ld7/c;->a:Lcom/google/firebase/perf/metrics/Trace;

    invoke-virtual {v1}, Lcom/google/firebase/perf/metrics/Trace;->n()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lg7/a;->h(Ljava/util/List;)[Lk7/k;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lk7/m$b;->Q(Ljava/lang/Iterable;)Lk7/m$b;

    :cond_2
    invoke-virtual {v0}, Lo7/y$a;->D()Lo7/y;

    move-result-object v0

    check-cast v0, Lk7/m;

    return-object v0
.end method
