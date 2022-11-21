.class public final Lg5/c;
.super Ly3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lg5/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public d:Lg5/ea;

.field public k:J

.field public p:Z

.field public q:Ljava/lang/String;

.field public final r:Lg5/u;

.field public s:J

.field public t:Lg5/u;

.field public final u:J

.field public final v:Lg5/u;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg5/d;

    invoke-direct {v0}, Lg5/d;-><init>()V

    sput-object v0, Lg5/c;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lg5/c;)V
    .locals 2

    invoke-direct {p0}, Ly3/a;-><init>()V

    invoke-static {p1}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lg5/c;->a:Ljava/lang/String;

    iput-object v0, p0, Lg5/c;->a:Ljava/lang/String;

    iget-object v0, p1, Lg5/c;->b:Ljava/lang/String;

    iput-object v0, p0, Lg5/c;->b:Ljava/lang/String;

    iget-object v0, p1, Lg5/c;->d:Lg5/ea;

    iput-object v0, p0, Lg5/c;->d:Lg5/ea;

    iget-wide v0, p1, Lg5/c;->k:J

    iput-wide v0, p0, Lg5/c;->k:J

    iget-boolean v0, p1, Lg5/c;->p:Z

    iput-boolean v0, p0, Lg5/c;->p:Z

    iget-object v0, p1, Lg5/c;->q:Ljava/lang/String;

    iput-object v0, p0, Lg5/c;->q:Ljava/lang/String;

    iget-object v0, p1, Lg5/c;->r:Lg5/u;

    iput-object v0, p0, Lg5/c;->r:Lg5/u;

    iget-wide v0, p1, Lg5/c;->s:J

    iput-wide v0, p0, Lg5/c;->s:J

    iget-object v0, p1, Lg5/c;->t:Lg5/u;

    iput-object v0, p0, Lg5/c;->t:Lg5/u;

    iget-wide v0, p1, Lg5/c;->u:J

    iput-wide v0, p0, Lg5/c;->u:J

    iget-object p1, p1, Lg5/c;->v:Lg5/u;

    iput-object p1, p0, Lg5/c;->v:Lg5/u;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lg5/ea;JZLjava/lang/String;Lg5/u;JLg5/u;JLg5/u;)V
    .locals 0

    invoke-direct {p0}, Ly3/a;-><init>()V

    iput-object p1, p0, Lg5/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lg5/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lg5/c;->d:Lg5/ea;

    iput-wide p4, p0, Lg5/c;->k:J

    iput-boolean p6, p0, Lg5/c;->p:Z

    iput-object p7, p0, Lg5/c;->q:Ljava/lang/String;

    iput-object p8, p0, Lg5/c;->r:Lg5/u;

    iput-wide p9, p0, Lg5/c;->s:J

    iput-object p11, p0, Lg5/c;->t:Lg5/u;

    iput-wide p12, p0, Lg5/c;->u:J

    iput-object p14, p0, Lg5/c;->v:Lg5/u;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    invoke-static {p1}, Ly3/c;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lg5/c;->a:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Ly3/c;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lg5/c;->b:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {p1, v2, v1, v3}, Ly3/c;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lg5/c;->d:Lg5/ea;

    const/4 v2, 0x4

    invoke-static {p1, v2, v1, p2, v3}, Ly3/c;->q(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-wide v1, p0, Lg5/c;->k:J

    const/4 v4, 0x5

    invoke-static {p1, v4, v1, v2}, Ly3/c;->o(Landroid/os/Parcel;IJ)V

    iget-boolean v1, p0, Lg5/c;->p:Z

    const/4 v2, 0x6

    invoke-static {p1, v2, v1}, Ly3/c;->c(Landroid/os/Parcel;IZ)V

    iget-object v1, p0, Lg5/c;->q:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-static {p1, v2, v1, v3}, Ly3/c;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lg5/c;->r:Lg5/u;

    const/16 v2, 0x8

    invoke-static {p1, v2, v1, p2, v3}, Ly3/c;->q(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-wide v1, p0, Lg5/c;->s:J

    const/16 v4, 0x9

    invoke-static {p1, v4, v1, v2}, Ly3/c;->o(Landroid/os/Parcel;IJ)V

    iget-object v1, p0, Lg5/c;->t:Lg5/u;

    const/16 v2, 0xa

    invoke-static {p1, v2, v1, p2, v3}, Ly3/c;->q(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-wide v1, p0, Lg5/c;->u:J

    const/16 v4, 0xb

    invoke-static {p1, v4, v1, v2}, Ly3/c;->o(Landroid/os/Parcel;IJ)V

    iget-object v1, p0, Lg5/c;->v:Lg5/u;

    const/16 v2, 0xc

    invoke-static {p1, v2, v1, p2, v3}, Ly3/c;->q(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Ly3/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
