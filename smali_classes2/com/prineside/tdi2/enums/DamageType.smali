.class public final enum Lcom/prineside/tdi2/enums/DamageType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prineside/tdi2/enums/DamageType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BULLET:Lcom/prineside/tdi2/enums/DamageType;

.field public static final enum ELECTRICITY:Lcom/prineside/tdi2/enums/DamageType;

.field public static final enum EXPLOSION:Lcom/prineside/tdi2/enums/DamageType;

.field public static final enum FIRE:Lcom/prineside/tdi2/enums/DamageType;

.field public static final enum LASER:Lcom/prineside/tdi2/enums/DamageType;

.field public static final enum POISON:Lcom/prineside/tdi2/enums/DamageType;

.field public static final synthetic a:[Lcom/prineside/tdi2/enums/DamageType;

.field public static final values:[Lcom/prineside/tdi2/enums/DamageType;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/enums/DamageType;

    const-string v1, "BULLET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/DamageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/DamageType;->BULLET:Lcom/prineside/tdi2/enums/DamageType;

    new-instance v0, Lcom/prineside/tdi2/enums/DamageType;

    const-string v1, "FIRE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/DamageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/DamageType;->FIRE:Lcom/prineside/tdi2/enums/DamageType;

    new-instance v0, Lcom/prineside/tdi2/enums/DamageType;

    const-string v1, "POISON"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/DamageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/DamageType;->POISON:Lcom/prineside/tdi2/enums/DamageType;

    new-instance v0, Lcom/prineside/tdi2/enums/DamageType;

    const-string v1, "EXPLOSION"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/DamageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/DamageType;->EXPLOSION:Lcom/prineside/tdi2/enums/DamageType;

    new-instance v0, Lcom/prineside/tdi2/enums/DamageType;

    const-string v1, "ELECTRICITY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/DamageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/DamageType;->ELECTRICITY:Lcom/prineside/tdi2/enums/DamageType;

    new-instance v0, Lcom/prineside/tdi2/enums/DamageType;

    const-string v1, "LASER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/DamageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/DamageType;->LASER:Lcom/prineside/tdi2/enums/DamageType;

    invoke-static {}, Lcom/prineside/tdi2/enums/DamageType;->c()[Lcom/prineside/tdi2/enums/DamageType;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/enums/DamageType;->a:[Lcom/prineside/tdi2/enums/DamageType;

    invoke-static {}, Lcom/prineside/tdi2/enums/DamageType;->values()[Lcom/prineside/tdi2/enums/DamageType;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/enums/DamageType;->values:[Lcom/prineside/tdi2/enums/DamageType;

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

.method public static synthetic c()[Lcom/prineside/tdi2/enums/DamageType;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/prineside/tdi2/enums/DamageType;

    sget-object v1, Lcom/prineside/tdi2/enums/DamageType;->BULLET:Lcom/prineside/tdi2/enums/DamageType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/DamageType;->FIRE:Lcom/prineside/tdi2/enums/DamageType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/DamageType;->POISON:Lcom/prineside/tdi2/enums/DamageType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/DamageType;->EXPLOSION:Lcom/prineside/tdi2/enums/DamageType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/DamageType;->ELECTRICITY:Lcom/prineside/tdi2/enums/DamageType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/DamageType;->LASER:Lcom/prineside/tdi2/enums/DamageType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/DamageType;
    .locals 1

    const-class v0, Lcom/prineside/tdi2/enums/DamageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/enums/DamageType;

    return-object p0
.end method

.method public static values()[Lcom/prineside/tdi2/enums/DamageType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/DamageType;->a:[Lcom/prineside/tdi2/enums/DamageType;

    invoke-virtual {v0}, [Lcom/prineside/tdi2/enums/DamageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/enums/DamageType;

    return-object v0
.end method
