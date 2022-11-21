.class public final Lr4/lf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lr4/kf;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lr4/lf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:[Lr4/kf;

.field public b:I

.field public final d:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/if;

    invoke-direct {v0}, Lr4/if;-><init>()V

    sput-object v0, Lr4/lf;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lr4/kf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lr4/kf;

    iput-object p1, p0, Lr4/lf;->a:[Lr4/kf;

    array-length p1, p1

    iput p1, p0, Lr4/lf;->d:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lr4/kf;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lr4/kf;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lr4/kf;

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lr4/lf;-><init>(Z[Lr4/kf;)V

    return-void
.end method

.method public varargs constructor <init>(Z[Lr4/kf;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p2}, [Lr4/kf;->clone()Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, [Lr4/kf;

    :cond_0
    invoke-static {p2, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 p1, 0x1

    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_2

    add-int/lit8 v0, p1, -0x1

    aget-object v0, p2, v0

    invoke-static {v0}, Lr4/kf;->a(Lr4/kf;)Ljava/util/UUID;

    move-result-object v0

    aget-object v1, p2, p1

    invoke-static {v1}, Lr4/kf;->a(Lr4/kf;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    aget-object p1, p2, p1

    invoke-static {p1}, Lr4/kf;->a(Lr4/kf;)Ljava/util/UUID;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Duplicate data for uuid: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p2, p0, Lr4/lf;->a:[Lr4/kf;

    iput v0, p0, Lr4/lf;->d:I

    return-void
.end method

.method public varargs constructor <init>([Lr4/kf;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lr4/lf;-><init>(Z[Lr4/kf;)V

    return-void
.end method


# virtual methods
.method public final a(I)Lr4/kf;
    .locals 1

    iget-object v0, p0, Lr4/lf;->a:[Lr4/kf;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lr4/kf;

    check-cast p2, Lr4/kf;

    sget-object v0, Lr4/sc;->b:Ljava/util/UUID;

    invoke-static {p1}, Lr4/kf;->a(Lr4/kf;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Lr4/kf;->a(Lr4/kf;)Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-static {p1}, Lr4/kf;->a(Lr4/kf;)Ljava/util/UUID;

    move-result-object p1

    invoke-static {p2}, Lr4/kf;->a(Lr4/kf;)Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    const-class v0, Lr4/lf;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lr4/lf;->a:[Lr4/kf;

    check-cast p1, Lr4/lf;

    iget-object p1, p1, Lr4/lf;->a:[Lr4/kf;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lr4/lf;->b:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lr4/lf;->a:[Lr4/kf;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lr4/lf;->b:I

    :cond_0
    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object p2, p0, Lr4/lf;->a:[Lr4/kf;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return-void
.end method
