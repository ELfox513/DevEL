.class public final enum Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/GameValueManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValueUnits"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BOOLEAN:Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

.field public static final enum PERCENTS:Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

.field public static final enum PERCENTS_PER_SECOND:Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

.field public static final enum SECONDS:Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

.field public static final enum UNITS:Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

.field public static final enum UNITS_PER_SECOND:Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

.field public static final synthetic a:[Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

    const-string v1, "UNITS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;->UNITS:Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

    new-instance v0, Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

    const-string v1, "SECONDS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;->SECONDS:Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

    new-instance v0, Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

    const-string v1, "UNITS_PER_SECOND"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;->UNITS_PER_SECOND:Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

    new-instance v0, Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

    const-string v1, "PERCENTS_PER_SECOND"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;->PERCENTS_PER_SECOND:Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

    new-instance v0, Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

    const-string v1, "PERCENTS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;->PERCENTS:Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

    new-instance v0, Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;->BOOLEAN:Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

    invoke-static {}, Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;->c()[Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;->a:[Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

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

.method public static synthetic c()[Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

    sget-object v1, Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;->UNITS:Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;->SECONDS:Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;->UNITS_PER_SECOND:Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;->PERCENTS_PER_SECOND:Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;->PERCENTS:Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;->BOOLEAN:Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;
    .locals 1

    const-class v0, Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

    return-object p0
.end method

.method public static values()[Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;->a:[Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

    invoke-virtual {v0}, [Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

    return-object v0
.end method
