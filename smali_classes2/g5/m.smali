.class public final Lg5/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lg5/x5;

.field public final synthetic b:Lg5/n;


# direct methods
.method public constructor <init>(Lg5/n;Lg5/x5;)V
    .locals 0

    iput-object p1, p0, Lg5/m;->b:Lg5/n;

    iput-object p2, p0, Lg5/m;->a:Lg5/x5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lg5/m;->a:Lg5/x5;

    invoke-interface {v0}, Lg5/x5;->G()Lg5/b;

    invoke-static {}, Lg5/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg5/m;->a:Lg5/x5;

    invoke-interface {v0}, Lg5/x5;->P()Lg5/y4;

    move-result-object v0

    invoke-virtual {v0, p0}, Lg5/y4;->u(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lg5/m;->b:Lg5/n;

    invoke-virtual {v0}, Lg5/n;->e()Z

    move-result v0

    iget-object v1, p0, Lg5/m;->b:Lg5/n;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lg5/n;->a(Lg5/n;J)V

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg5/m;->b:Lg5/n;

    invoke-virtual {v0}, Lg5/n;->c()V

    :cond_1
    return-void
.end method
