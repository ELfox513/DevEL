.class public final Lr4/u61;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lr4/hp2;

.field public final c:Landroid/os/Bundle;

.field public final d:Lr4/cp2;


# direct methods
.method public synthetic constructor <init>(Lr4/s61;Lr4/t61;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lr4/s61;->a(Lr4/s61;)Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lr4/u61;->a:Landroid/content/Context;

    invoke-static {p1}, Lr4/s61;->b(Lr4/s61;)Lr4/hp2;

    move-result-object p2

    iput-object p2, p0, Lr4/u61;->b:Lr4/hp2;

    invoke-static {p1}, Lr4/s61;->c(Lr4/s61;)Landroid/os/Bundle;

    move-result-object p2

    iput-object p2, p0, Lr4/u61;->c:Landroid/os/Bundle;

    invoke-static {p1}, Lr4/s61;->d(Lr4/s61;)Lr4/cp2;

    move-result-object p1

    iput-object p1, p0, Lr4/u61;->d:Lr4/cp2;

    return-void
.end method


# virtual methods
.method public final a()Lr4/s61;
    .locals 2

    new-instance v0, Lr4/s61;

    invoke-direct {v0}, Lr4/s61;-><init>()V

    iget-object v1, p0, Lr4/u61;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lr4/s61;->e(Landroid/content/Context;)Lr4/s61;

    iget-object v1, p0, Lr4/u61;->b:Lr4/hp2;

    invoke-virtual {v0, v1}, Lr4/s61;->f(Lr4/hp2;)Lr4/s61;

    iget-object v1, p0, Lr4/u61;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lr4/s61;->g(Landroid/os/Bundle;)Lr4/s61;

    return-object v0
.end method

.method public final b()Lr4/hp2;
    .locals 1

    iget-object v0, p0, Lr4/u61;->b:Lr4/hp2;

    return-object v0
.end method

.method public final c()Lr4/cp2;
    .locals 1

    iget-object v0, p0, Lr4/u61;->d:Lr4/cp2;

    return-object v0
.end method

.method public final d()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lr4/u61;->c:Landroid/os/Bundle;

    return-object v0
.end method

.method public final e(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    iget-object p1, p0, Lr4/u61;->a:Landroid/content/Context;

    return-object p1
.end method
