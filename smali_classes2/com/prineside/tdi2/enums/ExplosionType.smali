.class public final enum Lcom/prineside/tdi2/enums/ExplosionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prineside/tdi2/enums/ExplosionType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AIR_FALL:Lcom/prineside/tdi2/enums/ExplosionType;

.field public static final enum CANNON:Lcom/prineside/tdi2/enums/ExplosionType;

.field public static final enum FIREBALL:Lcom/prineside/tdi2/enums/ExplosionType;

.field public static final enum GENERIC:Lcom/prineside/tdi2/enums/ExplosionType;

.field public static final enum MISSILE:Lcom/prineside/tdi2/enums/ExplosionType;

.field public static final synthetic a:[Lcom/prineside/tdi2/enums/ExplosionType;

.field public static final values:[Lcom/prineside/tdi2/enums/ExplosionType;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/enums/ExplosionType;

    const-string v1, "CANNON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/ExplosionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/ExplosionType;->CANNON:Lcom/prineside/tdi2/enums/ExplosionType;

    new-instance v0, Lcom/prineside/tdi2/enums/ExplosionType;

    const-string v1, "MISSILE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/ExplosionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/ExplosionType;->MISSILE:Lcom/prineside/tdi2/enums/ExplosionType;

    new-instance v0, Lcom/prineside/tdi2/enums/ExplosionType;

    const-string v1, "AIR_FALL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/ExplosionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/ExplosionType;->AIR_FALL:Lcom/prineside/tdi2/enums/ExplosionType;

    new-instance v0, Lcom/prineside/tdi2/enums/ExplosionType;

    const-string v1, "FIREBALL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/ExplosionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/ExplosionType;->FIREBALL:Lcom/prineside/tdi2/enums/ExplosionType;

    new-instance v0, Lcom/prineside/tdi2/enums/ExplosionType;

    const-string v1, "GENERIC"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/ExplosionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/ExplosionType;->GENERIC:Lcom/prineside/tdi2/enums/ExplosionType;

    invoke-static {}, Lcom/prineside/tdi2/enums/ExplosionType;->c()[Lcom/prineside/tdi2/enums/ExplosionType;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/enums/ExplosionType;->a:[Lcom/prineside/tdi2/enums/ExplosionType;

    invoke-static {}, Lcom/prineside/tdi2/enums/ExplosionType;->values()[Lcom/prineside/tdi2/enums/ExplosionType;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/enums/ExplosionType;->values:[Lcom/prineside/tdi2/enums/ExplosionType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic c()[Lcom/prineside/tdi2/enums/ExplosionType;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/prineside/tdi2/enums/ExplosionType;

    sget-object v1, Lcom/prineside/tdi2/enums/ExplosionType;->CANNON:Lcom/prineside/tdi2/enums/ExplosionType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/ExplosionType;->MISSILE:Lcom/prineside/tdi2/enums/ExplosionType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/ExplosionType;->AIR_FALL:Lcom/prineside/tdi2/enums/ExplosionType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/ExplosionType;->FIREBALL:Lcom/prineside/tdi2/enums/ExplosionType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/ExplosionType;->GENERIC:Lcom/prineside/tdi2/enums/ExplosionType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/ExplosionType;
    .locals 1

    const-class v0, Lcom/prineside/tdi2/enums/ExplosionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/enums/ExplosionType;

    return-object p0
.end method

.method public static values()[Lcom/prineside/tdi2/enums/ExplosionType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ExplosionType;->a:[Lcom/prineside/tdi2/enums/ExplosionType;

    invoke-virtual {v0}, [Lcom/prineside/tdi2/enums/ExplosionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/enums/ExplosionType;

    return-object v0
.end method
