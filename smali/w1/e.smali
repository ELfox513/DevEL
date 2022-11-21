.class public final Lw1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw1/a0;


# static fields
.field public static final b:Lw1/e;

.field public static final c:Lw1/e;


# instance fields
.field public final a:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lw1/e;

    invoke-direct {v0}, Lw1/e;-><init>()V

    sput-object v0, Lw1/e;->b:Lw1/e;

    new-instance v0, Lw1/e;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lw1/e;-><init>(Z)V

    sput-object v0, Lw1/e;->c:Lw1/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lw1/e;->a:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lw1/e;->a:Z

    return-void
.end method


# virtual methods
.method public a(Lw1/t;Lw1/r;)Z
    .locals 1

    iget-boolean v0, p0, Lw1/e;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lw1/t;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lw1/e;->d(Lw1/r;)I

    move-result p1

    const/4 p2, 0x6

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public c(Lw1/t;Lw1/q;Lw1/q;)Z
    .locals 3

    invoke-virtual {p2}, Lw1/q;->getType()Ly1/c;

    move-result-object v0

    sget-object v1, Ly1/c;->y:Ly1/c;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p3}, Lw1/q;->C()Ly1/d;

    move-result-object v0

    instance-of v0, v0, Lx1/p;

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lw1/q;->C()Ly1/d;

    move-result-object p3

    instance-of p3, p3, Lx1/p;

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lw1/t;->d()I

    move-result p1

    const/16 p3, 0xf

    if-ne p1, p3, :cond_1

    invoke-virtual {p2}, Lw1/q;->C()Ly1/d;

    move-result-object p1

    check-cast p1, Lx1/p;

    invoke-virtual {p1}, Lx1/v;->n()Z

    move-result p1

    return p1

    :cond_1
    return v2

    :cond_2
    invoke-virtual {p3}, Lw1/q;->C()Ly1/d;

    move-result-object p2

    check-cast p2, Lx1/p;

    invoke-virtual {p1}, Lw1/t;->d()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return v2

    :pswitch_1
    invoke-virtual {p2}, Lx1/v;->u()Z

    move-result p1

    return p1

    :pswitch_2
    invoke-virtual {p2}, Lx1/p;->B()I

    move-result p1

    neg-int p1, p1

    invoke-static {p1}, Lx1/p;->C(I)Lx1/p;

    move-result-object p1

    invoke-virtual {p1}, Lx1/v;->n()Z

    move-result p1

    return p1

    :pswitch_3
    invoke-virtual {p2}, Lx1/v;->n()Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final d(Lw1/r;)I
    .locals 4

    invoke-virtual {p1}, Lb2/f;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Lw1/r;->A(I)Lw1/q;

    move-result-object v3

    invoke-virtual {v3}, Lw1/q;->x()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method
