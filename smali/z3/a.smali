.class public final Lz3/a;
.super Lw4/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.common.internal.service.IClientTelemetryService"

    invoke-direct {p0, p1, v0}, Lw4/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final L0(Lx3/u;)V
    .locals 1

    invoke-virtual {p0}, Lw4/a;->j0()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lw4/c;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lw4/a;->t0(ILandroid/os/Parcel;)V

    return-void
.end method
