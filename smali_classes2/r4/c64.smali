.class public final Lr4/c64;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/m64;


# instance fields
.field public a:Lr4/e5;

.field public b:Lr4/fc;

.field public c:Lr4/d14;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr4/c5;

    invoke-direct {v0}, Lr4/c5;-><init>()V

    invoke-virtual {v0, p1}, Lr4/c5;->n(Ljava/lang/String;)Lr4/c5;

    invoke-virtual {v0}, Lr4/c5;->I()Lr4/e5;

    move-result-object p1

    iput-object p1, p0, Lr4/c64;->a:Lr4/e5;

    return-void
.end method


# virtual methods
.method public final b(Lr4/fc;Lr4/d04;Lr4/z64;)V
    .locals 0

    iput-object p1, p0, Lr4/c64;->b:Lr4/fc;

    invoke-virtual {p3}, Lr4/z64;->a()V

    invoke-virtual {p3}, Lr4/z64;->b()I

    move-result p1

    const/4 p3, 0x5

    invoke-interface {p2, p1, p3}, Lr4/d04;->r(II)Lr4/d14;

    move-result-object p1

    iput-object p1, p0, Lr4/c64;->c:Lr4/d14;

    iget-object p2, p0, Lr4/c64;->a:Lr4/e5;

    invoke-interface {p1, p2}, Lr4/d14;->f(Lr4/e5;)V

    return-void
.end method

.method public final c(Lr4/xb;)V
    .locals 8

    iget-object v0, p0, Lr4/c64;->b:Lr4/fc;

    invoke-static {v0}, Lr4/ja;->e(Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Lr4/lc;->a:I

    iget-object v0, p0, Lr4/c64;->b:Lr4/fc;

    invoke-virtual {v0}, Lr4/fc;->b()J

    move-result-wide v2

    iget-object v0, p0, Lr4/c64;->b:Lr4/fc;

    invoke-virtual {v0}, Lr4/fc;->c()J

    move-result-wide v0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lr4/c64;->a:Lr4/e5;

    iget-wide v5, v4, Lr4/e5;->p:J

    cmp-long v7, v0, v5

    if-eqz v7, :cond_1

    invoke-virtual {v4}, Lr4/e5;->a()Lr4/c5;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lr4/c5;->r(J)Lr4/c5;

    invoke-virtual {v4}, Lr4/c5;->I()Lr4/e5;

    move-result-object v0

    iput-object v0, p0, Lr4/c64;->a:Lr4/e5;

    iget-object v1, p0, Lr4/c64;->c:Lr4/d14;

    invoke-interface {v1, v0}, Lr4/d14;->f(Lr4/e5;)V

    :cond_1
    invoke-virtual {p1}, Lr4/xb;->l()I

    move-result v5

    iget-object v0, p0, Lr4/c64;->c:Lr4/d14;

    invoke-static {v0, p1, v5}, Lr4/b14;->b(Lr4/d14;Lr4/xb;I)V

    iget-object v1, p0, Lr4/c64;->c:Lr4/d14;

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lr4/d14;->e(JIIILr4/c14;)V

    :cond_2
    :goto_0
    return-void
.end method
