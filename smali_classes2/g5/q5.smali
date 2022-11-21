.class public final Lg5/q5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lg5/ea;

.field public final synthetic b:Lg5/pa;

.field public final synthetic d:Lg5/u5;


# direct methods
.method public constructor <init>(Lg5/u5;Lg5/ea;Lg5/pa;)V
    .locals 0

    iput-object p1, p0, Lg5/q5;->d:Lg5/u5;

    iput-object p2, p0, Lg5/q5;->a:Lg5/ea;

    iput-object p3, p0, Lg5/q5;->b:Lg5/pa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lg5/q5;->d:Lg5/u5;

    invoke-static {v0}, Lg5/u5;->b2(Lg5/u5;)Lg5/ba;

    move-result-object v0

    invoke-virtual {v0}, Lg5/ba;->a()V

    iget-object v0, p0, Lg5/q5;->a:Lg5/ea;

    invoke-virtual {v0}, Lg5/ea;->X0()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lg5/q5;->d:Lg5/u5;

    invoke-static {v0}, Lg5/u5;->b2(Lg5/u5;)Lg5/ba;

    move-result-object v0

    iget-object v1, p0, Lg5/q5;->a:Lg5/ea;

    iget-object v2, p0, Lg5/q5;->b:Lg5/pa;

    invoke-virtual {v0, v1, v2}, Lg5/ba;->o(Lg5/ea;Lg5/pa;)V

    return-void

    :cond_0
    iget-object v0, p0, Lg5/q5;->d:Lg5/u5;

    invoke-static {v0}, Lg5/u5;->b2(Lg5/u5;)Lg5/ba;

    move-result-object v0

    iget-object v1, p0, Lg5/q5;->a:Lg5/ea;

    iget-object v2, p0, Lg5/q5;->b:Lg5/pa;

    invoke-virtual {v0, v1, v2}, Lg5/ba;->u(Lg5/ea;Lg5/pa;)V

    return-void
.end method
