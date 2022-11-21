.class public final Lr3/y;
.super Lv4/d;
.source "SourceFile"

# interfaces
.implements Lr3/v;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.signin.internal.ISignInService"

    invoke-direct {p0, p1, v0}, Lv4/d;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final D6(Lr3/t;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    .locals 1

    invoke-virtual {p0}, Lv4/d;->j0()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lv4/e;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p2}, Lv4/e;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x66

    invoke-virtual {p0, p1, v0}, Lv4/d;->o0(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final H5(Lr3/t;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    .locals 1

    invoke-virtual {p0}, Lv4/d;->j0()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lv4/e;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p2}, Lv4/e;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x67

    invoke-virtual {p0, p1, v0}, Lv4/d;->o0(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final Q3(Lr3/t;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    .locals 1

    invoke-virtual {p0}, Lv4/d;->j0()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lv4/e;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p2}, Lv4/e;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x65

    invoke-virtual {p0, p1, v0}, Lv4/d;->o0(ILandroid/os/Parcel;)V

    return-void
.end method
