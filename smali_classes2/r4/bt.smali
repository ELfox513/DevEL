.class public final Lr4/bt;
.super Lr4/pm3;
.source "SourceFile"

# interfaces
.implements Lr4/bo3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/pm3<",
        "Lr4/bt;",
        "Lr4/at;",
        ">;",
        "Lr4/bo3;"
    }
.end annotation


# static fields
.field private static final zzh:Lr4/bt;


# instance fields
.field private zzb:I

.field private zze:I

.field private zzf:Lr4/rs;

.field private zzg:Lr4/hs;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr4/bt;

    invoke-direct {v0}, Lr4/bt;-><init>()V

    sput-object v0, Lr4/bt;->zzh:Lr4/bt;

    const-class v1, Lr4/bt;

    invoke-static {v1, v0}, Lr4/pm3;->z(Ljava/lang/Class;Lr4/pm3;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lr4/pm3;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lr4/bt;->zze:I

    return-void
.end method

.method public static synthetic C()Lr4/bt;
    .locals 1

    sget-object v0, Lr4/bt;->zzh:Lr4/bt;

    return-object v0
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
    sget-object p1, Lr4/bt;->zzh:Lr4/bt;

    return-object p1

    :cond_1
    new-instance p1, Lr4/at;

    invoke-direct {p1, p2}, Lr4/at;-><init>(Lr4/np;)V

    return-object p1

    :cond_2
    new-instance p1, Lr4/bt;

    invoke-direct {p1}, Lr4/bt;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v3, "zzb"

    aput-object v3, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    sget-object p2, Lr4/vq;->a:Lr4/tm3;

    aput-object p2, p1, v2

    const-string p2, "zzf"

    aput-object p2, p1, v1

    const-string p2, "zzg"

    aput-object p2, p1, v0

    sget-object p2, Lr4/bt;->zzh:Lr4/bt;

    const-string p3, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u1009\u0001\u0003\u1009\u0002"

    invoke-static {p2, p3, p1}, Lr4/pm3;->A(Lr4/ao3;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
