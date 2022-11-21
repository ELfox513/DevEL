.class Lcom/prineside/tdi2/serializers/IntFloatMapSerializer$1;
.super Lcom/badlogic/gdx/utils/Pool;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/serializers/IntFloatMapSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/Pool<",
        "Lcom/badlogic/gdx/utils/IntFloatMap$Entry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Pool;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Lcom/badlogic/gdx/utils/IntFloatMap$Entry;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/utils/IntFloatMap$Entry;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntFloatMap$Entry;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/serializers/IntFloatMapSerializer$1;->c()Lcom/badlogic/gdx/utils/IntFloatMap$Entry;

    move-result-object v0

    return-object v0
.end method
