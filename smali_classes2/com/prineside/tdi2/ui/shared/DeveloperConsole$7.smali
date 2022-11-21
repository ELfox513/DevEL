.class Lcom/prineside/tdi2/ui/shared/DeveloperConsole$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$7;->a:Lcom/prineside/tdi2/ui/shared/DeveloperConsole;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$7;->a:Lcom/prineside/tdi2/ui/shared/DeveloperConsole;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->m(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->setVisible(Z)V

    return-void
.end method
