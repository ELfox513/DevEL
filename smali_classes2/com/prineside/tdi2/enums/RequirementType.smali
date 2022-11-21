.class public final enum Lcom/prineside/tdi2/enums/RequirementType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prineside/tdi2/enums/RequirementType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALL_TIME_STATISTIC:Lcom/prineside/tdi2/enums/RequirementType;

.field public static final enum OPENED_LEVEL:Lcom/prineside/tdi2/enums/RequirementType;

.field public static final enum RESEARCH:Lcom/prineside/tdi2/enums/RequirementType;

.field public static final enum STAGE_STARS:Lcom/prineside/tdi2/enums/RequirementType;

.field public static final enum STARS:Lcom/prineside/tdi2/enums/RequirementType;

.field public static final synthetic a:[Lcom/prineside/tdi2/enums/RequirementType;

.field public static final values:[Lcom/prineside/tdi2/enums/RequirementType;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/enums/RequirementType;

    const-string v1, "RESEARCH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/RequirementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/RequirementType;->RESEARCH:Lcom/prineside/tdi2/enums/RequirementType;

    new-instance v0, Lcom/prineside/tdi2/enums/RequirementType;

    const-string v1, "STARS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/RequirementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/RequirementType;->STARS:Lcom/prineside/tdi2/enums/RequirementType;

    new-instance v0, Lcom/prineside/tdi2/enums/RequirementType;

    const-string v1, "STAGE_STARS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/RequirementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/RequirementType;->STAGE_STARS:Lcom/prineside/tdi2/enums/RequirementType;

    new-instance v0, Lcom/prineside/tdi2/enums/RequirementType;

    const-string v1, "ALL_TIME_STATISTIC"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/RequirementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/RequirementType;->ALL_TIME_STATISTIC:Lcom/prineside/tdi2/enums/RequirementType;

    new-instance v0, Lcom/prineside/tdi2/enums/RequirementType;

    const-string v1, "OPENED_LEVEL"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/RequirementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/RequirementType;->OPENED_LEVEL:Lcom/prineside/tdi2/enums/RequirementType;

    invoke-static {}, Lcom/prineside/tdi2/enums/RequirementType;->c()[Lcom/prineside/tdi2/enums/RequirementType;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/enums/RequirementType;->a:[Lcom/prineside/tdi2/enums/RequirementType;

    invoke-static {}, Lcom/prineside/tdi2/enums/RequirementType;->values()[Lcom/prineside/tdi2/enums/RequirementType;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/enums/RequirementType;->values:[Lcom/prineside/tdi2/enums/RequirementType;

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

.method public static synthetic c()[Lcom/prineside/tdi2/enums/RequirementType;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/prineside/tdi2/enums/RequirementType;

    sget-object v1, Lcom/prineside/tdi2/enums/RequirementType;->RESEARCH:Lcom/prineside/tdi2/enums/RequirementType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/RequirementType;->STARS:Lcom/prineside/tdi2/enums/RequirementType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/RequirementType;->STAGE_STARS:Lcom/prineside/tdi2/enums/RequirementType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/RequirementType;->ALL_TIME_STATISTIC:Lcom/prineside/tdi2/enums/RequirementType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/RequirementType;->OPENED_LEVEL:Lcom/prineside/tdi2/enums/RequirementType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/RequirementType;
    .locals 1

    const-class v0, Lcom/prineside/tdi2/enums/RequirementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/enums/RequirementType;

    return-object p0
.end method

.method public static values()[Lcom/prineside/tdi2/enums/RequirementType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/RequirementType;->a:[Lcom/prineside/tdi2/enums/RequirementType;

    invoke-virtual {v0}, [Lcom/prineside/tdi2/enums/RequirementType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/enums/RequirementType;

    return-object v0
.end method
