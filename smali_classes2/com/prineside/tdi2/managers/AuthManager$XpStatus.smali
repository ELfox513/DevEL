.class public final enum Lcom/prineside/tdi2/managers/AuthManager$XpStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/AuthManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "XpStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prineside/tdi2/managers/AuthManager$XpStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BONUS:Lcom/prineside/tdi2/managers/AuthManager$XpStatus;

.field public static final enum NORMAL:Lcom/prineside/tdi2/managers/AuthManager$XpStatus;

.field public static final enum REDUCED:Lcom/prineside/tdi2/managers/AuthManager$XpStatus;

.field public static final synthetic a:[Lcom/prineside/tdi2/managers/AuthManager$XpStatus;

.field public static final values:[Lcom/prineside/tdi2/managers/AuthManager$XpStatus;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/managers/AuthManager$XpStatus;

    const-string v1, "BONUS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/AuthManager$XpStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/AuthManager$XpStatus;->BONUS:Lcom/prineside/tdi2/managers/AuthManager$XpStatus;

    new-instance v0, Lcom/prineside/tdi2/managers/AuthManager$XpStatus;

    const-string v1, "NORMAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/AuthManager$XpStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/AuthManager$XpStatus;->NORMAL:Lcom/prineside/tdi2/managers/AuthManager$XpStatus;

    new-instance v0, Lcom/prineside/tdi2/managers/AuthManager$XpStatus;

    const-string v1, "REDUCED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/AuthManager$XpStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/AuthManager$XpStatus;->REDUCED:Lcom/prineside/tdi2/managers/AuthManager$XpStatus;

    invoke-static {}, Lcom/prineside/tdi2/managers/AuthManager$XpStatus;->c()[Lcom/prineside/tdi2/managers/AuthManager$XpStatus;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/managers/AuthManager$XpStatus;->a:[Lcom/prineside/tdi2/managers/AuthManager$XpStatus;

    invoke-static {}, Lcom/prineside/tdi2/managers/AuthManager$XpStatus;->values()[Lcom/prineside/tdi2/managers/AuthManager$XpStatus;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/managers/AuthManager$XpStatus;->values:[Lcom/prineside/tdi2/managers/AuthManager$XpStatus;

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

.method public static synthetic c()[Lcom/prineside/tdi2/managers/AuthManager$XpStatus;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/prineside/tdi2/managers/AuthManager$XpStatus;

    sget-object v1, Lcom/prineside/tdi2/managers/AuthManager$XpStatus;->BONUS:Lcom/prineside/tdi2/managers/AuthManager$XpStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/AuthManager$XpStatus;->NORMAL:Lcom/prineside/tdi2/managers/AuthManager$XpStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/AuthManager$XpStatus;->REDUCED:Lcom/prineside/tdi2/managers/AuthManager$XpStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/managers/AuthManager$XpStatus;
    .locals 1

    const-class v0, Lcom/prineside/tdi2/managers/AuthManager$XpStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/managers/AuthManager$XpStatus;

    return-object p0
.end method

.method public static values()[Lcom/prineside/tdi2/managers/AuthManager$XpStatus;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/managers/AuthManager$XpStatus;->a:[Lcom/prineside/tdi2/managers/AuthManager$XpStatus;

    invoke-virtual {v0}, [Lcom/prineside/tdi2/managers/AuthManager$XpStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/managers/AuthManager$XpStatus;

    return-object v0
.end method
