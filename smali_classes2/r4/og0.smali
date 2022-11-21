.class public final Lr4/og0;
.super Ly3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lr4/og0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroid/os/Bundle;

.field public final b:Lr4/im0;

.field public final d:Landroid/content/pm/ApplicationInfo;

.field public final k:Ljava/lang/String;

.field public final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Landroid/content/pm/PackageInfo;

.field public final r:Ljava/lang/String;

.field public final s:Ljava/lang/String;

.field public t:Lr4/br2;

.field public u:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/pg0;

    invoke-direct {v0}, Lr4/pg0;-><init>()V

    sput-object v0, Lr4/og0;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;Lr4/im0;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lr4/br2;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Lr4/im0;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lr4/br2;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ly3/a;-><init>()V

    iput-object p1, p0, Lr4/og0;->a:Landroid/os/Bundle;

    iput-object p2, p0, Lr4/og0;->b:Lr4/im0;

    iput-object p4, p0, Lr4/og0;->k:Ljava/lang/String;

    iput-object p3, p0, Lr4/og0;->d:Landroid/content/pm/ApplicationInfo;

    iput-object p5, p0, Lr4/og0;->p:Ljava/util/List;

    iput-object p6, p0, Lr4/og0;->q:Landroid/content/pm/PackageInfo;

    iput-object p7, p0, Lr4/og0;->r:Ljava/lang/String;

    iput-object p8, p0, Lr4/og0;->s:Ljava/lang/String;

    iput-object p9, p0, Lr4/og0;->t:Lr4/br2;

    iput-object p10, p0, Lr4/og0;->u:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Ly3/c;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lr4/og0;->a:Landroid/os/Bundle;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Ly3/c;->f(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    iget-object v1, p0, Lr4/og0;->b:Lr4/im0;

    const/4 v2, 0x2

    invoke-static {p1, v2, v1, p2, v3}, Ly3/c;->q(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lr4/og0;->d:Landroid/content/pm/ApplicationInfo;

    const/4 v2, 0x3

    invoke-static {p1, v2, v1, p2, v3}, Ly3/c;->q(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lr4/og0;->k:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {p1, v2, v1, v3}, Ly3/c;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lr4/og0;->p:Ljava/util/List;

    const/4 v2, 0x5

    invoke-static {p1, v2, v1, v3}, Ly3/c;->t(Landroid/os/Parcel;ILjava/util/List;Z)V

    iget-object v1, p0, Lr4/og0;->q:Landroid/content/pm/PackageInfo;

    const/4 v2, 0x6

    invoke-static {p1, v2, v1, p2, v3}, Ly3/c;->q(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lr4/og0;->r:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-static {p1, v2, v1, v3}, Ly3/c;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lr4/og0;->s:Ljava/lang/String;

    const/16 v2, 0x9

    invoke-static {p1, v2, v1, v3}, Ly3/c;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lr4/og0;->t:Lr4/br2;

    const/16 v2, 0xa

    invoke-static {p1, v2, v1, p2, v3}, Ly3/c;->q(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p2, p0, Lr4/og0;->u:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-static {p1, v1, p2, v3}, Ly3/c;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, v0}, Ly3/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
