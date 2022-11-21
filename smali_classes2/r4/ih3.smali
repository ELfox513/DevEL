.class public final Lr4/ih3;
.super Lr4/pm3;
.source "SourceFile"

# interfaces
.implements Lr4/bo3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/pm3<",
        "Lr4/ih3;",
        "Lr4/hh3;",
        ">;",
        "Lr4/bo3;"
    }
.end annotation


# static fields
.field private static final zzh:Lr4/ih3;


# instance fields
.field private zzb:Lr4/wg3;

.field private zze:I

.field private zzf:I

.field private zzg:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr4/ih3;

    invoke-direct {v0}, Lr4/ih3;-><init>()V

    sput-object v0, Lr4/ih3;->zzh:Lr4/ih3;

    const-class v1, Lr4/ih3;

    invoke-static {v1, v0}, Lr4/pm3;->z(Ljava/lang/Class;Lr4/pm3;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lr4/pm3;-><init>()V

    return-void
.end method

.method public static synthetic I()Lr4/ih3;
    .locals 1

    sget-object v0, Lr4/ih3;->zzh:Lr4/ih3;

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
    sget-object p1, Lr4/ih3;->zzh:Lr4/ih3;

    return-object p1

    :cond_1
    new-instance p1, Lr4/hh3;

    invoke-direct {p1, p2}, Lr4/hh3;-><init>(Lr4/dh3;)V

    return-object p1

    :cond_2
    new-instance p1, Lr4/ih3;

    invoke-direct {p1}, Lr4/ih3;-><init>()V

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

    sget-object p2, Lr4/ih3;->zzh:Lr4/ih3;

    const-string p3, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\t\u0002\u000c\u0003\u000b\u0004\u000c"

    invoke-static {p2, p3, p1}, Lr4/pm3;->A(Lr4/ao3;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final C()Z
    .locals 1

    iget-object v0, p0, Lr4/ih3;->zzb:Lr4/wg3;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final D()Lr4/wg3;
    .locals 1

    iget-object v0, p0, Lr4/ih3;->zzb:Lr4/wg3;

    if-nez v0, :cond_0

    invoke-static {}, Lr4/wg3;->I()Lr4/wg3;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final E()I
    .locals 1

    iget v0, p0, Lr4/ih3;->zzf:I

    return v0
.end method

.method public final J()I
    .locals 4

    iget v0, p0, Lr4/ih3;->zze:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    :cond_3
    :goto_0
    if-nez v1, :cond_4

    return v3

    :cond_4
    return v1
.end method

.method public final K()I
    .locals 1

    iget v0, p0, Lr4/ih3;->zzg:I

    invoke-static {v0}, Lr4/ci3;->b(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
