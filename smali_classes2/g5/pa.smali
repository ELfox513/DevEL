.class public final Lg5/pa;
.super Ly3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lg5/pa;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:Z

.field public final B:Ljava/lang/String;

.field public final C:Ljava/lang/Boolean;

.field public final D:J

.field public final E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final F:Ljava/lang/String;

.field public final G:Ljava/lang/String;

.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final p:J

.field public final q:J

.field public final r:Ljava/lang/String;

.field public final s:Z

.field public final t:Z

.field public final u:J

.field public final v:Ljava/lang/String;

.field public final w:J

.field public final x:J

.field public final y:I

.field public final z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg5/qa;

    invoke-direct {v0}, Lg5/qa;-><init>()V

    sput-object v0, Lg5/pa;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "JJIZZ",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ly3/a;-><init>()V

    invoke-static {p1}, Lx3/q;->f(Ljava/lang/String;)Ljava/lang/String;

    move-object v1, p1

    iput-object v1, v0, Lg5/pa;->a:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eq v2, v1, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Lg5/pa;->b:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lg5/pa;->d:Ljava/lang/String;

    move-wide v1, p4

    iput-wide v1, v0, Lg5/pa;->u:J

    move-object v1, p6

    iput-object v1, v0, Lg5/pa;->k:Ljava/lang/String;

    move-wide v1, p7

    iput-wide v1, v0, Lg5/pa;->p:J

    move-wide v1, p9

    iput-wide v1, v0, Lg5/pa;->q:J

    move-object v1, p11

    iput-object v1, v0, Lg5/pa;->r:Ljava/lang/String;

    move v1, p12

    iput-boolean v1, v0, Lg5/pa;->s:Z

    move/from16 v1, p13

    iput-boolean v1, v0, Lg5/pa;->t:Z

    move-object/from16 v1, p14

    iput-object v1, v0, Lg5/pa;->v:Ljava/lang/String;

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lg5/pa;->w:J

    move-wide/from16 v1, p17

    iput-wide v1, v0, Lg5/pa;->x:J

    move/from16 v1, p19

    iput v1, v0, Lg5/pa;->y:I

    move/from16 v1, p20

    iput-boolean v1, v0, Lg5/pa;->z:Z

    move/from16 v1, p21

    iput-boolean v1, v0, Lg5/pa;->A:Z

    move-object/from16 v1, p22

    iput-object v1, v0, Lg5/pa;->B:Ljava/lang/String;

    move-object/from16 v1, p23

    iput-object v1, v0, Lg5/pa;->C:Ljava/lang/Boolean;

    move-wide/from16 v1, p24

    iput-wide v1, v0, Lg5/pa;->D:J

    move-object/from16 v1, p26

    iput-object v1, v0, Lg5/pa;->E:Ljava/util/List;

    move-object/from16 v1, p27

    iput-object v1, v0, Lg5/pa;->F:Ljava/lang/String;

    move-object/from16 v1, p28

    iput-object v1, v0, Lg5/pa;->G:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;ZZJLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/lang/String;",
            "ZZJ",
            "Ljava/lang/String;",
            "JJIZZ",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ly3/a;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lg5/pa;->a:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lg5/pa;->b:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lg5/pa;->d:Ljava/lang/String;

    move-wide v1, p12

    iput-wide v1, v0, Lg5/pa;->u:J

    move-object v1, p4

    iput-object v1, v0, Lg5/pa;->k:Ljava/lang/String;

    move-wide v1, p5

    iput-wide v1, v0, Lg5/pa;->p:J

    move-wide v1, p7

    iput-wide v1, v0, Lg5/pa;->q:J

    move-object v1, p9

    iput-object v1, v0, Lg5/pa;->r:Ljava/lang/String;

    move v1, p10

    iput-boolean v1, v0, Lg5/pa;->s:Z

    move v1, p11

    iput-boolean v1, v0, Lg5/pa;->t:Z

    move-object/from16 v1, p14

    iput-object v1, v0, Lg5/pa;->v:Ljava/lang/String;

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lg5/pa;->w:J

    move-wide/from16 v1, p17

    iput-wide v1, v0, Lg5/pa;->x:J

    move/from16 v1, p19

    iput v1, v0, Lg5/pa;->y:I

    move/from16 v1, p20

    iput-boolean v1, v0, Lg5/pa;->z:Z

    move/from16 v1, p21

    iput-boolean v1, v0, Lg5/pa;->A:Z

    move-object/from16 v1, p22

    iput-object v1, v0, Lg5/pa;->B:Ljava/lang/String;

    move-object/from16 v1, p23

    iput-object v1, v0, Lg5/pa;->C:Ljava/lang/Boolean;

    move-wide/from16 v1, p24

    iput-wide v1, v0, Lg5/pa;->D:J

    move-object/from16 v1, p26

    iput-object v1, v0, Lg5/pa;->E:Ljava/util/List;

    move-object/from16 v1, p27

    iput-object v1, v0, Lg5/pa;->F:Ljava/lang/String;

    move-object/from16 v1, p28

    iput-object v1, v0, Lg5/pa;->G:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Ly3/c;->a(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lg5/pa;->a:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Ly3/c;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lg5/pa;->b:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {p1, v1, v0, v2}, Ly3/c;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lg5/pa;->d:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {p1, v1, v0, v2}, Ly3/c;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lg5/pa;->k:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {p1, v1, v0, v2}, Ly3/c;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-wide v0, p0, Lg5/pa;->p:J

    const/4 v3, 0x6

    invoke-static {p1, v3, v0, v1}, Ly3/c;->o(Landroid/os/Parcel;IJ)V

    iget-wide v0, p0, Lg5/pa;->q:J

    const/4 v3, 0x7

    invoke-static {p1, v3, v0, v1}, Ly3/c;->o(Landroid/os/Parcel;IJ)V

    iget-object v0, p0, Lg5/pa;->r:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-static {p1, v1, v0, v2}, Ly3/c;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-boolean v0, p0, Lg5/pa;->s:Z

    const/16 v1, 0x9

    invoke-static {p1, v1, v0}, Ly3/c;->c(Landroid/os/Parcel;IZ)V

    iget-boolean v0, p0, Lg5/pa;->t:Z

    const/16 v1, 0xa

    invoke-static {p1, v1, v0}, Ly3/c;->c(Landroid/os/Parcel;IZ)V

    iget-wide v0, p0, Lg5/pa;->u:J

    const/16 v3, 0xb

    invoke-static {p1, v3, v0, v1}, Ly3/c;->o(Landroid/os/Parcel;IJ)V

    iget-object v0, p0, Lg5/pa;->v:Ljava/lang/String;

    const/16 v1, 0xc

    invoke-static {p1, v1, v0, v2}, Ly3/c;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-wide v0, p0, Lg5/pa;->w:J

    const/16 v3, 0xd

    invoke-static {p1, v3, v0, v1}, Ly3/c;->o(Landroid/os/Parcel;IJ)V

    iget-wide v0, p0, Lg5/pa;->x:J

    const/16 v3, 0xe

    invoke-static {p1, v3, v0, v1}, Ly3/c;->o(Landroid/os/Parcel;IJ)V

    iget v0, p0, Lg5/pa;->y:I

    const/16 v1, 0xf

    invoke-static {p1, v1, v0}, Ly3/c;->l(Landroid/os/Parcel;II)V

    iget-boolean v0, p0, Lg5/pa;->z:Z

    const/16 v1, 0x10

    invoke-static {p1, v1, v0}, Ly3/c;->c(Landroid/os/Parcel;IZ)V

    iget-boolean v0, p0, Lg5/pa;->A:Z

    const/16 v1, 0x12

    invoke-static {p1, v1, v0}, Ly3/c;->c(Landroid/os/Parcel;IZ)V

    iget-object v0, p0, Lg5/pa;->B:Ljava/lang/String;

    const/16 v1, 0x13

    invoke-static {p1, v1, v0, v2}, Ly3/c;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lg5/pa;->C:Ljava/lang/Boolean;

    const/16 v1, 0x15

    invoke-static {p1, v1, v0, v2}, Ly3/c;->e(Landroid/os/Parcel;ILjava/lang/Boolean;Z)V

    iget-wide v0, p0, Lg5/pa;->D:J

    const/16 v3, 0x16

    invoke-static {p1, v3, v0, v1}, Ly3/c;->o(Landroid/os/Parcel;IJ)V

    iget-object v0, p0, Lg5/pa;->E:Ljava/util/List;

    const/16 v1, 0x17

    invoke-static {p1, v1, v0, v2}, Ly3/c;->t(Landroid/os/Parcel;ILjava/util/List;Z)V

    iget-object v0, p0, Lg5/pa;->F:Ljava/lang/String;

    const/16 v1, 0x18

    invoke-static {p1, v1, v0, v2}, Ly3/c;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lg5/pa;->G:Ljava/lang/String;

    const/16 v1, 0x19

    invoke-static {p1, v1, v0, v2}, Ly3/c;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, p2}, Ly3/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
