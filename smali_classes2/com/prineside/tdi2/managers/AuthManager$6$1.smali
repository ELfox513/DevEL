.class Lcom/prineside/tdi2/managers/AuthManager$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/AuthManager$6;->finished(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/prineside/tdi2/managers/AuthManager$6;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/AuthManager$6;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/managers/AuthManager$6$1;->b:Lcom/prineside/tdi2/managers/AuthManager$6;

    iput-boolean p2, p0, Lcom/prineside/tdi2/managers/AuthManager$6$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager$6$1;->b:Lcom/prineside/tdi2/managers/AuthManager$6;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/AuthManager$6;->a:Lcom/prineside/tdi2/utils/ObjectRetriever;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/prineside/tdi2/managers/AuthManager$6$1;->a:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/prineside/tdi2/managers/AuthManager$InUpSignInResult;->SUCCESS_NEW_ACCOUNT:Lcom/prineside/tdi2/managers/AuthManager$InUpSignInResult;

    invoke-interface {v0, v1}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/prineside/tdi2/managers/AuthManager$InUpSignInResult;->SUCCESS:Lcom/prineside/tdi2/managers/AuthManager$InUpSignInResult;

    invoke-interface {v0, v1}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager$6$1;->b:Lcom/prineside/tdi2/managers/AuthManager$6;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/AuthManager$6;->b:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/AuthManager;->C(Lcom/prineside/tdi2/managers/AuthManager;)V

    return-void
.end method
