.class public final enum Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/UiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MainUiLayer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum OVERLAY:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

.field public static final enum SCREEN:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

.field public static final enum SHARED_COMPONENTS:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

.field public static final synthetic a:[Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

.field public static final values:[Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    const-string v1, "SCREEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->SCREEN:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    new-instance v0, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    const-string v1, "SHARED_COMPONENTS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->SHARED_COMPONENTS:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    new-instance v0, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    const-string v1, "OVERLAY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->OVERLAY:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    invoke-static {}, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->c()[Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->a:[Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    invoke-static {}, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->values()[Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->values:[Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

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

.method public static synthetic c()[Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    sget-object v1, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->SCREEN:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->SHARED_COMPONENTS:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->OVERLAY:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;
    .locals 1

    const-class v0, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    return-object p0
.end method

.method public static values()[Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->a:[Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    invoke-virtual {v0}, [Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    return-object v0
.end method
