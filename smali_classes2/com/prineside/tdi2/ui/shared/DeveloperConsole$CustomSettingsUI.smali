.class Lcom/prineside/tdi2/ui/shared/DeveloperConsole$CustomSettingsUI;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/shared/DeveloperConsole;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomSettingsUI"
.end annotation


# instance fields
.field public a:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

.field public b:Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

.field public final synthetic c:Lcom/prineside/tdi2/ui/shared/DeveloperConsole;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$CustomSettingsUI;->c:Lcom/prineside/tdi2/ui/shared/DeveloperConsole;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;Lcom/prineside/tdi2/ui/shared/DeveloperConsole$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$CustomSettingsUI;-><init>(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;)V

    return-void
.end method
