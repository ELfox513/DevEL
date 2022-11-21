.class public final Lr4/ai3;
.super Lr4/pm3;
.source "SourceFile"

# interfaces
.implements Lr4/bo3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/pm3<",
        "Lr4/ai3;",
        "Lr4/zh3;",
        ">;",
        "Lr4/bo3;"
    }
.end annotation


# static fields
.field private static final zzf:Lr4/ai3;


# instance fields
.field private zzb:Ljava/lang/String;

.field private zze:Lr4/zg3;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr4/ai3;

    invoke-direct {v0}, Lr4/ai3;-><init>()V

    sput-object v0, Lr4/ai3;->zzf:Lr4/ai3;

    const-class v1, Lr4/ai3;

    invoke-static {v1, v0}, Lr4/pm3;->z(Ljava/lang/Class;Lr4/pm3;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lr4/pm3;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lr4/ai3;->zzb:Ljava/lang/String;

    return-void
.end method

.method public static I(Lr4/ll3;Lr4/bm3;)Lr4/ai3;
    .locals 1

    sget-object v0, Lr4/ai3;->zzf:Lr4/ai3;

    invoke-static {v0, p0, p1}, Lr4/pm3;->r(Lr4/pm3;Lr4/ll3;Lr4/bm3;)Lr4/pm3;

    move-result-object p0

    check-cast p0, Lr4/ai3;

    return-object p0
.end method

.method public static J()Lr4/ai3;
    .locals 1

    sget-object v0, Lr4/ai3;->zzf:Lr4/ai3;

    return-object v0
.end method

.method public static synthetic K()Lr4/ai3;
    .locals 1

    sget-object v0, Lr4/ai3;->zzf:Lr4/ai3;

    return-object v0
.end method


# virtual methods
.method public final B(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x2

    if-eq p1, p3, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    return-object p3

    :cond_0
    sget-object p1, Lr4/ai3;->zzf:Lr4/ai3;

    return-object p1

    :cond_1
    new-instance p1, Lr4/zh3;

    invoke-direct {p1, p3}, Lr4/zh3;-><init>(Lr4/yh3;)V

    return-object p1

    :cond_2
    new-instance p1, Lr4/ai3;

    invoke-direct {p1}, Lr4/ai3;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "zzb"

    aput-object v0, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    sget-object p2, Lr4/ai3;->zzf:Lr4/ai3;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\t"

    invoke-static {p2, p3, p1}, Lr4/pm3;->A(Lr4/ao3;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final C()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/ai3;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final D()Z
    .locals 1

    iget-object v0, p0, Lr4/ai3;->zze:Lr4/zg3;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final E()Lr4/zg3;
    .locals 1

    iget-object v0, p0, Lr4/ai3;->zze:Lr4/zg3;

    if-nez v0, :cond_0

    invoke-static {}, Lr4/zg3;->I()Lr4/zg3;

    move-result-object v0

    :cond_0
    return-object v0
.end method
