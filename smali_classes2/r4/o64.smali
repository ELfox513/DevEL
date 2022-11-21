.class public final Lr4/o64;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lr4/e5;",
            ">;"
        }
    .end annotation
.end field

.field public final b:[Lr4/d14;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lr4/e5;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/o64;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lr4/d14;

    iput-object p1, p0, Lr4/o64;->b:[Lr4/d14;

    return-void
.end method


# virtual methods
.method public final a(Lr4/d04;Lr4/z64;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lr4/o64;->b:[Lr4/d14;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p2}, Lr4/z64;->a()V

    invoke-virtual {p2}, Lr4/z64;->b()I

    move-result v2

    const/4 v3, 0x3

    invoke-interface {p1, v2, v3}, Lr4/d04;->r(II)Lr4/d14;

    move-result-object v2

    iget-object v3, p0, Lr4/o64;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr4/e5;

    iget-object v4, v3, Lr4/e5;->l:Ljava/lang/String;

    const-string v5, "application/cea-608"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_1

    const-string v5, "application/cea-708"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :cond_1
    :goto_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "Invalid closed caption mime type provided: "

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {v6, v5}, Lr4/ja;->b(ZLjava/lang/Object;)V

    iget-object v5, v3, Lr4/e5;->a:Ljava/lang/String;

    if-nez v5, :cond_3

    invoke-virtual {p2}, Lr4/z64;->c()Ljava/lang/String;

    move-result-object v5

    :cond_3
    new-instance v6, Lr4/c5;

    invoke-direct {v6}, Lr4/c5;-><init>()V

    invoke-virtual {v6, v5}, Lr4/c5;->d(Ljava/lang/String;)Lr4/c5;

    invoke-virtual {v6, v4}, Lr4/c5;->n(Ljava/lang/String;)Lr4/c5;

    iget v4, v3, Lr4/e5;->d:I

    invoke-virtual {v6, v4}, Lr4/c5;->h(I)Lr4/c5;

    iget-object v4, v3, Lr4/e5;->c:Ljava/lang/String;

    invoke-virtual {v6, v4}, Lr4/c5;->g(Ljava/lang/String;)Lr4/c5;

    iget v4, v3, Lr4/e5;->D:I

    invoke-virtual {v6, v4}, Lr4/c5;->G(I)Lr4/c5;

    iget-object v3, v3, Lr4/e5;->n:Ljava/util/List;

    invoke-virtual {v6, v3}, Lr4/c5;->p(Ljava/util/List;)Lr4/c5;

    invoke-virtual {v6}, Lr4/c5;->I()Lr4/e5;

    move-result-object v3

    invoke-interface {v2, v3}, Lr4/d14;->f(Lr4/e5;)V

    iget-object v3, p0, Lr4/o64;->b:[Lr4/d14;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final b(JLr4/xb;)V
    .locals 1

    iget-object v0, p0, Lr4/o64;->b:[Lr4/d14;

    invoke-static {p1, p2, p3, v0}, Lr4/sz3;->a(JLr4/xb;[Lr4/d14;)V

    return-void
.end method
