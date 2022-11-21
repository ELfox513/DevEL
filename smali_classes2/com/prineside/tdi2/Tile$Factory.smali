.class public interface abstract Lcom/prineside/tdi2/Tile$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/Tile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/Tile$Factory$AbstractFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/prineside/tdi2/Tile;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/utils/Disposable;"
    }
.end annotation


# virtual methods
.method public abstract create()Lcom/prineside/tdi2/Tile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract createRandom(FLcom/badlogic/gdx/math/RandomXS128;)Lcom/prineside/tdi2/Tile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lcom/badlogic/gdx/math/RandomXS128;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Tile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/JsonValue;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getProbabilityForPrize(FLcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)I
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract setup()V
.end method
