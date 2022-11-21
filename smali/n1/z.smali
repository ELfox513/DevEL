.class public Ln1/z;
.super Ln1/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ly1/a;)V
    .locals 0

    invoke-direct {p0, p1}, Ln1/a;-><init>(Ly1/a;)V

    return-void
.end method


# virtual methods
.method public j(Ln1/l;II)V
    .locals 2

    if-eqz p3, :cond_6

    const/16 v0, 0x14

    if-eq p3, v0, :cond_5

    const/16 v0, 0x15

    const/4 v1, 0x0

    if-eq p3, v0, :cond_4

    const/16 v0, 0xab

    if-eq p3, v0, :cond_6

    const/16 v0, 0xac

    if-eq p3, v0, :cond_6

    sparse-switch p3, :sswitch_data_0

    packed-switch p3, :pswitch_data_0

    packed-switch p3, :pswitch_data_1

    packed-switch p3, :pswitch_data_2

    packed-switch p3, :pswitch_data_3

    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "shouldn\'t happen: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lb2/g;->f(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    sget-object p2, Ly1/c;->y:Ly1/c;

    invoke-virtual {p0, p2}, Ln1/a;->F(Ly1/d;)V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p0}, Ln1/a;->w()Lx1/a;

    move-result-object p2

    check-cast p2, Lx1/e0;

    invoke-virtual {p2}, Lx1/e0;->x()Ly1/c;

    move-result-object p2

    invoke-virtual {p2}, Ly1/c;->j()Ly1/c;

    move-result-object p2

    invoke-virtual {p0, p2}, Ln1/a;->F(Ly1/d;)V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p0}, Ln1/a;->w()Lx1/a;

    move-result-object p2

    check-cast p2, Lx1/e0;

    invoke-virtual {p2}, Lx1/e0;->x()Ly1/c;

    move-result-object p2

    invoke-virtual {p0, p2}, Ln1/a;->F(Ly1/d;)V

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p0}, Ln1/a;->w()Lx1/a;

    move-result-object p3

    check-cast p3, Lx1/e0;

    invoke-virtual {p3}, Lx1/e0;->x()Ly1/c;

    move-result-object p3

    invoke-virtual {p3, p2}, Ly1/c;->c(I)Ly1/c;

    move-result-object p2

    invoke-virtual {p0, p2}, Ln1/a;->F(Ly1/d;)V

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p0}, Ln1/a;->w()Lx1/a;

    move-result-object p2

    check-cast p2, Lx1/j;

    invoke-virtual {p2}, Lx1/j;->x()Ly1/c;

    move-result-object p2

    sget-object p3, Ly1/c;->B:Ly1/c;

    if-ne p2, p3, :cond_0

    invoke-virtual {p0}, Ln1/a;->u()V

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0, p2}, Ln1/a;->F(Ly1/d;)V

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {p0, v1}, Ln1/a;->s(I)Ly1/d;

    move-result-object p2

    invoke-interface {p2}, Ly1/d;->getType()Ly1/c;

    move-result-object p2

    invoke-virtual {p2}, Ly1/c;->O()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p1, p2}, Ln1/l;->i(Ly1/c;)V

    :cond_1
    invoke-virtual {p0}, Ln1/a;->w()Lx1/a;

    move-result-object p2

    check-cast p2, Ly1/d;

    invoke-interface {p2}, Ly1/d;->getType()Ly1/c;

    move-result-object p2

    sget-object p3, Ly1/c;->B:Ly1/c;

    if-ne p2, p3, :cond_2

    invoke-virtual {p0}, Ln1/a;->u()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p2}, Ln1/a;->F(Ly1/d;)V

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0}, Ln1/a;->w()Lx1/a;

    move-result-object p2

    check-cast p2, Ly1/d;

    invoke-interface {p2}, Ly1/d;->getType()Ly1/c;

    move-result-object p2

    sget-object p3, Ly1/c;->B:Ly1/c;

    if-ne p2, p3, :cond_3

    invoke-virtual {p0}, Ln1/a;->u()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p2}, Ln1/a;->F(Ly1/d;)V

    goto :goto_1

    :pswitch_7
    new-instance p2, Ln1/t;

    invoke-virtual {p0}, Ln1/a;->y()I

    move-result p3

    invoke-direct {p2, p3}, Ln1/t;-><init>(I)V

    invoke-virtual {p0, p2}, Ln1/a;->F(Ly1/d;)V

    goto :goto_1

    :pswitch_8
    invoke-virtual {p0}, Ln1/a;->u()V

    invoke-virtual {p0}, Ln1/a;->x()I

    move-result p2

    :goto_0
    if-eqz p2, :cond_7

    and-int/lit8 p3, p2, 0xf

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p0, p3}, Ln1/a;->s(I)Ly1/d;

    move-result-object p3

    invoke-virtual {p0, p3}, Ln1/a;->r(Ly1/d;)V

    shr-int/lit8 p2, p2, 0x4

    goto :goto_0

    :pswitch_9
    :sswitch_0
    invoke-virtual {p0}, Ln1/a;->z()Ly1/c;

    move-result-object p2

    invoke-virtual {p0, p2}, Ln1/a;->F(Ly1/d;)V

    goto :goto_1

    :cond_4
    :sswitch_1
    invoke-virtual {p0, v1}, Ln1/a;->s(I)Ly1/d;

    move-result-object p2

    invoke-virtual {p0, p2}, Ln1/a;->F(Ly1/d;)V

    goto :goto_1

    :cond_5
    :sswitch_2
    invoke-virtual {p0}, Ln1/a;->w()Lx1/a;

    move-result-object p2

    check-cast p2, Ly1/d;

    invoke-virtual {p0, p2}, Ln1/a;->F(Ly1/d;)V

    goto :goto_1

    :cond_6
    :pswitch_a
    :sswitch_3
    invoke-virtual {p0}, Ln1/a;->u()V

    :cond_7
    :goto_1
    invoke-virtual {p0, p1}, Ln1/a;->G(Ln1/l;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x12 -> :sswitch_2
        0x2e -> :sswitch_0
        0x36 -> :sswitch_1
        0x4f -> :sswitch_3
        0x64 -> :sswitch_0
        0x68 -> :sswitch_0
        0x6c -> :sswitch_0
        0x70 -> :sswitch_0
        0x74 -> :sswitch_0
        0x78 -> :sswitch_0
        0x7a -> :sswitch_0
        0x7c -> :sswitch_0
        0x7e -> :sswitch_0
        0x80 -> :sswitch_0
        0x82 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x57
        :pswitch_a
        :pswitch_a
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x84
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_7
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xb1
        :pswitch_a
        :pswitch_6
        :pswitch_a
        :pswitch_6
        :pswitch_a
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_9
        :pswitch_a
        :pswitch_2
        :pswitch_0
        :pswitch_a
        :pswitch_a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xc5
        :pswitch_2
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method
