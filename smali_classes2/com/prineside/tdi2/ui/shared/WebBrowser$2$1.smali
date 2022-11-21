.class Lcom/prineside/tdi2/ui/shared/WebBrowser$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/WebBrowser$2;->urlLoadFinish(ZLjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/WebBrowser$2;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/WebBrowser$2;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser$2$1;->a:Lcom/prineside/tdi2/ui/shared/WebBrowser$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser$2$1;->a:Lcom/prineside/tdi2/ui/shared/WebBrowser$2;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/shared/WebBrowser$2;->b:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->a(Lcom/prineside/tdi2/ui/shared/WebBrowser;)V

    return-void
.end method
