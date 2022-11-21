.class public Ln1/u$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln1/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation


# instance fields
.field public final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/BitSet;

.field public c:I

.field public d:I

.field public final e:Ln1/u$f;

.field public final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb2/j;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic g:Ln1/u;


# direct methods
.method public constructor <init>(Ln1/u;Ln1/u$f;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln1/u$f;",
            "Ljava/util/ArrayList<",
            "Lb2/j;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ln1/u$h;->g:Ln1/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ln1/u$h;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/BitSet;

    invoke-static {p1}, Ln1/u;->b(Ln1/u;)I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Ln1/u$h;->b:Ljava/util/BitSet;

    iput-object p2, p0, Ln1/u$h;->e:Ln1/u$f;

    iput-object p3, p0, Ln1/u$h;->f:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 8

    iget-object v0, p0, Ln1/u$h;->g:Ln1/u;

    invoke-static {v0, p1}, Ln1/u;->f(Ln1/u;I)Lw1/b;

    move-result-object v0

    invoke-virtual {v0}, Lw1/b;->h()Lb2/j;

    move-result-object v1

    iget-object v2, p0, Ln1/u$h;->g:Ln1/u;

    invoke-static {v2, v0}, Ln1/u;->h(Ln1/u;Lw1/b;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v2, :cond_0

    invoke-virtual {v1, v3}, Lb2/j;->B(I)I

    move-result p1

    invoke-virtual {p0, p1}, Ln1/u$h;->d(I)I

    move-result p1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lb2/j;->B(I)I

    move-result v1

    invoke-static {p1, v1}, Lb2/j;->H(II)Lb2/j;

    move-result-object p1

    goto :goto_1

    :cond_0
    iget-object v2, p0, Ln1/u$h;->g:Ln1/u;

    invoke-static {v2, p1}, Ln1/u;->k(Ln1/u;I)Ln1/u$g;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p1}, Ln1/u$g;->a(Ln1/u$g;)I

    move-result v1

    iget v2, p0, Ln1/u$h;->c:I

    if-ne v1, v2, :cond_1

    iget p1, p0, Ln1/u$h;->d:I

    invoke-static {p1}, Lb2/j;->F(I)Lb2/j;

    move-result-object p1

    iget v4, p0, Ln1/u$h;->d:I

    goto :goto_1

    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ret instruction returns to label "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ln1/u$g;->a(Ln1/u$g;)I

    move-result p1

    invoke-static {p1}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " expected: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Ln1/u$h;->c:I

    invoke-static {p1}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    invoke-virtual {v0}, Lw1/b;->f()I

    move-result p1

    invoke-virtual {v1}, Lb2/j;->size()I

    move-result v2

    new-instance v5, Lb2/j;

    invoke-direct {v5, v2}, Lb2/j;-><init>(I)V

    :goto_0
    if-ge v3, v2, :cond_4

    invoke-virtual {v1, v3}, Lb2/j;->B(I)I

    move-result v6

    invoke-virtual {p0, v6}, Ln1/u$h;->d(I)I

    move-result v7

    invoke-virtual {v5, v7}, Lb2/j;->x(I)V

    if-ne p1, v6, :cond_3

    move v4, v7

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v5}, Lb2/o;->setImmutable()V

    move-object p1, v5

    :goto_1
    iget-object v1, p0, Ln1/u$h;->g:Ln1/u;

    new-instance v2, Lw1/b;

    invoke-virtual {v0}, Lw1/b;->d()Lw1/i;

    move-result-object v0

    invoke-static {v1, v0}, Ln1/u;->c(Ln1/u;Lw1/i;)Lw1/i;

    move-result-object v0

    invoke-direct {v2, p2, v0, p1, v4}, Lw1/b;-><init>(ILw1/i;Lb2/j;I)V

    iget-object p1, p0, Ln1/u$h;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb2/j;

    invoke-static {v1, v2, p1}, Ln1/u;->d(Ln1/u;Lw1/b;Lb2/j;)V

    return-void
.end method

.method public b(Lw1/b;)V
    .locals 7

    invoke-virtual {p1}, Lw1/b;->h()Lb2/j;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb2/j;->B(I)I

    move-result v0

    iput v0, p0, Ln1/u$h;->d:I

    invoke-virtual {p1}, Lw1/b;->h()Lb2/j;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lb2/j;->B(I)I

    move-result v0

    iput v0, p0, Ln1/u$h;->c:I

    invoke-virtual {p0, v0}, Ln1/u$h;->d(I)I

    move-result v0

    iget-object v2, p0, Ln1/u$h;->b:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    :goto_0
    if-ltz v2, :cond_1

    iget-object v3, p0, Ln1/u$h;->b:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->clear(I)V

    iget-object v3, p0, Ln1/u$h;->a:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ln1/u$h;->a(II)V

    iget-object v4, p0, Ln1/u$h;->g:Ln1/u;

    invoke-static {v4, v2}, Ln1/u;->f(Ln1/u;I)Lw1/b;

    move-result-object v2

    invoke-static {v4, v2}, Ln1/u;->h(Ln1/u;Lw1/b;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ln1/u$h;

    iget-object v4, p0, Ln1/u$h;->g:Ln1/u;

    iget-object v5, p0, Ln1/u$h;->e:Ln1/u$f;

    iget-object v6, p0, Ln1/u$h;->f:Ljava/util/ArrayList;

    invoke-direct {v2, v4, v5, v6}, Ln1/u$h;-><init>(Ln1/u;Ln1/u$f;Ljava/util/ArrayList;)V

    iget-object v4, p0, Ln1/u$h;->g:Ln1/u;

    invoke-static {v4, v3}, Ln1/u;->f(Ln1/u;I)Lw1/b;

    move-result-object v3

    invoke-virtual {v2, v3}, Ln1/u$h;->b(Lw1/b;)V

    :cond_0
    iget-object v2, p0, Ln1/u$h;->b:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ln1/u$h;->g:Ln1/u;

    new-instance v2, Lw1/b;

    invoke-virtual {p1}, Lw1/b;->a()I

    move-result v3

    invoke-virtual {p1}, Lw1/b;->d()Lw1/i;

    move-result-object v4

    invoke-static {v0}, Lb2/j;->F(I)Lb2/j;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v0}, Lw1/b;-><init>(ILw1/i;Lb2/j;I)V

    iget-object v0, p0, Ln1/u$h;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lw1/b;->a()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb2/j;

    invoke-static {v1, v2, p1}, Ln1/u;->j(Ln1/u;Lw1/b;Lb2/j;)Z

    return-void
.end method

.method public final c(II)Z
    .locals 1

    iget-object v0, p0, Ln1/u$h;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb2/j;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lb2/j;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lb2/j;->O()I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final d(I)I
    .locals 4

    iget-object v0, p0, Ln1/u$h;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_0
    iget v0, p0, Ln1/u$h;->c:I

    invoke-virtual {p0, p1, v0}, Ln1/u$h;->c(II)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Ln1/u$h;->e:Ln1/u$f;

    invoke-virtual {v0}, Ln1/u$f;->a()I

    move-result v0

    iget-object v1, p0, Ln1/u$h;->b:Ljava/util/BitSet;

    invoke-virtual {v1, p1}, Ljava/util/BitSet;->set(I)V

    iget-object v1, p0, Ln1/u$h;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v1, p0, Ln1/u$h;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v0, :cond_2

    iget-object v1, p0, Ln1/u$h;->f:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Ln1/u$h;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move p1, v0

    :goto_1
    return p1
.end method
