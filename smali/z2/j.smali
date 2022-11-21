.class public final Lz2/j;
.super Ly3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lz2/j;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Z

.field public final b:Z

.field public final d:Ljava/lang/String;

.field public final k:Z

.field public final p:F

.field public final q:I

.field public final r:Z

.field public final s:Z

.field public final t:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz2/k;

    invoke-direct {v0}, Lz2/k;-><init>()V

    sput-object v0, Lz2/j;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ZZLjava/lang/String;ZFIZZZ)V
    .locals 0

    invoke-direct {p0}, Ly3/a;-><init>()V

    iput-boolean p1, p0, Lz2/j;->a:Z

    iput-boolean p2, p0, Lz2/j;->b:Z

    iput-object p3, p0, Lz2/j;->d:Ljava/lang/String;

    iput-boolean p4, p0, Lz2/j;->k:Z

    iput p5, p0, Lz2/j;->p:F

    iput p6, p0, Lz2/j;->q:I

    iput-boolean p7, p0, Lz2/j;->r:Z

    iput-boolean p8, p0, Lz2/j;->s:Z

    iput-boolean p9, p0, Lz2/j;->t:Z

    return-void
.end method

.method public constructor <init>(ZZZFIZZZ)V
    .locals 10

    const/4 v3, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lz2/j;-><init>(ZZLjava/lang/String;ZFIZZZ)V

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Ly3/c;->a(Landroid/os/Parcel;)I

    move-result p2

    iget-boolean v0, p0, Lz2/j;->a:Z

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Ly3/c;->c(Landroid/os/Parcel;IZ)V

    iget-boolean v0, p0, Lz2/j;->b:Z

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Ly3/c;->c(Landroid/os/Parcel;IZ)V

    iget-object v0, p0, Lz2/j;->d:Ljava/lang/String;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Ly3/c;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-boolean v0, p0, Lz2/j;->k:Z

    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, Ly3/c;->c(Landroid/os/Parcel;IZ)V

    iget v0, p0, Lz2/j;->p:F

    const/4 v1, 0x6

    invoke-static {p1, v1, v0}, Ly3/c;->i(Landroid/os/Parcel;IF)V

    iget v0, p0, Lz2/j;->q:I

    const/4 v1, 0x7

    invoke-static {p1, v1, v0}, Ly3/c;->l(Landroid/os/Parcel;II)V

    iget-boolean v0, p0, Lz2/j;->r:Z

    const/16 v1, 0x8

    invoke-static {p1, v1, v0}, Ly3/c;->c(Landroid/os/Parcel;IZ)V

    iget-boolean v0, p0, Lz2/j;->s:Z

    const/16 v1, 0x9

    invoke-static {p1, v1, v0}, Ly3/c;->c(Landroid/os/Parcel;IZ)V

    iget-boolean v0, p0, Lz2/j;->t:Z

    const/16 v1, 0xa

    invoke-static {p1, v1, v0}, Ly3/c;->c(Landroid/os/Parcel;IZ)V

    invoke-static {p1, p2}, Ly3/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
