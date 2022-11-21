.class public final Lt4/g;
.super Lt4/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.appset.internal.IAppSetService"

    invoke-direct {p0, p1, v0}, Lt4/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final t0(Lm3/d;Lt4/f;)V
    .locals 1

    invoke-virtual {p0}, Lt4/a;->j0()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lt4/c;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p2}, Lt4/c;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lt4/a;->o0(ILandroid/os/Parcel;)V

    return-void
.end method
