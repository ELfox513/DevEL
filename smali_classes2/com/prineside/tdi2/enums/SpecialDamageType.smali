.class public final enum Lcom/prineside/tdi2/enums/SpecialDamageType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prineside/tdi2/enums/SpecialDamageType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CHAINING:Lcom/prineside/tdi2/enums/SpecialDamageType;

.field public static final enum INSTAKILL:Lcom/prineside/tdi2/enums/SpecialDamageType;

.field public static final enum KILLSHOT:Lcom/prineside/tdi2/enums/SpecialDamageType;

.field public static final enum MISSILE_FIRST_DAMAGE:Lcom/prineside/tdi2/enums/SpecialDamageType;

.field public static final enum NANOPARTICLES:Lcom/prineside/tdi2/enums/SpecialDamageType;

.field public static final enum PIERCING:Lcom/prineside/tdi2/enums/SpecialDamageType;

.field public static final synthetic a:[Lcom/prineside/tdi2/enums/SpecialDamageType;

.field public static final values:[Lcom/prineside/tdi2/enums/SpecialDamageType;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/enums/SpecialDamageType;

    const-string v1, "KILLSHOT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/SpecialDamageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/SpecialDamageType;->KILLSHOT:Lcom/prineside/tdi2/enums/SpecialDamageType;

    new-instance v0, Lcom/prineside/tdi2/enums/SpecialDamageType;

    const-string v1, "INSTAKILL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/SpecialDamageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/SpecialDamageType;->INSTAKILL:Lcom/prineside/tdi2/enums/SpecialDamageType;

    new-instance v0, Lcom/prineside/tdi2/enums/SpecialDamageType;

    const-string v1, "MISSILE_FIRST_DAMAGE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/SpecialDamageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/SpecialDamageType;->MISSILE_FIRST_DAMAGE:Lcom/prineside/tdi2/enums/SpecialDamageType;

    new-instance v0, Lcom/prineside/tdi2/enums/SpecialDamageType;

    const-string v1, "PIERCING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/SpecialDamageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/SpecialDamageType;->PIERCING:Lcom/prineside/tdi2/enums/SpecialDamageType;

    new-instance v0, Lcom/prineside/tdi2/enums/SpecialDamageType;

    const-string v1, "CHAINING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/SpecialDamageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/SpecialDamageType;->CHAINING:Lcom/prineside/tdi2/enums/SpecialDamageType;

    new-instance v0, Lcom/prineside/tdi2/enums/SpecialDamageType;

    const-string v1, "NANOPARTICLES"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/SpecialDamageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/SpecialDamageType;->NANOPARTICLES:Lcom/prineside/tdi2/enums/SpecialDamageType;

    invoke-static {}, Lcom/prineside/tdi2/enums/SpecialDamageType;->c()[Lcom/prineside/tdi2/enums/SpecialDamageType;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/enums/SpecialDamageType;->a:[Lcom/prineside/tdi2/enums/SpecialDamageType;

    invoke-static {}, Lcom/prineside/tdi2/enums/SpecialDamageType;->values()[Lcom/prineside/tdi2/enums/SpecialDamageType;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/enums/SpecialDamageType;->values:[Lcom/prineside/tdi2/enums/SpecialDamageType;

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

.method public static synthetic c()[Lcom/prineside/tdi2/enums/SpecialDamageType;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/prineside/tdi2/enums/SpecialDamageType;

    sget-object v1, Lcom/prineside/tdi2/enums/SpecialDamageType;->KILLSHOT:Lcom/prineside/tdi2/enums/SpecialDamageType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/SpecialDamageType;->INSTAKILL:Lcom/prineside/tdi2/enums/SpecialDamageType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/SpecialDamageType;->MISSILE_FIRST_DAMAGE:Lcom/prineside/tdi2/enums/SpecialDamageType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/SpecialDamageType;->PIERCING:Lcom/prineside/tdi2/enums/SpecialDamageType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/SpecialDamageType;->CHAINING:Lcom/prineside/tdi2/enums/SpecialDamageType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/SpecialDamageType;->NANOPARTICLES:Lcom/prineside/tdi2/enums/SpecialDamageType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/SpecialDamageType;
    .locals 1

    const-class v0, Lcom/prineside/tdi2/enums/SpecialDamageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/enums/SpecialDamageType;

    return-object p0
.end method

.method public static values()[Lcom/prineside/tdi2/enums/SpecialDamageType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/SpecialDamageType;->a:[Lcom/prineside/tdi2/enums/SpecialDamageType;

    invoke-virtual {v0}, [Lcom/prineside/tdi2/enums/SpecialDamageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/enums/SpecialDamageType;

    return-object v0
.end method
