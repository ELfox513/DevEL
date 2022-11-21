.class Lcom/prineside/tdi2/screens/SettingsScreen$9$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/SettingsScreen$9$1;->input(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/prineside/tdi2/screens/SettingsScreen$9$1;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/SettingsScreen$9$1;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/screens/SettingsScreen$9$1$1;->b:Lcom/prineside/tdi2/screens/SettingsScreen$9$1;

    iput-object p2, p0, Lcom/prineside/tdi2/screens/SettingsScreen$9$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->secretCodeManager:Lcom/prineside/tdi2/managers/SecretCodeManager;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/SettingsScreen$9$1$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/SecretCodeManager;->applyCode(Ljava/lang/String;)V

    return-void
.end method
