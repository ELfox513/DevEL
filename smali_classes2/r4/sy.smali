.class public final Lr4/sy;
.super Ly3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lr4/sy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/ty;

    invoke-direct {v0}, Lr4/ty;-><init>()V

    sput-object v0, Lr4/sy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ly3/a;-><init>()V

    iput p1, p0, Lr4/sy;->a:I

    iput p2, p0, Lr4/sy;->b:I

    return-void
.end method

.method public constructor <init>(Lt2/t;)V
    .locals 1

    invoke-direct {p0}, Ly3/a;-><init>()V

    invoke-virtual {p1}, Lt2/t;->b()I

    move-result v0

    iput v0, p0, Lr4/sy;->a:I

    invoke-virtual {p1}, Lt2/t;->c()I

    move-result p1

    iput p1, p0, Lr4/sy;->b:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-static {p1}, Ly3/c;->a(Landroid/os/Parcel;)I

    move-result p2

    iget v0, p0, Lr4/sy;->a:I

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Ly3/c;->l(Landroid/os/Parcel;II)V

    iget v0, p0, Lr4/sy;->b:I

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Ly3/c;->l(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, Ly3/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
