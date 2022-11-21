.class public abstract Lk4/e;
.super La5/a;
.source "SourceFile"

# interfaces
.implements Lk4/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.games.internal.IGamesClient"

    invoke-direct {p0, v0}, La5/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final j0(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    const/16 p2, 0x3e9

    if-ne p1, p2, :cond_0

    invoke-interface {p0}, Lk4/b;->F0()La5/w;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, La5/n;->e(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
