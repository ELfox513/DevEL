.class Lcom/prineside/tdi2/screens/AccountScreen$22$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/AccountScreen$22$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/prineside/tdi2/utils/ObjectRetriever<",
        "Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/AccountScreen$22$1;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/AccountScreen$22$1;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$22$1$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$22$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public retrieved(Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$22$1$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$22$1;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/AccountScreen$22$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$22;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/AccountScreen$22;->a:Lcom/prineside/tdi2/screens/AccountScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/AccountScreen;->d(Lcom/prineside/tdi2/screens/AccountScreen;)V

    return-void
.end method

.method public bridge synthetic retrieved(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/screens/AccountScreen$22$1$1;->retrieved(Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;)V

    return-void
.end method
