.class public abstract Lr4/jw;
.super Lr4/r2;
.source "SourceFile"

# interfaces
.implements Lr4/kw;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.client.IFullScreenContentCallback"

    invoke-direct {p0, v0}, Lr4/r2;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final e7(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    const/4 p4, 0x1

    if-eq p1, p4, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-interface {p0}, Lr4/kw;->d()V

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lr4/kw;->c()V

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lr4/kw;->e()V

    goto :goto_0

    :cond_3
    invoke-interface {p0}, Lr4/kw;->b()V

    goto :goto_0

    :cond_4
    sget-object p1, Lr4/lt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lr4/s2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lr4/lt;

    invoke-interface {p0, p1}, Lr4/kw;->I4(Lr4/lt;)V

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p4
.end method
