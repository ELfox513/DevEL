.class public final Lr4/a11;
.super Lr4/i31;
.source "SourceFile"


# instance fields
.field public final i:Lr4/cs0;

.field public final j:I

.field public final k:Landroid/content/Context;

.field public final l:Lr4/h01;

.field public final m:Lr4/dh1;

.field public final n:Lr4/w71;

.field public o:Z


# direct methods
.method public constructor <init>(Lr4/h31;Landroid/content/Context;Lr4/cs0;ILr4/h01;Lr4/dh1;Lr4/w71;)V
    .locals 0

    invoke-direct {p0, p1}, Lr4/i31;-><init>(Lr4/h31;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lr4/a11;->o:Z

    iput-object p3, p0, Lr4/a11;->i:Lr4/cs0;

    iput-object p2, p0, Lr4/a11;->k:Landroid/content/Context;

    iput p4, p0, Lr4/a11;->j:I

    iput-object p5, p0, Lr4/a11;->l:Lr4/h01;

    iput-object p6, p0, Lr4/a11;->m:Lr4/dh1;

    iput-object p7, p0, Lr4/a11;->n:Lr4/w71;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    invoke-super {p0}, Lr4/i31;->b()V

    iget-object v0, p0, Lr4/a11;->i:Lr4/cs0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lr4/cs0;->destroy()V

    :cond_0
    return-void
.end method

.method public final g(Lr4/bo;)V
    .locals 1

    iget-object v0, p0, Lr4/a11;->i:Lr4/cs0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lr4/cs0;->z0(Lr4/bo;)V

    :cond_0
    return-void
.end method

.method public final h(Landroid/app/Activity;Lr4/ko;Z)V
    .locals 3

    if-nez p1, :cond_0

    iget-object p1, p0, Lr4/a11;->k:Landroid/content/Context;

    :cond_0
    sget-object v0, Lr4/rz;->r0:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    invoke-static {p1}, Lb3/k2;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, "Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://googlemobileadssdk.page.link/admob-interstitial-policies"

    invoke-static {p2}, Lr4/cm0;->f(Ljava/lang/String;)V

    iget-object p2, p0, Lr4/a11;->n:Lr4/w71;

    invoke-virtual {p2}, Lr4/w71;->e()V

    sget-object p2, Lr4/rz;->s0:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object p3

    invoke-virtual {p3, p2}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Lr4/sx2;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lz2/t;->r()Lb3/c1;

    move-result-object p3

    invoke-virtual {p3}, Lb3/c1;->a()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lr4/sx2;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iget-object p1, p0, Lr4/i31;->a:Lr4/bp2;

    iget-object p1, p1, Lr4/bp2;->b:Lr4/ap2;

    iget-object p1, p1, Lr4/ap2;->b:Lr4/so2;

    iget-object p1, p1, Lr4/so2;->b:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lr4/sx2;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lr4/a11;->o:Z

    if-eqz v0, :cond_2

    const-string v0, "App open interstitial ad is already visible."

    invoke-static {v0}, Lr4/cm0;->f(Ljava/lang/String;)V

    sget-object v0, Lr4/rz;->X6:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lr4/a11;->n:Lr4/w71;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lr4/dq2;->d(ILjava/lang/String;Lr4/lt;)Lr4/lt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr4/w71;->S(Lr4/lt;)V

    :cond_2
    iget-boolean v0, p0, Lr4/a11;->o:Z

    if-nez v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lr4/a11;->m:Lr4/dh1;

    iget-object v1, p0, Lr4/a11;->n:Lr4/w71;

    invoke-interface {v0, p3, p1, v1}, Lr4/dh1;->a(ZLandroid/content/Context;Lr4/w71;)V
    :try_end_0
    .catch Lr4/ch1; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr4/a11;->o:Z

    return-void

    :catch_0
    move-exception p1

    sget-object p3, Lr4/rz;->X6:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v0

    invoke-virtual {v0, p3}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p2, p0, Lr4/a11;->n:Lr4/w71;

    invoke-virtual {p2, p1}, Lr4/w71;->U(Lr4/ch1;)V

    return-void

    :cond_3
    invoke-static {p1}, Lr4/dq2;->a(Ljava/lang/Throwable;)Lr4/lt;

    move-result-object p1

    invoke-interface {p2, p1}, Lr4/ko;->q0(Lr4/lt;)V

    :cond_4
    return-void
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lr4/a11;->j:I

    return v0
.end method

.method public final j(JI)V
    .locals 1

    iget-object v0, p0, Lr4/a11;->l:Lr4/h01;

    invoke-virtual {v0, p1, p2, p3}, Lr4/h01;->a(JI)V

    return-void
.end method
