.class Lcom/prineside/tdi2/managers/StatisticsManager$1;
.super Lcom/prineside/tdi2/managers/PreferencesManager$PreferencesManagerListener$PreferencesManagerListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/StatisticsManager;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/StatisticsManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/StatisticsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/StatisticsManager$1;->a:Lcom/prineside/tdi2/managers/StatisticsManager;

    invoke-direct {p0}, Lcom/prineside/tdi2/managers/PreferencesManager$PreferencesManagerListener$PreferencesManagerListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public reloaded()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/StatisticsManager$1;->a:Lcom/prineside/tdi2/managers/StatisticsManager;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/StatisticsManager;->a(Lcom/prineside/tdi2/managers/StatisticsManager;)V

    return-void
.end method
