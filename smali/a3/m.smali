.class public final La3/m;
.super Lb3/d0;
.source "SourceFile"


# instance fields
.field public final synthetic c:La3/n;


# direct methods
.method public synthetic constructor <init>(La3/n;La3/k;)V
    .locals 0

    iput-object p1, p0, La3/m;->c:La3/n;

    invoke-direct {p0}, Lb3/d0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Lz2/t;->w()Lb3/d1;

    move-result-object v0

    iget-object v1, p0, La3/m;->c:La3/n;

    iget-object v1, v1, La3/n;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->z:Lz2/j;

    iget v1, v1, Lz2/j;->q:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb3/d1;->a(Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lz2/t;->f()Lb3/g;

    move-result-object v1

    iget-object v2, p0, La3/m;->c:La3/n;

    iget-object v3, v2, La3/n;->a:Landroid/app/Activity;

    iget-object v2, v2, La3/n;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->z:Lz2/j;

    iget-boolean v4, v2, Lz2/j;->k:Z

    iget v2, v2, Lz2/j;->p:F

    invoke-virtual {v1, v3, v0, v4, v2}, Lb3/g;->d(Landroid/content/Context;Landroid/graphics/Bitmap;ZF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Lb3/k2;->i:Lr4/c03;

    new-instance v2, La3/l;

    invoke-direct {v2, p0, v0}, La3/l;-><init>(La3/m;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
