.class public final Lr4/au;
.super Ly3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lr4/au;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:I

.field public final d:Ljava/lang/String;

.field public final k:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/bu;

    invoke-direct {v0}, Lr4/bu;-><init>()V

    sput-object v0, Lr4/au;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ly3/a;-><init>()V

    iput p1, p0, Lr4/au;->a:I

    iput p2, p0, Lr4/au;->b:I

    iput-object p3, p0, Lr4/au;->d:Ljava/lang/String;

    iput-wide p4, p0, Lr4/au;->k:J

    return-void
.end method

.method public static X0(Lorg/json/JSONObject;)Lr4/au;
    .locals 7

    const-string v0, "type_num"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v0, "precision_num"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v0, "currency"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "value"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    new-instance p0, Lr4/au;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lr4/au;-><init>(IILjava/lang/String;J)V

    return-object p0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Ly3/c;->a(Landroid/os/Parcel;)I

    move-result p2

    iget v0, p0, Lr4/au;->a:I

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Ly3/c;->l(Landroid/os/Parcel;II)V

    iget v0, p0, Lr4/au;->b:I

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Ly3/c;->l(Landroid/os/Parcel;II)V

    iget-object v0, p0, Lr4/au;->d:Ljava/lang/String;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Ly3/c;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-wide v0, p0, Lr4/au;->k:J

    const/4 v2, 0x4

    invoke-static {p1, v2, v0, v1}, Ly3/c;->o(Landroid/os/Parcel;IJ)V

    invoke-static {p1, p2}, Ly3/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
