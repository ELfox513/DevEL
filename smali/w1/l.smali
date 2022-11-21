.class public final Lw1/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lw1/u;

.field public final b:Lw1/c;

.field public final c:Lw1/m;

.field public final d:[I


# direct methods
.method public constructor <init>(Lw1/u;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lw1/u;->b()Lw1/c;

    move-result-object v0

    invoke-virtual {v0}, Lb2/m;->z()I

    move-result v1

    iput-object p1, p0, Lw1/l;->a:Lw1/u;

    iput-object v0, p0, Lw1/l;->b:Lw1/c;

    new-instance v0, Lw1/m;

    invoke-direct {v0, p1}, Lw1/m;-><init>(Lw1/u;)V

    iput-object v0, p0, Lw1/l;->c:Lw1/m;

    invoke-static {v1}, Lb2/c;->i(I)[I

    move-result-object p1

    iput-object p1, p0, Lw1/l;->d:[I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "method == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static b(Lw1/u;)Lw1/m;
    .locals 1

    new-instance v0, Lw1/l;

    invoke-direct {v0, p0}, Lw1/l;-><init>(Lw1/u;)V

    invoke-virtual {v0}, Lw1/l;->a()Lw1/m;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lw1/m;
    .locals 2

    iget-object v0, p0, Lw1/l;->a:Lw1/u;

    invoke-virtual {v0}, Lw1/u;->c()I

    move-result v0

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lw1/l;->d:[I

    invoke-static {v1, v0}, Lb2/c;->c([II)V

    invoke-virtual {p0, v0}, Lw1/l;->c(I)V

    iget-object v0, p0, Lw1/l;->d:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lb2/c;->e([II)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lw1/l;->c:Lw1/m;

    invoke-virtual {v0}, Lb2/o;->setImmutable()V

    iget-object v0, p0, Lw1/l;->c:Lw1/m;

    return-object v0
.end method

.method public final c(I)V
    .locals 13

    iget-object v0, p0, Lw1/l;->c:Lw1/m;

    invoke-virtual {v0, p1}, Lw1/m;->F(I)Lw1/s;

    move-result-object v0

    iget-object v1, p0, Lw1/l;->b:Lw1/c;

    invoke-virtual {v1, p1}, Lw1/c;->L(I)Lw1/b;

    move-result-object p1

    invoke-virtual {p1}, Lw1/b;->d()Lw1/i;

    move-result-object v1

    invoke-virtual {v1}, Lb2/f;->size()I

    move-result v2

    invoke-virtual {p1}, Lw1/b;->i()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lw1/i;->B()Lw1/h;

    move-result-object v3

    invoke-virtual {v3}, Lw1/h;->k()Lw1/q;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v5, v2, -0x1

    move-object v7, v0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_5

    if-eqz v3, :cond_1

    if-ne v6, v5, :cond_1

    invoke-virtual {v7}, Lb2/o;->setImmutable()V

    invoke-virtual {v7}, Lw1/s;->E()Lw1/s;

    move-result-object v7

    :cond_1
    invoke-virtual {v1, v6}, Lw1/i;->A(I)Lw1/h;

    move-result-object v8

    invoke-virtual {v8}, Lw1/h;->h()Lw1/q;

    move-result-object v9

    if-nez v9, :cond_2

    invoke-virtual {v8}, Lw1/h;->k()Lw1/q;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lw1/q;->B()I

    move-result v9

    invoke-virtual {v7, v9}, Lw1/s;->z(I)Lw1/q;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v8}, Lw1/q;->B()I

    move-result v8

    invoke-virtual {v7, v8}, Lw1/s;->z(I)Lw1/q;

    move-result-object v8

    invoke-virtual {v7, v8}, Lw1/s;->I(Lw1/q;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v9}, Lw1/q;->T()Lw1/q;

    move-result-object v9

    invoke-virtual {v7, v9}, Lw1/s;->A(Lw1/q;)Lw1/q;

    move-result-object v10

    invoke-virtual {v9, v10}, Lw1/q;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual {v9}, Lw1/q;->z()Lw1/k;

    move-result-object v10

    invoke-virtual {v7, v10}, Lw1/s;->D(Lw1/k;)Lw1/q;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Lw1/q;->B()I

    move-result v11

    invoke-virtual {v9}, Lw1/q;->B()I

    move-result v12

    if-eq v11, v12, :cond_3

    invoke-virtual {v7, v10}, Lw1/s;->I(Lw1/q;)V

    :cond_3
    iget-object v10, p0, Lw1/l;->c:Lw1/m;

    invoke-virtual {v10, v8, v9}, Lw1/m;->x(Lw1/h;Lw1/q;)V

    invoke-virtual {v7, v9}, Lw1/s;->F(Lw1/q;)V

    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v7}, Lb2/o;->setImmutable()V

    invoke-virtual {p1}, Lw1/b;->h()Lb2/j;

    move-result-object v1

    invoke-virtual {v1}, Lb2/j;->size()I

    move-result v2

    invoke-virtual {p1}, Lw1/b;->f()I

    move-result p1

    :goto_3
    if-ge v4, v2, :cond_8

    invoke-virtual {v1, v4}, Lb2/j;->B(I)I

    move-result v3

    if-ne v3, p1, :cond_6

    move-object v5, v7

    goto :goto_4

    :cond_6
    move-object v5, v0

    :goto_4
    iget-object v6, p0, Lw1/l;->c:Lw1/m;

    invoke-virtual {v6, v3, v5}, Lw1/m;->E(ILw1/s;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lw1/l;->d:[I

    invoke-static {v5, v3}, Lb2/c;->k([II)V

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    return-void
.end method
