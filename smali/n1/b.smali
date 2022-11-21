.class public final Ln1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln1/i$c;


# instance fields
.field public final a:Ln1/j;

.field public final b:[I

.field public final c:[I

.field public final d:[I

.field public final e:[Lb2/j;

.field public final f:[Ln1/g;

.field public g:I


# direct methods
.method public constructor <init>(Ln1/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Ln1/b;->a:Ln1/j;

    invoke-virtual {p1}, Ln1/j;->g()Ln1/i;

    move-result-object p1

    invoke-virtual {p1}, Ln1/i;->j()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lb2/c;->i(I)[I

    move-result-object v0

    iput-object v0, p0, Ln1/b;->b:[I

    invoke-static {p1}, Lb2/c;->i(I)[I

    move-result-object v0

    iput-object v0, p0, Ln1/b;->c:[I

    invoke-static {p1}, Lb2/c;->i(I)[I

    move-result-object v0

    iput-object v0, p0, Ln1/b;->d:[I

    new-array v0, p1, [Lb2/j;

    iput-object v0, p0, Ln1/b;->e:[Lb2/j;

    new-array p1, p1, [Ln1/g;

    iput-object p1, p0, Ln1/b;->f:[Ln1/g;

    const/4 p1, -0x1

    iput p1, p0, Ln1/b;->g:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "method == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static m(Ln1/j;)Ln1/f;
    .locals 1

    new-instance v0, Ln1/b;

    invoke-direct {v0, p0}, Ln1/b;-><init>(Ln1/j;)V

    invoke-virtual {v0}, Ln1/b;->k()V

    invoke-virtual {v0}, Ln1/b;->l()Ln1/f;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(IIIILy1/c;I)V
    .locals 0

    const/16 p4, 0xa9

    if-ne p1, p4, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p3, p1}, Ln1/b;->n(IIZ)V

    iget-object p1, p0, Ln1/b;->e:[Lb2/j;

    sget-object p3, Lb2/j;->k:Lb2/j;

    aput-object p3, p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p2, p3, p1}, Ln1/b;->n(IIZ)V

    :goto_0
    return-void
.end method

.method public b(IIILy1/c;)V
    .locals 2

    const/16 v0, 0x6c

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0x70

    if-eq p1, v0, :cond_3

    const/16 p4, 0xac

    const/4 v0, 0x0

    if-eq p1, p4, :cond_2

    const/16 p4, 0xb1

    if-eq p1, p4, :cond_2

    const/16 p4, 0xbe

    if-eq p1, p4, :cond_1

    const/16 p4, 0xbf

    if-eq p1, p4, :cond_0

    const/16 p4, 0xc2

    if-eq p1, p4, :cond_1

    const/16 p4, 0xc3

    if-eq p1, p4, :cond_1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    invoke-virtual {p0, p2, p3, v1}, Ln1/b;->n(IIZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2, p3, v0}, Ln1/b;->n(IIZ)V

    invoke-virtual {p0, p2, p3, v0}, Ln1/b;->o(IIZ)V

    goto :goto_0

    :cond_1
    :pswitch_0
    invoke-virtual {p0, p2, p3, v1}, Ln1/b;->n(IIZ)V

    invoke-virtual {p0, p2, p3, v1}, Ln1/b;->o(IIZ)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2, p3, v0}, Ln1/b;->n(IIZ)V

    iget-object p1, p0, Ln1/b;->e:[Lb2/j;

    sget-object p3, Lb2/j;->k:Lb2/j;

    aput-object p3, p1, p2

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p2, p3, v1}, Ln1/b;->n(IIZ)V

    sget-object p1, Ly1/c;->y:Ly1/c;

    if-eq p4, p1, :cond_4

    sget-object p1, Ly1/c;->z:Ly1/c;

    if-ne p4, p1, :cond_5

    :cond_4
    invoke-virtual {p0, p2, p3, v1}, Ln1/b;->o(IIZ)V

    :cond_5
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public c(IILx1/e0;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lx1/e0;",
            "Ljava/util/ArrayList<",
            "Lx1/a;",
            ">;)V"
        }
    .end annotation

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p2, p3}, Ln1/b;->n(IIZ)V

    invoke-virtual {p0, p1, p2, p3}, Ln1/b;->o(IIZ)V

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Ln1/b;->g:I

    return v0
.end method

.method public e(IIII)V
    .locals 2

    const/16 v0, 0xa7

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa8

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2, v1}, Ln1/b;->j(IZ)V

    :goto_0
    add-int p1, p2, p3

    invoke-virtual {p0, p2, p3, v1}, Ln1/b;->n(IIZ)V

    invoke-virtual {p0, p1, v1}, Ln1/b;->j(IZ)V

    iget-object p3, p0, Ln1/b;->e:[Lb2/j;

    invoke-static {p1, p4}, Lb2/j;->H(II)Lb2/j;

    move-result-object p1

    aput-object p1, p3, p2

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p2, p3, p1}, Ln1/b;->n(IIZ)V

    iget-object p1, p0, Ln1/b;->e:[Lb2/j;

    invoke-static {p4}, Lb2/j;->F(I)Lb2/j;

    move-result-object p3

    aput-object p3, p1, p2

    :goto_1
    invoke-virtual {p0, p4, v1}, Ln1/b;->j(IZ)V

    return-void
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Ln1/b;->g:I

    return-void
.end method

.method public g(IIILn1/y;I)V
    .locals 1

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p3, p1}, Ln1/b;->n(IIZ)V

    invoke-virtual {p4}, Ln1/y;->z()I

    move-result p3

    const/4 p5, 0x1

    invoke-virtual {p0, p3, p5}, Ln1/b;->j(IZ)V

    invoke-virtual {p4}, Ln1/y;->size()I

    move-result p3

    :goto_0
    if-ge p1, p3, :cond_0

    invoke-virtual {p4, p1}, Ln1/y;->A(I)I

    move-result v0

    invoke-virtual {p0, v0, p5}, Ln1/b;->j(IZ)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ln1/b;->e:[Lb2/j;

    invoke-virtual {p4}, Ln1/y;->B()Lb2/j;

    move-result-object p3

    aput-object p3, p1, p2

    return-void
.end method

.method public h(III)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p3, p1}, Ln1/b;->n(IIZ)V

    return-void
.end method

.method public i(IIILx1/a;I)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p3, p1}, Ln1/b;->n(IIZ)V

    instance-of p5, p4, Lx1/x;

    if-nez p5, :cond_0

    instance-of p5, p4, Lx1/e0;

    if-nez p5, :cond_0

    instance-of p5, p4, Lx1/d0;

    if-nez p5, :cond_0

    instance-of p5, p4, Lx1/r;

    if-nez p5, :cond_0

    instance-of p5, p4, Lx1/y;

    if-nez p5, :cond_0

    instance-of p4, p4, Lx1/b0;

    if-eqz p4, :cond_1

    :cond_0
    invoke-virtual {p0, p2, p3, p1}, Ln1/b;->o(IIZ)V

    :cond_1
    return-void
.end method

.method public final j(IZ)V
    .locals 1

    iget-object v0, p0, Ln1/b;->c:[I

    invoke-static {v0, p1}, Lb2/c;->f([II)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ln1/b;->b:[I

    invoke-static {v0, p1}, Lb2/c;->k([II)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object p2, p0, Ln1/b;->d:[I

    invoke-static {p2, p1}, Lb2/c;->k([II)V

    :cond_1
    return-void
.end method

.method public final k()V
    .locals 9

    iget-object v0, p0, Ln1/b;->a:Ln1/j;

    invoke-virtual {v0}, Ln1/j;->g()Ln1/i;

    move-result-object v0

    iget-object v1, p0, Ln1/b;->a:Ln1/j;

    invoke-virtual {v1}, Ln1/j;->f()Ln1/g;

    move-result-object v1

    invoke-virtual {v1}, Lb2/f;->size()I

    move-result v2

    iget-object v3, p0, Ln1/b;->b:[I

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lb2/c;->k([II)V

    iget-object v3, p0, Ln1/b;->d:[I

    invoke-static {v3, v4}, Lb2/c;->k([II)V

    :cond_0
    iget-object v3, p0, Ln1/b;->b:[I

    invoke-static {v3}, Lb2/c;->h([I)Z

    move-result v3

    if-nez v3, :cond_2

    :try_start_0
    iget-object v3, p0, Ln1/b;->b:[I

    invoke-virtual {v0, v3, p0}, Ln1/i;->i([ILn1/i$c;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Ln1/g;->x(I)Ln1/g$a;

    move-result-object v5

    invoke-virtual {v5}, Ln1/g$a;->e()I

    move-result v6

    invoke-virtual {v5}, Ln1/g$a;->b()I

    move-result v7

    iget-object v8, p0, Ln1/b;->c:[I

    invoke-static {v8, v6, v7}, Lb2/c;->a([III)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Ln1/b;->d:[I

    invoke-static {v8, v6}, Lb2/c;->k([II)V

    iget-object v6, p0, Ln1/b;->d:[I

    invoke-static {v6, v7}, Lb2/c;->k([II)V

    invoke-virtual {v5}, Ln1/g$a;->d()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Ln1/b;->j(IZ)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ln1/w;

    const-string v2, "flow of control falls off end of method"

    invoke-direct {v1, v2, v0}, Ln1/w;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    return-void
.end method

.method public final l()Ln1/f;
    .locals 11

    iget-object v0, p0, Ln1/b;->a:Ln1/j;

    invoke-virtual {v0}, Ln1/j;->g()Ln1/i;

    move-result-object v0

    invoke-virtual {v0}, Ln1/i;->j()I

    move-result v0

    new-array v0, v0, [Ln1/e;

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_0
    iget-object v2, p0, Ln1/b;->d:[I

    add-int/lit8 v3, v4, 0x1

    invoke-static {v2, v3}, Lb2/c;->e([II)I

    move-result v9

    if-gez v9, :cond_1

    new-instance v2, Ln1/f;

    invoke-direct {v2, v8}, Ln1/f;-><init>(I)V

    :goto_1
    if-ge v1, v8, :cond_0

    aget-object v3, v0, v1

    invoke-virtual {v2, v1, v3}, Ln1/f;->H(ILn1/e;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    return-object v2

    :cond_1
    iget-object v2, p0, Ln1/b;->c:[I

    invoke-static {v2, v4}, Lb2/c;->f([II)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    add-int/lit8 v3, v9, -0x1

    :goto_2
    if-lt v3, v4, :cond_3

    iget-object v2, p0, Ln1/b;->e:[Lb2/j;

    aget-object v2, v2, v3

    if-eqz v2, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_3
    const/4 v3, -0x1

    :goto_3
    if-nez v2, :cond_4

    invoke-static {v9}, Lb2/j;->F(I)Lb2/j;

    move-result-object v2

    sget-object v3, Ln1/g;->a:Ln1/g;

    goto :goto_4

    :cond_4
    iget-object v5, p0, Ln1/b;->f:[Ln1/g;

    aget-object v3, v5, v3

    if-nez v3, :cond_5

    sget-object v3, Ln1/g;->a:Ln1/g;

    :cond_5
    :goto_4
    move-object v6, v2

    move-object v7, v3

    new-instance v10, Ln1/e;

    move-object v2, v10

    move v3, v4

    move v5, v9

    invoke-direct/range {v2 .. v7}, Ln1/e;-><init>(IIILb2/j;Ln1/g;)V

    aput-object v10, v0, v8

    add-int/lit8 v8, v8, 0x1

    :cond_6
    move v4, v9

    goto :goto_0
.end method

.method public final n(IIZ)V
    .locals 1

    iget-object v0, p0, Ln1/b;->c:[I

    invoke-static {v0, p1}, Lb2/c;->k([II)V

    if-eqz p3, :cond_0

    add-int/2addr p1, p2

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Ln1/b;->j(IZ)V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Ln1/b;->d:[I

    add-int/2addr p1, p2

    invoke-static {p3, p1}, Lb2/c;->k([II)V

    :goto_0
    return-void
.end method

.method public final o(IIZ)V
    .locals 2

    add-int/2addr p2, p1

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Ln1/b;->j(IZ)V

    :cond_0
    iget-object v0, p0, Ln1/b;->a:Ln1/j;

    invoke-virtual {v0}, Ln1/j;->f()Ln1/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Ln1/g;->z(I)Ln1/g;

    move-result-object v0

    iget-object v1, p0, Ln1/b;->f:[Ln1/g;

    aput-object v0, v1, p1

    iget-object v1, p0, Ln1/b;->e:[Lb2/j;

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, -0x1

    :goto_0
    invoke-virtual {v0, p2}, Ln1/g;->D(I)Lb2/j;

    move-result-object p2

    aput-object p2, v1, p1

    return-void
.end method
