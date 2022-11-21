.class public Lcom/prineside/tdi2/managers/AuthManager$ReceivedIssuedItemsResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/AuthManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReceivedIssuedItemsResponse"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/AuthManager;

.field public items:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/IssuedItems;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/AuthManager;)V
    .locals 1

    iput-object p1, p0, Lcom/prineside/tdi2/managers/AuthManager$ReceivedIssuedItemsResponse;->a:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/badlogic/gdx/utils/Array;

    const-class v0, Lcom/prineside/tdi2/IssuedItems;

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/prineside/tdi2/managers/AuthManager$ReceivedIssuedItemsResponse;->items:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method
