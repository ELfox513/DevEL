.class public abstract Lr4/nx;
.super Lr4/r2;
.source "SourceFile"

# interfaces
.implements Lr4/ox;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks"

    invoke-direct {p0, v0}, Lr4/r2;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final e7(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1

    const/4 p4, 0x1

    if-eq p1, p4, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {p2}, Lr4/s2;->a(Landroid/os/Parcel;)Z

    move-result p1

    invoke-interface {p0, p1}, Lr4/ox;->w4(Z)V

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lr4/ox;->f()V

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lr4/ox;->g()V

    goto :goto_0

    :cond_3
    invoke-interface {p0}, Lr4/ox;->d()V

    goto :goto_0

    :cond_4
    invoke-interface {p0}, Lr4/ox;->c()V

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p4
.end method
