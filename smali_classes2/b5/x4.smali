.class public final Lb5/x4;
.super Lb5/x8;
.source "SourceFile"

# interfaces
.implements Lb5/fa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb5/x8<",
        "Lb5/x4;",
        "Lb5/u4;",
        ">;",
        "Lb5/fa;"
    }
.end annotation


# static fields
.field private static final zza:Lb5/x4;


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:Lb5/e9;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb5/e9<",
            "Lb5/l4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lb5/x4;

    invoke-direct {v0}, Lb5/x4;-><init>()V

    sput-object v0, Lb5/x4;->zza:Lb5/x4;

    const-class v1, Lb5/x4;

    invoke-static {v1, v0}, Lb5/x8;->j(Ljava/lang/Class;Lb5/x8;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lb5/x8;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lb5/x4;->zzf:I

    invoke-static {}, Lb5/x8;->f()Lb5/e9;

    move-result-object v0

    iput-object v0, p0, Lb5/x4;->zzg:Lb5/e9;

    return-void
.end method

.method public static s()Lb5/u4;
    .locals 1

    sget-object v0, Lb5/x4;->zza:Lb5/x4;

    invoke-virtual {v0}, Lb5/x8;->k()Lb5/u8;

    move-result-object v0

    check-cast v0, Lb5/u4;

    return-object v0
.end method

.method public static synthetic t()Lb5/x4;
    .locals 1

    sget-object v0, Lb5/x4;->zza:Lb5/x4;

    return-object v0
.end method

.method public static synthetic u(Lb5/x4;Lb5/l4;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lb5/x4;->zzg:Lb5/e9;

    invoke-interface {v0}, Lb5/e9;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lb5/x8;->g(Lb5/e9;)Lb5/e9;

    move-result-object v0

    iput-object v0, p0, Lb5/x4;->zzg:Lb5/e9;

    :cond_0
    iget-object p0, p0, Lb5/x4;->zzg:Lb5/e9;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final r(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

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
    sget-object p1, Lb5/x4;->zza:Lb5/x4;

    return-object p1

    :cond_1
    new-instance p1, Lb5/u4;

    invoke-direct {p1, p2}, Lb5/u4;-><init>(Lb5/a4;)V

    return-object p1

    :cond_2
    new-instance p1, Lb5/x4;

    invoke-direct {p1}, Lb5/x4;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v3, "zze"

    aput-object v3, p1, p3

    const-string p3, "zzf"

    aput-object p3, p1, p2

    sget-object p2, Lb5/w4;->a:Lb5/b9;

    aput-object p2, p1, v2

    const-string p2, "zzg"

    aput-object p2, p1, v1

    const-class p2, Lb5/l4;

    aput-object p2, p1, v0

    sget-object p2, Lb5/x4;->zza:Lb5/x4;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u100c\u0000\u0002\u001b"

    invoke-static {p2, p3, p1}, Lb5/x8;->i(Lb5/ea;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
