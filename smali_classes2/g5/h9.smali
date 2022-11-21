.class public final Lg5/h9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lg5/g9;

.field public final synthetic b:Lg5/m9;


# direct methods
.method public constructor <init>(Lg5/m9;)V
    .locals 0

    iput-object p1, p0, Lg5/h9;->b:Lg5/m9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 7

    new-instance v6, Lg5/g9;

    iget-object v0, p0, Lg5/h9;->b:Lg5/m9;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->Q()Lc4/f;

    move-result-object v0

    invoke-interface {v0}, Lc4/f;->a()J

    move-result-wide v2

    move-object v0, v6

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lg5/g9;-><init>(Lg5/h9;JJ)V

    iput-object v6, p0, Lg5/h9;->a:Lg5/g9;

    iget-object p1, p0, Lg5/h9;->b:Lg5/m9;

    invoke-static {p1}, Lg5/m9;->j(Lg5/m9;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lg5/h9;->a:Lg5/g9;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lg5/h9;->b:Lg5/m9;

    invoke-virtual {v0}, Lg5/v5;->c()V

    iget-object v0, p0, Lg5/h9;->a:Lg5/g9;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg5/h9;->b:Lg5/m9;

    invoke-static {v0}, Lg5/m9;->j(Lg5/m9;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lg5/h9;->a:Lg5/g9;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lg5/h9;->b:Lg5/m9;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->A()Lg5/g4;

    move-result-object v0

    iget-object v0, v0, Lg5/g4;->q:Lg5/z3;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg5/z3;->a(Z)V

    return-void
.end method
