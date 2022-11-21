.class public final Lg5/ta;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Lb5/z4;

.field public d:Ljava/util/BitSet;

.field public e:Ljava/util/BitSet;

.field public f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field public final synthetic h:Lg5/za;


# direct methods
.method public synthetic constructor <init>(Lg5/za;Ljava/lang/String;Lb5/z4;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/Map;Ljava/util/Map;Lg5/sa;)V
    .locals 0

    iput-object p1, p0, Lg5/ta;->h:Lg5/za;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg5/ta;->a:Ljava/lang/String;

    iput-object p4, p0, Lg5/ta;->d:Ljava/util/BitSet;

    iput-object p5, p0, Lg5/ta;->e:Ljava/util/BitSet;

    iput-object p6, p0, Lg5/ta;->f:Ljava/util/Map;

    new-instance p1, Lp/a;

    invoke-direct {p1}, Lp/a;-><init>()V

    iput-object p1, p0, Lg5/ta;->g:Ljava/util/Map;

    invoke-interface {p7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p7, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Long;

    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p5, p0, Lg5/ta;->g:Ljava/util/Map;

    invoke-interface {p5, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lg5/ta;->b:Z

    iput-object p3, p0, Lg5/ta;->c:Lb5/z4;

    return-void
.end method

.method public synthetic constructor <init>(Lg5/za;Ljava/lang/String;Lg5/sa;)V
    .locals 0

    iput-object p1, p0, Lg5/ta;->h:Lg5/za;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg5/ta;->a:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg5/ta;->b:Z

    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Lg5/ta;->d:Ljava/util/BitSet;

    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Lg5/ta;->e:Ljava/util/BitSet;

    new-instance p1, Lp/a;

    invoke-direct {p1}, Lp/a;-><init>()V

    iput-object p1, p0, Lg5/ta;->f:Ljava/util/Map;

    new-instance p1, Lp/a;

    invoke-direct {p1}, Lp/a;-><init>()V

    iput-object p1, p0, Lg5/ta;->g:Ljava/util/Map;

    return-void
.end method

.method public static bridge synthetic b(Lg5/ta;)Ljava/util/BitSet;
    .locals 0

    iget-object p0, p0, Lg5/ta;->d:Ljava/util/BitSet;

    return-object p0
.end method


# virtual methods
.method public final a(I)Lb5/f4;
    .locals 6

    invoke-static {}, Lb5/f4;->t()Lb5/e4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb5/e4;->t(I)Lb5/e4;

    iget-boolean p1, p0, Lg5/ta;->b:Z

    invoke-virtual {v0, p1}, Lb5/e4;->v(Z)Lb5/e4;

    iget-object p1, p0, Lg5/ta;->c:Lb5/z4;

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lb5/e4;->x(Lb5/z4;)Lb5/e4;

    :cond_0
    invoke-static {}, Lb5/z4;->x()Lb5/y4;

    move-result-object p1

    iget-object v1, p0, Lg5/ta;->d:Ljava/util/BitSet;

    invoke-static {v1}, Lg5/da;->E(Ljava/util/BitSet;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lb5/y4;->u(Ljava/lang/Iterable;)Lb5/y4;

    iget-object v1, p0, Lg5/ta;->e:Ljava/util/BitSet;

    invoke-static {v1}, Lg5/da;->E(Ljava/util/BitSet;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lb5/y4;->x(Ljava/lang/Iterable;)Lb5/y4;

    iget-object v1, p0, Lg5/ta;->f:Ljava/util/Map;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lg5/ta;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lg5/ta;->f:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_2

    invoke-static {}, Lb5/h4;->u()Lb5/g4;

    move-result-object v5

    invoke-virtual {v5, v3}, Lb5/g4;->u(I)Lb5/g4;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Lb5/g4;->t(J)Lb5/g4;

    invoke-virtual {v5}, Lb5/u8;->i()Lb5/x8;

    move-result-object v3

    check-cast v3, Lb5/h4;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {p1, v1}, Lb5/y4;->t(Ljava/lang/Iterable;)Lb5/y4;

    :cond_4
    iget-object v1, p0, Lg5/ta;->g:Ljava/util/Map;

    if-nez v1, :cond_5

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_3

    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lg5/ta;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-static {}, Lb5/b5;->v()Lb5/a5;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lb5/a5;->u(I)Lb5/a5;

    iget-object v5, p0, Lg5/ta;->g:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_6

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v4, v3}, Lb5/a5;->t(Ljava/lang/Iterable;)Lb5/a5;

    :cond_6
    invoke-virtual {v4}, Lb5/u8;->i()Lb5/x8;

    move-result-object v3

    check-cast v3, Lb5/b5;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    move-object v1, v2

    :goto_3
    invoke-virtual {p1, v1}, Lb5/y4;->v(Ljava/lang/Iterable;)Lb5/y4;

    invoke-virtual {v0, p1}, Lb5/e4;->u(Lb5/y4;)Lb5/e4;

    invoke-virtual {v0}, Lb5/u8;->i()Lb5/x8;

    move-result-object p1

    check-cast p1, Lb5/f4;

    return-object p1
.end method

.method public final c(Lg5/xa;)V
    .locals 9

    invoke-virtual {p1}, Lg5/xa;->a()I

    move-result v0

    iget-object v1, p1, Lg5/xa;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lg5/ta;->e:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Ljava/util/BitSet;->set(IZ)V

    :cond_0
    iget-object v1, p1, Lg5/xa;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lg5/ta;->d:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Ljava/util/BitSet;->set(IZ)V

    :cond_1
    iget-object v1, p1, Lg5/xa;->e:Ljava/lang/Long;

    const-wide/16 v2, 0x3e8

    if-eqz v1, :cond_3

    iget-object v1, p0, Lg5/ta;->f:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iget-object v5, p1, Lg5/xa;->e:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    div-long/2addr v5, v2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v1, v5, v7

    if-lez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lg5/ta;->f:Ljava/util/Map;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, p1, Lg5/xa;->f:Ljava/lang/Long;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lg5/ta;->g:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lg5/ta;->g:Ljava/util/Map;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {p1}, Lg5/xa;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_5
    invoke-static {}, Lb5/id;->b()Z

    iget-object v0, p0, Lg5/ta;->h:Lg5/za;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->u()Lg5/g;

    move-result-object v0

    iget-object v4, p0, Lg5/ta;->a:Ljava/lang/String;

    sget-object v5, Lg5/c3;->a0:Lg5/b3;

    invoke-virtual {v0, v4, v5}, Lg5/g;->w(Ljava/lang/String;Lg5/b3;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lg5/xa;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_6
    invoke-static {}, Lb5/id;->b()Z

    iget-object v0, p0, Lg5/ta;->h:Lg5/za;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->u()Lg5/g;

    move-result-object v0

    iget-object v4, p0, Lg5/ta;->a:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lg5/g;->w(Ljava/lang/String;Lg5/b3;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p1, Lg5/xa;->f:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    div-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_7
    iget-object p1, p1, Lg5/xa;->f:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    div-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    return-void
.end method
