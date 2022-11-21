.class public final enum Lcom/prineside/tdi2/enums/BuildingType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prineside/tdi2/enums/BuildingType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum MODIFIER:Lcom/prineside/tdi2/enums/BuildingType;

.field public static final enum TOWER:Lcom/prineside/tdi2/enums/BuildingType;

.field public static final synthetic a:[Lcom/prineside/tdi2/enums/BuildingType;

.field public static final values:[Lcom/prineside/tdi2/enums/BuildingType;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/enums/BuildingType;

    const-string v1, "TOWER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/BuildingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/BuildingType;->TOWER:Lcom/prineside/tdi2/enums/BuildingType;

    new-instance v0, Lcom/prineside/tdi2/enums/BuildingType;

    const-string v1, "MODIFIER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/BuildingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/BuildingType;->MODIFIER:Lcom/prineside/tdi2/enums/BuildingType;

    invoke-static {}, Lcom/prineside/tdi2/enums/BuildingType;->c()[Lcom/prineside/tdi2/enums/BuildingType;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/enums/BuildingType;->a:[Lcom/prineside/tdi2/enums/BuildingType;

    invoke-static {}, Lcom/prineside/tdi2/enums/BuildingType;->values()[Lcom/prineside/tdi2/enums/BuildingType;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/enums/BuildingType;->values:[Lcom/prineside/tdi2/enums/BuildingType;

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

.method public static synthetic c()[Lcom/prineside/tdi2/enums/BuildingType;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/prineside/tdi2/enums/BuildingType;

    sget-object v1, Lcom/prineside/tdi2/enums/BuildingType;->TOWER:Lcom/prineside/tdi2/enums/BuildingType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/BuildingType;->MODIFIER:Lcom/prineside/tdi2/enums/BuildingType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/BuildingType;
    .locals 1

    const-class v0, Lcom/prineside/tdi2/enums/BuildingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/enums/BuildingType;

    return-object p0
.end method

.method public static values()[Lcom/prineside/tdi2/enums/BuildingType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/BuildingType;->a:[Lcom/prineside/tdi2/enums/BuildingType;

    invoke-virtual {v0}, [Lcom/prineside/tdi2/enums/BuildingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/enums/BuildingType;

    return-object v0
.end method
