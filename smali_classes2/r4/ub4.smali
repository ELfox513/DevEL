.class public final Lr4/ub4;
.super Lr4/pm3;
.source "SourceFile"

# interfaces
.implements Lr4/bo3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/pm3<",
        "Lr4/ub4;",
        "Lr4/tb4;",
        ">;",
        "Lr4/bo3;"
    }
.end annotation


# static fields
.field private static final zzi:Lr4/ub4;


# instance fields
.field private zzb:I

.field private zze:Lr4/ll3;

.field private zzf:Lr4/ll3;

.field private zzg:Lr4/ll3;

.field private zzh:Lr4/ll3;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr4/ub4;

    invoke-direct {v0}, Lr4/ub4;-><init>()V

    sput-object v0, Lr4/ub4;->zzi:Lr4/ub4;

    const-class v1, Lr4/ub4;

    invoke-static {v1, v0}, Lr4/pm3;->z(Ljava/lang/Class;Lr4/pm3;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lr4/pm3;-><init>()V

    sget-object v0, Lr4/ll3;->b:Lr4/ll3;

    iput-object v0, p0, Lr4/ub4;->zze:Lr4/ll3;

    iput-object v0, p0, Lr4/ub4;->zzf:Lr4/ll3;

    iput-object v0, p0, Lr4/ub4;->zzg:Lr4/ll3;

    iput-object v0, p0, Lr4/ub4;->zzh:Lr4/ll3;

    return-void
.end method

.method public static J([BLr4/bm3;)Lr4/ub4;
    .locals 1

    sget-object v0, Lr4/ub4;->zzi:Lr4/ub4;

    invoke-static {v0, p0, p1}, Lr4/pm3;->u(Lr4/pm3;[BLr4/bm3;)Lr4/pm3;

    move-result-object p0

    check-cast p0, Lr4/ub4;

    return-object p0
.end method

.method public static K()Lr4/tb4;
    .locals 1

    sget-object v0, Lr4/ub4;->zzi:Lr4/ub4;

    invoke-virtual {v0}, Lr4/pm3;->v()Lr4/lm3;

    move-result-object v0

    check-cast v0, Lr4/tb4;

    return-object v0
.end method

.method public static synthetic L()Lr4/ub4;
    .locals 1

    sget-object v0, Lr4/ub4;->zzi:Lr4/ub4;

    return-object v0
.end method

.method public static synthetic M(Lr4/ub4;Lr4/ll3;)V
    .locals 1

    iget v0, p0, Lr4/ub4;->zzb:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lr4/ub4;->zzb:I

    iput-object p1, p0, Lr4/ub4;->zze:Lr4/ll3;

    return-void
.end method

.method public static synthetic N(Lr4/ub4;Lr4/ll3;)V
    .locals 1

    iget v0, p0, Lr4/ub4;->zzb:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lr4/ub4;->zzb:I

    iput-object p1, p0, Lr4/ub4;->zzf:Lr4/ll3;

    return-void
.end method

.method public static synthetic O(Lr4/ub4;Lr4/ll3;)V
    .locals 1

    iget v0, p0, Lr4/ub4;->zzb:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lr4/ub4;->zzb:I

    iput-object p1, p0, Lr4/ub4;->zzg:Lr4/ll3;

    return-void
.end method

.method public static synthetic P(Lr4/ub4;Lr4/ll3;)V
    .locals 1

    iget v0, p0, Lr4/ub4;->zzb:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lr4/ub4;->zzb:I

    iput-object p1, p0, Lr4/ub4;->zzh:Lr4/ll3;

    return-void
.end method


# virtual methods
.method public final B(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

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
    sget-object p1, Lr4/ub4;->zzi:Lr4/ub4;

    return-object p1

    :cond_1
    new-instance p1, Lr4/tb4;

    invoke-direct {p1, p2}, Lr4/tb4;-><init>(Lr4/ya4;)V

    return-object p1

    :cond_2
    new-instance p1, Lr4/ub4;

    invoke-direct {p1}, Lr4/ub4;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v3, "zzb"

    aput-object v3, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v2

    const-string p2, "zzg"

    aput-object p2, p1, v1

    const-string p2, "zzh"

    aput-object p2, p1, v0

    sget-object p2, Lr4/ub4;->zzi:Lr4/ub4;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u100a\u0000\u0002\u100a\u0001\u0003\u100a\u0002\u0004\u100a\u0003"

    invoke-static {p2, p3, p1}, Lr4/pm3;->A(Lr4/ao3;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final C()Lr4/ll3;
    .locals 1

    iget-object v0, p0, Lr4/ub4;->zze:Lr4/ll3;

    return-object v0
.end method

.method public final D()Lr4/ll3;
    .locals 1

    iget-object v0, p0, Lr4/ub4;->zzf:Lr4/ll3;

    return-object v0
.end method

.method public final E()Lr4/ll3;
    .locals 1

    iget-object v0, p0, Lr4/ub4;->zzg:Lr4/ll3;

    return-object v0
.end method

.method public final I()Lr4/ll3;
    .locals 1

    iget-object v0, p0, Lr4/ub4;->zzh:Lr4/ll3;

    return-object v0
.end method
