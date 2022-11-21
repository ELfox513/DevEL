.class public final Lr4/w42;
.super Lr4/y42;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/y42<",
        "Lr4/p31;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/bu0;

.field public final b:Lr4/mh1;

.field public final c:Lr4/s61;

.field public final d:Lr4/bd1;


# direct methods
.method public constructor <init>(Lr4/bu0;Lr4/mh1;Lr4/s61;Lr4/bd1;)V
    .locals 0

    invoke-direct {p0}, Lr4/y42;-><init>()V

    iput-object p1, p0, Lr4/w42;->a:Lr4/bu0;

    iput-object p2, p0, Lr4/w42;->b:Lr4/mh1;

    iput-object p3, p0, Lr4/w42;->c:Lr4/s61;

    iput-object p4, p0, Lr4/w42;->d:Lr4/bd1;

    return-void
.end method


# virtual methods
.method public final c(Lr4/hp2;Landroid/os/Bundle;)Lr4/h83;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/hp2;",
            "Landroid/os/Bundle;",
            ")",
            "Lr4/h83<",
            "Lr4/p31;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/w42;->a:Lr4/bu0;

    invoke-virtual {v0}, Lr4/bu0;->u()Lr4/rh1;

    move-result-object v0

    iget-object v1, p0, Lr4/w42;->c:Lr4/s61;

    invoke-virtual {v1, p1}, Lr4/s61;->f(Lr4/hp2;)Lr4/s61;

    invoke-virtual {v1, p2}, Lr4/s61;->g(Landroid/os/Bundle;)Lr4/s61;

    invoke-virtual {v1}, Lr4/s61;->h()Lr4/u61;

    move-result-object p1

    invoke-interface {v0, p1}, Lr4/rh1;->j(Lr4/u61;)Lr4/rh1;

    iget-object p1, p0, Lr4/w42;->d:Lr4/bd1;

    invoke-interface {v0, p1}, Lr4/rh1;->l(Lr4/bd1;)Lr4/rh1;

    iget-object p1, p0, Lr4/w42;->b:Lr4/mh1;

    invoke-interface {v0, p1}, Lr4/rh1;->e(Lr4/mh1;)Lr4/rh1;

    new-instance p1, Lr4/e11;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lr4/e11;-><init>(Landroid/view/ViewGroup;)V

    invoke-interface {v0, p1}, Lr4/rh1;->f(Lr4/e11;)Lr4/rh1;

    invoke-interface {v0}, Lr4/rh1;->zza()Lr4/sh1;

    move-result-object p1

    invoke-virtual {p1}, Lr4/sh1;->a()Lr4/m41;

    move-result-object p1

    invoke-virtual {p1}, Lr4/m41;->c()Lr4/h83;

    move-result-object p2

    invoke-virtual {p1, p2}, Lr4/m41;->d(Lr4/h83;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method
