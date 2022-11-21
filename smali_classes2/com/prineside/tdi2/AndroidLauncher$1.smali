.class Lcom/prineside/tdi2/AndroidLauncher$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly2/c;


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

    iput-object p1, p0, Lcom/prineside/tdi2/AndroidLauncher$1;->a:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializationComplete(Ly2/b;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MobileAds.initialize - onInitializationComplete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AndroidLauncher"

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/prineside/tdi2/AndroidLauncher$1;->a:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {p1}, Lcom/prineside/tdi2/AndroidLauncher;->q(Lcom/prineside/tdi2/AndroidLauncher;)V

    return-void
.end method
