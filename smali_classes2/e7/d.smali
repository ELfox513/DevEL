.class public final Le7/d;
.super Le7/e;
.source "SourceFile"


# static fields
.field public static final b:Lc7/a;


# instance fields
.field public final a:Lk7/m;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lc7/a;->e()Lc7/a;

    move-result-object v0

    sput-object v0, Le7/d;->b:Lc7/a;

    return-void
.end method

.method public constructor <init>(Lk7/m;)V
    .locals 0

    invoke-direct {p0}, Le7/e;-><init>()V

    iput-object p1, p0, Le7/d;->a:Lk7/m;

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 4

    iget-object v0, p0, Le7/d;->a:Lk7/m;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Le7/d;->o(Lk7/m;I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Le7/d;->b:Lc7/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Trace:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Le7/d;->a:Lk7/m;

    invoke-virtual {v3}, Lk7/m;->n0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lc7/a;->i(Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p0, Le7/d;->a:Lk7/m;

    invoke-virtual {p0, v0}, Le7/d;->i(Lk7/m;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le7/d;->a:Lk7/m;

    invoke-virtual {p0, v0}, Le7/d;->g(Lk7/m;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Le7/d;->b:Lc7/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Counters for Trace:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Le7/d;->a:Lk7/m;

    invoke-virtual {v3}, Lk7/m;->n0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lc7/a;->i(Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final g(Lk7/m;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Le7/d;->h(Lk7/m;I)Z

    move-result p1

    return p1
.end method

.method public final h(Lk7/m;I)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-le p2, v1, :cond_1

    sget-object p1, Le7/d;->b:Lc7/a;

    const-string p2, "Exceed MAX_SUBTRACE_DEEP:1"

    invoke-virtual {p1, p2}, Lc7/a;->i(Ljava/lang/String;)V

    return v0

    :cond_1
    invoke-virtual {p1}, Lk7/m;->h0()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Le7/d;->l(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object p1, Le7/d;->b:Lc7/a;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid CounterId:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lc7/a;->i(Ljava/lang/String;)V

    return v0

    :cond_3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {p0, v4}, Le7/d;->m(Ljava/lang/Long;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object p1, Le7/d;->b:Lc7/a;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid CounterValue:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lc7/a;->i(Ljava/lang/String;)V

    return v0

    :cond_4
    invoke-virtual {p1}, Lk7/m;->p0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk7/m;

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {p0, v2, v3}, Le7/d;->h(Lk7/m;I)Z

    move-result v2

    if-nez v2, :cond_5

    return v0

    :cond_6
    return v1
.end method

.method public final i(Lk7/m;)Z
    .locals 3

    invoke-virtual {p1}, Lk7/m;->g0()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Lk7/m;->p0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk7/m;

    invoke-virtual {v0}, Lk7/m;->g0()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    return v2

    :cond_4
    return v1
.end method

.method public final j(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {v0}, Le7/e;->d(Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object p1, Le7/d;->b:Lc7/a;

    invoke-virtual {p1, v0}, Lc7/a;->i(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final k(Lk7/m;)Z
    .locals 1

    invoke-virtual {p1}, Lk7/m;->n0()Ljava/lang/String;

    move-result-object p1

    const-string v0, "_st_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final l(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p1, Le7/d;->b:Lc7/a;

    const-string v1, "counterId is empty"

    invoke-virtual {p1, v1}, Lc7/a;->i(Ljava/lang/String;)V

    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v1, 0x64

    if-le p1, v1, :cond_2

    sget-object p1, Le7/d;->b:Lc7/a;

    const-string v1, "counterId exceeded max length 100"

    invoke-virtual {p1, v1}, Lc7/a;->i(Ljava/lang/String;)V

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final m(Ljava/lang/Long;)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final n(Lk7/m;)Z
    .locals 2

    invoke-virtual {p1}, Lk7/m;->h0()Ljava/util/Map;

    move-result-object p1

    sget-object v0, Lj7/b;->p:Lj7/b;

    invoke-virtual {v0}, Lj7/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final o(Lk7/m;I)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-object p1, Le7/d;->b:Lc7/a;

    const-string p2, "TraceMetric is null"

    invoke-virtual {p1, p2}, Lc7/a;->i(Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 v1, 0x1

    if-le p2, v1, :cond_1

    sget-object p1, Le7/d;->b:Lc7/a;

    const-string p2, "Exceed MAX_SUBTRACE_DEEP:1"

    invoke-virtual {p1, p2}, Lc7/a;->i(Ljava/lang/String;)V

    return v0

    :cond_1
    invoke-virtual {p1}, Lk7/m;->n0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Le7/d;->q(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object p2, Le7/d;->b:Lc7/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid TraceId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lk7/m;->n0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lc7/a;->i(Ljava/lang/String;)V

    return v0

    :cond_2
    invoke-virtual {p0, p1}, Le7/d;->p(Lk7/m;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object p2, Le7/d;->b:Lc7/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid TraceDuration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lk7/m;->k0()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lc7/a;->i(Ljava/lang/String;)V

    return v0

    :cond_3
    invoke-virtual {p1}, Lk7/m;->q0()Z

    move-result v2

    if-nez v2, :cond_4

    sget-object p1, Le7/d;->b:Lc7/a;

    const-string p2, "clientStartTimeUs is null."

    invoke-virtual {p1, p2}, Lc7/a;->i(Ljava/lang/String;)V

    return v0

    :cond_4
    invoke-virtual {p0, p1}, Le7/d;->k(Lk7/m;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, p1}, Le7/d;->n(Lk7/m;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object p2, Le7/d;->b:Lc7/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "non-positive totalFrames in screen trace "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lk7/m;->n0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lc7/a;->i(Ljava/lang/String;)V

    return v0

    :cond_5
    invoke-virtual {p1}, Lk7/m;->p0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk7/m;

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {p0, v3, v4}, Le7/d;->o(Lk7/m;I)Z

    move-result v3

    if-nez v3, :cond_6

    return v0

    :cond_7
    invoke-virtual {p1}, Lk7/m;->i0()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Le7/d;->j(Ljava/util/Map;)Z

    move-result p1

    if-nez p1, :cond_8

    return v0

    :cond_8
    return v1
.end method

.method public final p(Lk7/m;)Z
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lk7/m;->k0()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final q(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v1, 0x64

    if-gt p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
