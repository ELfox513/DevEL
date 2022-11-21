.class public abstract Lr4/jg0;
.super Lr4/r2;
.source "SourceFile"

# interfaces
.implements Lr4/kg0;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener"

    invoke-direct {p0, v0}, Lr4/r2;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final e7(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1

    const/4 p4, 0x1

    if-eq p1, p4, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    sget-object p1, Lb3/g0;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lr4/s2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lb3/g0;

    invoke-interface {p0, p1}, Lr4/kg0;->M4(Lb3/g0;)V

    goto :goto_0

    :cond_1
    sget-object p1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lr4/s2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    invoke-interface {p0, p1}, Lr4/kg0;->E4(Landroid/os/ParcelFileDescriptor;)V

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p4
.end method
