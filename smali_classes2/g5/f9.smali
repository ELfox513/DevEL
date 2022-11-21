.class public final synthetic Lg5/f9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lg5/g9;


# direct methods
.method public synthetic constructor <init>(Lg5/g9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg5/f9;->a:Lg5/g9;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lg5/f9;->a:Lg5/g9;

    iget-object v1, v0, Lg5/g9;->d:Lg5/h9;

    iget-wide v5, v0, Lg5/g9;->a:J

    iget-wide v2, v0, Lg5/g9;->b:J

    iget-object v0, v1, Lg5/h9;->b:Lg5/m9;

    invoke-virtual {v0}, Lg5/v5;->c()V

    iget-object v0, v1, Lg5/h9;->b:Lg5/m9;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->l()Lg5/o3;

    move-result-object v0

    const-string v4, "Application going to the background"

    invoke-virtual {v0, v4}, Lg5/o3;->a(Ljava/lang/String;)V

    iget-object v0, v1, Lg5/h9;->b:Lg5/m9;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->A()Lg5/g4;

    move-result-object v0

    iget-object v0, v0, Lg5/g4;->q:Lg5/z3;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lg5/z3;->a(Z)V

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    iget-object v0, v1, Lg5/h9;->b:Lg5/m9;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->u()Lg5/g;

    move-result-object v0

    invoke-virtual {v0}, Lg5/g;->y()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lg5/h9;->b:Lg5/m9;

    iget-object v0, v0, Lg5/m9;->e:Lg5/k9;

    invoke-virtual {v0, v2, v3}, Lg5/k9;->b(J)V

    iget-object v0, v1, Lg5/h9;->b:Lg5/m9;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->u()Lg5/g;

    move-result-object v0

    const/4 v8, 0x0

    sget-object v9, Lg5/c3;->i0:Lg5/b3;

    invoke-virtual {v0, v8, v9}, Lg5/g;->w(Ljava/lang/String;Lg5/b3;)Z

    move-result v0

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lg5/h9;->b:Lg5/m9;

    iget-object v0, v0, Lg5/m9;->e:Lg5/k9;

    iget-wide v9, v0, Lg5/k9;->b:J

    iput-wide v2, v0, Lg5/k9;->b:J

    sub-long v9, v2, v9

    const-string v0, "_et"

    invoke-virtual {v7, v0, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, v1, Lg5/h9;->b:Lg5/m9;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->H()Lg5/w7;

    move-result-object v0

    invoke-virtual {v0, v4}, Lg5/w7;->o(Z)Lg5/p7;

    move-result-object v0

    invoke-static {v0, v7, v4}, Lg5/ia;->s(Lg5/p7;Landroid/os/Bundle;Z)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iget-object v0, v1, Lg5/h9;->b:Lg5/m9;

    iget-object v0, v0, Lg5/m9;->e:Lg5/k9;

    invoke-virtual {v0, v8, v4, v2, v3}, Lg5/k9;->d(ZZJ)Z

    :cond_1
    iget-object v0, v1, Lg5/h9;->b:Lg5/m9;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->D()Lg5/i7;

    move-result-object v2

    const-string v3, "auto"

    const-string v4, "_ab"

    invoke-virtual/range {v2 .. v7}, Lg5/i7;->q(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    return-void
.end method
