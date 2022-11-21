.class public Lcom/google/android/gms/drive/DriveId;
.super Ly3/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/drive/DriveId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final d:J

.field public final k:I

.field public volatile p:Ljava/lang/String;

.field public volatile q:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le4/c;

    invoke-direct {v0}, Le4/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/DriveId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJI)V
    .locals 4

    invoke-direct {p0}, Ly3/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/drive/DriveId;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/drive/DriveId;->q:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/drive/DriveId;->a:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lx3/q;->a(Z)V

    if-nez p1, :cond_1

    const-wide/16 v2, -0x1

    cmp-long p1, p2, v2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-static {v1}, Lx3/q;->a(Z)V

    iput-wide p2, p0, Lcom/google/android/gms/drive/DriveId;->b:J

    iput-wide p4, p0, Lcom/google/android/gms/drive/DriveId;->d:J

    iput p6, p0, Lcom/google/android/gms/drive/DriveId;->k:I

    return-void
.end method


# virtual methods
.method public final X0()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->p:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-static {}, Lz4/a;->y()Lz4/a$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lz4/a$a;->z(I)Lz4/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/drive/DriveId;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-virtual {v0, v1}, Lz4/a$a;->u(Ljava/lang/String;)Lz4/a$a;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/drive/DriveId;->b:J

    invoke-virtual {v0, v1, v2}, Lz4/a$a;->v(J)Lz4/a$a;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/drive/DriveId;->d:J

    invoke-virtual {v0, v1, v2}, Lz4/a$a;->x(J)Lz4/a$a;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/drive/DriveId;->k:I

    invoke-virtual {v0, v1}, Lz4/a$a;->A(I)Lz4/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lz4/m0$a;->k()Lz4/r1;

    move-result-object v0

    check-cast v0, Lz4/m0;

    check-cast v0, Lz4/a;

    invoke-virtual {v0}, Lz4/c;->d()[B

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DriveId:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/drive/DriveId;->p:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->p:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/drive/DriveId;

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    check-cast p1, Lcom/google/android/gms/drive/DriveId;

    iget-wide v1, p1, Lcom/google/android/gms/drive/DriveId;->d:J

    iget-wide v3, p0, Lcom/google/android/gms/drive/DriveId;->d:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    return v0

    :cond_1
    iget-wide v1, p1, Lcom/google/android/gms/drive/DriveId;->b:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    iget-wide v5, p0, Lcom/google/android/gms/drive/DriveId;->b:J

    cmp-long v7, v5, v3

    if-nez v7, :cond_2

    iget-object p1, p1, Lcom/google/android/gms/drive/DriveId;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/drive/DriveId;->a:Ljava/lang/String;

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    iget-object p1, p1, Lcom/google/android/gms/drive/DriveId;->a:Ljava/lang/String;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    iget-wide v5, p0, Lcom/google/android/gms/drive/DriveId;->b:J

    cmp-long v7, v1, v5

    if-nez v7, :cond_4

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v4

    :cond_4
    return v0

    :cond_5
    :goto_0
    iget-wide v5, p0, Lcom/google/android/gms/drive/DriveId;->b:J

    cmp-long p1, v1, v5

    if-nez p1, :cond_6

    return v4

    :cond_6
    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 5

    iget-wide v0, p0, Lcom/google/android/gms/drive/DriveId;->b:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/drive/DriveId;->d:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/drive/DriveId;->b:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/drive/DriveId;->X0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Ly3/c;->a(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->a:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Ly3/c;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-wide v0, p0, Lcom/google/android/gms/drive/DriveId;->b:J

    const/4 v2, 0x3

    invoke-static {p1, v2, v0, v1}, Ly3/c;->o(Landroid/os/Parcel;IJ)V

    iget-wide v0, p0, Lcom/google/android/gms/drive/DriveId;->d:J

    const/4 v2, 0x4

    invoke-static {p1, v2, v0, v1}, Ly3/c;->o(Landroid/os/Parcel;IJ)V

    iget v0, p0, Lcom/google/android/gms/drive/DriveId;->k:I

    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, Ly3/c;->l(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, Ly3/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
