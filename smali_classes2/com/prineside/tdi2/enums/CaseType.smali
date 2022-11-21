.class public final enum Lcom/prineside/tdi2/enums/CaseType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prineside/tdi2/enums/CaseType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BLUE:Lcom/prineside/tdi2/enums/CaseType;

.field public static final enum BLUEPRINT:Lcom/prineside/tdi2/enums/CaseType;

.field public static final enum CYAN:Lcom/prineside/tdi2/enums/CaseType;

.field public static final enum GREEN:Lcom/prineside/tdi2/enums/CaseType;

.field public static final enum ORANGE:Lcom/prineside/tdi2/enums/CaseType;

.field public static final enum PURPLE:Lcom/prineside/tdi2/enums/CaseType;

.field public static final synthetic a:[Lcom/prineside/tdi2/enums/CaseType;

.field public static final values:[Lcom/prineside/tdi2/enums/CaseType;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/enums/CaseType;

    const-string v1, "GREEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/CaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/CaseType;->GREEN:Lcom/prineside/tdi2/enums/CaseType;

    new-instance v0, Lcom/prineside/tdi2/enums/CaseType;

    const-string v1, "BLUE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/CaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/CaseType;->BLUE:Lcom/prineside/tdi2/enums/CaseType;

    new-instance v0, Lcom/prineside/tdi2/enums/CaseType;

    const-string v1, "PURPLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/CaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/CaseType;->PURPLE:Lcom/prineside/tdi2/enums/CaseType;

    new-instance v0, Lcom/prineside/tdi2/enums/CaseType;

    const-string v1, "ORANGE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/CaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/CaseType;->ORANGE:Lcom/prineside/tdi2/enums/CaseType;

    new-instance v0, Lcom/prineside/tdi2/enums/CaseType;

    const-string v1, "CYAN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/CaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/CaseType;->CYAN:Lcom/prineside/tdi2/enums/CaseType;

    new-instance v0, Lcom/prineside/tdi2/enums/CaseType;

    const-string v1, "BLUEPRINT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/CaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/CaseType;->BLUEPRINT:Lcom/prineside/tdi2/enums/CaseType;

    invoke-static {}, Lcom/prineside/tdi2/enums/CaseType;->c()[Lcom/prineside/tdi2/enums/CaseType;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/enums/CaseType;->a:[Lcom/prineside/tdi2/enums/CaseType;

    invoke-static {}, Lcom/prineside/tdi2/enums/CaseType;->values()[Lcom/prineside/tdi2/enums/CaseType;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/enums/CaseType;->values:[Lcom/prineside/tdi2/enums/CaseType;

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

.method public static synthetic c()[Lcom/prineside/tdi2/enums/CaseType;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/prineside/tdi2/enums/CaseType;

    sget-object v1, Lcom/prineside/tdi2/enums/CaseType;->GREEN:Lcom/prineside/tdi2/enums/CaseType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/CaseType;->BLUE:Lcom/prineside/tdi2/enums/CaseType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/CaseType;->PURPLE:Lcom/prineside/tdi2/enums/CaseType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/CaseType;->ORANGE:Lcom/prineside/tdi2/enums/CaseType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/CaseType;->CYAN:Lcom/prineside/tdi2/enums/CaseType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/CaseType;->BLUEPRINT:Lcom/prineside/tdi2/enums/CaseType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/CaseType;
    .locals 1

    const-class v0, Lcom/prineside/tdi2/enums/CaseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/enums/CaseType;

    return-object p0
.end method

.method public static values()[Lcom/prineside/tdi2/enums/CaseType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/CaseType;->a:[Lcom/prineside/tdi2/enums/CaseType;

    invoke-virtual {v0}, [Lcom/prineside/tdi2/enums/CaseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/enums/CaseType;

    return-object v0
.end method
