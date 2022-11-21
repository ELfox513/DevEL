.class public Lz1/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz1/u$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz1/h;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lw1/a0;

.field public final synthetic b:Lz1/h;


# direct methods
.method public constructor <init>(Lz1/h;Lw1/a0;)V
    .locals 0

    iput-object p1, p0, Lz1/h$a;->b:Lz1/h;

    iput-object p2, p0, Lz1/h$a;->a:Lw1/a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lz1/n;)V
    .locals 0

    return-void
.end method

.method public b(Lz1/l;)V
    .locals 7

    invoke-virtual {p1}, Lz1/l;->o()Lw1/h;

    move-result-object v0

    invoke-virtual {v0}, Lw1/h;->i()Lw1/t;

    move-result-object v0

    invoke-virtual {p1}, Lz1/l;->u()Lw1/r;

    move-result-object v1

    iget-object v2, p0, Lz1/h$a;->b:Lz1/h;

    invoke-static {v2, p1}, Lz1/h;->a(Lz1/h;Lz1/l;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Lb2/f;->size()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lw1/t;->b()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_3

    invoke-virtual {v1, v5}, Lw1/r;->A(I)Lw1/q;

    move-result-object v2

    invoke-static {v2}, Lz1/h;->b(Lw1/q;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lz1/h$a;->b:Lz1/h;

    invoke-virtual {v1}, Lw1/r;->L()Lw1/r;

    move-result-object v1

    invoke-virtual {v0}, Lw1/t;->d()I

    move-result v0

    invoke-static {v0}, Lw1/p;->a(I)I

    move-result v0

    invoke-static {v2, p1, v1, v0, v3}, Lz1/h;->c(Lz1/h;Lz1/l;Lw1/r;ILx1/a;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v4}, Lw1/r;->A(I)Lw1/q;

    move-result-object v2

    invoke-static {v2}, Lz1/h;->b(Lw1/q;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lz1/h$a;->b:Lz1/h;

    invoke-virtual {v1}, Lw1/r;->M()Lw1/r;

    move-result-object v1

    invoke-virtual {v0}, Lw1/t;->d()I

    move-result v0

    invoke-static {v2, p1, v1, v0, v3}, Lz1/h;->c(Lz1/h;Lz1/l;Lw1/r;ILx1/a;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lz1/h$a;->a:Lw1/a0;

    invoke-virtual {v1, v5}, Lw1/r;->A(I)Lw1/q;

    move-result-object v3

    invoke-virtual {v1, v4}, Lw1/r;->A(I)Lw1/q;

    move-result-object v6

    invoke-interface {v2, v0, v3, v6}, Lw1/a0;->c(Lw1/t;Lw1/q;Lw1/q;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lz1/l;->Q()V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lw1/t;->h()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lz1/h$a;->a:Lw1/a0;

    invoke-virtual {v1, v4}, Lw1/r;->A(I)Lw1/q;

    move-result-object v3

    invoke-virtual {v1, v5}, Lw1/r;->A(I)Lw1/q;

    move-result-object v6

    invoke-interface {v2, v0, v3, v6}, Lw1/a0;->c(Lw1/t;Lw1/q;Lw1/q;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v1, v4}, Lw1/r;->A(I)Lw1/q;

    move-result-object v0

    invoke-virtual {v1, v5}, Lw1/r;->A(I)Lw1/q;

    move-result-object v1

    invoke-static {v0, v1}, Lw1/r;->E(Lw1/q;Lw1/q;)Lw1/r;

    move-result-object v0

    invoke-virtual {p1, v0}, Lz1/l;->P(Lw1/r;)V

    invoke-virtual {p1}, Lz1/l;->Q()V

    :cond_5
    :goto_0
    return-void
.end method

.method public c(Lz1/l;)V
    .locals 0

    return-void
.end method
