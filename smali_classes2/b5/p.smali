.class public final Lb5/p;
.super Lb5/j;
.source "SourceFile"


# instance fields
.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb5/q;",
            ">;"
        }
    .end annotation
.end field

.field public p:Lb5/v4;


# direct methods
.method public constructor <init>(Lb5/p;)V
    .locals 2

    iget-object v0, p1, Lb5/j;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lb5/j;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lb5/p;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lb5/p;->d:Ljava/util/List;

    iget-object v1, p1, Lb5/p;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lb5/p;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lb5/p;->k:Ljava/util/List;

    iget-object v1, p1, Lb5/p;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p1, Lb5/p;->p:Lb5/v4;

    iput-object p1, p0, Lb5/p;->p:Lb5/v4;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lb5/v4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lb5/q;",
            ">;",
            "Ljava/util/List<",
            "Lb5/q;",
            ">;",
            "Lb5/v4;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lb5/j;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lb5/p;->d:Ljava/util/List;

    iput-object p4, p0, Lb5/p;->p:Lb5/v4;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb5/q;

    iget-object p4, p0, Lb5/p;->d:Ljava/util/List;

    invoke-interface {p2}, Lb5/q;->j()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lb5/p;->k:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lb5/v4;Ljava/util/List;)Lb5/q;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb5/v4;",
            "Ljava/util/List<",
            "Lb5/q;",
            ">;)",
            "Lb5/q;"
        }
    .end annotation

    iget-object v0, p0, Lb5/p;->p:Lb5/v4;

    invoke-virtual {v0}, Lb5/v4;->a()Lb5/v4;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lb5/p;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lb5/p;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb5/q;

    invoke-virtual {p1, v3}, Lb5/v4;->b(Lb5/q;)Lb5/q;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lb5/v4;->e(Ljava/lang/String;Lb5/q;)V

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lb5/p;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lb5/q;->c:Lb5/q;

    invoke-virtual {v0, v2, v3}, Lb5/v4;->e(Ljava/lang/String;Lb5/q;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lb5/p;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb5/q;

    invoke-virtual {v0, p2}, Lb5/v4;->b(Lb5/q;)Lb5/q;

    move-result-object v1

    instance-of v2, v1, Lb5/r;

    if-eqz v2, :cond_3

    invoke-virtual {v0, p2}, Lb5/v4;->b(Lb5/q;)Lb5/q;

    move-result-object v1

    :cond_3
    instance-of p2, v1, Lb5/h;

    if-eqz p2, :cond_2

    check-cast v1, Lb5/h;

    invoke-virtual {v1}, Lb5/h;->a()Lb5/q;

    move-result-object p1

    return-object p1

    :cond_4
    sget-object p1, Lb5/q;->c:Lb5/q;

    return-object p1
.end method

.method public final e()Lb5/q;
    .locals 1

    new-instance v0, Lb5/p;

    invoke-direct {v0, p0}, Lb5/p;-><init>(Lb5/p;)V

    return-object v0
.end method
