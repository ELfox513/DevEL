.class public final synthetic Lg5/g6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lg5/i7;


# direct methods
.method public synthetic constructor <init>(Lg5/i7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg5/g6;->a:Lg5/i7;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lg5/g6;->a:Lg5/i7;

    invoke-virtual {v0}, Lg5/v5;->c()V

    iget-object v1, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->A()Lg5/g4;

    move-result-object v1

    iget-object v1, v1, Lg5/g4;->r:Lg5/z3;

    invoke-virtual {v1}, Lg5/z3;->b()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->A()Lg5/g4;

    move-result-object v1

    iget-object v1, v1, Lg5/g4;->s:Lg5/b4;

    invoke-virtual {v1}, Lg5/b4;->a()J

    move-result-wide v1

    iget-object v3, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v3}, Lg5/b5;->A()Lg5/g4;

    move-result-object v3

    iget-object v3, v3, Lg5/g4;->s:Lg5/b4;

    const-wide/16 v4, 0x1

    add-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Lg5/b4;->b(J)V

    iget-object v3, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v3}, Lg5/b5;->u()Lg5/g;

    const-wide/16 v3, 0x5

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    iget-object v1, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->F()Lg5/q3;

    move-result-object v1

    invoke-virtual {v1}, Lg5/q3;->r()Lg5/o3;

    move-result-object v1

    const-string v2, "Permanently failed to retrieve Deferred Deep Link. Reached maximum retries."

    invoke-virtual {v1, v2}, Lg5/o3;->a(Ljava/lang/String;)V

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->A()Lg5/g4;

    move-result-object v0

    iget-object v0, v0, Lg5/g4;->r:Lg5/z3;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lg5/z3;->a(Z)V

    return-void

    :cond_0
    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->e()V

    return-void

    :cond_1
    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->l()Lg5/o3;

    move-result-object v0

    const-string v1, "Deferred Deep Link already retrieved. Not fetching again."

    invoke-virtual {v0, v1}, Lg5/o3;->a(Ljava/lang/String;)V

    return-void
.end method
