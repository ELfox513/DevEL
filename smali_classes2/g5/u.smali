.class public final Lg5/u;
.super Ly3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lg5/u;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lg5/s;

.field public final d:Ljava/lang/String;

.field public final k:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg5/v;

    invoke-direct {v0}, Lg5/v;-><init>()V

    sput-object v0, Lg5/u;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lg5/u;J)V
    .locals 1

    invoke-direct {p0}, Ly3/a;-><init>()V

    invoke-static {p1}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lg5/u;->a:Ljava/lang/String;

    iput-object v0, p0, Lg5/u;->a:Ljava/lang/String;

    iget-object v0, p1, Lg5/u;->b:Lg5/s;

    iput-object v0, p0, Lg5/u;->b:Lg5/s;

    iget-object p1, p1, Lg5/u;->d:Ljava/lang/String;

    iput-object p1, p0, Lg5/u;->d:Ljava/lang/String;

    iput-wide p2, p0, Lg5/u;->k:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lg5/s;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ly3/a;-><init>()V

    iput-object p1, p0, Lg5/u;->a:Ljava/lang/String;

    iput-object p2, p0, Lg5/u;->b:Lg5/s;

    iput-object p3, p0, Lg5/u;->d:Ljava/lang/String;

    iput-wide p4, p0, Lg5/u;->k:J

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lg5/u;->d:Ljava/lang/String;

    iget-object v1, p0, Lg5/u;->a:Ljava/lang/String;

    iget-object v2, p0, Lg5/u;->b:Lg5/s;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x15

    add-int/2addr v3, v4

    add-int/2addr v3, v5

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "origin="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",name="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",params="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lg5/v;->a(Lg5/u;Landroid/os/Parcel;I)V

    return-void
.end method
