.class public final Lr4/pi1;
.super Lr4/l20;
.source "SourceFile"


# instance fields
.field public final a:Lr4/ej1;

.field public b:Lf4/a;


# direct methods
.method public constructor <init>(Lr4/ej1;)V
    .locals 0

    invoke-direct {p0}, Lr4/l20;-><init>()V

    iput-object p1, p0, Lr4/pi1;->a:Lr4/ej1;

    return-void
.end method

.method public static f7(Lf4/a;)F
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    :cond_1
    return v0
.end method


# virtual methods
.method public final H4(Lr4/u30;)V
    .locals 2

    sget-object v0, Lr4/rz;->B4:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lr4/pi1;->a:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->e0()Lr4/lx;

    move-result-object v0

    instance-of v0, v0, Lr4/at0;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr4/pi1;->a:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->e0()Lr4/lx;

    move-result-object v0

    check-cast v0, Lr4/at0;

    invoke-virtual {v0, p1}, Lr4/at0;->l7(Lr4/u30;)V

    :cond_1
    return-void
.end method

.method public final c()F
    .locals 4

    sget-object v0, Lr4/rz;->A4:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lr4/pi1;->a:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->w()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr4/pi1;->a:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->w()F

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lr4/pi1;->a:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->e0()Lr4/lx;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lr4/pi1;->a:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->e0()Lr4/lx;

    move-result-object v0

    invoke-interface {v0}, Lr4/lx;->l()F

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Remote exception getting video controller aspect ratio."

    invoke-static {v2, v0}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return v1

    :cond_2
    iget-object v0, p0, Lr4/pi1;->b:Lf4/a;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lr4/pi1;->f7(Lf4/a;)F

    move-result v1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lr4/pi1;->a:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->b()Lr4/p20;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v0}, Lr4/p20;->c()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    invoke-interface {v0}, Lr4/p20;->d()I

    move-result v2

    if-eq v2, v3, :cond_5

    invoke-interface {v0}, Lr4/p20;->c()I

    move-result v2

    int-to-float v2, v2

    invoke-interface {v0}, Lr4/p20;->d()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    cmpl-float v1, v2, v1

    if-nez v1, :cond_6

    invoke-interface {v0}, Lr4/p20;->a()Lf4/a;

    move-result-object v0

    invoke-static {v0}, Lr4/pi1;->f7(Lf4/a;)F

    move-result v0

    return v0

    :cond_6
    move v1, v2

    :goto_2
    return v1
.end method

.method public final f()F
    .locals 2

    sget-object v0, Lr4/rz;->B4:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lr4/pi1;->a:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->e0()Lr4/lx;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr4/pi1;->a:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->e0()Lr4/lx;

    move-result-object v0

    invoke-interface {v0}, Lr4/lx;->h()F

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public final g()Lf4/a;
    .locals 1

    iget-object v0, p0, Lr4/pi1;->b:Lf4/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lr4/pi1;->a:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->b()Lr4/p20;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-interface {v0}, Lr4/p20;->a()Lf4/a;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lr4/lx;
    .locals 2

    sget-object v0, Lr4/rz;->B4:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lr4/pi1;->a:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->e0()Lr4/lx;

    move-result-object v0

    return-object v0
.end method

.method public final i()Z
    .locals 2

    sget-object v0, Lr4/rz;->B4:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lr4/pi1;->a:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->e0()Lr4/lx;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public final j()F
    .locals 2

    sget-object v0, Lr4/rz;->B4:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lr4/pi1;->a:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->e0()Lr4/lx;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr4/pi1;->a:Lr4/ej1;

    invoke-virtual {v0}, Lr4/ej1;->e0()Lr4/lx;

    move-result-object v0

    invoke-interface {v0}, Lr4/lx;->i()F

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public final zzf(Lf4/a;)V
    .locals 0

    iput-object p1, p0, Lr4/pi1;->b:Lf4/a;

    return-void
.end method
