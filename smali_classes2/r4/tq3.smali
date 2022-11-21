.class public final Lr4/tq3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/xt3;


# instance fields
.field public final a:Lr4/g04;

.field public b:Lr4/a04;

.field public c:Lr4/b04;


# direct methods
.method public constructor <init>(Lr4/g04;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/tq3;->a:Lr4/g04;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lr4/tq3;->b:Lr4/a04;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lr4/tq3;->b:Lr4/a04;

    :cond_0
    iput-object v1, p0, Lr4/tq3;->c:Lr4/b04;

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lr4/tq3;->b:Lr4/a04;

    instance-of v1, v0, Lr4/y24;

    if-eqz v1, :cond_0

    check-cast v0, Lr4/y24;

    invoke-virtual {v0}, Lr4/y24;->a()V

    :cond_0
    return-void
.end method

.method public final c(Lr4/k6;Landroid/net/Uri;Ljava/util/Map;JJLr4/d04;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/k6;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;JJ",
            "Lr4/d04;",
            ")V"
        }
    .end annotation

    new-instance v6, Lr4/vz3;

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p4

    move-wide v4, p6

    invoke-direct/range {v0 .. v5}, Lr4/vz3;-><init>(Lr4/k6;JJ)V

    iput-object v6, p0, Lr4/tq3;->c:Lr4/b04;

    iget-object p1, p0, Lr4/tq3;->b:Lr4/a04;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lr4/tq3;->a:Lr4/g04;

    invoke-interface {p1, p2, p3}, Lr4/g04;->a(Landroid/net/Uri;Ljava/util/Map;)[Lr4/a04;

    move-result-object p1

    array-length p3, p1

    const/4 p6, 0x0

    const/4 p7, 0x1

    if-ne p3, p7, :cond_1

    aget-object p1, p1, p6

    iput-object p1, p0, Lr4/tq3;->b:Lr4/a04;

    goto :goto_4

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_7

    aget-object v1, p1, v0

    :try_start_0
    invoke-interface {v1, v6}, Lr4/a04;->e(Lr4/b04;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Lr4/tq3;->b:Lr4/a04;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p7}, Lr4/ja;->d(Z)V

    invoke-interface {v6}, Lr4/b04;->k()V

    goto :goto_3

    :cond_2
    iget-object v1, p0, Lr4/tq3;->b:Lr4/a04;

    if-nez v1, :cond_6

    invoke-interface {v6}, Lr4/b04;->p()J

    move-result-wide v1

    cmp-long v3, v1, p4

    if-nez v3, :cond_5

    goto :goto_1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lr4/tq3;->b:Lr4/a04;

    if-nez p2, :cond_3

    invoke-interface {v6}, Lr4/b04;->p()J

    move-result-wide p2

    cmp-long p8, p2, p4

    if-nez p8, :cond_4

    :cond_3
    const/4 p6, 0x1

    :cond_4
    invoke-static {p6}, Lr4/ja;->d(Z)V

    invoke-interface {v6}, Lr4/b04;->k()V

    throw p1

    :catch_0
    nop

    iget-object v1, p0, Lr4/tq3;->b:Lr4/a04;

    if-nez v1, :cond_6

    invoke-interface {v6}, Lr4/b04;->p()J

    move-result-wide v1

    cmp-long v3, v1, p4

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v1, 0x1

    :goto_2
    invoke-static {v1}, Lr4/ja;->d(Z)V

    invoke-interface {v6}, Lr4/b04;->k()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    :goto_3
    iget-object p3, p0, Lr4/tq3;->b:Lr4/a04;

    if-eqz p3, :cond_8

    :goto_4
    iget-object p1, p0, Lr4/tq3;->b:Lr4/a04;

    invoke-interface {p1, p8}, Lr4/a04;->h(Lr4/d04;)V

    return-void

    :cond_8
    new-instance p3, Lr4/cv3;

    invoke-static {p1}, Lr4/lc;->m([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p5

    add-int/lit8 p5, p5, 0x3a

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p5, "None of the available extractors ("

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") could read the stream."

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lr4/cv3;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_6

    :goto_5
    throw p3

    :goto_6
    goto :goto_5
.end method

.method public final d(Lr4/w04;)I
    .locals 2

    iget-object v0, p0, Lr4/tq3;->b:Lr4/a04;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lr4/tq3;->c:Lr4/b04;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v1, p1}, Lr4/a04;->f(Lr4/b04;Lr4/w04;)I

    move-result p1

    return p1
.end method

.method public final e()J
    .locals 2

    iget-object v0, p0, Lr4/tq3;->c:Lr4/b04;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lr4/b04;->p()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final l(JJ)V
    .locals 1

    iget-object v0, p0, Lr4/tq3;->b:Lr4/a04;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p1, p2, p3, p4}, Lr4/a04;->i(JJ)V

    return-void
.end method
