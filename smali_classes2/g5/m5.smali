.class public final Lg5/m5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lg5/pa;

.field public final synthetic b:Lg5/u5;


# direct methods
.method public constructor <init>(Lg5/u5;Lg5/pa;)V
    .locals 0

    iput-object p1, p0, Lg5/m5;->b:Lg5/u5;

    iput-object p2, p0, Lg5/m5;->a:Lg5/pa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lg5/m5;->b:Lg5/u5;

    invoke-static {v0}, Lg5/u5;->b2(Lg5/u5;)Lg5/ba;

    move-result-object v0

    invoke-virtual {v0}, Lg5/ba;->a()V

    iget-object v0, p0, Lg5/m5;->b:Lg5/u5;

    invoke-static {v0}, Lg5/u5;->b2(Lg5/u5;)Lg5/ba;

    move-result-object v0

    iget-object v1, p0, Lg5/m5;->a:Lg5/pa;

    invoke-virtual {v0}, Lg5/ba;->P()Lg5/y4;

    move-result-object v2

    invoke-virtual {v2}, Lg5/v5;->c()V

    invoke-virtual {v0}, Lg5/ba;->b()V

    iget-object v2, v1, Lg5/pa;->a:Ljava/lang/String;

    invoke-static {v2}, Lx3/q;->f(Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, v1, Lg5/pa;->G:Ljava/lang/String;

    invoke-static {v2}, Lg5/h;->b(Ljava/lang/String;)Lg5/h;

    move-result-object v2

    iget-object v3, v1, Lg5/pa;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lg5/ba;->U(Ljava/lang/String;)Lg5/h;

    move-result-object v3

    invoke-virtual {v0}, Lg5/ba;->F()Lg5/q3;

    move-result-object v4

    invoke-virtual {v4}, Lg5/q3;->q()Lg5/o3;

    move-result-object v4

    iget-object v5, v1, Lg5/pa;->a:Ljava/lang/String;

    const-string v6, "Setting consent, package, consent"

    invoke-virtual {v4, v6, v5, v2}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v4, v1, Lg5/pa;->a:Ljava/lang/String;

    invoke-virtual {v0, v4, v2}, Lg5/ba;->t(Ljava/lang/String;Lg5/h;)V

    invoke-virtual {v2, v3}, Lg5/h;->m(Lg5/h;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Lg5/ba;->p(Lg5/pa;)V

    :cond_0
    return-void
.end method
