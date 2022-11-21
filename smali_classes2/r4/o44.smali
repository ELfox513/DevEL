.class public final Lr4/o44;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/a04;


# static fields
.field public static final d:Lr4/g04;


# instance fields
.field public a:Lr4/d04;

.field public b:Lr4/w44;

.field public c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lr4/n44;->a:Lr4/g04;

    sput-object v0, Lr4/o44;->d:Lr4/g04;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lr4/b04;)Z
    .locals 8

    new-instance v0, Lr4/q44;

    invoke-direct {v0}, Lr4/q44;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lr4/q44;->c(Lr4/b04;Z)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget v2, v0, Lr4/q44;->a:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-eq v2, v4, :cond_0

    goto :goto_1

    :cond_0
    iget v0, v0, Lr4/q44;->e:I

    const/16 v2, 0x8

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v2, Lr4/xb;

    invoke-direct {v2, v0}, Lr4/xb;-><init>(I)V

    invoke-virtual {v2}, Lr4/xb;->q()[B

    move-result-object v4

    check-cast p1, Lr4/vz3;

    invoke-virtual {p1, v4, v3, v0, v3}, Lr4/vz3;->i([BIIZ)Z

    invoke-virtual {v2, v3}, Lr4/xb;->p(I)V

    invoke-virtual {v2}, Lr4/xb;->l()I

    move-result p1

    const/4 v0, 0x5

    if-lt p1, v0, :cond_1

    invoke-virtual {v2}, Lr4/xb;->v()I

    move-result p1

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_1

    invoke-virtual {v2}, Lr4/xb;->B()J

    move-result-wide v4

    const-wide/32 v6, 0x464c4143

    cmp-long p1, v4, v6

    if-nez p1, :cond_1

    new-instance p1, Lr4/m44;

    invoke-direct {p1}, Lr4/m44;-><init>()V

    iput-object p1, p0, Lr4/o44;->b:Lr4/w44;

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v3}, Lr4/xb;->p(I)V

    :try_start_0
    invoke-static {v1, v2, v1}, Lr4/j14;->c(ILr4/xb;Z)Z

    move-result p1
    :try_end_0
    .catch Lr4/l6; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    new-instance p1, Lr4/y44;

    invoke-direct {p1}, Lr4/y44;-><init>()V

    iput-object p1, p0, Lr4/o44;->b:Lr4/w44;

    goto :goto_0

    :catch_0
    nop

    :cond_2
    invoke-virtual {v2, v3}, Lr4/xb;->p(I)V

    invoke-static {v2}, Lr4/s44;->j(Lr4/xb;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lr4/s44;

    invoke-direct {p1}, Lr4/s44;-><init>()V

    iput-object p1, p0, Lr4/o44;->b:Lr4/w44;

    :goto_0
    return v1

    :cond_3
    :goto_1
    return v3
.end method

.method public final e(Lr4/b04;)Z
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Lr4/o44;->a(Lr4/b04;)Z

    move-result p1
    :try_end_0
    .catch Lr4/l6; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public final f(Lr4/b04;Lr4/w04;)I
    .locals 4

    iget-object v0, p0, Lr4/o44;->a:Lr4/d04;

    invoke-static {v0}, Lr4/ja;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lr4/o44;->b:Lr4/w44;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lr4/o44;->a(Lr4/b04;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lr4/b04;->k()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const-string p2, "Failed to determine bitstream type"

    invoke-static {p2, p1}, Lr4/l6;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lr4/l6;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lr4/o44;->c:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lr4/o44;->a:Lr4/d04;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lr4/d04;->r(II)Lr4/d14;

    move-result-object v0

    iget-object v1, p0, Lr4/o44;->a:Lr4/d04;

    invoke-interface {v1}, Lr4/d04;->y()V

    iget-object v1, p0, Lr4/o44;->b:Lr4/w44;

    iget-object v3, p0, Lr4/o44;->a:Lr4/d04;

    invoke-virtual {v1, v3, v0}, Lr4/w44;->d(Lr4/d04;Lr4/d14;)V

    iput-boolean v2, p0, Lr4/o44;->c:Z

    :cond_2
    iget-object v0, p0, Lr4/o44;->b:Lr4/w44;

    invoke-virtual {v0, p1, p2}, Lr4/w44;->f(Lr4/b04;Lr4/w04;)I

    move-result p1

    return p1
.end method

.method public final h(Lr4/d04;)V
    .locals 0

    iput-object p1, p0, Lr4/o44;->a:Lr4/d04;

    return-void
.end method

.method public final i(JJ)V
    .locals 1

    iget-object v0, p0, Lr4/o44;->b:Lr4/w44;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lr4/w44;->e(JJ)V

    :cond_0
    return-void
.end method
