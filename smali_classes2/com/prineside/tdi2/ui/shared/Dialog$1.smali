.class Lcom/prineside/tdi2/ui/shared/Dialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/shared/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/Dialog;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/Dialog$1;->a:Lcom/prineside/tdi2/ui/shared/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/Dialog$1;->a:Lcom/prineside/tdi2/ui/shared/Dialog;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/shared/Dialog;->hide()V

    return-void
.end method
