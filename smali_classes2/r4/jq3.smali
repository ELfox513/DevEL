.class public final Lr4/jq3;
.super Lr4/pm3;
.source "SourceFile"

# interfaces
.implements Lr4/bo3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/pm3<",
        "Lr4/jq3;",
        "Lr4/gq3;",
        ">;",
        "Lr4/bo3;"
    }
.end annotation


# static fields
.field private static final zzk:Lr4/jq3;


# instance fields
.field private zzb:I

.field private zze:Lr4/iq3;

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

.field private zzj:B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr4/jq3;

    invoke-direct {v0}, Lr4/jq3;-><init>()V

    sput-object v0, Lr4/jq3;->zzk:Lr4/jq3;

    const-class v1, Lr4/jq3;

    invoke-static {v1, v0}, Lr4/pm3;->z(Ljava/lang/Class;Lr4/pm3;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lr4/pm3;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lr4/jq3;->zzj:B

    invoke-static {}, Lr4/pm3;->m()Lr4/ym3;

    move-result-object v0

    iput-object v0, p0, Lr4/jq3;->zzf:Lr4/ym3;

    sget-object v0, Lr4/ll3;->b:Lr4/ll3;

    iput-object v0, p0, Lr4/jq3;->zzg:Lr4/ll3;

    iput-object v0, p0, Lr4/jq3;->zzh:Lr4/ll3;

    return-void
.end method

.method public static C()Lr4/gq3;
    .locals 1

    sget-object v0, Lr4/jq3;->zzk:Lr4/jq3;

    invoke-virtual {v0}, Lr4/pm3;->v()Lr4/lm3;

    move-result-object v0

    check-cast v0, Lr4/gq3;

    return-object v0
.end method

.method public static synthetic D()Lr4/jq3;
    .locals 1

    sget-object v0, Lr4/jq3;->zzk:Lr4/jq3;

    return-object v0
.end method

.method public static synthetic E(Lr4/jq3;Lr4/fq3;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lr4/jq3;->zzf:Lr4/ym3;

    invoke-interface {v0}, Lr4/ym3;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lr4/pm3;->n(Lr4/ym3;)Lr4/ym3;

    move-result-object v0

    iput-object v0, p0, Lr4/jq3;->zzf:Lr4/ym3;

    :cond_0
    iget-object p0, p0, Lr4/jq3;->zzf:Lr4/ym3;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
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
    iput-byte p3, p0, Lr4/jq3;->zzj:B

    return-object v3

    :cond_1
    sget-object p1, Lr4/jq3;->zzk:Lr4/jq3;

    return-object p1

    :cond_2
    new-instance p1, Lr4/gq3;

    invoke-direct {p1, v3}, Lr4/gq3;-><init>(Lr4/zp3;)V

    return-object p1

    :cond_3
    new-instance p1, Lr4/jq3;

    invoke-direct {p1}, Lr4/jq3;-><init>()V

    return-object p1

    :cond_4
    const/4 p1, 0x7

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

    sget-object p2, Lr4/jq3;->zzk:Lr4/jq3;

    const-string p3, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0001\u0001\u1009\u0000\u0002\u041b\u0003\u100a\u0001\u0004\u100a\u0002\u0005\u1004\u0003"

    invoke-static {p2, p3, p1}, Lr4/pm3;->A(Lr4/ao3;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    iget-byte p1, p0, Lr4/jq3;->zzj:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
