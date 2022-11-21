.class public final enum Lcom/prineside/tdi2/enums/DifficultyMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prineside/tdi2/enums/DifficultyMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EASY:Lcom/prineside/tdi2/enums/DifficultyMode;

.field public static final enum ENDLESS_I:Lcom/prineside/tdi2/enums/DifficultyMode;

.field public static final enum NORMAL:Lcom/prineside/tdi2/enums/DifficultyMode;

.field public static final synthetic a:[Lcom/prineside/tdi2/enums/DifficultyMode;

.field public static final values:[Lcom/prineside/tdi2/enums/DifficultyMode;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/enums/DifficultyMode;

    const-string v1, "EASY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/DifficultyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/DifficultyMode;->EASY:Lcom/prineside/tdi2/enums/DifficultyMode;

    new-instance v0, Lcom/prineside/tdi2/enums/DifficultyMode;

    const-string v1, "NORMAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/DifficultyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/DifficultyMode;->NORMAL:Lcom/prineside/tdi2/enums/DifficultyMode;

    new-instance v0, Lcom/prineside/tdi2/enums/DifficultyMode;

    const-string v1, "ENDLESS_I"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/DifficultyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/DifficultyMode;->ENDLESS_I:Lcom/prineside/tdi2/enums/DifficultyMode;

    invoke-static {}, Lcom/prineside/tdi2/enums/DifficultyMode;->c()[Lcom/prineside/tdi2/enums/DifficultyMode;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/enums/DifficultyMode;->a:[Lcom/prineside/tdi2/enums/DifficultyMode;

    invoke-static {}, Lcom/prineside/tdi2/enums/DifficultyMode;->values()[Lcom/prineside/tdi2/enums/DifficultyMode;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/enums/DifficultyMode;->values:[Lcom/prineside/tdi2/enums/DifficultyMode;

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

.method public static synthetic c()[Lcom/prineside/tdi2/enums/DifficultyMode;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/prineside/tdi2/enums/DifficultyMode;

    sget-object v1, Lcom/prineside/tdi2/enums/DifficultyMode;->EASY:Lcom/prineside/tdi2/enums/DifficultyMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/DifficultyMode;->NORMAL:Lcom/prineside/tdi2/enums/DifficultyMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/DifficultyMode;->ENDLESS_I:Lcom/prineside/tdi2/enums/DifficultyMode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static hasSpecialResources(Lcom/prineside/tdi2/enums/DifficultyMode;)Z
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/DifficultyMode;->EASY:Lcom/prineside/tdi2/enums/DifficultyMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/enums/DifficultyMode;->NORMAL:Lcom/prineside/tdi2/enums/DifficultyMode;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isEndless(Lcom/prineside/tdi2/enums/DifficultyMode;)Z
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/DifficultyMode;->EASY:Lcom/prineside/tdi2/enums/DifficultyMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/enums/DifficultyMode;->NORMAL:Lcom/prineside/tdi2/enums/DifficultyMode;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/DifficultyMode;
    .locals 1

    const-class v0, Lcom/prineside/tdi2/enums/DifficultyMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/enums/DifficultyMode;

    return-object p0
.end method

.method public static values()[Lcom/prineside/tdi2/enums/DifficultyMode;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/DifficultyMode;->a:[Lcom/prineside/tdi2/enums/DifficultyMode;

    invoke-virtual {v0}, [Lcom/prineside/tdi2/enums/DifficultyMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/enums/DifficultyMode;

    return-object v0
.end method
