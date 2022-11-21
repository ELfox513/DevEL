.class public final Lr4/b52;
.super Lr4/y42;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/y42<",
        "Lr4/xf1;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/bu0;

.field public final b:Lr4/s61;

.field public final c:Lr4/j72;

.field public final d:Lr4/bd1;


# direct methods
.method public constructor <init>(Lr4/bu0;Lr4/s61;Lr4/j72;Lr4/bd1;)V
    .locals 0

    invoke-direct {p0}, Lr4/y42;-><init>()V

    iput-object p1, p0, Lr4/b52;->a:Lr4/bu0;

    iput-object p2, p0, Lr4/b52;->b:Lr4/s61;

    iput-object p3, p0, Lr4/b52;->c:Lr4/j72;

    iput-object p4, p0, Lr4/b52;->d:Lr4/bd1;

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
            "Lr4/xf1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/b52;->a:Lr4/bu0;

    invoke-virtual {v0}, Lr4/bu0;->s()Lr4/ug1;

    move-result-object v0

    iget-object v1, p0, Lr4/b52;->b:Lr4/s61;

    invoke-virtual {v1, p1}, Lr4/s61;->f(Lr4/hp2;)Lr4/s61;

    invoke-virtual {v1, p2}, Lr4/s61;->g(Landroid/os/Bundle;)Lr4/s61;

    invoke-virtual {v1}, Lr4/s61;->h()Lr4/u61;

    move-result-object p1

    invoke-interface {v0, p1}, Lr4/ug1;->b(Lr4/u61;)Lr4/ug1;

    iget-object p1, p0, Lr4/b52;->d:Lr4/bd1;

    invoke-interface {v0, p1}, Lr4/ug1;->i(Lr4/bd1;)Lr4/ug1;

    iget-object p1, p0, Lr4/b52;->c:Lr4/j72;

    invoke-interface {v0, p1}, Lr4/ug1;->q(Lr4/j72;)Lr4/ug1;

    invoke-interface {v0}, Lr4/ug1;->zza()Lr4/vg1;

    move-result-object p1

    invoke-virtual {p1}, Lr4/vg1;->b()Lr4/m41;

    move-result-object p1

    invoke-virtual {p1}, Lr4/m41;->c()Lr4/h83;

    move-result-object p2

    invoke-virtual {p1, p2}, Lr4/m41;->d(Lr4/h83;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method
