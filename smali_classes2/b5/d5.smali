.class public final Lb5/d5;
.super Lb5/x8;
.source "SourceFile"

# interfaces
.implements Lb5/fa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb5/x8<",
        "Lb5/d5;",
        "Lb5/c5;",
        ">;",
        "Lb5/fa;"
    }
.end annotation


# static fields
.field private static final zza:Lb5/d5;


# instance fields
.field private zze:I

.field private zzf:J

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:J

.field private zzj:F

.field private zzk:D


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lb5/d5;

    invoke-direct {v0}, Lb5/d5;-><init>()V

    sput-object v0, Lb5/d5;->zza:Lb5/d5;

    const-class v1, Lb5/d5;

    invoke-static {v1, v0}, Lb5/x8;->j(Ljava/lang/Class;Lb5/x8;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lb5/x8;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lb5/d5;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lb5/d5;->zzh:Ljava/lang/String;

    return-void
.end method

.method public static synthetic A(Lb5/d5;J)V
    .locals 1

    iget v0, p0, Lb5/d5;->zze:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb5/d5;->zze:I

    iput-wide p1, p0, Lb5/d5;->zzf:J

    return-void
.end method

.method public static synthetic B(Lb5/d5;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lb5/d5;->zze:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lb5/d5;->zze:I

    iput-object p1, p0, Lb5/d5;->zzg:Ljava/lang/String;

    return-void
.end method

.method public static synthetic C(Lb5/d5;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lb5/d5;->zze:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lb5/d5;->zze:I

    iput-object p1, p0, Lb5/d5;->zzh:Ljava/lang/String;

    return-void
.end method

.method public static synthetic D(Lb5/d5;)V
    .locals 1

    iget v0, p0, Lb5/d5;->zze:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lb5/d5;->zze:I

    sget-object v0, Lb5/d5;->zza:Lb5/d5;

    iget-object v0, v0, Lb5/d5;->zzh:Ljava/lang/String;

    iput-object v0, p0, Lb5/d5;->zzh:Ljava/lang/String;

    return-void
.end method

.method public static synthetic E(Lb5/d5;J)V
    .locals 1

    iget v0, p0, Lb5/d5;->zze:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lb5/d5;->zze:I

    iput-wide p1, p0, Lb5/d5;->zzi:J

    return-void
.end method

.method public static synthetic F(Lb5/d5;)V
    .locals 2

    iget v0, p0, Lb5/d5;->zze:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lb5/d5;->zze:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lb5/d5;->zzi:J

    return-void
.end method

.method public static synthetic G(Lb5/d5;D)V
    .locals 1

    iget v0, p0, Lb5/d5;->zze:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lb5/d5;->zze:I

    iput-wide p1, p0, Lb5/d5;->zzk:D

    return-void
.end method

.method public static synthetic H(Lb5/d5;)V
    .locals 2

    iget v0, p0, Lb5/d5;->zze:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lb5/d5;->zze:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lb5/d5;->zzk:D

    return-void
.end method

.method public static v()Lb5/c5;
    .locals 1

    sget-object v0, Lb5/d5;->zza:Lb5/d5;

    invoke-virtual {v0}, Lb5/x8;->k()Lb5/u8;

    move-result-object v0

    check-cast v0, Lb5/c5;

    return-object v0
.end method

.method public static synthetic w()Lb5/d5;
    .locals 1

    sget-object v0, Lb5/d5;->zza:Lb5/d5;

    return-object v0
.end method


# virtual methods
.method public final I()Z
    .locals 1

    iget v0, p0, Lb5/d5;->zze:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final J()Z
    .locals 1

    iget v0, p0, Lb5/d5;->zze:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final K()Z
    .locals 2

    iget v0, p0, Lb5/d5;->zze:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final L()Z
    .locals 1

    iget v0, p0, Lb5/d5;->zze:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final r(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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
    sget-object p1, Lb5/d5;->zza:Lb5/d5;

    return-object p1

    :cond_1
    new-instance p1, Lb5/c5;

    invoke-direct {p1, p2}, Lb5/c5;-><init>(Lb5/a4;)V

    return-object p1

    :cond_2
    new-instance p1, Lb5/d5;

    invoke-direct {p1}, Lb5/d5;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zze"

    aput-object v4, p1, v3

    const-string v3, "zzf"

    aput-object v3, p1, p2

    const-string p2, "zzg"

    aput-object p2, p1, v2

    const-string p2, "zzh"

    aput-object p2, p1, v1

    const-string p2, "zzi"

    aput-object p2, p1, v0

    const-string p2, "zzj"

    aput-object p2, p1, p3

    const/4 p2, 0x6

    const-string p3, "zzk"

    aput-object p3, p1, p2

    sget-object p2, Lb5/d5;->zza:Lb5/d5;

    const-string p3, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u1002\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1002\u0003\u0005\u1001\u0004\u0006\u1000\u0005"

    invoke-static {p2, p3, p1}, Lb5/x8;->i(Lb5/ea;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final s()D
    .locals 2

    iget-wide v0, p0, Lb5/d5;->zzk:D

    return-wide v0
.end method

.method public final t()J
    .locals 2

    iget-wide v0, p0, Lb5/d5;->zzi:J

    return-wide v0
.end method

.method public final u()J
    .locals 2

    iget-wide v0, p0, Lb5/d5;->zzf:J

    return-wide v0
.end method

.method public final x()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb5/d5;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb5/d5;->zzh:Ljava/lang/String;

    return-object v0
.end method
