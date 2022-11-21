.class public final synthetic Lcom/prineside/tdi2/screens/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/screens/t;->a:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/screens/t;->a:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->a(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;)V

    return-void
.end method
