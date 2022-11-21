.class public Le4/a;
.super Ly3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Le4/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroid/os/ParcelFileDescriptor;

.field public final b:I

.field public final d:I

.field public final k:Lcom/google/android/gms/drive/DriveId;

.field public final p:Z

.field public final q:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le4/b;

    invoke-direct {v0}, Le4/b;-><init>()V

    sput-object v0, Le4/a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/ParcelFileDescriptor;IILcom/google/android/gms/drive/DriveId;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ly3/a;-><init>()V

    iput-object p1, p0, Le4/a;->a:Landroid/os/ParcelFileDescriptor;

    iput p2, p0, Le4/a;->b:I

    iput p3, p0, Le4/a;->d:I

    iput-object p4, p0, Le4/a;->k:Lcom/google/android/gms/drive/DriveId;

    iput-boolean p5, p0, Le4/a;->p:Z

    iput-object p6, p0, Le4/a;->q:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Ly3/c;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Le4/a;->a:Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Ly3/c;->q(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget v1, p0, Le4/a;->b:I

    const/4 v2, 0x3

    invoke-static {p1, v2, v1}, Ly3/c;->l(Landroid/os/Parcel;II)V

    iget v1, p0, Le4/a;->d:I

    const/4 v2, 0x4

    invoke-static {p1, v2, v1}, Ly3/c;->l(Landroid/os/Parcel;II)V

    iget-object v1, p0, Le4/a;->k:Lcom/google/android/gms/drive/DriveId;

    const/4 v2, 0x5

    invoke-static {p1, v2, v1, p2, v3}, Ly3/c;->q(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-boolean p2, p0, Le4/a;->p:Z

    const/4 v1, 0x7

    invoke-static {p1, v1, p2}, Ly3/c;->c(Landroid/os/Parcel;IZ)V

    iget-object p2, p0, Le4/a;->q:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-static {p1, v1, p2, v3}, Ly3/c;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, v0}, Ly3/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
