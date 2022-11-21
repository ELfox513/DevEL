.class Lcom/prineside/tdi2/ui/shared/DeveloperConsole$6;
.super Lcom/prineside/tdi2/Game$ScreenResizeListener$ScreenResizeListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/DeveloperConsole;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/DeveloperConsole;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$6;->a:Lcom/prineside/tdi2/ui/shared/DeveloperConsole;

    invoke-direct {p0}, Lcom/prineside/tdi2/Game$ScreenResizeListener$ScreenResizeListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public resize(II)V
    .locals 0

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$6;->a:Lcom/prineside/tdi2/ui/shared/DeveloperConsole;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->l(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;)V

    :cond_0
    return-void
.end method

.method public visibleDisplayFrameChanged()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$6;->a:Lcom/prineside/tdi2/ui/shared/DeveloperConsole;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->l(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;)V

    return-void
.end method
