.class public final synthetic Lcom/prineside/tdi2/x1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectRetriever;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/OkSdkHandler$2;


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/OkSdkHandler$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/x1;->a:Lcom/prineside/tdi2/OkSdkHandler$2;

    return-void
.end method


# virtual methods
.method public final retrieved(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/x1;->a:Lcom/prineside/tdi2/OkSdkHandler$2;

    check-cast p1, Lcom/prineside/tdi2/managers/AuthManager$InUpSignInResult;

    invoke-static {v0, p1}, Lcom/prineside/tdi2/OkSdkHandler$2;->b(Lcom/prineside/tdi2/OkSdkHandler$2;Lcom/prineside/tdi2/managers/AuthManager$InUpSignInResult;)V

    return-void
.end method
