.class public final Lb5/p4;
.super Lb5/x8;
.source "SourceFile"

# interfaces
.implements Lb5/fa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb5/x8<",
        "Lb5/p4;",
        "Lb5/o4;",
        ">;",
        "Lb5/fa;"
    }
.end annotation


# static fields
.field private static final zza:Lb5/p4;


# instance fields
.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:Lb5/d4;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lb5/p4;

    invoke-direct {v0}, Lb5/p4;-><init>()V

    sput-object v0, Lb5/p4;->zza:Lb5/p4;

    const-class v1, Lb5/p4;

    invoke-static {v1, v0}, Lb5/x8;->j(Ljava/lang/Class;Lb5/x8;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lb5/x8;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lb5/p4;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lb5/p4;->zzg:Ljava/lang/String;

    return-void
.end method

.method public static synthetic s()Lb5/p4;
    .locals 1

    sget-object v0, Lb5/p4;->zza:Lb5/p4;

    return-object v0
.end method


# virtual methods
.method public final r(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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
    sget-object p1, Lb5/p4;->zza:Lb5/p4;

    return-object p1

    :cond_1
    new-instance p1, Lb5/o4;

    invoke-direct {p1, p2}, Lb5/o4;-><init>(Lb5/a4;)V

    return-object p1

    :cond_2
    new-instance p1, Lb5/p4;

    invoke-direct {p1}, Lb5/p4;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v2, "zze"

    aput-object v2, p1, p3

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const-string p2, "zzg"

    aput-object p2, p1, v1

    const-string p2, "zzh"

    aput-object p2, p1, v0

    sget-object p2, Lb5/p4;->zza:Lb5/p4;

    const-string p3, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1009\u0002"

    invoke-static {p2, p3, p1}, Lb5/x8;->i(Lb5/ea;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
