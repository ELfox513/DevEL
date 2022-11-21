.class public Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/AuthManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NewsResponse"
.end annotation


# instance fields
.field public body:Ljava/lang/String;

.field public cachedAt:I

.field public id:I

.field public itemsFromServer:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/IssuedItems;",
            ">;"
        }
    .end annotation
.end field

.field public lastVersion:I

.field public networkRequiredVersion:I

.field public seasonNumber:I

.field public seasonPlayerCount:I

.field public seasonPosition:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;->seasonNumber:I

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/IssuedItems;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;->itemsFromServer:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method
