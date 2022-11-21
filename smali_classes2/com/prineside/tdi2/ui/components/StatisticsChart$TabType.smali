.class final enum Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/components/StatisticsChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TabType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum COINS:Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;

.field public static final enum INFO:Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;

.field public static final enum SCORE:Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;

.field public static final synthetic a:[Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;

.field public static final values:[Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;

    const-string v1, "SCORE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;->SCORE:Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;

    new-instance v0, Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;

    const-string v1, "COINS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;->COINS:Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;

    new-instance v0, Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;

    const-string v1, "INFO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;->INFO:Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;

    invoke-static {}, Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;->c()[Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;->a:[Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;

    invoke-static {}, Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;->values()[Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;->values:[Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;

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

.method public static synthetic c()[Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;

    sget-object v1, Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;->SCORE:Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;->COINS:Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;->INFO:Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;
    .locals 1

    const-class v0, Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;

    return-object p0
.end method

.method public static values()[Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;->a:[Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;

    invoke-virtual {v0}, [Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;

    return-object v0
.end method
