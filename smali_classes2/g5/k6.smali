.class public final Lg5/k6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lg5/i7;


# direct methods
.method public constructor <init>(Lg5/i7;Z)V
    .locals 0

    iput-object p1, p0, Lg5/k6;->b:Lg5/i7;

    iput-boolean p2, p0, Lg5/k6;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lg5/k6;->b:Lg5/i7;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->j()Z

    move-result v0

    iget-object v1, p0, Lg5/k6;->b:Lg5/i7;

    iget-object v1, v1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->i()Z

    move-result v1

    iget-object v2, p0, Lg5/k6;->b:Lg5/i7;

    iget-object v2, v2, Lg5/v5;->a:Lg5/b5;

    iget-boolean v3, p0, Lg5/k6;->a:Z

    invoke-virtual {v2, v3}, Lg5/b5;->f(Z)V

    iget-boolean v2, p0, Lg5/k6;->a:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lg5/k6;->b:Lg5/i7;

    iget-object v1, v1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->F()Lg5/q3;

    move-result-object v1

    invoke-virtual {v1}, Lg5/q3;->q()Lg5/o3;

    move-result-object v1

    iget-boolean v2, p0, Lg5/k6;->a:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "Default data collection state already set to"

    invoke-virtual {v1, v3, v2}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lg5/k6;->b:Lg5/i7;

    iget-object v1, v1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->j()Z

    move-result v1

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lg5/k6;->b:Lg5/i7;

    iget-object v1, v1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->j()Z

    move-result v1

    iget-object v2, p0, Lg5/k6;->b:Lg5/i7;

    iget-object v2, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->i()Z

    move-result v2

    if-eq v1, v2, :cond_2

    :cond_1
    iget-object v1, p0, Lg5/k6;->b:Lg5/i7;

    iget-object v1, v1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->F()Lg5/q3;

    move-result-object v1

    invoke-virtual {v1}, Lg5/q3;->s()Lg5/o3;

    move-result-object v1

    iget-boolean v2, p0, Lg5/k6;->a:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "Default data collection is different than actual status"

    invoke-virtual {v1, v3, v2, v0}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lg5/k6;->b:Lg5/i7;

    invoke-static {v0}, Lg5/i7;->f0(Lg5/i7;)V

    return-void
.end method
