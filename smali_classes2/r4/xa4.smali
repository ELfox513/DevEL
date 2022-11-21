.class public final Lr4/xa4;
.super Lr4/pm3;
.source "SourceFile"

# interfaces
.implements Lr4/bo3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/pm3<",
        "Lr4/xa4;",
        "Lr4/wa4;",
        ">;",
        "Lr4/bo3;"
    }
.end annotation


# static fields
.field private static final zzk:Lr4/xa4;


# instance fields
.field private zzb:I

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;

.field private zzj:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr4/xa4;

    invoke-direct {v0}, Lr4/xa4;-><init>()V

    sput-object v0, Lr4/xa4;->zzk:Lr4/xa4;

    const-class v1, Lr4/xa4;

    invoke-static {v1, v0}, Lr4/pm3;->z(Ljava/lang/Class;Lr4/pm3;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lr4/pm3;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lr4/xa4;->zze:Ljava/lang/String;

    iput-object v0, p0, Lr4/xa4;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lr4/xa4;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lr4/xa4;->zzh:Ljava/lang/String;

    iput-object v0, p0, Lr4/xa4;->zzi:Ljava/lang/String;

    iput-object v0, p0, Lr4/xa4;->zzj:Ljava/lang/String;

    return-void
.end method

.method public static synthetic C()Lr4/xa4;
    .locals 1

    sget-object v0, Lr4/xa4;->zzk:Lr4/xa4;

    return-object v0
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
    sget-object p1, Lr4/xa4;->zzk:Lr4/xa4;

    return-object p1

    :cond_1
    new-instance p1, Lr4/wa4;

    invoke-direct {p1, p2}, Lr4/wa4;-><init>(Lr4/qa4;)V

    return-object p1

    :cond_2
    new-instance p1, Lr4/xa4;

    invoke-direct {p1}, Lr4/xa4;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x7

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

    sget-object p2, Lr4/xa4;->zzk:Lr4/xa4;

    const-string p3, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1008\u0003\u0005\u1008\u0004\u0006\u1008\u0005"

    invoke-static {p2, p3, p1}, Lr4/pm3;->A(Lr4/ao3;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
