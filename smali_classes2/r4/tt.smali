.class public final Lr4/tt;
.super Ly3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lr4/tt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:Ljava/lang/String;

.field public final B:Ljava/lang/String;

.field public final C:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final D:Lr4/jt;

.field public final E:I

.field public final F:Ljava/lang/String;

.field public final G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final H:I

.field public final I:Ljava/lang/String;

.field public final a:I

.field public final b:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final d:Landroid/os/Bundle;

.field public final k:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Z

.field public final r:I

.field public final s:Z

.field public final t:Ljava/lang/String;

.field public final u:Lr4/uy;

.field public final v:Landroid/location/Location;

.field public final w:Ljava/lang/String;

.field public final x:Landroid/os/Bundle;

.field public final y:Landroid/os/Bundle;

.field public final z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/vt;

    invoke-direct {v0}, Lr4/vt;-><init>()V

    sput-object v0, Lr4/tt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lr4/uy;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLr4/jt;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Landroid/os/Bundle;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZIZ",
            "Ljava/lang/String;",
            "Lr4/uy;",
            "Landroid/location/Location;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lr4/jt;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ly3/a;-><init>()V

    move v1, p1

    iput v1, v0, Lr4/tt;->a:I

    move-wide v1, p2

    iput-wide v1, v0, Lr4/tt;->b:J

    if-nez p4, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_0
    move-object v1, p4

    :goto_0
    iput-object v1, v0, Lr4/tt;->d:Landroid/os/Bundle;

    move v1, p5

    iput v1, v0, Lr4/tt;->k:I

    move-object v1, p6

    iput-object v1, v0, Lr4/tt;->p:Ljava/util/List;

    move v1, p7

    iput-boolean v1, v0, Lr4/tt;->q:Z

    move v1, p8

    iput v1, v0, Lr4/tt;->r:I

    move v1, p9

    iput-boolean v1, v0, Lr4/tt;->s:Z

    move-object v1, p10

    iput-object v1, v0, Lr4/tt;->t:Ljava/lang/String;

    move-object v1, p11

    iput-object v1, v0, Lr4/tt;->u:Lr4/uy;

    move-object v1, p12

    iput-object v1, v0, Lr4/tt;->v:Landroid/location/Location;

    move-object/from16 v1, p13

    iput-object v1, v0, Lr4/tt;->w:Ljava/lang/String;

    if-nez p14, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_1

    :cond_1
    move-object/from16 v1, p14

    :goto_1
    iput-object v1, v0, Lr4/tt;->x:Landroid/os/Bundle;

    move-object/from16 v1, p15

    iput-object v1, v0, Lr4/tt;->y:Landroid/os/Bundle;

    move-object/from16 v1, p16

    iput-object v1, v0, Lr4/tt;->z:Ljava/util/List;

    move-object/from16 v1, p17

    iput-object v1, v0, Lr4/tt;->A:Ljava/lang/String;

    move-object/from16 v1, p18

    iput-object v1, v0, Lr4/tt;->B:Ljava/lang/String;

    move/from16 v1, p19

    iput-boolean v1, v0, Lr4/tt;->C:Z

    move-object/from16 v1, p20

    iput-object v1, v0, Lr4/tt;->D:Lr4/jt;

    move/from16 v1, p21

    iput v1, v0, Lr4/tt;->E:I

    move-object/from16 v1, p22

    iput-object v1, v0, Lr4/tt;->F:Ljava/lang/String;

    if-nez p23, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    :cond_2
    move-object/from16 v1, p23

    :goto_2
    iput-object v1, v0, Lr4/tt;->G:Ljava/util/List;

    move/from16 v1, p24

    iput v1, v0, Lr4/tt;->H:I

    move-object/from16 v1, p25

    iput-object v1, v0, Lr4/tt;->I:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lr4/tt;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lr4/tt;

    iget v0, p0, Lr4/tt;->a:I

    iget v2, p1, Lr4/tt;->a:I

    if-ne v0, v2, :cond_1

    iget-wide v2, p0, Lr4/tt;->b:J

    iget-wide v4, p1, Lr4/tt;->b:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget-object v0, p0, Lr4/tt;->d:Landroid/os/Bundle;

    iget-object v2, p1, Lr4/tt;->d:Landroid/os/Bundle;

    invoke-static {v0, v2}, Lr4/dm0;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lr4/tt;->k:I

    iget v2, p1, Lr4/tt;->k:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lr4/tt;->p:Ljava/util/List;

    iget-object v2, p1, Lr4/tt;->p:Ljava/util/List;

    invoke-static {v0, v2}, Lx3/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lr4/tt;->q:Z

    iget-boolean v2, p1, Lr4/tt;->q:Z

    if-ne v0, v2, :cond_1

    iget v0, p0, Lr4/tt;->r:I

    iget v2, p1, Lr4/tt;->r:I

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lr4/tt;->s:Z

    iget-boolean v2, p1, Lr4/tt;->s:Z

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lr4/tt;->t:Ljava/lang/String;

    iget-object v2, p1, Lr4/tt;->t:Ljava/lang/String;

    invoke-static {v0, v2}, Lx3/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr4/tt;->u:Lr4/uy;

    iget-object v2, p1, Lr4/tt;->u:Lr4/uy;

    invoke-static {v0, v2}, Lx3/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr4/tt;->v:Landroid/location/Location;

    iget-object v2, p1, Lr4/tt;->v:Landroid/location/Location;

    invoke-static {v0, v2}, Lx3/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr4/tt;->w:Ljava/lang/String;

    iget-object v2, p1, Lr4/tt;->w:Ljava/lang/String;

    invoke-static {v0, v2}, Lx3/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr4/tt;->x:Landroid/os/Bundle;

    iget-object v2, p1, Lr4/tt;->x:Landroid/os/Bundle;

    invoke-static {v0, v2}, Lr4/dm0;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr4/tt;->y:Landroid/os/Bundle;

    iget-object v2, p1, Lr4/tt;->y:Landroid/os/Bundle;

    invoke-static {v0, v2}, Lr4/dm0;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr4/tt;->z:Ljava/util/List;

    iget-object v2, p1, Lr4/tt;->z:Ljava/util/List;

    invoke-static {v0, v2}, Lx3/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr4/tt;->A:Ljava/lang/String;

    iget-object v2, p1, Lr4/tt;->A:Ljava/lang/String;

    invoke-static {v0, v2}, Lx3/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr4/tt;->B:Ljava/lang/String;

    iget-object v2, p1, Lr4/tt;->B:Ljava/lang/String;

    invoke-static {v0, v2}, Lx3/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lr4/tt;->C:Z

    iget-boolean v2, p1, Lr4/tt;->C:Z

    if-ne v0, v2, :cond_1

    iget v0, p0, Lr4/tt;->E:I

    iget v2, p1, Lr4/tt;->E:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lr4/tt;->F:Ljava/lang/String;

    iget-object v2, p1, Lr4/tt;->F:Ljava/lang/String;

    invoke-static {v0, v2}, Lx3/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr4/tt;->G:Ljava/util/List;

    iget-object v2, p1, Lr4/tt;->G:Ljava/util/List;

    invoke-static {v0, v2}, Lx3/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lr4/tt;->H:I

    iget v2, p1, Lr4/tt;->H:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lr4/tt;->I:Ljava/lang/String;

    iget-object p1, p1, Lr4/tt;->I:Ljava/lang/String;

    invoke-static {v0, p1}, Lx3/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lr4/tt;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lr4/tt;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lr4/tt;->d:Landroid/os/Bundle;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lr4/tt;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lr4/tt;->p:Ljava/util/List;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lr4/tt;->q:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lr4/tt;->r:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lr4/tt;->s:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lr4/tt;->t:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lr4/tt;->u:Lr4/uy;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lr4/tt;->v:Landroid/location/Location;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-object v1, p0, Lr4/tt;->w:Ljava/lang/String;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-object v1, p0, Lr4/tt;->x:Landroid/os/Bundle;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-object v1, p0, Lr4/tt;->y:Landroid/os/Bundle;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-object v1, p0, Lr4/tt;->z:Ljava/util/List;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-object v1, p0, Lr4/tt;->A:Ljava/lang/String;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget-object v1, p0, Lr4/tt;->B:Ljava/lang/String;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lr4/tt;->C:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    iget v1, p0, Lr4/tt;->E:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    iget-object v1, p0, Lr4/tt;->F:Ljava/lang/String;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    iget-object v1, p0, Lr4/tt;->G:Ljava/util/List;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    iget v1, p0, Lr4/tt;->H:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    iget-object v1, p0, Lr4/tt;->I:Ljava/lang/String;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    invoke-static {v0}, Lx3/o;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Ly3/c;->a(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lr4/tt;->a:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Ly3/c;->l(Landroid/os/Parcel;II)V

    iget-wide v1, p0, Lr4/tt;->b:J

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, v2}, Ly3/c;->o(Landroid/os/Parcel;IJ)V

    iget-object v1, p0, Lr4/tt;->d:Landroid/os/Bundle;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Ly3/c;->f(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    iget v1, p0, Lr4/tt;->k:I

    const/4 v2, 0x4

    invoke-static {p1, v2, v1}, Ly3/c;->l(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lr4/tt;->p:Ljava/util/List;

    const/4 v2, 0x5

    invoke-static {p1, v2, v1, v3}, Ly3/c;->t(Landroid/os/Parcel;ILjava/util/List;Z)V

    iget-boolean v1, p0, Lr4/tt;->q:Z

    const/4 v2, 0x6

    invoke-static {p1, v2, v1}, Ly3/c;->c(Landroid/os/Parcel;IZ)V

    iget v1, p0, Lr4/tt;->r:I

    const/4 v2, 0x7

    invoke-static {p1, v2, v1}, Ly3/c;->l(Landroid/os/Parcel;II)V

    iget-boolean v1, p0, Lr4/tt;->s:Z

    const/16 v2, 0x8

    invoke-static {p1, v2, v1}, Ly3/c;->c(Landroid/os/Parcel;IZ)V

    iget-object v1, p0, Lr4/tt;->t:Ljava/lang/String;

    const/16 v2, 0x9

    invoke-static {p1, v2, v1, v3}, Ly3/c;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lr4/tt;->u:Lr4/uy;

    const/16 v2, 0xa

    invoke-static {p1, v2, v1, p2, v3}, Ly3/c;->q(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lr4/tt;->v:Landroid/location/Location;

    const/16 v2, 0xb

    invoke-static {p1, v2, v1, p2, v3}, Ly3/c;->q(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lr4/tt;->w:Ljava/lang/String;

    const/16 v2, 0xc

    invoke-static {p1, v2, v1, v3}, Ly3/c;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lr4/tt;->x:Landroid/os/Bundle;

    const/16 v2, 0xd

    invoke-static {p1, v2, v1, v3}, Ly3/c;->f(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    iget-object v1, p0, Lr4/tt;->y:Landroid/os/Bundle;

    const/16 v2, 0xe

    invoke-static {p1, v2, v1, v3}, Ly3/c;->f(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    iget-object v1, p0, Lr4/tt;->z:Ljava/util/List;

    const/16 v2, 0xf

    invoke-static {p1, v2, v1, v3}, Ly3/c;->t(Landroid/os/Parcel;ILjava/util/List;Z)V

    iget-object v1, p0, Lr4/tt;->A:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-static {p1, v2, v1, v3}, Ly3/c;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lr4/tt;->B:Ljava/lang/String;

    const/16 v2, 0x11

    invoke-static {p1, v2, v1, v3}, Ly3/c;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-boolean v1, p0, Lr4/tt;->C:Z

    const/16 v2, 0x12

    invoke-static {p1, v2, v1}, Ly3/c;->c(Landroid/os/Parcel;IZ)V

    iget-object v1, p0, Lr4/tt;->D:Lr4/jt;

    const/16 v2, 0x13

    invoke-static {p1, v2, v1, p2, v3}, Ly3/c;->q(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget p2, p0, Lr4/tt;->E:I

    const/16 v1, 0x14

    invoke-static {p1, v1, p2}, Ly3/c;->l(Landroid/os/Parcel;II)V

    iget-object p2, p0, Lr4/tt;->F:Ljava/lang/String;

    const/16 v1, 0x15

    invoke-static {p1, v1, p2, v3}, Ly3/c;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object p2, p0, Lr4/tt;->G:Ljava/util/List;

    const/16 v1, 0x16

    invoke-static {p1, v1, p2, v3}, Ly3/c;->t(Landroid/os/Parcel;ILjava/util/List;Z)V

    iget p2, p0, Lr4/tt;->H:I

    const/16 v1, 0x17

    invoke-static {p1, v1, p2}, Ly3/c;->l(Landroid/os/Parcel;II)V

    iget-object p2, p0, Lr4/tt;->I:Ljava/lang/String;

    const/16 v1, 0x18

    invoke-static {p1, v1, p2, v3}, Ly3/c;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, v0}, Ly3/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
