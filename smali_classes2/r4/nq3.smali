.class public final Lr4/nq3;
.super Lr4/pm3;
.source "SourceFile"

# interfaces
.implements Lr4/bo3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/pm3<",
        "Lr4/nq3;",
        "Lr4/kq3;",
        ">;",
        "Lr4/bo3;"
    }
.end annotation


# static fields
.field private static final zzl:Lr4/nq3;


# instance fields
.field private zzb:I

.field private zze:Lr4/mq3;

.field private zzf:Lr4/ym3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/ym3<",
            "Lr4/fq3;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:Lr4/ll3;

.field private zzh:Lr4/ll3;

.field private zzi:I

.field private zzj:Lr4/ll3;

.field private zzk:B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr4/nq3;

    invoke-direct {v0}, Lr4/nq3;-><init>()V

    sput-object v0, Lr4/nq3;->zzl:Lr4/nq3;

    const-class v1, Lr4/nq3;

    invoke-static {v1, v0}, Lr4/pm3;->z(Ljava/lang/Class;Lr4/pm3;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lr4/pm3;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lr4/nq3;->zzk:B

    invoke-static {}, Lr4/pm3;->m()Lr4/ym3;

    move-result-object v0

    iput-object v0, p0, Lr4/nq3;->zzf:Lr4/ym3;

    sget-object v0, Lr4/ll3;->b:Lr4/ll3;

    iput-object v0, p0, Lr4/nq3;->zzg:Lr4/ll3;

    iput-object v0, p0, Lr4/nq3;->zzh:Lr4/ll3;

    iput-object v0, p0, Lr4/nq3;->zzj:Lr4/ll3;

    return-void
.end method

.method public static synthetic C()Lr4/nq3;
    .locals 1

    sget-object v0, Lr4/nq3;->zzl:Lr4/nq3;

    return-object v0
.end method


# virtual methods
.method public final B(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_5

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_3

    const/4 v3, 0x0

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    if-nez p2, :cond_0

    const/4 p3, 0x0

    :cond_0
    iput-byte p3, p0, Lr4/nq3;->zzk:B

    return-object v3

    :cond_1
    sget-object p1, Lr4/nq3;->zzl:Lr4/nq3;

    return-object p1

    :cond_2
    new-instance p1, Lr4/kq3;

    invoke-direct {p1, v3}, Lr4/kq3;-><init>(Lr4/zp3;)V

    return-object p1

    :cond_3
    new-instance p1, Lr4/nq3;

    invoke-direct {p1}, Lr4/nq3;-><init>()V

    return-object p1

    :cond_4
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzb"

    aput-object p2, p1, v0

    const-string p2, "zze"

    aput-object p2, p1, p3

    const-string p2, "zzf"

    aput-object p2, p1, v4

    const-class p2, Lr4/fq3;

    aput-object p2, p1, v3

    const-string p2, "zzg"

    aput-object p2, p1, v2

    const-string p2, "zzh"

    aput-object p2, p1, v1

    const/4 p2, 0x6

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzj"

    aput-object p3, p1, p2

    sget-object p2, Lr4/nq3;->zzl:Lr4/nq3;

    const-string p3, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0001\u0001\u1009\u0000\u0002\u041b\u0003\u100a\u0001\u0004\u100a\u0002\u0005\u1004\u0003\u0006\u100a\u0004"

    invoke-static {p2, p3, p1}, Lr4/pm3;->A(Lr4/ao3;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    iget-byte p1, p0, Lr4/nq3;->zzk:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
