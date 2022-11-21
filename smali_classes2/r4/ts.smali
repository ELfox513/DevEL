.class public final Lr4/ts;
.super Lr4/pm3;
.source "SourceFile"

# interfaces
.implements Lr4/bo3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/pm3<",
        "Lr4/ts;",
        "Lr4/ss;",
        ">;",
        "Lr4/bo3;"
    }
.end annotation


# static fields
.field private static final zzi:Lr4/ts;


# instance fields
.field private zzb:I

.field private zze:Lr4/js;

.field private zzf:I

.field private zzg:Lr4/rs;

.field private zzh:Lr4/hs;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr4/ts;

    invoke-direct {v0}, Lr4/ts;-><init>()V

    sput-object v0, Lr4/ts;->zzi:Lr4/ts;

    const-class v1, Lr4/ts;

    invoke-static {v1, v0}, Lr4/pm3;->z(Ljava/lang/Class;Lr4/pm3;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lr4/pm3;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lr4/ts;->zzf:I

    return-void
.end method

.method public static synthetic C()Lr4/ts;
    .locals 1

    sget-object v0, Lr4/ts;->zzi:Lr4/ts;

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
    sget-object p1, Lr4/ts;->zzi:Lr4/ts;

    return-object p1

    :cond_1
    new-instance p1, Lr4/ss;

    invoke-direct {p1, p2}, Lr4/ss;-><init>(Lr4/np;)V

    return-object p1

    :cond_2
    new-instance p1, Lr4/ts;

    invoke-direct {p1}, Lr4/ts;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zzb"

    aput-object v4, p1, v3

    const-string v3, "zze"

    aput-object v3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v2

    sget-object p2, Lr4/vq;->a:Lr4/tm3;

    aput-object p2, p1, v1

    const-string p2, "zzg"

    aput-object p2, p1, v0

    const-string p2, "zzh"

    aput-object p2, p1, p3

    sget-object p2, Lr4/ts;->zzi:Lr4/ts;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u100c\u0001\u0003\u1009\u0002\u0004\u1009\u0003"

    invoke-static {p2, p3, p1}, Lr4/pm3;->A(Lr4/ao3;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
