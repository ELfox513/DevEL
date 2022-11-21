.class public final Lr4/jn1;
.super Lr4/b30;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lr4/zi1;

.field public final d:Lr4/ej1;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lr4/zi1;Lr4/ej1;)V
    .locals 0

    invoke-direct {p0}, Lr4/b30;-><init>()V

    iput-object p1, p0, Lr4/jn1;->a:Ljava/lang/String;

    iput-object p2, p0, Lr4/jn1;->b:Lr4/zi1;

    iput-object p3, p0, Lr4/jn1;->d:Lr4/ej1;

    return-void
.end method


# virtual methods
.method public final B3(Landroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Lr4/jn1;->b:Lr4/zi1;

    invoke-virtual {v0, p1}, Lr4/zi1;->D(Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final U3(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lr4/jn1;->b:Lr4/zi1;

    invoke-virtual {v0, p1}, Lr4/zi1;->C(Landroid/os/Bundle;)V

    return-void
.end method

.method public final a()Lf4/a;
    .locals 1

    iget-object v0, p0, Lr4/jn1;->b:Lr4/zi1;

    invoke-static {v0}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/jn1;->d:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->h0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/jn1;->d:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lr4/p20;
    .locals 1

    iget-object v0, p0, Lr4/jn1;->d:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->p()Lr4/p20;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lr4/jn1;->d:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final e0(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lr4/jn1;->b:Lr4/zi1;

    invoke-virtual {v0, p1}, Lr4/zi1;->E(Landroid/os/Bundle;)V

    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/jn1;->d:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/jn1;->d:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Lr4/jn1;->b:Lr4/zi1;

    invoke-virtual {v0}, Lr4/i31;->b()V

    return-void
.end method

.method public final i()Lr4/lx;
    .locals 1

    iget-object v0, p0, Lr4/jn1;->d:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->e0()Lr4/lx;

    move-result-object v0

    return-object v0
.end method

.method public final j()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lr4/jn1;->d:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->f()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/jn1;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Lf4/a;
    .locals 1

    iget-object v0, p0, Lr4/jn1;->d:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->j()Lf4/a;

    move-result-object v0

    return-object v0
.end method

.method public final q()Lr4/h20;
    .locals 1

    iget-object v0, p0, Lr4/jn1;->d:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->f0()Lr4/h20;

    move-result-object v0

    return-object v0
.end method
