.class Lcom/prineside/tdi2/AndroidLauncher$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/Game$GameListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/AndroidLauncher;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/AndroidLauncher;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/AndroidLauncher;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/AndroidLauncher$3;->a:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public gameLoaded()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher$3;->a:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {v0}, Lcom/prineside/tdi2/AndroidLauncher;->O(Lcom/prineside/tdi2/AndroidLauncher;)V

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher$3;->a:Lcom/prineside/tdi2/AndroidLauncher;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/AndroidLauncher;->P(Lcom/prineside/tdi2/AndroidLauncher;Z)Z

    return-void
.end method

.method public gameStartedLoading()V
    .locals 0

    return-void
.end method

.method public render()V
    .locals 0

    return-void
.end method
