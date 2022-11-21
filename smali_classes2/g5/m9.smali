.class public final Lg5/m9;
.super Lg5/f4;
.source "SourceFile"


# instance fields
.field public c:Landroid/os/Handler;

.field public final d:Lg5/l9;

.field public final e:Lg5/k9;

.field public final f:Lg5/h9;


# direct methods
.method public constructor <init>(Lg5/b5;)V
    .locals 0

    invoke-direct {p0, p1}, Lg5/f4;-><init>(Lg5/b5;)V

    new-instance p1, Lg5/l9;

    invoke-direct {p1, p0}, Lg5/l9;-><init>(Lg5/m9;)V

    iput-object p1, p0, Lg5/m9;->d:Lg5/l9;

    new-instance p1, Lg5/k9;

    invoke-direct {p1, p0}, Lg5/k9;-><init>(Lg5/m9;)V

    iput-object p1, p0, Lg5/m9;->e:Lg5/k9;

    new-instance p1, Lg5/h9;

    invoke-direct {p1, p0}, Lg5/h9;-><init>(Lg5/m9;)V

    iput-object p1, p0, Lg5/m9;->f:Lg5/h9;

    return-void
.end method

.method public static bridge synthetic j(Lg5/m9;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lg5/m9;->c:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic k(Lg5/m9;)V
    .locals 0

    invoke-virtual {p0}, Lg5/m9;->n()V

    return-void
.end method

.method public static bridge synthetic l(Lg5/m9;J)V
    .locals 3

    invoke-virtual {p0}, Lg5/v5;->c()V

    invoke-virtual {p0}, Lg5/m9;->n()V

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->q()Lg5/o3;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Activity paused, time"

    invoke-virtual {v0, v2, v1}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lg5/m9;->f:Lg5/h9;

    invoke-virtual {v0, p1, p2}, Lg5/h9;->a(J)V

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->u()Lg5/g;

    move-result-object v0

    invoke-virtual {v0}, Lg5/g;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lg5/m9;->e:Lg5/k9;

    invoke-virtual {p0, p1, p2}, Lg5/k9;->b(J)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic m(Lg5/m9;J)V
    .locals 3

    invoke-virtual {p0}, Lg5/v5;->c()V

    invoke-virtual {p0}, Lg5/m9;->n()V

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->q()Lg5/o3;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Activity resumed, time"

    invoke-virtual {v0, v2, v1}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->u()Lg5/g;

    move-result-object v0

    invoke-virtual {v0}, Lg5/g;->y()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->A()Lg5/g4;

    move-result-object v0

    iget-object v0, v0, Lg5/g4;->q:Lg5/z3;

    invoke-virtual {v0}, Lg5/z3;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lg5/m9;->e:Lg5/k9;

    invoke-virtual {v0, p1, p2}, Lg5/k9;->c(J)V

    :cond_1
    iget-object p1, p0, Lg5/m9;->f:Lg5/h9;

    invoke-virtual {p1}, Lg5/h9;->b()V

    iget-object p0, p0, Lg5/m9;->d:Lg5/l9;

    iget-object p1, p0, Lg5/l9;->a:Lg5/m9;

    invoke-virtual {p1}, Lg5/v5;->c()V

    iget-object p1, p0, Lg5/l9;->a:Lg5/m9;

    iget-object p1, p1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->j()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lg5/l9;->a:Lg5/m9;

    iget-object p1, p1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->Q()Lc4/f;

    move-result-object p1

    invoke-interface {p1}, Lc4/f;->a()J

    move-result-wide p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lg5/l9;->b(JZ)V

    return-void
.end method


# virtual methods
.method public final i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final n()V
    .locals 2

    invoke-virtual {p0}, Lg5/v5;->c()V

    iget-object v0, p0, Lg5/m9;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Lb5/a1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lb5/a1;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lg5/m9;->c:Landroid/os/Handler;

    :cond_0
    return-void
.end method
