.class public final Lcom/google/android/gms/measurement/AppMeasurementService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lg5/b9;


# instance fields
.field public a:Lg5/c9;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg5/c9<",
            "Lcom/google/android/gms/measurement/AppMeasurementService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public final D(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelfResult(I)Z

    move-result p1

    return p1
.end method

.method public final E(Landroid/content/Intent;)V
    .locals 0

    invoke-static {p1}, Lj0/a;->b(Landroid/content/Intent;)Z

    return-void
.end method

.method public final F(Landroid/app/job/JobParameters;Z)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final a()Lg5/c9;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lg5/c9<",
            "Lcom/google/android/gms/measurement/AppMeasurementService;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService;->a:Lg5/c9;

    if-nez v0, :cond_0

    new-instance v0, Lg5/c9;

    invoke-direct {v0, p0}, Lg5/c9;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService;->a:Lg5/c9;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService;->a:Lg5/c9;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->a()Lg5/c9;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg5/c9;->b(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->a()Lg5/c9;

    move-result-object v0

    invoke-virtual {v0}, Lg5/c9;->e()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->a()Lg5/c9;

    move-result-object v0

    invoke-virtual {v0}, Lg5/c9;->f()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->a()Lg5/c9;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg5/c9;->g(Landroid/content/Intent;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->a()Lg5/c9;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lg5/c9;->a(Landroid/content/Intent;II)I

    const/4 p1, 0x2

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->a()Lg5/c9;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg5/c9;->j(Landroid/content/Intent;)Z

    const/4 p1, 0x1

    return p1
.end method
