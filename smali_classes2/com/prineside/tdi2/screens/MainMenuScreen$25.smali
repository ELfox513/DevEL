.class Lcom/prineside/tdi2/screens/MainMenuScreen$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/MainMenuScreen;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/prineside/tdi2/utils/ObjectRetriever<",
        "Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/MainMenuScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/MainMenuScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/MainMenuScreen$25;->a:Lcom/prineside/tdi2/screens/MainMenuScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public retrieved(Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;)V
    .locals 3

    iget-boolean v0, p1, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;->success:Z

    if-eqz v0, :cond_3

    iget-object p1, p1, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;->player:Lcom/prineside/tdi2/managers/DailyQuestManager$LeaderboardsRank;

    if-eqz p1, :cond_3

    iget v0, p1, Lcom/prineside/tdi2/managers/DailyQuestManager$LeaderboardsRank;->rank:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v1, "leader"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    iget p1, p1, Lcom/prineside/tdi2/managers/DailyQuestManager$LeaderboardsRank;->total:I

    int-to-float p1, p1

    div-float/2addr v0, p1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float v0, v0, p1

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->ceil(F)I

    move-result p1

    const/4 v0, 0x0

    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    const/16 v2, 0x64

    if-le p1, v2, :cond_2

    const/16 p1, 0x64

    :cond_2
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "top_percent"

    invoke-virtual {v2, p1, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/prineside/tdi2/screens/MainMenuScreen$25;->a:Lcom/prineside/tdi2/screens/MainMenuScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/MainMenuScreen;->i(Lcom/prineside/tdi2/screens/MainMenuScreen;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/prineside/tdi2/screens/MainMenuScreen$25;->a:Lcom/prineside/tdi2/screens/MainMenuScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/MainMenuScreen;->i(Lcom/prineside/tdi2/screens/MainMenuScreen;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic retrieved(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/screens/MainMenuScreen$25;->retrieved(Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;)V

    return-void
.end method
