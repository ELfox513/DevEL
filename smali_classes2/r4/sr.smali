.class public final Lr4/sr;
.super Lr4/pm3;
.source "SourceFile"

# interfaces
.implements Lr4/bo3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/pm3<",
        "Lr4/sr;",
        "Lr4/rr;",
        ">;",
        "Lr4/bo3;"
    }
.end annotation


# static fields
.field private static final zzj:Lr4/vm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/vm3<",
            "Ljava/lang/Integer;",
            "Lr4/eq;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzr:Lr4/sr;


# instance fields
.field private zzb:I

.field private zze:J

.field private zzf:I

.field private zzg:J

.field private zzh:J

.field private zzi:Lr4/um3;

.field private zzk:Lr4/nr;

.field private zzl:I

.field private zzm:I

.field private zzn:I

.field private zzo:I

.field private zzp:I

.field private zzq:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr4/qr;

    invoke-direct {v0}, Lr4/qr;-><init>()V

    sput-object v0, Lr4/sr;->zzj:Lr4/vm3;

    new-instance v0, Lr4/sr;

    invoke-direct {v0}, Lr4/sr;-><init>()V

    sput-object v0, Lr4/sr;->zzr:Lr4/sr;

    const-class v1, Lr4/sr;

    invoke-static {v1, v0}, Lr4/pm3;->z(Ljava/lang/Class;Lr4/pm3;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lr4/pm3;-><init>()V

    invoke-static {}, Lr4/pm3;->j()Lr4/um3;

    move-result-object v0

    iput-object v0, p0, Lr4/sr;->zzi:Lr4/um3;

    return-void
.end method

.method public static synthetic C(Lr4/sr;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lr4/sr;->zzn:I

    iget p1, p0, Lr4/sr;->zzb:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lr4/sr;->zzb:I

    return-void
.end method

.method public static synthetic D(Lr4/sr;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lr4/sr;->zzp:I

    iget p1, p0, Lr4/sr;->zzb:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lr4/sr;->zzb:I

    return-void
.end method

.method public static O([B)Lr4/sr;
    .locals 1

    sget-object v0, Lr4/sr;->zzr:Lr4/sr;

    invoke-static {v0, p0}, Lr4/pm3;->s(Lr4/pm3;[B)Lr4/pm3;

    move-result-object p0

    check-cast p0, Lr4/sr;

    return-object p0
.end method

.method public static P()Lr4/rr;
    .locals 1

    sget-object v0, Lr4/sr;->zzr:Lr4/sr;

    invoke-virtual {v0}, Lr4/pm3;->v()Lr4/lm3;

    move-result-object v0

    check-cast v0, Lr4/rr;

    return-object v0
.end method

.method public static synthetic Q()Lr4/sr;
    .locals 1

    sget-object v0, Lr4/sr;->zzr:Lr4/sr;

    return-object v0
.end method

.method public static synthetic R(Lr4/sr;J)V
    .locals 1

    iget v0, p0, Lr4/sr;->zzb:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lr4/sr;->zzb:I

    iput-wide p1, p0, Lr4/sr;->zze:J

    return-void
.end method

.method public static synthetic S(Lr4/sr;J)V
    .locals 1

    iget v0, p0, Lr4/sr;->zzb:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lr4/sr;->zzb:I

    iput-wide p1, p0, Lr4/sr;->zzg:J

    return-void
.end method

.method public static synthetic T(Lr4/sr;J)V
    .locals 1

    iget v0, p0, Lr4/sr;->zzb:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lr4/sr;->zzb:I

    iput-wide p1, p0, Lr4/sr;->zzh:J

    return-void
.end method

.method public static synthetic U(Lr4/sr;Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Lr4/sr;->zzi:Lr4/um3;

    invoke-interface {v0}, Lr4/ym3;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lr4/pm3;->k(Lr4/um3;)Lr4/um3;

    move-result-object v0

    iput-object v0, p0, Lr4/sr;->zzi:Lr4/um3;

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/eq;

    iget-object v1, p0, Lr4/sr;->zzi:Lr4/um3;

    invoke-virtual {v0}, Lr4/eq;->zza()I

    move-result v0

    invoke-interface {v1, v0}, Lr4/um3;->Y(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic V(Lr4/sr;Lr4/nr;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lr4/sr;->zzk:Lr4/nr;

    iget p1, p0, Lr4/sr;->zzb:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lr4/sr;->zzb:I

    return-void
.end method

.method public static synthetic W(Lr4/sr;I)V
    .locals 1

    iget v0, p0, Lr4/sr;->zzb:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lr4/sr;->zzb:I

    iput p1, p0, Lr4/sr;->zzo:I

    return-void
.end method

.method public static synthetic X(Lr4/sr;Lr4/wr;)V
    .locals 0

    invoke-virtual {p1}, Lr4/wr;->zza()I

    move-result p1

    iput p1, p0, Lr4/sr;->zzq:I

    iget p1, p0, Lr4/sr;->zzb:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lr4/sr;->zzb:I

    return-void
.end method

.method public static synthetic d0(Lr4/sr;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lr4/sr;->zzf:I

    iget p1, p0, Lr4/sr;->zzb:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lr4/sr;->zzb:I

    return-void
.end method

.method public static synthetic e0(Lr4/sr;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lr4/sr;->zzl:I

    iget p1, p0, Lr4/sr;->zzb:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lr4/sr;->zzb:I

    return-void
.end method

.method public static synthetic f0(Lr4/sr;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lr4/sr;->zzm:I

    iget p1, p0, Lr4/sr;->zzb:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lr4/sr;->zzb:I

    return-void
.end method


# virtual methods
.method public final B(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/4 p2, 0x0

    if-eq p1, v0, :cond_1

    if-eq p1, p3, :cond_0

    return-object p2

    :cond_0
    sget-object p1, Lr4/sr;->zzr:Lr4/sr;

    return-object p1

    :cond_1
    new-instance p1, Lr4/rr;

    invoke-direct {p1, p2}, Lr4/rr;-><init>(Lr4/np;)V

    return-object p1

    :cond_2
    new-instance p1, Lr4/sr;

    invoke-direct {p1}, Lr4/sr;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0x14

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zzb"

    aput-object v4, p1, v3

    const-string v3, "zze"

    aput-object v3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v2

    sget-object p2, Lr4/vq;->a:Lr4/tm3;

    aput-object p2, p1, v1

    const-string v1, "zzg"

    aput-object v1, p1, v0

    const-string v0, "zzh"

    aput-object v0, p1, p3

    const/4 p3, 0x6

    const-string v0, "zzi"

    aput-object v0, p1, p3

    const/4 p3, 0x7

    invoke-static {}, Lr4/eq;->d()Lr4/tm3;

    move-result-object v0

    aput-object v0, p1, p3

    const/16 p3, 0x8

    const-string v0, "zzk"

    aput-object v0, p1, p3

    const/16 p3, 0x9

    const-string v0, "zzl"

    aput-object v0, p1, p3

    const/16 p3, 0xa

    aput-object p2, p1, p3

    const/16 p3, 0xb

    const-string v0, "zzm"

    aput-object v0, p1, p3

    const/16 p3, 0xc

    aput-object p2, p1, p3

    const/16 p3, 0xd

    const-string v0, "zzn"

    aput-object v0, p1, p3

    const/16 p3, 0xe

    aput-object p2, p1, p3

    const/16 p3, 0xf

    const-string v0, "zzo"

    aput-object v0, p1, p3

    const/16 p3, 0x10

    const-string v0, "zzp"

    aput-object v0, p1, p3

    const/16 p3, 0x11

    aput-object p2, p1, p3

    const/16 p2, 0x12

    const-string p3, "zzq"

    aput-object p3, p1, p2

    const/16 p2, 0x13

    invoke-static {}, Lr4/wr;->d()Lr4/tm3;

    move-result-object p3

    aput-object p3, p1, p2

    sget-object p2, Lr4/sr;->zzr:Lr4/sr;

    const-string p3, "\u0001\u000c\u0000\u0001\u0001\u000c\u000c\u0000\u0001\u0000\u0001\u1002\u0000\u0002\u100c\u0001\u0003\u1002\u0002\u0004\u1002\u0003\u0005\u001e\u0006\u1009\u0004\u0007\u100c\u0005\u0008\u100c\u0006\t\u100c\u0007\n\u1004\u0008\u000b\u100c\t\u000c\u100c\n"

    invoke-static {p2, p3, p1}, Lr4/pm3;->A(Lr4/ao3;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final E()J
    .locals 2

    iget-wide v0, p0, Lr4/sr;->zze:J

    return-wide v0
.end method

.method public final I()J
    .locals 2

    iget-wide v0, p0, Lr4/sr;->zzg:J

    return-wide v0
.end method

.method public final J()J
    .locals 2

    iget-wide v0, p0, Lr4/sr;->zzh:J

    return-wide v0
.end method

.method public final K()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lr4/eq;",
            ">;"
        }
    .end annotation

    new-instance v0, Lr4/wm3;

    iget-object v1, p0, Lr4/sr;->zzi:Lr4/um3;

    sget-object v2, Lr4/sr;->zzj:Lr4/vm3;

    invoke-direct {v0, v1, v2}, Lr4/wm3;-><init>(Ljava/util/List;Lr4/vm3;)V

    return-object v0
.end method

.method public final L()Lr4/nr;
    .locals 1

    iget-object v0, p0, Lr4/sr;->zzk:Lr4/nr;

    if-nez v0, :cond_0

    invoke-static {}, Lr4/nr;->I()Lr4/nr;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final M()I
    .locals 1

    iget v0, p0, Lr4/sr;->zzo:I

    return v0
.end method

.method public final N()Lr4/wr;
    .locals 1

    iget v0, p0, Lr4/sr;->zzq:I

    invoke-static {v0}, Lr4/wr;->c(I)Lr4/wr;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lr4/wr;->b:Lr4/wr;

    :cond_0
    return-object v0
.end method

.method public final Y()I
    .locals 1

    iget v0, p0, Lr4/sr;->zzf:I

    invoke-static {v0}, Lr4/wq;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final Z()I
    .locals 1

    iget v0, p0, Lr4/sr;->zzl:I

    invoke-static {v0}, Lr4/wq;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final a0()I
    .locals 1

    iget v0, p0, Lr4/sr;->zzm:I

    invoke-static {v0}, Lr4/wq;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final b0()I
    .locals 1

    iget v0, p0, Lr4/sr;->zzn:I

    invoke-static {v0}, Lr4/wq;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final c0()I
    .locals 1

    iget v0, p0, Lr4/sr;->zzp:I

    invoke-static {v0}, Lr4/wq;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
