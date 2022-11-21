.class public final Lr4/rd0;
.super Ly3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lr4/rd0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:I

.field public final d:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/sd0;

    invoke-direct {v0}, Lr4/sd0;-><init>()V

    sput-object v0, Lr4/rd0;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ly3/a;-><init>()V

    iput p1, p0, Lr4/rd0;->a:I

    iput p2, p0, Lr4/rd0;->b:I

    iput p3, p0, Lr4/rd0;->d:I

    return-void
.end method

.method public static X0(Ld3/w;)Lr4/rd0;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lr4/rd0;

    if-eqz v1, :cond_1

    check-cast p1, Lr4/rd0;

    iget v1, p1, Lr4/rd0;->d:I

    iget v2, p0, Lr4/rd0;->d:I

    if-ne v1, v2, :cond_1

    iget v1, p1, Lr4/rd0;->b:I

    iget v2, p0, Lr4/rd0;->b:I

    if-ne v1, v2, :cond_1

    iget p1, p1, Lr4/rd0;->a:I

    iget v1, p0, Lr4/rd0;->a:I

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    iget v1, p0, Lr4/rd0;->a:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lr4/rd0;->b:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lr4/rd0;->d:I

    const/4 v2, 0x2

    aput v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lr4/rd0;->a:I

    iget v1, p0, Lr4/rd0;->b:I

    iget v2, p0, Lr4/rd0;->d:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x23

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-static {p1}, Ly3/c;->a(Landroid/os/Parcel;)I

    move-result p2

    iget v0, p0, Lr4/rd0;->a:I

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Ly3/c;->l(Landroid/os/Parcel;II)V

    iget v0, p0, Lr4/rd0;->b:I

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Ly3/c;->l(Landroid/os/Parcel;II)V

    iget v0, p0, Lr4/rd0;->d:I

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Ly3/c;->l(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, Ly3/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
