.class final enum Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/screens/StatisticsScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MainTabType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACHIEVEMENTS:Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;

.field public static final enum ALL_TIME:Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;

.field public static final enum BY_GAME:Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;

.field public static final enum EARNINGS:Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;

.field public static final enum MAX_ONE_GAME:Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;

.field public static final synthetic a:[Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;

    const-string v1, "ALL_TIME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;->ALL_TIME:Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;

    new-instance v0, Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;

    const-string v1, "BY_GAME"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;->BY_GAME:Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;

    new-instance v0, Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;

    const-string v1, "MAX_ONE_GAME"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;->MAX_ONE_GAME:Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;

    new-instance v0, Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;

    const-string v1, "ACHIEVEMENTS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;->ACHIEVEMENTS:Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;

    new-instance v0, Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;

    const-string v1, "EARNINGS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;->EARNINGS:Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;

    invoke-static {}, Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;->c()[Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;->a:[Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;

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

.method public static synthetic c()[Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;

    sget-object v1, Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;->ALL_TIME:Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;->BY_GAME:Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;->MAX_ONE_GAME:Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;->ACHIEVEMENTS:Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;->EARNINGS:Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;
    .locals 1

    const-class v0, Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;

    return-object p0
.end method

.method public static values()[Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;->a:[Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;

    invoke-virtual {v0}, [Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;

    return-object v0
.end method
