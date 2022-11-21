.class public final enum Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/AuthManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SignInStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum NOT_SIGNED_IN:Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;

.field public static final enum SIGNED_IN:Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;

.field public static final enum SIGNED_IN_OFFLINE:Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;

.field public static final synthetic a:[Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;

    const-string v1, "NOT_SIGNED_IN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;->NOT_SIGNED_IN:Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;

    new-instance v0, Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;

    const-string v1, "SIGNED_IN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;->SIGNED_IN:Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;

    new-instance v0, Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;

    const-string v1, "SIGNED_IN_OFFLINE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;->SIGNED_IN_OFFLINE:Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;

    invoke-static {}, Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;->c()[Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;->a:[Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;

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

.method public static synthetic c()[Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;

    sget-object v1, Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;->NOT_SIGNED_IN:Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;->SIGNED_IN:Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;->SIGNED_IN_OFFLINE:Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;
    .locals 1

    const-class v0, Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;

    return-object p0
.end method

.method public static values()[Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;->a:[Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;

    invoke-virtual {v0}, [Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/managers/AuthManager$SignInStatus;

    return-object v0
.end method
