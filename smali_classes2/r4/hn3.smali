.class public final Lr4/hn3;
.super Lr4/kn3;
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

    sput-object v0, Lr4/hn3;->c:Ljava/lang/Class;

    return-void
.end method

.method public synthetic constructor <init>(Lr4/jn3;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lr4/kn3;-><init>(Lr4/jn3;)V

    return-void
.end method

.method public static f(Ljava/lang/Object;JI)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "JI)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lr4/rp3;->v(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, v0, Lr4/gn3;

    if-eqz v1, :cond_0

    new-instance v0, Lr4/fn3;

    invoke-direct {v0, p3}, Lr4/fn3;-><init>(I)V

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lr4/ho3;

    if-eqz v1, :cond_1

    instance-of v1, v0, Lr4/ym3;

    if-eqz v1, :cond_1

    check-cast v0, Lr4/ym3;

    invoke-interface {v0, p3}, Lr4/ym3;->S(I)Lr4/ym3;

    move-result-object p3

    move-object v0, p3

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-static {p0, p1, p2, v0}, Lr4/rp3;->w(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_2

    :cond_2
    sget-object v1, Lr4/hn3;->c:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {p0, p1, p2, v1}, Lr4/rp3;->w(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_1
    move-object v0, v1

    goto :goto_2

    :cond_3
    instance-of v1, v0, Lr4/mp3;

    if-eqz v1, :cond_4

    new-instance v1, Lr4/fn3;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p3

    invoke-direct {v1, v2}, Lr4/fn3;-><init>(I)V

    check-cast v0, Lr4/mp3;

    invoke-virtual {v1}, Lr4/fn3;->size()I

    move-result p3

    invoke-virtual {v1, p3, v0}, Lr4/vk3;->addAll(ILjava/util/Collection;)Z

    invoke-static {p0, p1, p2, v1}, Lr4/rp3;->w(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    :cond_4
    instance-of v1, v0, Lr4/ho3;

    if-eqz v1, :cond_6

    instance-of v1, v0, Lr4/ym3;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Lr4/ym3;

    invoke-interface {v1}, Lr4/ym3;->zza()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p3

    invoke-interface {v1, v0}, Lr4/ym3;->S(I)Lr4/ym3;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Lr4/rp3;->w(Ljava/lang/Object;JLjava/lang/Object;)V

    return-object p3

    :cond_6
    :goto_2
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;J)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xa

    invoke-static {p1, p2, p3, v0}, Lr4/hn3;->f(Ljava/lang/Object;JI)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;J)V
    .locals 3

    invoke-static {p1, p2, p3}, Lr4/rp3;->v(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    instance-of v1, v0, Lr4/gn3;

    if-eqz v1, :cond_0

    check-cast v0, Lr4/gn3;

    invoke-interface {v0}, Lr4/gn3;->j()Lr4/gn3;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v1, Lr4/hn3;->c:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    instance-of v1, v0, Lr4/ho3;

    if-eqz v1, :cond_3

    instance-of v1, v0, Lr4/ym3;

    if-eqz v1, :cond_3

    check-cast v0, Lr4/ym3;

    invoke-interface {v0}, Lr4/ym3;->zza()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {v0}, Lr4/ym3;->a()V

    :cond_2
    return-void

    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-static {p1, p2, p3, v0}, Lr4/rp3;->w(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 3
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

    invoke-static {p2, p3, p4}, Lr4/rp3;->v(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, p3, p4, v0}, Lr4/hn3;->f(Ljava/lang/Object;JI)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v1, :cond_0

    if-lez v2, :cond_0

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-lez v1, :cond_1

    move-object p2, v0

    :cond_1
    invoke-static {p1, p3, p4, p2}, Lr4/rp3;->w(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
