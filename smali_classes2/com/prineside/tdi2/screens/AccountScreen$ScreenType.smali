.class public final enum Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/screens/AccountScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScreenType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACCOUNT:Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;

.field public static final enum AUTO_SIGN_UP_DETAILS:Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;

.field public static final enum PASSWORD_RESET:Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;

.field public static final enum SIGN_IN:Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;

.field public static final enum SIGN_UP:Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;

.field public static final synthetic a:[Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;

    const-string v1, "ACCOUNT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;->ACCOUNT:Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;

    new-instance v0, Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;

    const-string v1, "SIGN_IN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;->SIGN_IN:Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;

    new-instance v0, Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;

    const-string v1, "SIGN_UP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;->SIGN_UP:Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;

    new-instance v0, Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;

    const-string v1, "PASSWORD_RESET"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;->PASSWORD_RESET:Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;

    new-instance v0, Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;

    const-string v1, "AUTO_SIGN_UP_DETAILS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;->AUTO_SIGN_UP_DETAILS:Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;

    invoke-static {}, Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;->c()[Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;->a:[Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;

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

.method public static synthetic c()[Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;

    sget-object v1, Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;->ACCOUNT:Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;->SIGN_IN:Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;->SIGN_UP:Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;->PASSWORD_RESET:Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;->AUTO_SIGN_UP_DETAILS:Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;
    .locals 1

    const-class v0, Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;

    return-object p0
.end method

.method public static values()[Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;->a:[Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;

    invoke-virtual {v0}, [Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;

    return-object v0
.end method
