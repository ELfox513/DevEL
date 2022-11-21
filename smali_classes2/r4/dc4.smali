.class public final Lr4/dc4;
.super Lr4/pm3;
.source "SourceFile"

# interfaces
.implements Lr4/bo3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/pm3<",
        "Lr4/dc4;",
        "Lr4/cc4;",
        ">;",
        "Lr4/bo3;"
    }
.end annotation


# static fields
.field private static final zzi:Lr4/dc4;


# instance fields
.field private zzb:I

.field private zze:Lr4/ym3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/ym3<",
            "Lr4/ll3;",
            ">;"
        }
    .end annotation
.end field

.field private zzf:Lr4/ll3;

.field private zzg:I

.field private zzh:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr4/dc4;

    invoke-direct {v0}, Lr4/dc4;-><init>()V

    sput-object v0, Lr4/dc4;->zzi:Lr4/dc4;

    const-class v1, Lr4/dc4;

    invoke-static {v1, v0}, Lr4/pm3;->z(Ljava/lang/Class;Lr4/pm3;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lr4/pm3;-><init>()V

    invoke-static {}, Lr4/pm3;->m()Lr4/ym3;

    move-result-object v0

    iput-object v0, p0, Lr4/dc4;->zze:Lr4/ym3;

    sget-object v0, Lr4/ll3;->b:Lr4/ll3;

    iput-object v0, p0, Lr4/dc4;->zzf:Lr4/ll3;

    const/4 v0, 0x1

    iput v0, p0, Lr4/dc4;->zzg:I

    iput v0, p0, Lr4/dc4;->zzh:I

    return-void
.end method

.method public static C()Lr4/cc4;
    .locals 1

    sget-object v0, Lr4/dc4;->zzi:Lr4/dc4;

    invoke-virtual {v0}, Lr4/pm3;->v()Lr4/lm3;

    move-result-object v0

    check-cast v0, Lr4/cc4;

    return-object v0
.end method

.method public static synthetic D()Lr4/dc4;
    .locals 1

    sget-object v0, Lr4/dc4;->zzi:Lr4/dc4;

    return-object v0
.end method

.method public static synthetic E(Lr4/dc4;Lr4/ll3;)V
    .locals 2

    iget-object v0, p0, Lr4/dc4;->zze:Lr4/ym3;

    invoke-interface {v0}, Lr4/ym3;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lr4/pm3;->n(Lr4/ym3;)Lr4/ym3;

    move-result-object v0

    iput-object v0, p0, Lr4/dc4;->zze:Lr4/ym3;

    :cond_0
    iget-object p0, p0, Lr4/dc4;->zze:Lr4/ym3;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic I(Lr4/dc4;Lr4/ll3;)V
    .locals 1

    iget v0, p0, Lr4/dc4;->zzb:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lr4/dc4;->zzb:I

    iput-object p1, p0, Lr4/dc4;->zzf:Lr4/ll3;

    return-void
.end method

.method public static synthetic J(Lr4/dc4;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lr4/dc4;->zzh:I

    iget p1, p0, Lr4/dc4;->zzb:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lr4/dc4;->zzb:I

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
    sget-object p1, Lr4/dc4;->zzi:Lr4/dc4;

    return-object p1

    :cond_1
    new-instance p1, Lr4/cc4;

    invoke-direct {p1, p2}, Lr4/cc4;-><init>(Lr4/ya4;)V

    return-object p1

    :cond_2
    new-instance p1, Lr4/dc4;

    invoke-direct {p1}, Lr4/dc4;-><init>()V

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

    sget-object p2, Lr4/xb4;->a:Lr4/tm3;

    aput-object p2, p1, v0

    const-string p2, "zzh"

    aput-object p2, p1, p3

    const/4 p2, 0x6

    sget-object p3, Lr4/vb4;->a:Lr4/tm3;

    aput-object p3, p1, p2

    sget-object p2, Lr4/dc4;->zzi:Lr4/dc4;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001c\u0002\u100a\u0000\u0003\u100c\u0001\u0004\u100c\u0002"

    invoke-static {p2, p3, p1}, Lr4/pm3;->A(Lr4/ao3;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
