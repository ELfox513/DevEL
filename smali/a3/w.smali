.class public final La3/w;
.super Lr4/ve0;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

.field public final b:Landroid/app/Activity;

.field public d:Z

.field public k:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .locals 1

    invoke-direct {p0}, Lr4/ve0;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, La3/w;->d:Z

    iput-boolean v0, p0, La3/w;->k:Z

    iput-object p2, p0, La3/w;->a:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iput-object p1, p0, La3/w;->b:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, La3/w;->k:Z

    if-nez v0, :cond_1

    iget-object v0, p0, La3/w;->a:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:La3/q;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, La3/q;->C6(I)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, La3/w;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, La3/w;->a:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:La3/q;

    if-eqz v0, :cond_0

    invoke-interface {v0}, La3/q;->c()V

    :cond_0
    return-void
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final h()V
    .locals 0

    return-void
.end method

.method public final i()V
    .locals 1

    iget-boolean v0, p0, La3/w;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, La3/w;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, La3/w;->d:Z

    iget-object v0, p0, La3/w;->a:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:La3/q;

    if-eqz v0, :cond_1

    invoke-interface {v0}, La3/q;->e3()V

    :cond_1
    return-void
.end method

.method public final i0(Lf4/a;)V
    .locals 0

    return-void
.end method

.method public final j()V
    .locals 0

    return-void
.end method

.method public final k()V
    .locals 1

    iget-object v0, p0, La3/w;->a:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:La3/q;

    if-eqz v0, :cond_0

    invoke-interface {v0}, La3/q;->A2()V

    :cond_0
    iget-object v0, p0, La3/w;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, La3/w;->a()V

    :cond_1
    return-void
.end method

.method public final l0(Landroid/os/Bundle;)V
    .locals 3

    sget-object v0, Lr4/rz;->n6:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, La3/w;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v2, "com.google.android.gms.ads.internal.overlay.hasResumed"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iget-object v2, p0, La3/w;->a:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-nez v2, :cond_2

    iget-object p1, p0, La3/w;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    if-eqz v0, :cond_3

    iget-object p1, p0, La3/w;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_3
    if-nez p1, :cond_6

    iget-object p1, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->b:Lr4/gt;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lr4/gt;->F0()V

    :cond_4
    iget-object p1, p0, La3/w;->a:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->J:Lr4/cf1;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lr4/cf1;->a()V

    :cond_5
    iget-object p1, p0, La3/w;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, La3/w;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "shouldCallOnOverlayOpened"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, La3/w;->a:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:La3/q;

    if-eqz p1, :cond_6

    invoke-interface {p1}, La3/q;->j0()V

    :cond_6
    invoke-static {}, Lz2/t;->b()La3/a;

    iget-object p1, p0, La3/w;->b:Landroid/app/Activity;

    iget-object v0, p0, La3/w;->a:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->a:La3/e;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->t:La3/x;

    iget-object v2, v1, La3/e;->t:La3/v;

    invoke-static {p1, v1, v0, v2}, La3/a;->b(Landroid/content/Context;La3/e;La3/x;La3/v;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, La3/w;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_7
    return-void
.end method

.method public final m()V
    .locals 1

    iget-object v0, p0, La3/w;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, La3/w;->a()V

    :cond_0
    return-void
.end method

.method public final m2(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public final o()V
    .locals 1

    iget-object v0, p0, La3/w;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, La3/w;->a()V

    :cond_0
    return-void
.end method

.method public final r()V
    .locals 0

    return-void
.end method

.method public final u0(Landroid/os/Bundle;)V
    .locals 2

    iget-boolean v0, p0, La3/w;->d:Z

    const-string v1, "com.google.android.gms.ads.internal.overlay.hasResumed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
