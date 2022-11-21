.class public final La3/o;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V
    .locals 3

    iget v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->v:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:La3/q;

    if-nez v0, :cond_4

    iget-object p2, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->b:Lr4/gt;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lr4/gt;->F0()V

    :cond_0
    iget-object p2, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->J:Lr4/cf1;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lr4/cf1;->a()V

    :cond_1
    iget-object p2, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->k:Lr4/cs0;

    invoke-interface {p2}, Lr4/cs0;->h()Landroid/app/Activity;

    move-result-object p2

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->a:La3/e;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, La3/e;->u:Z

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    move-object p0, p2

    :cond_2
    invoke-static {}, Lz2/t;->b()La3/a;

    iget-object p2, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->a:La3/e;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->t:La3/x;

    if-eqz p2, :cond_3

    iget-object v0, p2, La3/e;->t:La3/v;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, p2, p1, v0}, La3/a;->b(Landroid/content/Context;La3/e;La3/x;La3/v;)Z

    return-void

    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.gms.ads.AdActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->x:Lr4/im0;

    iget-boolean v1, v1, Lr4/im0;->k:Z

    const-string v2, "com.google.android.gms.ads.internal.overlay.useClientJar"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "shouldCallOnOverlayOpened"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance p2, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {p2, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v1, "com.google.android.gms.ads.inernal.overlay.AdOverlayInfo"

    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {}, Lc4/o;->h()Z

    move-result p1

    if-nez p1, :cond_5

    const/high16 p1, 0x80000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_5
    instance-of p1, p0, Landroid/app/Activity;

    if-nez p1, :cond_6

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_6
    invoke-static {}, Lz2/t;->d()Lb3/k2;

    invoke-static {p0, v0}, Lb3/k2;->p(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
