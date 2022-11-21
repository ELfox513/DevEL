.class Lcom/prineside/tdi2/screens/SettingsScreen$41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/SettingsScreen;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/SettingsScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/SettingsScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/SettingsScreen$41;->a:Lcom/prineside/tdi2/screens/SettingsScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    new-instance v1, Lcom/prineside/tdi2/screens/PerformanceReportScreen;

    invoke-direct {v1}, Lcom/prineside/tdi2/screens/PerformanceReportScreen;-><init>()V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ScreenManager;->setScreen(Lcom/prineside/tdi2/Screen;)V

    return-void
.end method
