.class Lcom/prineside/tdi2/managers/AuthManager$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/AuthManager$4;->retrieved(Lcom/badlogic/gdx/utils/JsonValue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/prineside/tdi2/managers/AuthManager$4;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/AuthManager$4;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/managers/AuthManager$4$1;->b:Lcom/prineside/tdi2/managers/AuthManager$4;

    iput p2, p0, Lcom/prineside/tdi2/managers/AuthManager$4$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager$4$1;->b:Lcom/prineside/tdi2/managers/AuthManager$4;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/AuthManager$4;->a:Lcom/prineside/tdi2/managers/AuthManager;

    iget v1, p0, Lcom/prineside/tdi2/managers/AuthManager$4$1;->a:I

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AuthManager;->loadSavedGameFromServer(I)V

    return-void
.end method
