.class public final Lr4/ud0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

.field public final synthetic b:Lcom/google/android/gms/internal/ads/zzbye;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbye;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .locals 0

    iput-object p1, p0, Lr4/ud0;->b:Lcom/google/android/gms/internal/ads/zzbye;

    iput-object p2, p0, Lr4/ud0;->a:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lz2/t;->c()La3/o;

    iget-object v0, p0, Lr4/ud0;->b:Lcom/google/android/gms/internal/ads/zzbye;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbye;->a(Lcom/google/android/gms/internal/ads/zzbye;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lr4/ud0;->a:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, La3/o;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    return-void
.end method
