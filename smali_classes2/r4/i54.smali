.class public final Lr4/i54;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/y64;


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


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-static {}, Lr4/o33;->q()Lr4/o33;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/i54;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(ILr4/x64;)Lr4/a74;
    .locals 2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_a

    const/4 v0, 0x3

    if-eq p1, v0, :cond_9

    const/4 v0, 0x4

    if-eq p1, v0, :cond_9

    const/16 v0, 0x15

    if-eq p1, v0, :cond_8

    const/16 v0, 0x1b

    const/4 v1, 0x0

    if-eq p1, v0, :cond_7

    const/16 v0, 0x24

    if-eq p1, v0, :cond_6

    const/16 v0, 0x59

    if-eq p1, v0, :cond_5

    const/16 v0, 0x81

    if-eq p1, v0, :cond_4

    const/16 v0, 0x8a

    if-eq p1, v0, :cond_3

    const/16 v0, 0xac

    if-eq p1, v0, :cond_2

    const/16 v0, 0x101

    if-eq p1, v0, :cond_1

    const/16 v0, 0x86

    if-eq p1, v0, :cond_0

    const/16 v0, 0x87

    if-eq p1, v0, :cond_4

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    new-instance p1, Lr4/d64;

    new-instance v0, Lr4/z54;

    iget-object p2, p2, Lr4/x64;->b:Ljava/lang/String;

    invoke-direct {v0, p2}, Lr4/z54;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lr4/d64;-><init>(Lr4/m54;)V

    return-object p1

    :pswitch_1
    new-instance p1, Lr4/d64;

    new-instance v0, Lr4/r54;

    invoke-virtual {p0, p2}, Lr4/i54;->c(Lr4/x64;)Lr4/c74;

    move-result-object p2

    invoke-direct {v0, p2}, Lr4/r54;-><init>(Lr4/c74;)V

    invoke-direct {p1, v0}, Lr4/d64;-><init>(Lr4/m54;)V

    return-object p1

    :pswitch_2
    new-instance p1, Lr4/d64;

    new-instance v0, Lr4/h54;

    iget-object p2, p2, Lr4/x64;->b:Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Lr4/h54;-><init>(ZLjava/lang/String;)V

    invoke-direct {p1, v0}, Lr4/d64;-><init>(Lr4/m54;)V

    return-object p1

    :cond_0
    new-instance p1, Lr4/n64;

    new-instance p2, Lr4/c64;

    const-string v0, "application/x-scte35"

    invoke-direct {p2, v0}, Lr4/c64;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lr4/n64;-><init>(Lr4/m64;)V

    return-object p1

    :cond_1
    new-instance p1, Lr4/n64;

    new-instance p2, Lr4/c64;

    const-string v0, "application/vnd.dvb.ait"

    invoke-direct {p2, v0}, Lr4/c64;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lr4/n64;-><init>(Lr4/m64;)V

    return-object p1

    :cond_2
    new-instance p1, Lr4/d64;

    new-instance v0, Lr4/e54;

    iget-object p2, p2, Lr4/x64;->b:Ljava/lang/String;

    invoke-direct {v0, p2}, Lr4/e54;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lr4/d64;-><init>(Lr4/m54;)V

    return-object p1

    :cond_3
    new-instance p1, Lr4/d64;

    new-instance v0, Lr4/j54;

    iget-object p2, p2, Lr4/x64;->b:Ljava/lang/String;

    invoke-direct {v0, p2}, Lr4/j54;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lr4/d64;-><init>(Lr4/m54;)V

    return-object p1

    :cond_4
    new-instance p1, Lr4/d64;

    new-instance v0, Lr4/b54;

    iget-object p2, p2, Lr4/x64;->b:Ljava/lang/String;

    invoke-direct {v0, p2}, Lr4/b54;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lr4/d64;-><init>(Lr4/m54;)V

    return-object p1

    :cond_5
    new-instance p1, Lr4/d64;

    new-instance v0, Lr4/l54;

    iget-object p2, p2, Lr4/x64;->c:Ljava/util/List;

    invoke-direct {v0, p2}, Lr4/l54;-><init>(Ljava/util/List;)V

    invoke-direct {p1, v0}, Lr4/d64;-><init>(Lr4/m54;)V

    return-object p1

    :cond_6
    new-instance p1, Lr4/d64;

    new-instance v0, Lr4/x54;

    invoke-virtual {p0, p2}, Lr4/i54;->b(Lr4/x64;)Lr4/o64;

    move-result-object p2

    invoke-direct {v0, p2}, Lr4/x54;-><init>(Lr4/o64;)V

    invoke-direct {p1, v0}, Lr4/d64;-><init>(Lr4/m54;)V

    return-object p1

    :cond_7
    new-instance p1, Lr4/d64;

    new-instance v0, Lr4/v54;

    invoke-virtual {p0, p2}, Lr4/i54;->b(Lr4/x64;)Lr4/o64;

    move-result-object p2

    invoke-direct {v0, p2, v1, v1}, Lr4/v54;-><init>(Lr4/o64;ZZ)V

    invoke-direct {p1, v0}, Lr4/d64;-><init>(Lr4/m54;)V

    return-object p1

    :cond_8
    new-instance p1, Lr4/d64;

    new-instance p2, Lr4/y54;

    invoke-direct {p2}, Lr4/y54;-><init>()V

    invoke-direct {p1, p2}, Lr4/d64;-><init>(Lr4/m54;)V

    return-object p1

    :cond_9
    new-instance p1, Lr4/d64;

    new-instance v0, Lr4/a64;

    iget-object p2, p2, Lr4/x64;->b:Ljava/lang/String;

    invoke-direct {v0, p2}, Lr4/a64;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lr4/d64;-><init>(Lr4/m54;)V

    return-object p1

    :cond_a
    new-instance p1, Lr4/d64;

    new-instance v0, Lr4/o54;

    invoke-virtual {p0, p2}, Lr4/i54;->c(Lr4/x64;)Lr4/c74;

    move-result-object p2

    invoke-direct {v0, p2}, Lr4/o54;-><init>(Lr4/c74;)V

    invoke-direct {p1, v0}, Lr4/d64;-><init>(Lr4/m54;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lr4/x64;)Lr4/o64;
    .locals 1

    new-instance v0, Lr4/o64;

    invoke-virtual {p0, p1}, Lr4/i54;->d(Lr4/x64;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lr4/o64;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final c(Lr4/x64;)Lr4/c74;
    .locals 1

    new-instance v0, Lr4/c74;

    invoke-virtual {p0, p1}, Lr4/i54;->d(Lr4/x64;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lr4/c74;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final d(Lr4/x64;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/x64;",
            ")",
            "Ljava/util/List<",
            "Lr4/e5;",
            ">;"
        }
    .end annotation

    new-instance v0, Lr4/xb;

    iget-object p1, p1, Lr4/x64;->d:[B

    invoke-direct {v0, p1}, Lr4/xb;-><init>([B)V

    iget-object p1, p0, Lr4/i54;->a:Ljava/util/List;

    :goto_0
    invoke-virtual {v0}, Lr4/xb;->l()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {v0}, Lr4/xb;->v()I

    move-result v1

    invoke-virtual {v0}, Lr4/xb;->v()I

    move-result v2

    invoke-virtual {v0}, Lr4/xb;->o()I

    move-result v3

    add-int/2addr v3, v2

    const/16 v2, 0x86

    if-ne v1, v2, :cond_3

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lr4/xb;->v()I

    move-result v1

    and-int/lit8 v1, v1, 0x1f

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_3

    const/4 v5, 0x3

    sget-object v6, Lr4/n03;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v5, v6}, Lr4/xb;->e(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lr4/xb;->v()I

    move-result v6

    and-int/lit16 v7, v6, 0x80

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    and-int/lit8 v6, v6, 0x3f

    const-string v9, "application/cea-708"

    goto :goto_2

    :cond_0
    const-string v9, "application/cea-608"

    const/4 v6, 0x1

    :goto_2
    invoke-virtual {v0}, Lr4/xb;->v()I

    move-result v10

    int-to-byte v10, v10

    invoke-virtual {v0, v8}, Lr4/xb;->s(I)V

    if-eqz v7, :cond_2

    sget-object v7, Lr4/la;->a:[B

    and-int/lit8 v7, v10, 0x40

    if-eqz v7, :cond_1

    new-array v7, v8, [B

    aput-byte v8, v7, v2

    goto :goto_3

    :cond_1
    new-array v7, v8, [B

    aput-byte v2, v7, v2

    :goto_3
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    goto :goto_4

    :cond_2
    const/4 v7, 0x0

    :goto_4
    new-instance v8, Lr4/c5;

    invoke-direct {v8}, Lr4/c5;-><init>()V

    invoke-virtual {v8, v9}, Lr4/c5;->n(Ljava/lang/String;)Lr4/c5;

    invoke-virtual {v8, v5}, Lr4/c5;->g(Ljava/lang/String;)Lr4/c5;

    invoke-virtual {v8, v6}, Lr4/c5;->G(I)Lr4/c5;

    invoke-virtual {v8, v7}, Lr4/c5;->p(Ljava/util/List;)Lr4/c5;

    invoke-virtual {v8}, Lr4/c5;->I()Lr4/e5;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v3}, Lr4/xb;->p(I)V

    goto :goto_0

    :cond_4
    return-object p1
.end method
