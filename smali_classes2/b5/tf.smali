.class public final Lb5/tf;
.super Lb5/j;
.source "SourceFile"


# instance fields
.field public final d:Z

.field public final k:Z

.field public final synthetic p:Lb5/uf;


# direct methods
.method public constructor <init>(Lb5/uf;ZZ)V
    .locals 0

    iput-object p1, p0, Lb5/tf;->p:Lb5/uf;

    const-string p1, "log"

    invoke-direct {p0, p1}, Lb5/j;-><init>(Ljava/lang/String;)V

    iput-boolean p2, p0, Lb5/tf;->d:Z

    iput-boolean p3, p0, Lb5/tf;->k:Z

    return-void
.end method


# virtual methods
.method public final a(Lb5/v4;Ljava/util/List;)Lb5/q;
    .locals 11
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

    const-string v0, "log"

    const/4 v1, 0x1

    invoke-static {v0, v1, p2}, Lb5/w5;->i(Ljava/lang/String;ILjava/util/List;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lb5/tf;->p:Lb5/uf;

    invoke-static {v0}, Lb5/uf;->c(Lb5/uf;)Lb5/sf;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb5/q;

    invoke-virtual {p1, p2}, Lb5/v4;->b(Lb5/q;)Lb5/q;

    move-result-object p1

    invoke-interface {p1}, Lb5/q;->j()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    iget-boolean v7, p0, Lb5/tf;->d:Z

    iget-boolean v8, p0, Lb5/tf;->k:Z

    invoke-interface/range {v3 .. v8}, Lb5/sf;->a(ILjava/lang/String;Ljava/util/List;ZZ)V

    sget-object p1, Lb5/q;->c:Lb5/q;

    return-object p1

    :cond_0
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb5/q;

    invoke-virtual {p1, v0}, Lb5/v4;->b(Lb5/q;)Lb5/q;

    move-result-object v0

    invoke-interface {v0}, Lb5/q;->f()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lb5/w5;->b(D)I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4

    if-eq v0, v2, :cond_3

    if-eq v0, v3, :cond_2

    const/4 v5, 0x6

    if-eq v0, v5, :cond_1

    const/4 v6, 0x3

    goto :goto_0

    :cond_1
    const/4 v6, 0x2

    goto :goto_0

    :cond_2
    const/4 v6, 0x5

    goto :goto_0

    :cond_3
    const/4 v6, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x4

    const/4 v6, 0x4

    :goto_0
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb5/q;

    invoke-virtual {p1, v0}, Lb5/v4;->b(Lb5/q;)Lb5/q;

    move-result-object v0

    invoke-interface {v0}, Lb5/q;->j()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_5

    iget-object p1, p0, Lb5/tf;->p:Lb5/uf;

    invoke-static {p1}, Lb5/uf;->c(Lb5/uf;)Lb5/sf;

    move-result-object v5

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    iget-boolean v9, p0, Lb5/tf;->d:Z

    iget-boolean v10, p0, Lb5/tf;->k:Z

    invoke-interface/range {v5 .. v10}, Lb5/sf;->a(ILjava/lang/String;Ljava/util/List;ZZ)V

    sget-object p1, Lb5/q;->c:Lb5/q;

    return-object p1

    :cond_5
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v4, v0, :cond_6

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb5/q;

    invoke-virtual {p1, v0}, Lb5/v4;->b(Lb5/q;)Lb5/q;

    move-result-object v0

    invoke-interface {v0}, Lb5/q;->j()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lb5/tf;->p:Lb5/uf;

    invoke-static {p1}, Lb5/uf;->c(Lb5/uf;)Lb5/sf;

    move-result-object v5

    iget-boolean v9, p0, Lb5/tf;->d:Z

    iget-boolean v10, p0, Lb5/tf;->k:Z

    invoke-interface/range {v5 .. v10}, Lb5/sf;->a(ILjava/lang/String;Ljava/util/List;ZZ)V

    sget-object p1, Lb5/q;->c:Lb5/q;

    return-object p1
.end method
