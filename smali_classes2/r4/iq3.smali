.class public final Lr4/iq3;
.super Lr4/pm3;
.source "SourceFile"

# interfaces
.implements Lr4/bo3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/pm3<",
        "Lr4/iq3;",
        "Lr4/hq3;",
        ">;",
        "Lr4/bo3;"
    }
.end annotation


# static fields
.field private static final zzh:Lr4/iq3;


# instance fields
.field private zzb:I

.field private zze:Lr4/ll3;

.field private zzf:Lr4/ll3;

.field private zzg:Lr4/ll3;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr4/iq3;

    invoke-direct {v0}, Lr4/iq3;-><init>()V

    sput-object v0, Lr4/iq3;->zzh:Lr4/iq3;

    const-class v1, Lr4/iq3;

    invoke-static {v1, v0}, Lr4/pm3;->z(Ljava/lang/Class;Lr4/pm3;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lr4/pm3;-><init>()V

    sget-object v0, Lr4/ll3;->b:Lr4/ll3;

    iput-object v0, p0, Lr4/iq3;->zze:Lr4/ll3;

    iput-object v0, p0, Lr4/iq3;->zzf:Lr4/ll3;

    iput-object v0, p0, Lr4/iq3;->zzg:Lr4/ll3;

    return-void
.end method

.method public static synthetic C()Lr4/iq3;
    .locals 1

    sget-object v0, Lr4/iq3;->zzh:Lr4/iq3;

    return-object v0
.end method


# virtual methods
.method public final B(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 p2, 0x0

    if-eq p1, p3, :cond_1

    const/4 p3, 0x5

    if-eq p1, p3, :cond_0

    return-object p2

    :cond_0
    sget-object p1, Lr4/iq3;->zzh:Lr4/iq3;

    return-object p1

    :cond_1
    new-instance p1, Lr4/hq3;

    invoke-direct {p1, p2}, Lr4/hq3;-><init>(Lr4/zp3;)V

    return-object p1

    :cond_2
    new-instance p1, Lr4/iq3;

    invoke-direct {p1}, Lr4/iq3;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v2, "zzb"

    aput-object v2, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v1

    const-string p2, "zzg"

    aput-object p2, p1, v0

    sget-object p2, Lr4/iq3;->zzh:Lr4/iq3;

    const-string p3, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u100a\u0000\u0002\u100a\u0001\u0003\u100a\u0002"

    invoke-static {p2, p3, p1}, Lr4/pm3;->A(Lr4/ao3;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
