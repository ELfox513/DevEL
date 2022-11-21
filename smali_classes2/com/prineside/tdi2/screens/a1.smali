.class public final synthetic Lcom/prineside/tdi2/screens/a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/StatisticsScreen;

.field public final synthetic b:Lcom/prineside/tdi2/enums/AchievementType;


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/screens/StatisticsScreen;Lcom/prineside/tdi2/enums/AchievementType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/screens/a1;->a:Lcom/prineside/tdi2/screens/StatisticsScreen;

    iput-object p2, p0, Lcom/prineside/tdi2/screens/a1;->b:Lcom/prineside/tdi2/enums/AchievementType;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/screens/a1;->a:Lcom/prineside/tdi2/screens/StatisticsScreen;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/a1;->b:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-static {v0, v1}, Lcom/prineside/tdi2/screens/StatisticsScreen;->d(Lcom/prineside/tdi2/screens/StatisticsScreen;Lcom/prineside/tdi2/enums/AchievementType;)V

    return-void
.end method
