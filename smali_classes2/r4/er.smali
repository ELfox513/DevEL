.class public final Lr4/er;
.super Lr4/pm3;
.source "SourceFile"

# interfaces
.implements Lr4/bo3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/pm3<",
        "Lr4/er;",
        "Lr4/dr;",
        ">;",
        "Lr4/bo3;"
    }
.end annotation


# static fields
.field private static final zzi:Lr4/er;


# instance fields
.field private zzb:I

.field private zze:Lr4/ar;

.field private zzf:Lr4/ym3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/ym3<",
            "Lr4/fs;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:I

.field private zzh:Lr4/hs;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr4/er;

    invoke-direct {v0}, Lr4/er;-><init>()V

    sput-object v0, Lr4/er;->zzi:Lr4/er;

    const-class v1, Lr4/er;

    invoke-static {v1, v0}, Lr4/pm3;->z(Ljava/lang/Class;Lr4/pm3;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lr4/pm3;-><init>()V

    invoke-static {}, Lr4/pm3;->m()Lr4/ym3;

    move-result-object v0

    iput-object v0, p0, Lr4/er;->zzf:Lr4/ym3;

    return-void
.end method

.method public static synthetic C()Lr4/er;
    .locals 1

    sget-object v0, Lr4/er;->zzi:Lr4/er;

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
    sget-object p1, Lr4/er;->zzi:Lr4/er;

    return-object p1

    :cond_1
    new-instance p1, Lr4/dr;

    invoke-direct {p1, p2}, Lr4/dr;-><init>(Lr4/np;)V

    return-object p1

    :cond_2
    new-instance p1, Lr4/er;

    invoke-direct {p1}, Lr4/er;-><init>()V

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

    const-class p2, Lr4/fs;

    aput-object p2, p1, v1

    const-string p2, "zzg"

    aput-object p2, p1, v0

    sget-object p2, Lr4/vq;->a:Lr4/tm3;

    aput-object p2, p1, p3

    const/4 p2, 0x6

    const-string p3, "zzh"

    aput-object p3, p1, p2

    sget-object p2, Lr4/er;->zzi:Lr4/er;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u1009\u0000\u0002\u001b\u0003\u100c\u0001\u0004\u1009\u0002"

    invoke-static {p2, p3, p1}, Lr4/pm3;->A(Lr4/ao3;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
