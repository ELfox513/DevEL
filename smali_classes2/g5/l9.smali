.class public final Lg5/l9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lg5/m9;


# direct methods
.method public constructor <init>(Lg5/m9;)V
    .locals 0

    iput-object p1, p0, Lg5/l9;->a:Lg5/m9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lg5/l9;->a:Lg5/m9;

    invoke-virtual {v0}, Lg5/v5;->c()V

    iget-object v0, p0, Lg5/l9;->a:Lg5/m9;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->A()Lg5/g4;

    move-result-object v0

    iget-object v1, p0, Lg5/l9;->a:Lg5/m9;

    iget-object v1, v1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->Q()Lc4/f;

    move-result-object v1

    invoke-interface {v1}, Lc4/f;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lg5/g4;->q(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg5/l9;->a:Lg5/m9;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->A()Lg5/g4;

    move-result-object v0

    iget-object v0, v0, Lg5/g4;->l:Lg5/z3;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lg5/z3;->a(Z)V

    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    invoke-static {v0}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lg5/l9;->a:Lg5/m9;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->q()Lg5/o3;

    move-result-object v0

    const-string v1, "Detected application was in foreground"

    invoke-virtual {v0, v1}, Lg5/o3;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lg5/l9;->a:Lg5/m9;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->Q()Lc4/f;

    move-result-object v0

    invoke-interface {v0}, Lc4/f;->a()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lg5/l9;->c(JZ)V

    :cond_0
    return-void
.end method

.method public final b(JZ)V
    .locals 2

    iget-object v0, p0, Lg5/l9;->a:Lg5/m9;

    invoke-virtual {v0}, Lg5/v5;->c()V

    iget-object v0, p0, Lg5/l9;->a:Lg5/m9;

    invoke-static {v0}, Lg5/m9;->k(Lg5/m9;)V

    iget-object v0, p0, Lg5/l9;->a:Lg5/m9;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->A()Lg5/g4;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lg5/g4;->q(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg5/l9;->a:Lg5/m9;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->A()Lg5/g4;

    move-result-object v0

    iget-object v0, v0, Lg5/g4;->l:Lg5/z3;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lg5/z3;->a(Z)V

    :cond_0
    iget-object v0, p0, Lg5/l9;->a:Lg5/m9;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->A()Lg5/g4;

    move-result-object v0

    iget-object v0, v0, Lg5/g4;->o:Lg5/b4;

    invoke-virtual {v0, p1, p2}, Lg5/b4;->b(J)V

    iget-object v0, p0, Lg5/l9;->a:Lg5/m9;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->A()Lg5/g4;

    move-result-object v0

    iget-object v0, v0, Lg5/g4;->l:Lg5/z3;

    invoke-virtual {v0}, Lg5/z3;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lg5/l9;->c(JZ)V

    :cond_1
    return-void
.end method

.method public final c(JZ)V
    .locals 9

    iget-object v0, p0, Lg5/l9;->a:Lg5/m9;

    invoke-virtual {v0}, Lg5/v5;->c()V

    iget-object v0, p0, Lg5/l9;->a:Lg5/m9;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->j()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lg5/l9;->a:Lg5/m9;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->A()Lg5/g4;

    move-result-object v0

    iget-object v0, v0, Lg5/g4;->o:Lg5/b4;

    invoke-virtual {v0, p1, p2}, Lg5/b4;->b(J)V

    iget-object v0, p0, Lg5/l9;->a:Lg5/m9;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->Q()Lc4/f;

    move-result-object v0

    invoke-interface {v0}, Lc4/f;->b()J

    move-result-wide v0

    iget-object v2, p0, Lg5/l9;->a:Lg5/m9;

    iget-object v2, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->F()Lg5/q3;

    move-result-object v2

    invoke-virtual {v2}, Lg5/q3;->q()Lg5/o3;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "Session started, time"

    invoke-virtual {v2, v1, v0}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lg5/l9;->a:Lg5/m9;

    iget-object v1, v1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->D()Lg5/i7;

    move-result-object v2

    const-string v3, "auto"

    const-string v4, "_sid"

    move-object v5, v0

    move-wide v6, p1

    invoke-virtual/range {v2 .. v7}, Lg5/i7;->K(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    iget-object v1, p0, Lg5/l9;->a:Lg5/m9;

    iget-object v1, v1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->A()Lg5/g4;

    move-result-object v1

    iget-object v1, v1, Lg5/g4;->l:Lg5/z3;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lg5/z3;->a(Z)V

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "_sid"

    invoke-virtual {v8, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lg5/l9;->a:Lg5/m9;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->u()Lg5/g;

    move-result-object v0

    sget-object v1, Lg5/c3;->g0:Lg5/b3;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lg5/g;->w(Ljava/lang/String;Lg5/b3;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    const-wide/16 v0, 0x1

    const-string p3, "_aib"

    invoke-virtual {v8, p3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_1
    iget-object p3, p0, Lg5/l9;->a:Lg5/m9;

    iget-object p3, p3, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p3}, Lg5/b5;->D()Lg5/i7;

    move-result-object v3

    const-string v4, "auto"

    const-string v5, "_s"

    move-wide v6, p1

    invoke-virtual/range {v3 .. v8}, Lg5/i7;->q(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    invoke-static {}, Lb5/cd;->b()Z

    iget-object p3, p0, Lg5/l9;->a:Lg5/m9;

    iget-object p3, p3, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p3}, Lg5/b5;->u()Lg5/g;

    move-result-object p3

    sget-object v0, Lg5/c3;->k0:Lg5/b3;

    invoke-virtual {p3, v2, v0}, Lg5/g;->w(Ljava/lang/String;Lg5/b3;)Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lg5/l9;->a:Lg5/m9;

    iget-object p3, p3, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p3}, Lg5/b5;->A()Lg5/g4;

    move-result-object p3

    iget-object p3, p3, Lg5/g4;->t:Lg5/e4;

    invoke-virtual {p3}, Lg5/e4;->a()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v0, "_ffr"

    invoke-virtual {v6, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lg5/l9;->a:Lg5/m9;

    iget-object p3, p3, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p3}, Lg5/b5;->D()Lg5/i7;

    move-result-object v1

    const-string v2, "auto"

    const-string v3, "_ssr"

    move-wide v4, p1

    invoke-virtual/range {v1 .. v6}, Lg5/i7;->q(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    :cond_2
    return-void
.end method
