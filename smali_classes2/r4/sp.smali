.class public final Lr4/sp;
.super Lr4/pm3;
.source "SourceFile"

# interfaces
.implements Lr4/bo3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/pm3<",
        "Lr4/sp;",
        "Lr4/rp;",
        ">;",
        "Lr4/bo3;"
    }
.end annotation


# static fields
.field private static final zzp:Lr4/sp;


# instance fields
.field private zzb:I

.field private zze:I

.field private zzf:I

.field private zzg:Lr4/kq;

.field private zzh:Lr4/mq;

.field private zzi:Lr4/ym3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/ym3<",
            "Lr4/gq;",
            ">;"
        }
    .end annotation
.end field

.field private zzj:Lr4/oq;

.field private zzk:Lr4/zr;

.field private zzl:Lr4/pr;

.field private zzm:Lr4/cr;

.field private zzn:Lr4/er;

.field private zzo:Lr4/ym3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/ym3<",
            "Lr4/ms;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr4/sp;

    invoke-direct {v0}, Lr4/sp;-><init>()V

    sput-object v0, Lr4/sp;->zzp:Lr4/sp;

    const-class v1, Lr4/sp;

    invoke-static {v1, v0}, Lr4/pm3;->z(Ljava/lang/Class;Lr4/pm3;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lr4/pm3;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lr4/sp;->zzf:I

    invoke-static {}, Lr4/pm3;->m()Lr4/ym3;

    move-result-object v0

    iput-object v0, p0, Lr4/sp;->zzi:Lr4/ym3;

    invoke-static {}, Lr4/pm3;->m()Lr4/ym3;

    move-result-object v0

    iput-object v0, p0, Lr4/sp;->zzo:Lr4/ym3;

    return-void
.end method

.method public static D()Lr4/sp;
    .locals 1

    sget-object v0, Lr4/sp;->zzp:Lr4/sp;

    return-object v0
.end method

.method public static synthetic E()Lr4/sp;
    .locals 1

    sget-object v0, Lr4/sp;->zzp:Lr4/sp;

    return-object v0
.end method

.method public static synthetic I(Lr4/sp;Lr4/qp;)V
    .locals 0

    invoke-virtual {p1}, Lr4/qp;->zza()I

    move-result p1

    iput p1, p0, Lr4/sp;->zze:I

    iget p1, p0, Lr4/sp;->zzb:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lr4/sp;->zzb:I

    return-void
.end method

.method public static synthetic J(Lr4/sp;Lr4/mq;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lr4/sp;->zzh:Lr4/mq;

    iget p1, p0, Lr4/sp;->zzb:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lr4/sp;->zzb:I

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
    sget-object p1, Lr4/sp;->zzp:Lr4/sp;

    return-object p1

    :cond_1
    new-instance p1, Lr4/rp;

    invoke-direct {p1, p2}, Lr4/rp;-><init>(Lr4/np;)V

    return-object p1

    :cond_2
    new-instance p1, Lr4/sp;

    invoke-direct {p1}, Lr4/sp;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0x10

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zzb"

    aput-object v4, p1, v3

    const-string v3, "zze"

    aput-object v3, p1, p2

    invoke-static {}, Lr4/qp;->d()Lr4/tm3;

    move-result-object p2

    aput-object p2, p1, v2

    const-string p2, "zzf"

    aput-object p2, p1, v1

    sget-object p2, Lr4/vq;->a:Lr4/tm3;

    aput-object p2, p1, v0

    const-string p2, "zzg"

    aput-object p2, p1, p3

    const/4 p2, 0x6

    const-string p3, "zzh"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-class p3, Lr4/gq;

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzl"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "zzm"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "zzn"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "zzo"

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-class p3, Lr4/ms;

    aput-object p3, p1, p2

    sget-object p2, Lr4/sp;->zzp:Lr4/sp;

    const-string p3, "\u0001\u000b\u0000\u0001\u0007\u0011\u000b\u0000\u0002\u0000\u0007\u100c\u0000\u0008\u100c\u0001\t\u1009\u0002\n\u1009\u0003\u000b\u001b\u000c\u1009\u0004\r\u1009\u0005\u000e\u1009\u0006\u000f\u1009\u0007\u0010\u1009\u0008\u0011\u001b"

    invoke-static {p2, p3, p1}, Lr4/pm3;->A(Lr4/ao3;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final C()Lr4/mq;
    .locals 1

    iget-object v0, p0, Lr4/sp;->zzh:Lr4/mq;

    if-nez v0, :cond_0

    invoke-static {}, Lr4/mq;->C()Lr4/mq;

    move-result-object v0

    :cond_0
    return-object v0
.end method
