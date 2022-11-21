.class public Lz1/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz1/u$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz1/k;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[Lw1/q;

.field public final synthetic b:Ljava/util/HashSet;

.field public final synthetic c:Lz1/k;


# direct methods
.method public constructor <init>(Lz1/k;[Lw1/q;Ljava/util/HashSet;)V
    .locals 0

    iput-object p1, p0, Lz1/k$a;->c:Lz1/k;

    iput-object p2, p0, Lz1/k$a;->a:[Lw1/q;

    iput-object p3, p0, Lz1/k$a;->b:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lz1/n;)V
    .locals 0

    return-void
.end method

.method public b(Lz1/l;)V
    .locals 5

    invoke-virtual {p1}, Lz1/l;->n()Lw1/t;

    move-result-object v0

    invoke-virtual {v0}, Lw1/t;->d()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lz1/k$a;->c:Lz1/k;

    invoke-static {v0, p1}, Lz1/k;->a(Lz1/k;Lz1/l;)I

    move-result v0

    iget-object v1, p0, Lz1/k$a;->a:[Lw1/q;

    aget-object v2, v1, v0

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lz1/u;->t()Lw1/q;

    move-result-object p1

    aput-object p1, v1, v0

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lz1/u;->t()Lw1/q;

    move-result-object v0

    invoke-virtual {v2}, Lw1/q;->z()Lw1/k;

    move-result-object v1

    invoke-virtual {v0}, Lw1/q;->z()Lw1/k;

    move-result-object v3

    if-nez v1, :cond_2

    move-object v1, v3

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Lw1/k;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_0
    iget-object v3, p0, Lz1/k$a;->c:Lz1/k;

    invoke-static {v3}, Lz1/k;->b(Lz1/k;)Lz1/v;

    move-result-object v3

    invoke-virtual {v2}, Lw1/q;->B()I

    move-result v4

    invoke-virtual {v3, v4}, Lz1/v;->n(I)Lz1/u;

    move-result-object v3

    invoke-virtual {v3, v1}, Lz1/u;->I(Lw1/k;)V

    new-instance v1, Lz1/k$a$a;

    invoke-direct {v1, p0, v0, v2}, Lz1/k$a$a;-><init>(Lz1/k$a;Lw1/q;Lw1/q;)V

    iget-object v2, p0, Lz1/k$a;->c:Lz1/k;

    invoke-static {v2}, Lz1/k;->b(Lz1/k;)Lz1/v;

    move-result-object v2

    invoke-virtual {v0}, Lw1/q;->B()I

    move-result v0

    invoke-virtual {v2, v0}, Lz1/v;->w(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz1/u;

    invoke-virtual {v3, v1}, Lz1/u;->F(Lz1/p;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lz1/k$a;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    return-void
.end method

.method public c(Lz1/l;)V
    .locals 0

    return-void
.end method
