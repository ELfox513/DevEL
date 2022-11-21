.class public La2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lw1/u;

.field public final b:Lw1/c;

.field public final c:Lw1/c;


# direct methods
.method public constructor <init>(Lw1/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/b;->a:Lw1/u;

    invoke-virtual {p1}, Lw1/u;->b()Lw1/c;

    move-result-object p1

    iput-object p1, p0, La2/b;->b:Lw1/c;

    invoke-virtual {p1}, Lw1/c;->J()Lw1/c;

    move-result-object p1

    iput-object p1, p0, La2/b;->c:Lw1/c;

    return-void
.end method

.method public static b(Lw1/b;Lw1/b;)Z
    .locals 0

    invoke-virtual {p0}, Lw1/b;->d()Lw1/i;

    move-result-object p0

    invoke-virtual {p1}, Lw1/b;->d()Lw1/i;

    move-result-object p1

    invoke-virtual {p0, p1}, Lw1/i;->x(Lw1/i;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(ILb2/j;)V
    .locals 9

    invoke-virtual {p2}, Lb2/j;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p2, v2}, Lb2/j;->B(I)I

    move-result v3

    iget-object v4, p0, La2/b;->b:Lw1/c;

    invoke-virtual {v4, v3}, Lw1/c;->L(I)Lw1/b;

    move-result-object v4

    iget-object v5, p0, La2/b;->a:Lw1/u;

    invoke-virtual {v4}, Lw1/b;->a()I

    move-result v4

    invoke-virtual {v5, v4}, Lw1/u;->d(I)Lb2/j;

    move-result-object v4

    invoke-virtual {v4}, Lb2/j;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_0

    iget-object v7, p0, La2/b;->c:Lw1/c;

    invoke-virtual {v4, v6}, Lb2/j;->B(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lw1/c;->L(I)Lw1/b;

    move-result-object v7

    invoke-virtual {p0, v7, v3, p1}, La2/b;->d(Lw1/b;II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c()Lw1/u;
    .locals 15

    iget-object v0, p0, La2/b;->b:Lw1/c;

    invoke-virtual {v0}, Lb2/f;->size()I

    move-result v0

    new-instance v1, Ljava/util/BitSet;

    iget-object v2, p0, La2/b;->b:Lw1/c;

    invoke-virtual {v2}, Lb2/m;->z()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v0, :cond_6

    iget-object v5, p0, La2/b;->b:Lw1/c;

    invoke-virtual {v5, v3}, Lw1/c;->F(I)Lw1/b;

    move-result-object v5

    invoke-virtual {v5}, Lw1/b;->a()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_4

    :cond_0
    iget-object v6, p0, La2/b;->a:Lw1/u;

    invoke-virtual {v5}, Lw1/b;->a()I

    move-result v5

    invoke-virtual {v6, v5}, Lw1/u;->d(I)Lb2/j;

    move-result-object v5

    invoke-virtual {v5}, Lb2/j;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_5

    invoke-virtual {v5, v7}, Lb2/j;->B(I)I

    move-result v8

    iget-object v9, p0, La2/b;->b:Lw1/c;

    invoke-virtual {v9, v8}, Lw1/c;->L(I)Lw1/b;

    move-result-object v9

    invoke-virtual {v1, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual {v9}, Lw1/b;->h()Lb2/j;

    move-result-object v10

    invoke-virtual {v10}, Lb2/j;->size()I

    move-result v10

    if-gt v10, v4, :cond_4

    invoke-virtual {v9}, Lw1/b;->c()Lw1/h;

    move-result-object v10

    invoke-virtual {v10}, Lw1/h;->i()Lw1/t;

    move-result-object v10

    invoke-virtual {v10}, Lw1/t;->d()I

    move-result v10

    const/16 v11, 0x37

    if-ne v10, v11, :cond_1

    goto :goto_3

    :cond_1
    new-instance v10, Lb2/j;

    invoke-direct {v10}, Lb2/j;-><init>()V

    add-int/lit8 v11, v7, 0x1

    :goto_2
    if-ge v11, v6, :cond_3

    invoke-virtual {v5, v11}, Lb2/j;->B(I)I

    move-result v12

    iget-object v13, p0, La2/b;->b:Lw1/c;

    invoke-virtual {v13, v12}, Lw1/c;->L(I)Lw1/b;

    move-result-object v13

    invoke-virtual {v13}, Lw1/b;->h()Lb2/j;

    move-result-object v14

    invoke-virtual {v14}, Lb2/j;->size()I

    move-result v14

    if-ne v14, v4, :cond_2

    invoke-static {v9, v13}, La2/b;->b(Lw1/b;Lw1/b;)Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v10, v12}, Lb2/j;->x(I)V

    invoke-virtual {v1, v12}, Ljava/util/BitSet;->set(I)V

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v8, v10}, La2/b;->a(ILb2/j;)V

    :cond_4
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    sub-int/2addr v0, v4

    :goto_5
    if-ltz v0, :cond_8

    iget-object v2, p0, La2/b;->c:Lw1/c;

    invoke-virtual {v2, v0}, Lw1/c;->F(I)Lw1/b;

    move-result-object v2

    invoke-virtual {v2}, Lw1/b;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, La2/b;->c:Lw1/c;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lw1/c;->N(ILw1/b;)V

    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_8
    iget-object v0, p0, La2/b;->c:Lw1/c;

    invoke-virtual {v0}, Lb2/m;->shrinkToFit()V

    iget-object v0, p0, La2/b;->c:Lw1/c;

    invoke-virtual {v0}, Lb2/o;->setImmutable()V

    new-instance v0, Lw1/u;

    iget-object v1, p0, La2/b;->c:Lw1/c;

    iget-object v2, p0, La2/b;->a:Lw1/u;

    invoke-virtual {v2}, Lw1/u;->c()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lw1/u;-><init>(Lw1/c;I)V

    return-object v0
.end method

.method public final d(Lw1/b;II)V
    .locals 3

    invoke-virtual {p1}, Lw1/b;->h()Lb2/j;

    move-result-object v0

    invoke-virtual {v0}, Lb2/j;->I()Lb2/j;

    move-result-object v0

    invoke-virtual {v0, p2}, Lb2/j;->D(I)I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lb2/j;->L(II)V

    invoke-virtual {p1}, Lw1/b;->f()I

    move-result v1

    if-ne v1, p2, :cond_0

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    invoke-virtual {v0}, Lb2/o;->setImmutable()V

    new-instance p2, Lw1/b;

    invoke-virtual {p1}, Lw1/b;->a()I

    move-result v1

    invoke-virtual {p1}, Lw1/b;->d()Lw1/i;

    move-result-object v2

    invoke-direct {p2, v1, v2, v0, p3}, Lw1/b;-><init>(ILw1/i;Lb2/j;I)V

    iget-object p3, p0, La2/b;->c:Lw1/c;

    invoke-virtual {p1}, Lw1/b;->a()I

    move-result p1

    invoke-virtual {p3, p1}, Lb2/m;->A(I)I

    move-result p1

    invoke-virtual {p3, p1, p2}, Lw1/c;->N(ILw1/b;)V

    return-void
.end method
