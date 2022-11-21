.class public final Lz4/e1;
.super Lz4/b1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lz4/b1;-><init>(Lz4/c1;)V

    return-void
.end method

.method public synthetic constructor <init>(Lz4/c1;)V
    .locals 0

    invoke-direct {p0}, Lz4/e1;-><init>()V

    return-void
.end method

.method public static e(Ljava/lang/Object;J)Lz4/q0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Lz4/q0<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lz4/q0;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;J)V
    .locals 0

    invoke-static {p1, p2, p3}, Lz4/e1;->e(Ljava/lang/Object;J)Lz4/q0;

    move-result-object p1

    invoke-interface {p1}, Lz4/q0;->j0()V

    return-void
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation

    invoke-static {p1, p3, p4}, Lz4/e1;->e(Ljava/lang/Object;J)Lz4/q0;

    move-result-object v0

    invoke-static {p2, p3, p4}, Lz4/e1;->e(Ljava/lang/Object;J)Lz4/q0;

    move-result-object p2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v1, :cond_1

    if-lez v2, :cond_1

    invoke-interface {v0}, Lz4/q0;->t0()Z

    move-result v3

    if-nez v3, :cond_0

    add-int/2addr v2, v1

    invoke-interface {v0, v2}, Lz4/q0;->z0(I)Lz4/q0;

    move-result-object v0

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-lez v1, :cond_2

    move-object p2, v0

    :cond_2
    invoke-static {p1, p3, p4, p2}, Lz4/d3;->g(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
