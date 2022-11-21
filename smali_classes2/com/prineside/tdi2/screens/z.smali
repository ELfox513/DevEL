.class public final synthetic Lcom/prineside/tdi2/screens/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectRetriever;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/MainMenuScreen;


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/screens/MainMenuScreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/screens/z;->a:Lcom/prineside/tdi2/screens/MainMenuScreen;

    return-void
.end method


# virtual methods
.method public final retrieved(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/screens/z;->a:Lcom/prineside/tdi2/screens/MainMenuScreen;

    check-cast p1, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;

    invoke-static {v0, p1}, Lcom/prineside/tdi2/screens/MainMenuScreen;->a(Lcom/prineside/tdi2/screens/MainMenuScreen;Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;)V

    return-void
.end method
