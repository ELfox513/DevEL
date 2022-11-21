.class public final Lp1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lp1/f;

.field public final b:Lx1/b;

.field public final c:Lb2/d;

.field public final d:Lq1/j;

.field public final e:Lb2/d$a;

.field public f:I


# direct methods
.method public constructor <init>(Lp1/f;IILq1/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lp1/a;->a:Lp1/f;

    invoke-virtual {p1}, Lp1/f;->f()Lx1/b;

    move-result-object v0

    iput-object v0, p0, Lp1/a;->b:Lx1/b;

    iput-object p4, p0, Lp1/a;->d:Lq1/j;

    invoke-virtual {p1}, Lp1/f;->e()Lb2/d;

    move-result-object p1

    add-int/2addr p3, p2

    invoke-virtual {p1, p2, p3}, Lb2/d;->r(II)Lb2/d;

    move-result-object p1

    iput-object p1, p0, Lp1/a;->c:Lb2/d;

    invoke-virtual {p1}, Lb2/d;->o()Lb2/d$a;

    move-result-object p1

    iput-object p1, p0, Lp1/a;->e:Lb2/d$a;

    const/4 p1, 0x0

    iput p1, p0, Lp1/a;->f:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "cf == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lp1/a;->d:Lq1/j;

    invoke-interface {v0, p1}, Lq1/j;->b(I)V

    return-void
.end method

.method public final b(Lv1/b;)Lv1/a;
    .locals 5

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lp1/a;->l(I)V

    iget-object v0, p0, Lp1/a;->e:Lb2/d$a;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iget-object v1, p0, Lp1/a;->e:Lb2/d$a;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    iget-object v2, p0, Lp1/a;->b:Lx1/b;

    invoke-interface {v2, v0}, Lx1/b;->get(I)Lx1/a;

    move-result-object v0

    check-cast v0, Lx1/d0;

    new-instance v2, Lx1/e0;

    invoke-virtual {v0}, Lx1/d0;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly1/c;->D(Ljava/lang/String;)Ly1/c;

    move-result-object v0

    invoke-direct {v2, v0}, Lx1/e0;-><init>(Ly1/c;)V

    iget-object v0, p0, Lp1/a;->d:Lq1/j;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lx1/e0;->toHuman()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {p0, v3, v0}, Lp1/a;->k(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "num_elements: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lp1/a;->k(ILjava/lang/String;)V

    :cond_0
    new-instance v0, Lv1/a;

    invoke-direct {v0, v2, p1}, Lv1/a;-><init>(Lx1/e0;Lv1/b;)V

    const/4 p1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v3, p0, Lp1/a;->d:Lq1/j;

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "elements["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lp1/a;->k(ILjava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lp1/a;->a(I)V

    :cond_1
    invoke-virtual {p0}, Lp1/a;->g()Lv1/e;

    move-result-object v3

    invoke-virtual {v0, v3}, Lv1/a;->x(Lv1/e;)V

    iget-object v3, p0, Lp1/a;->d:Lq1/j;

    if-eqz v3, :cond_2

    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lp1/a;->a(I)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lb2/o;->setImmutable()V

    return-object v0
.end method

.method public c(Lv1/b;)Lv1/c;
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1}, Lp1/a;->d(Lv1/b;)Lv1/c;

    move-result-object p1

    iget-object v0, p0, Lp1/a;->e:Lb2/d$a;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Lq1/i;

    const-string v0, "extra data in attribute"

    invoke-direct {p1, v0}, Lq1/i;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final d(Lv1/b;)Lv1/c;
    .locals 6

    iget-object v0, p0, Lp1/a;->e:Lb2/d$a;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iget-object v1, p0, Lp1/a;->d:Lq1/j;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "num_annotations: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lp1/a;->k(ILjava/lang/String;)V

    :cond_0
    new-instance v1, Lv1/c;

    invoke-direct {v1}, Lv1/c;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    iget-object v4, p0, Lp1/a;->d:Lq1/j;

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "annotations["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lp1/a;->k(ILjava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lp1/a;->a(I)V

    :cond_1
    invoke-virtual {p0, p1}, Lp1/a;->b(Lv1/b;)Lv1/a;

    move-result-object v4

    invoke-virtual {v1, v4}, Lv1/c;->x(Lv1/a;)V

    iget-object v4, p0, Lp1/a;->d:Lq1/j;

    if-eqz v4, :cond_2

    const/4 v5, -0x1

    invoke-interface {v4, v5}, Lq1/j;->b(I)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lb2/o;->setImmutable()V

    return-object v1
.end method

.method public final e(Lv1/b;)Lv1/d;
    .locals 7

    iget-object v0, p0, Lp1/a;->e:Lb2/d$a;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    iget-object v1, p0, Lp1/a;->d:Lq1/j;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "num_parameters: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lb2/g;->f(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lp1/a;->k(ILjava/lang/String;)V

    :cond_0
    new-instance v1, Lv1/d;

    invoke-direct {v1, v0}, Lv1/d;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_3

    iget-object v5, p0, Lp1/a;->d:Lq1/j;

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parameter_annotations["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lp1/a;->k(ILjava/lang/String;)V

    invoke-virtual {p0, v2}, Lp1/a;->a(I)V

    :cond_1
    invoke-virtual {p0, p1}, Lp1/a;->d(Lv1/b;)Lv1/c;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lv1/d;->A(ILv1/c;)V

    iget-object v5, p0, Lp1/a;->d:Lq1/j;

    if-eqz v5, :cond_2

    const/4 v6, -0x1

    invoke-interface {v5, v6}, Lq1/j;->b(I)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lb2/o;->setImmutable()V

    return-object v1
.end method

.method public final f()Lx1/a;
    .locals 5

    iget-object v0, p0, Lp1/a;->e:Lb2/d$a;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iget-object v1, p0, Lp1/a;->b:Lx1/b;

    invoke-interface {v1, v0}, Lx1/b;->get(I)Lx1/a;

    move-result-object v0

    iget-object v1, p0, Lp1/a;->d:Lq1/j;

    if-eqz v1, :cond_1

    instance-of v1, v0, Lx1/d0;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lx1/d0;

    invoke-virtual {v1}, Lx1/d0;->C()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lb2/r;->toHuman()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "constant_value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lp1/a;->k(ILjava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public final g()Lv1/e;
    .locals 4

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lp1/a;->l(I)V

    iget-object v0, p0, Lp1/a;->e:Lb2/d$a;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iget-object v1, p0, Lp1/a;->b:Lx1/b;

    invoke-interface {v1, v0}, Lx1/b;->get(I)Lx1/a;

    move-result-object v0

    check-cast v0, Lx1/d0;

    iget-object v1, p0, Lp1/a;->d:Lq1/j;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "element_name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lx1/d0;->toHuman()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lp1/a;->k(ILjava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, "value: "

    invoke-virtual {p0, v1, v2}, Lp1/a;->k(ILjava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lp1/a;->a(I)V

    :cond_0
    invoke-virtual {p0}, Lp1/a;->i()Lx1/a;

    move-result-object v1

    iget-object v2, p0, Lp1/a;->d:Lq1/j;

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lp1/a;->a(I)V

    :cond_1
    new-instance v2, Lv1/e;

    invoke-direct {v2, v0, v1}, Lv1/e;-><init>(Lx1/d0;Lx1/a;)V

    return-object v2
.end method

.method public h(Lv1/b;)Lv1/d;
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1}, Lp1/a;->e(Lv1/b;)Lv1/d;

    move-result-object p1

    iget-object v0, p0, Lp1/a;->e:Lb2/d$a;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Lq1/i;

    const-string v0, "extra data in attribute"

    invoke-direct {p1, v0}, Lq1/i;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final i()Lx1/a;
    .locals 7

    iget-object v0, p0, Lp1/a;->e:Lb2/d$a;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    iget-object v1, p0, Lp1/a;->d:Lq1/j;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    new-instance v1, Lx1/d0;

    int-to-char v3, v0

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lx1/d0;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lx1/d0;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lp1/a;->k(ILjava/lang/String;)V

    :cond_0
    const/16 v1, 0x40

    if-eq v0, v1, :cond_10

    const/16 v1, 0x46

    if-eq v0, v1, :cond_f

    const/16 v1, 0x53

    if-eq v0, v1, :cond_e

    const/16 v1, 0x63

    const/4 v3, 0x2

    if-eq v0, v1, :cond_c

    const/16 v1, 0x65

    if-eq v0, v1, :cond_a

    const/16 v1, 0x73

    if-eq v0, v1, :cond_9

    const/16 v1, 0x49

    if-eq v0, v1, :cond_8

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_7

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_6

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    new-instance v1, Lq1/i;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown annotation tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lb2/g;->f(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lq1/i;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-virtual {p0}, Lp1/a;->f()Lx1/a;

    move-result-object v0

    check-cast v0, Lx1/l;

    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lp1/a;->f()Lx1/a;

    move-result-object v0

    check-cast v0, Lx1/p;

    invoke-virtual {v0}, Lx1/p;->B()I

    invoke-virtual {v0}, Lx1/p;->B()I

    move-result v0

    invoke-static {v0}, Lx1/k;->C(I)Lx1/k;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-virtual {p0}, Lp1/a;->f()Lx1/a;

    move-result-object v0

    check-cast v0, Lx1/p;

    invoke-virtual {v0}, Lx1/p;->B()I

    move-result v0

    invoke-static {v0}, Lx1/g;->C(I)Lx1/g;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0, v3}, Lp1/a;->l(I)V

    iget-object v0, p0, Lp1/a;->e:Lb2/d$a;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    new-instance v1, Lx1/d$a;

    invoke-direct {v1, v0}, Lx1/d$a;-><init>(I)V

    iget-object v4, p0, Lp1/a;->d:Lq1/j;

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "num_values: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lp1/a;->k(ILjava/lang/String;)V

    invoke-virtual {p0, v2}, Lp1/a;->a(I)V

    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, -0x1

    if-ge v4, v0, :cond_4

    iget-object v6, p0, Lp1/a;->d:Lq1/j;

    if-eqz v6, :cond_3

    invoke-virtual {p0, v5}, Lp1/a;->a(I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "element_value["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lp1/a;->k(ILjava/lang/String;)V

    invoke-virtual {p0, v2}, Lp1/a;->a(I)V

    :cond_3
    invoke-virtual {p0}, Lp1/a;->i()Lx1/a;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lx1/d$a;->z(ILx1/a;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lp1/a;->d:Lq1/j;

    if-eqz v0, :cond_5

    invoke-virtual {p0, v5}, Lp1/a;->a(I)V

    :cond_5
    invoke-virtual {v1}, Lb2/o;->setImmutable()V

    new-instance v0, Lx1/d;

    invoke-direct {v0, v1}, Lx1/d;-><init>(Lx1/d$a;)V

    return-object v0

    :cond_6
    invoke-virtual {p0}, Lp1/a;->f()Lx1/a;

    move-result-object v0

    check-cast v0, Lx1/p;

    invoke-virtual {v0}, Lx1/p;->B()I

    move-result v0

    invoke-static {v0}, Lx1/f;->C(I)Lx1/f;

    move-result-object v0

    return-object v0

    :cond_7
    invoke-virtual {p0}, Lp1/a;->f()Lx1/a;

    move-result-object v0

    check-cast v0, Lx1/w;

    return-object v0

    :cond_8
    invoke-virtual {p0}, Lp1/a;->f()Lx1/a;

    move-result-object v0

    check-cast v0, Lx1/p;

    return-object v0

    :cond_9
    invoke-virtual {p0}, Lp1/a;->f()Lx1/a;

    move-result-object v0

    return-object v0

    :cond_a
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lp1/a;->l(I)V

    iget-object v0, p0, Lp1/a;->e:Lb2/d$a;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iget-object v1, p0, Lp1/a;->e:Lb2/d$a;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    iget-object v2, p0, Lp1/a;->b:Lx1/b;

    invoke-interface {v2, v0}, Lx1/b;->get(I)Lx1/a;

    move-result-object v0

    check-cast v0, Lx1/d0;

    iget-object v2, p0, Lp1/a;->b:Lx1/b;

    invoke-interface {v2, v1}, Lx1/b;->get(I)Lx1/a;

    move-result-object v1

    check-cast v1, Lx1/d0;

    iget-object v2, p0, Lp1/a;->d:Lq1/j;

    if-eqz v2, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type_name: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lx1/d0;->toHuman()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lp1/a;->k(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "const_name: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lx1/d0;->toHuman()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lp1/a;->k(ILjava/lang/String;)V

    :cond_b
    new-instance v2, Lx1/m;

    new-instance v3, Lx1/a0;

    invoke-direct {v3, v1, v0}, Lx1/a0;-><init>(Lx1/d0;Lx1/d0;)V

    invoke-direct {v2, v3}, Lx1/m;-><init>(Lx1/a0;)V

    return-object v2

    :cond_c
    iget-object v0, p0, Lp1/a;->e:Lb2/d$a;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iget-object v1, p0, Lp1/a;->b:Lx1/b;

    invoke-interface {v1, v0}, Lx1/b;->get(I)Lx1/a;

    move-result-object v0

    check-cast v0, Lx1/d0;

    invoke-virtual {v0}, Lx1/d0;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly1/c;->F(Ljava/lang/String;)Ly1/c;

    move-result-object v0

    iget-object v1, p0, Lp1/a;->d:Lq1/j;

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "class_info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ly1/c;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lp1/a;->k(ILjava/lang/String;)V

    :cond_d
    new-instance v1, Lx1/e0;

    invoke-direct {v1, v0}, Lx1/e0;-><init>(Ly1/c;)V

    return-object v1

    :cond_e
    invoke-virtual {p0}, Lp1/a;->f()Lx1/a;

    move-result-object v0

    check-cast v0, Lx1/p;

    invoke-virtual {v0}, Lx1/p;->B()I

    move-result v0

    invoke-static {v0}, Lx1/c0;->B(I)Lx1/c0;

    move-result-object v0

    return-object v0

    :cond_f
    invoke-virtual {p0}, Lp1/a;->f()Lx1/a;

    move-result-object v0

    check-cast v0, Lx1/o;

    return-object v0

    :cond_10
    sget-object v0, Lv1/b;->p:Lv1/b;

    invoke-virtual {p0, v0}, Lp1/a;->b(Lv1/b;)Lv1/a;

    move-result-object v0

    new-instance v1, Lx1/c;

    invoke-direct {v1, v0}, Lx1/c;-><init>(Lv1/a;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public j()Lx1/a;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lp1/a;->i()Lx1/a;

    move-result-object v0

    iget-object v1, p0, Lp1/a;->e:Lb2/d$a;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lq1/i;

    const-string v1, "extra data in attribute"

    invoke-direct {v0, v1}, Lq1/i;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "shouldn\'t happen"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final k(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lp1/a;->d:Lq1/j;

    iget-object v1, p0, Lp1/a;->c:Lb2/d;

    iget v2, p0, Lp1/a;->f:I

    invoke-interface {v0, v1, v2, p1, p2}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    iget p2, p0, Lp1/a;->f:I

    add-int/2addr p2, p1

    iput p2, p0, Lp1/a;->f:I

    return-void
.end method

.method public final l(I)V
    .locals 1

    iget-object v0, p0, Lp1/a;->e:Lb2/d$a;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-lt v0, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lq1/i;

    const-string v0, "truncated annotation attribute"

    invoke-direct {p1, v0}, Lq1/i;-><init>(Ljava/lang/String;)V

    throw p1
.end method
