.class Lcom/prineside/tdi2/ui/components/MainUi$_EnemySystemListener;
.super Lcom/prineside/tdi2/systems/EnemySystem$EnemySystemListener$EnemySystemListenerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/NAGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/components/MainUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_EnemySystemListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/MainUi;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/MainUi;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/MainUi$_EnemySystemListener;->a:Lcom/prineside/tdi2/ui/components/MainUi;

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/EnemySystem$EnemySystemListener$EnemySystemListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/components/MainUi;Lcom/prineside/tdi2/ui/components/MainUi$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/components/MainUi$_EnemySystemListener;-><init>(Lcom/prineside/tdi2/ui/components/MainUi;)V

    return-void
.end method


# virtual methods
.method public mdpsUpdated(D)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MainUi$_EnemySystemListener;->a:Lcom/prineside/tdi2/ui/components/MainUi;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/components/MainUi;->updateMdps()V

    return-void
.end method
