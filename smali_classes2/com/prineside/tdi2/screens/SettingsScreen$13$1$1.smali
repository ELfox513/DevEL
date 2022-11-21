.class Lcom/prineside/tdi2/screens/SettingsScreen$13$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/SettingsScreen$13$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/SettingsScreen$13$1;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/SettingsScreen$13$1;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/SettingsScreen$13$1$1;->a:Lcom/prineside/tdi2/screens/SettingsScreen$13$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-static {}, Lcom/prineside/tdi2/Game;->exit()V

    return-void
.end method
