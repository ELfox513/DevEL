.class public final Lr4/ob4;
.super Lr4/pm3;
.source "SourceFile"

# interfaces
.implements Lr4/bo3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/pm3<",
        "Lr4/ob4;",
        "Lr4/nb4;",
        ">;",
        "Lr4/bo3;"
    }
.end annotation


# static fields
.field private static final zzl:Lr4/ob4;


# instance fields
.field private zzb:I

.field private zze:J

.field private zzf:J

.field private zzg:J

.field private zzh:J

.field private zzi:J

.field private zzj:J

.field private zzk:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr4/ob4;

    invoke-direct {v0}, Lr4/ob4;-><init>()V

    sput-object v0, Lr4/ob4;->zzl:Lr4/ob4;

    const-class v1, Lr4/ob4;

    invoke-static {v1, v0}, Lr4/pm3;->z(Ljava/lang/Class;Lr4/pm3;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lr4/pm3;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lr4/ob4;->zze:J

    iput-wide v0, p0, Lr4/ob4;->zzf:J

    iput-wide v0, p0, Lr4/ob4;->zzg:J

    iput-wide v0, p0, Lr4/ob4;->zzh:J

    iput-wide v0, p0, Lr4/ob4;->zzi:J

    iput-wide v0, p0, Lr4/ob4;->zzj:J

    iput-wide v0, p0, Lr4/ob4;->zzk:J

    return-void
.end method

.method public static C()Lr4/nb4;
    .locals 1

    sget-object v0, Lr4/ob4;->zzl:Lr4/ob4;

    invoke-virtual {v0}, Lr4/pm3;->v()Lr4/lm3;

    move-result-object v0

    check-cast v0, Lr4/nb4;

    return-object v0
.end method

.method public static synthetic D()Lr4/ob4;
    .locals 1

    sget-object v0, Lr4/ob4;->zzl:Lr4/ob4;

    return-object v0
.end method

.method public static synthetic E(Lr4/ob4;J)V
    .locals 1

    iget v0, p0, Lr4/ob4;->zzb:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lr4/ob4;->zzb:I

    iput-wide p1, p0, Lr4/ob4;->zzg:J

    return-void
.end method

.method public static synthetic I(Lr4/ob4;J)V
    .locals 1

    iget v0, p0, Lr4/ob4;->zzb:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lr4/ob4;->zzb:I

    iput-wide p1, p0, Lr4/ob4;->zzh:J

    return-void
.end method

.method public static synthetic J(Lr4/ob4;J)V
    .locals 1

    iget v0, p0, Lr4/ob4;->zzb:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lr4/ob4;->zzb:I

    iput-wide p1, p0, Lr4/ob4;->zzi:J

    return-void
.end method

.method public static synthetic K(Lr4/ob4;J)V
    .locals 1

    iget v0, p0, Lr4/ob4;->zzb:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lr4/ob4;->zzb:I

    iput-wide p1, p0, Lr4/ob4;->zzj:J

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
    sget-object p1, Lr4/ob4;->zzl:Lr4/ob4;

    return-object p1

    :cond_1
    new-instance p1, Lr4/nb4;

    invoke-direct {p1, p2}, Lr4/nb4;-><init>(Lr4/ya4;)V

    return-object p1

    :cond_2
    new-instance p1, Lr4/ob4;

    invoke-direct {p1}, Lr4/ob4;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zzb"

    aput-object v4, p1, v3

    const-string v3, "zze"

    aput-object v3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v2

    const-string p2, "zzg"

    aput-object p2, p1, v1

    const-string p2, "zzh"

    aput-object p2, p1, v0

    const-string p2, "zzi"

    aput-object p2, p1, p3

    const/4 p2, 0x6

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzk"

    aput-object p3, p1, p2

    sget-object p2, Lr4/ob4;->zzl:Lr4/ob4;

    const-string p3, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u1002\u0000\u0002\u1002\u0001\u0003\u1002\u0002\u0004\u1002\u0003\u0005\u1002\u0004\u0006\u1002\u0005\u0007\u1002\u0006"

    invoke-static {p2, p3, p1}, Lr4/pm3;->A(Lr4/ao3;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
