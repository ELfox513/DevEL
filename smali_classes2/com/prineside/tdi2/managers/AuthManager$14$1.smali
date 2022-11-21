.class Lcom/prineside/tdi2/managers/AuthManager$14$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/AuthManager$14;->finished(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/AuthManager$14;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/AuthManager$14;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/AuthManager$14$1;->a:Lcom/prineside/tdi2/managers/AuthManager$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager$14$1;->a:Lcom/prineside/tdi2/managers/AuthManager$14;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/AuthManager$14;->a:Lcom/prineside/tdi2/utils/ObjectRetriever;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    return-void
.end method
