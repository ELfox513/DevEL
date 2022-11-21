.class public final Lg5/n5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lg5/u;

.field public final synthetic b:Lg5/pa;

.field public final synthetic d:Lg5/u5;


# direct methods
.method public constructor <init>(Lg5/u5;Lg5/u;Lg5/pa;)V
    .locals 0

    iput-object p1, p0, Lg5/n5;->d:Lg5/u5;

    iput-object p2, p0, Lg5/n5;->a:Lg5/u;

    iput-object p3, p0, Lg5/n5;->b:Lg5/pa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lg5/n5;->d:Lg5/u5;

    iget-object v1, p0, Lg5/n5;->a:Lg5/u;

    iget-object v2, p0, Lg5/n5;->b:Lg5/pa;

    invoke-virtual {v0, v1, v2}, Lg5/u5;->L0(Lg5/u;Lg5/pa;)Lg5/u;

    move-result-object v0

    invoke-static {}, Lb5/qe;->b()Z

    iget-object v1, p0, Lg5/n5;->d:Lg5/u5;

    invoke-static {v1}, Lg5/u5;->b2(Lg5/u5;)Lg5/ba;

    move-result-object v1

    invoke-virtual {v1}, Lg5/ba;->T()Lg5/g;

    move-result-object v1

    sget-object v2, Lg5/c3;->x0:Lg5/b3;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lg5/g;->w(Ljava/lang/String;Lg5/b3;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lg5/n5;->d:Lg5/u5;

    iget-object v2, p0, Lg5/n5;->b:Lg5/pa;

    invoke-virtual {v1, v0, v2}, Lg5/u5;->e3(Lg5/u;Lg5/pa;)V

    return-void

    :cond_0
    iget-object v1, p0, Lg5/n5;->d:Lg5/u5;

    iget-object v2, p0, Lg5/n5;->b:Lg5/pa;

    invoke-static {v1, v0, v2}, Lg5/u5;->A2(Lg5/u5;Lg5/u;Lg5/pa;)V

    return-void
.end method
