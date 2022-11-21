.class public final enum Lcom/prineside/tdi2/managers/AuthManager$InUpSignInResult;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/AuthManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InUpSignInResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prineside/tdi2/managers/AuthManager$InUpSignInResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum OTHER_ERROR:Lcom/prineside/tdi2/managers/AuthManager$InUpSignInResult;

.field public static final enum SUCCESS:Lcom/prineside/tdi2/managers/AuthManager$InUpSignInResult;

.field public static final enum SUCCESS_NEW_ACCOUNT:Lcom/prineside/tdi2/managers/AuthManager$InUpSignInResult;

.field public static final synthetic a:[Lcom/prineside/tdi2/managers/AuthManager$InUpSignInResult;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/managers/AuthManager$InUpSignInResult;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/AuthManager$InUpSignInResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/AuthManager$InUpSignInResult;->SUCCESS:Lcom/prineside/tdi2/managers/AuthManager$InUpSignInResult;

    new-instance v0, Lcom/prineside/tdi2/managers/AuthManager$InUpSignInResult;

    const-string v1, "SUCCESS_NEW_ACCOUNT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/AuthManager$InUpSignInResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/AuthManager$InUpSignInResult;->SUCCESS_NEW_ACCOUNT:Lcom/prineside/tdi2/managers/AuthManager$InUpSignInResult;

    new-instance v0, Lcom/prineside/tdi2/managers/AuthManager$InUpSignInResult;

    const-string v1, "OTHER_ERROR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/AuthManager$InUpSignInResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/AuthManager$InUpSignInResult;->OTHER_ERROR:Lcom/prineside/tdi2/managers/AuthManager$InUpSignInResult;

    invoke-static {}, Lcom/prineside/tdi2/managers/AuthManager$InUpSignInResult;->c()[Lcom/prineside/tdi2/managers/AuthManager$InUpSignInResult;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/managers/AuthManager$InUpSignInResult;->a:[Lcom/prineside/tdi2/managers/AuthManager$InUpSignInResult;

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

.method public static synthetic c()[Lcom/prineside/tdi2/managers/AuthManager$InUpSignInResult;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/prineside/tdi2/managers/AuthManager$InUpSignInResult;

    sget-object v1, Lcom/prineside/tdi2/managers/AuthManager$InUpSignInResult;->SUCCESS:Lcom/prineside/tdi2/managers/AuthManager$InUpSignInResult;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/AuthManager$InUpSignInResult;->SUCCESS_NEW_ACCOUNT:Lcom/prineside/tdi2/managers/AuthManager$InUpSignInResult;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/AuthManager$InUpSignInResult;->OTHER_ERROR:Lcom/prineside/tdi2/managers/AuthManager$InUpSignInResult;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/managers/AuthManager$InUpSignInResult;
    .locals 1

    const-class v0, Lcom/prineside/tdi2/managers/AuthManager$InUpSignInResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/managers/AuthManager$InUpSignInResult;

    return-object p0
.end method

.method public static values()[Lcom/prineside/tdi2/managers/AuthManager$InUpSignInResult;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/managers/AuthManager$InUpSignInResult;->a:[Lcom/prineside/tdi2/managers/AuthManager$InUpSignInResult;

    invoke-virtual {v0}, [Lcom/prineside/tdi2/managers/AuthManager$InUpSignInResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/managers/AuthManager$InUpSignInResult;

    return-object v0
.end method
