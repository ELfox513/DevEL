.class public final Li5/g;
.super Lw4/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    invoke-direct {p0, p1, v0}, Lw4/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final L0(Li5/j;Li5/f;)V
    .locals 1

    invoke-virtual {p0}, Lw4/a;->j0()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lw4/c;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p2}, Lw4/c;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0xc

    invoke-virtual {p0, p1, v0}, Lw4/a;->o0(ILandroid/os/Parcel;)V

    return-void
.end method
