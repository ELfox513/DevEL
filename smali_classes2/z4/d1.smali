.class public final Lz4/d1;
.super Lz4/b1;
.source "SourceFile"


# static fields
.field public static final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lz4/d1;->c:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lz4/b1;-><init>(Lz4/c1;)V

    return-void
.end method

.method public synthetic constructor <init>(Lz4/c1;)V
    .locals 0

    invoke-direct {p0}, Lz4/d1;-><init>()V

    return-void
.end method

.method public static e(Ljava/lang/Object;J)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;J)V
    .locals 3

    invoke-static {p1, p2, p3}, Lz4/d3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    instance-of v1, v0, Lz4/a1;

    if-eqz v1, :cond_0

    check-cast v0, Lz4/a1;

    invoke-interface {v0}, Lz4/a1;->H0()Lz4/a1;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v1, Lz4/d1;->c:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    instance-of v1, v0, Lz4/c2;

    if-eqz v1, :cond_3

    instance-of v1, v0, Lz4/q0;

    if-eqz v1, :cond_3

    check-cast v0, Lz4/q0;

    invoke-interface {v0}, Lz4/q0;->t0()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {v0}, Lz4/q0;->j0()V

    :cond_2
    return-void

    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-static {p1, p2, p3, v0}, Lz4/d3;->g(Ljava/lang/Object;JLjava/lang/Object;)V

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

    invoke-static {p2, p3, p4}, Lz4/d1;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, p3, p4}, Lz4/d1;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    instance-of v2, v1, Lz4/a1;

    if-eqz v2, :cond_0

    new-instance v1, Lz4/z0;

    invoke-direct {v1, v0}, Lz4/z0;-><init>(I)V

    goto :goto_0

    :cond_0
    instance-of v2, v1, Lz4/c2;

    if-eqz v2, :cond_1

    instance-of v2, v1, Lz4/q0;

    if-eqz v2, :cond_1

    check-cast v1, Lz4/q0;

    invoke-interface {v1, v0}, Lz4/q0;->z0(I)Lz4/q0;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-static {p1, p3, p4, v1}, Lz4/d3;->g(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_2

    :cond_2
    sget-object v2, Lz4/d1;->c:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {p1, p3, p4, v2}, Lz4/d3;->g(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_1
    move-object v1, v2

    goto :goto_2

    :cond_3
    instance-of v2, v1, Lz4/a3;

    if-eqz v2, :cond_4

    new-instance v2, Lz4/z0;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {v2, v3}, Lz4/z0;-><init>(I)V

    check-cast v1, Lz4/a3;

    invoke-virtual {v2, v1}, Lz4/f;->addAll(Ljava/util/Collection;)Z

    invoke-static {p1, p3, p4, v2}, Lz4/d3;->g(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    :cond_4
    instance-of v2, v1, Lz4/c2;

    if-eqz v2, :cond_5

    instance-of v2, v1, Lz4/q0;

    if-eqz v2, :cond_5

    move-object v2, v1

    check-cast v2, Lz4/q0;

    invoke-interface {v2}, Lz4/q0;->t0()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-interface {v2, v1}, Lz4/q0;->z0(I)Lz4/q0;

    move-result-object v1

    invoke-static {p1, p3, p4, v1}, Lz4/d3;->g(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v0, :cond_6

    if-lez v2, :cond_6

    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6
    if-lez v0, :cond_7

    move-object p2, v1

    :cond_7
    invoke-static {p1, p3, p4, p2}, Lz4/d3;->g(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
