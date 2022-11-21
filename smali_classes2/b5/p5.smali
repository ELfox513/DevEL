.class public final Lb5/p5;
.super Lb5/x8;
.source "SourceFile"

# interfaces
.implements Lb5/fa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb5/x8<",
        "Lb5/p5;",
        "Lb5/l5;",
        ">;",
        "Lb5/fa;"
    }
.end annotation


# static fields
.field private static final zza:Lb5/p5;


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:Lb5/e9;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb5/e9<",
            "Lb5/p5;",
            ">;"
        }
    .end annotation
.end field

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;

.field private zzj:Z

.field private zzk:D


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lb5/p5;

    invoke-direct {v0}, Lb5/p5;-><init>()V

    sput-object v0, Lb5/p5;->zza:Lb5/p5;

    const-class v1, Lb5/p5;

    invoke-static {v1, v0}, Lb5/x8;->j(Ljava/lang/Class;Lb5/x8;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lb5/x8;-><init>()V

    invoke-static {}, Lb5/x8;->f()Lb5/e9;

    move-result-object v0

    iput-object v0, p0, Lb5/p5;->zzg:Lb5/e9;

    const-string v0, ""

    iput-object v0, p0, Lb5/p5;->zzh:Ljava/lang/String;

    iput-object v0, p0, Lb5/p5;->zzi:Ljava/lang/String;

    return-void
.end method

.method public static synthetic t()Lb5/p5;
    .locals 1

    sget-object v0, Lb5/p5;->zza:Lb5/p5;

    return-object v0
.end method


# virtual methods
.method public final A()Z
    .locals 1

    iget v0, p0, Lb5/p5;->zze:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final B()Z
    .locals 1

    iget v0, p0, Lb5/p5;->zze:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final C()I
    .locals 1

    iget v0, p0, Lb5/p5;->zzf:I

    invoke-static {v0}, Lb5/o5;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final r(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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
    sget-object p1, Lb5/p5;->zza:Lb5/p5;

    return-object p1

    :cond_1
    new-instance p1, Lb5/l5;

    invoke-direct {p1, p2}, Lb5/l5;-><init>(Lb5/e5;)V

    return-object p1

    :cond_2
    new-instance p1, Lb5/p5;

    invoke-direct {p1}, Lb5/p5;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0x9

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zze"

    aput-object v4, p1, v3

    const-string v3, "zzf"

    aput-object v3, p1, p2

    sget-object p2, Lb5/n5;->a:Lb5/b9;

    aput-object p2, p1, v2

    const-string p2, "zzg"

    aput-object p2, p1, v1

    const-class p2, Lb5/p5;

    aput-object p2, p1, v0

    const-string p2, "zzh"

    aput-object p2, p1, p3

    const/4 p2, 0x6

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzk"

    aput-object p3, p1, p2

    sget-object p2, Lb5/p5;->zza:Lb5/p5;

    const-string p3, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001\u100c\u0000\u0002\u001b\u0003\u1008\u0001\u0004\u1008\u0002\u0005\u1007\u0003\u0006\u1000\u0004"

    invoke-static {p2, p3, p1}, Lb5/x8;->i(Lb5/ea;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final s()D
    .locals 2

    iget-wide v0, p0, Lb5/p5;->zzk:D

    return-wide v0
.end method

.method public final u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb5/p5;->zzh:Ljava/lang/String;

    return-object v0
.end method

.method public final v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb5/p5;->zzi:Ljava/lang/String;

    return-object v0
.end method

.method public final w()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lb5/p5;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb5/p5;->zzg:Lb5/e9;

    return-object v0
.end method

.method public final x()Z
    .locals 1

    iget-boolean v0, p0, Lb5/p5;->zzj:Z

    return v0
.end method

.method public final z()Z
    .locals 1

    iget v0, p0, Lb5/p5;->zze:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
