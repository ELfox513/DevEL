.class public final Lg5/k9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:J

.field public final c:Lg5/n;

.field public final synthetic d:Lg5/m9;


# direct methods
.method public constructor <init>(Lg5/m9;)V
    .locals 2

    iput-object p1, p0, Lg5/k9;->d:Lg5/m9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg5/j9;

    iget-object v1, p1, Lg5/v5;->a:Lg5/b5;

    invoke-direct {v0, p0, v1}, Lg5/j9;-><init>(Lg5/k9;Lg5/x5;)V

    iput-object v0, p0, Lg5/k9;->c:Lg5/n;

    iget-object p1, p1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->Q()Lc4/f;

    move-result-object p1

    invoke-interface {p1}, Lc4/f;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lg5/k9;->a:J

    iput-wide v0, p0, Lg5/k9;->b:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lg5/k9;->c:Lg5/n;

    invoke-virtual {v0}, Lg5/n;->b()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lg5/k9;->a:J

    iput-wide v0, p0, Lg5/k9;->b:J

    return-void
.end method

.method public final b(J)V
    .locals 0

    iget-object p1, p0, Lg5/k9;->c:Lg5/n;

    invoke-virtual {p1}, Lg5/n;->b()V

    return-void
.end method

.method public final c(J)V
    .locals 1

    iget-object v0, p0, Lg5/k9;->d:Lg5/m9;

    invoke-virtual {v0}, Lg5/v5;->c()V

    iget-object v0, p0, Lg5/k9;->c:Lg5/n;

    invoke-virtual {v0}, Lg5/n;->b()V

    iput-wide p1, p0, Lg5/k9;->a:J

    iput-wide p1, p0, Lg5/k9;->b:J

    return-void
.end method

.method public final d(ZZJ)Z
    .locals 6

    iget-object v0, p0, Lg5/k9;->d:Lg5/m9;

    invoke-virtual {v0}, Lg5/v5;->c()V

    iget-object v0, p0, Lg5/k9;->d:Lg5/m9;

    invoke-virtual {v0}, Lg5/f4;->d()V

    invoke-static {}, Lb5/ld;->b()Z

    iget-object v0, p0, Lg5/k9;->d:Lg5/m9;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->u()Lg5/g;

    move-result-object v0

    sget-object v1, Lg5/c3;->l0:Lg5/b3;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lg5/g;->w(Ljava/lang/String;Lg5/b3;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg5/k9;->d:Lg5/m9;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg5/k9;->d:Lg5/m9;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->A()Lg5/g4;

    move-result-object v0

    iget-object v0, v0, Lg5/g4;->o:Lg5/b4;

    iget-object v1, p0, Lg5/k9;->d:Lg5/m9;

    iget-object v1, v1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->Q()Lc4/f;

    move-result-object v1

    invoke-interface {v1}, Lc4/f;->a()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lg5/b4;->b(J)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg5/k9;->d:Lg5/m9;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->A()Lg5/g4;

    move-result-object v0

    iget-object v0, v0, Lg5/g4;->o:Lg5/b4;

    iget-object v1, p0, Lg5/k9;->d:Lg5/m9;

    iget-object v1, v1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->Q()Lc4/f;

    move-result-object v1

    invoke-interface {v1}, Lc4/f;->a()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lg5/b4;->b(J)V

    :cond_1
    :goto_0
    iget-wide v0, p0, Lg5/k9;->a:J

    sub-long v0, p3, v0

    if-nez p1, :cond_3

    const-wide/16 v3, 0x3e8

    cmp-long p1, v0, v3

    if-ltz p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lg5/k9;->d:Lg5/m9;

    iget-object p1, p1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->F()Lg5/q3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/q3;->q()Lg5/o3;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "Screen exposed for less than 1000 ms. Event not sent. time"

    invoke-virtual {p1, p3, p2}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_1
    if-nez p2, :cond_4

    iget-wide v0, p0, Lg5/k9;->b:J

    sub-long v0, p3, v0

    iput-wide p3, p0, Lg5/k9;->b:J

    :cond_4
    iget-object p1, p0, Lg5/k9;->d:Lg5/m9;

    iget-object p1, p1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->F()Lg5/q3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/q3;->q()Lg5/o3;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Recording user engagement, ms"

    invoke-virtual {p1, v4, v3}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "_et"

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lg5/k9;->d:Lg5/m9;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->u()Lg5/g;

    move-result-object v0

    invoke-virtual {v0}, Lg5/g;->y()Z

    move-result v0

    iget-object v1, p0, Lg5/k9;->d:Lg5/m9;

    iget-object v1, v1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->H()Lg5/w7;

    move-result-object v1

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    invoke-virtual {v1, v0}, Lg5/w7;->o(Z)Lg5/p7;

    move-result-object v0

    invoke-static {v0, p1, v3}, Lg5/ia;->s(Lg5/p7;Landroid/os/Bundle;Z)V

    iget-object v0, p0, Lg5/k9;->d:Lg5/m9;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->u()Lg5/g;

    move-result-object v0

    sget-object v1, Lg5/c3;->V:Lg5/b3;

    invoke-virtual {v0, v2, v1}, Lg5/g;->w(Ljava/lang/String;Lg5/b3;)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p2, :cond_5

    const-wide/16 v4, 0x1

    const-string v0, "_fr"

    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_5
    iget-object v0, p0, Lg5/k9;->d:Lg5/m9;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->u()Lg5/g;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lg5/g;->w(Ljava/lang/String;Lg5/b3;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez p2, :cond_7

    :cond_6
    iget-object p2, p0, Lg5/k9;->d:Lg5/m9;

    iget-object p2, p2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->D()Lg5/i7;

    move-result-object p2

    const-string v0, "auto"

    const-string v1, "_e"

    invoke-virtual {p2, v0, v1, p1}, Lg5/i7;->p(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_7
    iput-wide p3, p0, Lg5/k9;->a:J

    iget-object p1, p0, Lg5/k9;->c:Lg5/n;

    invoke-virtual {p1}, Lg5/n;->b()V

    iget-object p1, p0, Lg5/k9;->c:Lg5/n;

    const-wide/32 p2, 0x36ee80

    invoke-virtual {p1, p2, p3}, Lg5/n;->d(J)V

    return v3
.end method
